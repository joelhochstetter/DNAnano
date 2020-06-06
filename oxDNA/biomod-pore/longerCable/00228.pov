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
	<24.219242, 34.705238, 35.060375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.361275, 35.058140, 34.936733>,  <24.446495, 35.269882, 34.862549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.361275, 35.058140, 34.936733>,  <24.219242, 34.705238, 35.060375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.361275, 35.058140, 34.936733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677706, -0.470690, -0.564947,
		-0.643919, -0.008878, -0.765042,
		0.355082, 0.882254, -0.309103,
		24.467800, 35.322815, 34.844002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.198664, 34.865654, 34.312786>,  <24.219242, 34.705238, 35.060375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.198664, 34.865654, 34.312786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.519493, 35.047722, 34.467445>,  <24.711990, 35.156963, 34.560242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.519493, 35.047722, 34.467445>,  <24.198664, 34.865654, 34.312786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.519493, 35.047722, 34.467445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583468, -0.459067, -0.669943,
		-0.127438, 0.762942, -0.633782,
		0.802075, 0.455167, 0.386650,
		24.760117, 35.184273, 34.583439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.493830, 35.287060, 33.818256>,  <24.198664, 34.865654, 34.312786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.493830, 35.287060, 33.818256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.798876, 35.260258, 34.075607>,  <24.981903, 35.244175, 34.230019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.798876, 35.260258, 34.075607>,  <24.493830, 35.287060, 33.818256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.798876, 35.260258, 34.075607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627481, -0.164961, -0.760957,
		0.157119, 0.984021, -0.083757,
		0.762615, -0.067005, 0.643373,
		25.027660, 35.240154, 34.268620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.988745, 35.779057, 33.541115>,  <24.493830, 35.287060, 33.818256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.988745, 35.779057, 33.541115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.183996, 35.527298, 33.782974>,  <25.301147, 35.376244, 33.928089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.183996, 35.527298, 33.782974>,  <24.988745, 35.779057, 33.541115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.183996, 35.527298, 33.782974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681302, -0.158211, -0.714700,
		0.545489, 0.760810, 0.351581,
		0.488128, -0.629394, 0.604644,
		25.330435, 35.338478, 33.964367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.698599, 36.061359, 33.519341>,  <24.988745, 35.779057, 33.541115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.698599, 36.061359, 33.519341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.651112, 35.673302, 33.603928>,  <25.622620, 35.440468, 33.654678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.651112, 35.673302, 33.603928>,  <25.698599, 36.061359, 33.519341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.651112, 35.673302, 33.603928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580116, -0.240612, -0.778185,
		0.805836, 0.030292, 0.591363,
		-0.118716, -0.970149, 0.211467,
		25.615498, 35.382256, 33.667366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.362534, 35.703495, 33.524311>,  <25.698599, 36.061359, 33.519341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.362534, 35.703495, 33.524311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.094879, 35.410435, 33.474548>,  <25.934286, 35.234596, 33.444691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.094879, 35.410435, 33.474548>,  <26.362534, 35.703495, 33.524311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.094879, 35.410435, 33.474548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520425, -0.342487, -0.782215,
		0.530485, -0.588152, 0.610461,
		-0.669137, -0.732653, -0.124405,
		25.894138, 35.190639, 33.437225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.700941, 35.053425, 33.428104>,  <26.362534, 35.703495, 33.524311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.700941, 35.053425, 33.428104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.347836, 35.051197, 33.240189>,  <26.135973, 35.049862, 33.127438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.347836, 35.051197, 33.240189>,  <26.700941, 35.053425, 33.428104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.347836, 35.051197, 33.240189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457771, -0.235211, -0.857392,
		-0.105723, -0.971928, 0.210185,
		-0.882762, -0.005571, -0.469788,
		26.083008, 35.049526, 33.099251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.721830, 34.465069, 33.119682>,  <26.700941, 35.053425, 33.428104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.721830, 34.465069, 33.119682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.447891, 34.676064, 32.918587>,  <26.283527, 34.802662, 32.797932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.447891, 34.676064, 32.918587>,  <26.721830, 34.465069, 33.119682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.447891, 34.676064, 32.918587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419659, -0.278511, -0.863897,
		-0.595711, -0.802615, -0.030627,
		-0.684846, 0.527486, -0.502737,
		26.242437, 34.834309, 32.767765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.464905, 34.109291, 32.495346>,  <26.721830, 34.465069, 33.119682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.464905, 34.109291, 32.495346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.414536, 34.495293, 32.403336>,  <26.384314, 34.726894, 32.348129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.414536, 34.495293, 32.403336>,  <26.464905, 34.109291, 32.495346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.414536, 34.495293, 32.403336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454448, -0.150000, -0.878053,
		-0.881828, -0.215100, -0.419656,
		-0.125921, 0.965004, -0.230026,
		26.376759, 34.784794, 32.334328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.423048, 34.106857, 31.791063>,  <26.464905, 34.109291, 32.495346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.423048, 34.106857, 31.791063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.461052, 34.502113, 31.839319>,  <26.483854, 34.739265, 31.868273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.461052, 34.502113, 31.839319>,  <26.423048, 34.106857, 31.791063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.461052, 34.502113, 31.839319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643601, 0.031479, -0.764713,
		-0.759441, 0.150301, -0.632977,
		0.095012, 0.988139, 0.120640,
		26.489555, 34.798553, 31.875511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.324387, 34.407806, 31.160402>,  <26.423048, 34.106857, 31.791063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.324387, 34.407806, 31.160402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.517563, 34.694798, 31.361200>,  <26.633469, 34.866993, 31.481680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.517563, 34.694798, 31.361200>,  <26.324387, 34.407806, 31.160402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.517563, 34.694798, 31.361200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618354, 0.126480, -0.775655,
		-0.620005, 0.685006, -0.382571,
		0.482941, 0.717474, 0.501995,
		26.662445, 34.910038, 31.511799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.371826, 35.213776, 30.790127>,  <26.324387, 34.407806, 31.160402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.371826, 35.213776, 30.790127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.667004, 35.101410, 31.035574>,  <26.844110, 35.033989, 31.182842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.667004, 35.101410, 31.035574>,  <26.371826, 35.213776, 30.790127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.667004, 35.101410, 31.035574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634092, -0.022622, -0.772926,
		0.231009, 0.959466, 0.161432,
		0.737944, -0.280916, 0.613616,
		26.888388, 35.017136, 31.219658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.871433, 34.682549, 30.366564>,  <26.371826, 35.213776, 30.790127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.871433, 34.682549, 30.366564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.076363, 34.424252, 30.593031>,  <27.199320, 34.269272, 30.728910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.076363, 34.424252, 30.593031>,  <26.871433, 34.682549, 30.366564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.076363, 34.424252, 30.593031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101682, 0.609010, 0.786618,
		-0.852753, -0.460570, 0.246349,
		0.512322, -0.645741, 0.566166,
		27.230059, 34.230530, 30.762880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.321001, 35.250168, 30.422018>,  <26.871433, 34.682549, 30.366564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.321001, 35.250168, 30.422018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.398878, 35.589016, 30.619797>,  <27.445604, 35.792324, 30.738464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.398878, 35.589016, 30.619797>,  <27.321001, 35.250168, 30.422018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.398878, 35.589016, 30.619797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431766, -0.378612, 0.818677,
		0.880723, -0.372875, 0.292046,
		0.194692, 0.847123, 0.494447,
		27.457285, 35.843151, 30.768131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.801109, 35.121101, 31.096045>,  <27.321001, 35.250168, 30.422018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.801109, 35.121101, 31.096045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.534042, 35.418606, 31.108932>,  <27.373802, 35.597107, 31.116665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.534042, 35.418606, 31.108932>,  <27.801109, 35.121101, 31.096045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.534042, 35.418606, 31.108932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467270, -0.452370, 0.759618,
		0.579549, 0.492119, 0.649571,
		-0.667669, 0.743761, 0.032218,
		27.333742, 35.641735, 31.118599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.749670, 35.189861, 31.842209>,  <27.801109, 35.121101, 31.096045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.749670, 35.189861, 31.842209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.451656, 35.336918, 31.619583>,  <27.272848, 35.425152, 31.486008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.451656, 35.336918, 31.619583>,  <27.749670, 35.189861, 31.842209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.451656, 35.336918, 31.619583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665058, -0.345340, 0.662147,
		0.051231, 0.863469, 0.501794,
		-0.745033, 0.367645, -0.556564,
		27.228146, 35.447212, 31.452614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.336733, 35.817619, 32.177471>,  <27.749670, 35.189861, 31.842209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.336733, 35.817619, 32.177471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.122517, 35.573158, 31.944340>,  <26.993986, 35.426479, 31.804461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.122517, 35.573158, 31.944340>,  <27.336733, 35.817619, 32.177471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.122517, 35.573158, 31.944340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690799, -0.079972, 0.718611,
		-0.485792, 0.787461, -0.379357,
		-0.535540, -0.611155, -0.582827,
		26.961855, 35.389812, 31.769491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.669857, 36.070499, 32.210648>,  <27.336733, 35.817619, 32.177471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.669857, 36.070499, 32.210648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.610228, 35.691204, 32.098495>,  <26.574450, 35.463627, 32.031204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.610228, 35.691204, 32.098495>,  <26.669857, 36.070499, 32.210648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.610228, 35.691204, 32.098495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707317, -0.095893, 0.700362,
		-0.690999, 0.302725, -0.656413,
		-0.149072, -0.948241, -0.280385,
		26.565506, 35.406731, 32.014381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.969137, 35.976677, 32.158390>,  <26.669857, 36.070499, 32.210648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.969137, 35.976677, 32.158390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.113859, 35.611397, 32.233387>,  <26.200693, 35.392227, 32.278385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.113859, 35.611397, 32.233387>,  <25.969137, 35.976677, 32.158390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.113859, 35.611397, 32.233387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807795, -0.206704, 0.552034,
		-0.465364, -0.351186, -0.812469,
		0.361807, -0.913204, 0.187493,
		26.222401, 35.337437, 32.289635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.370144, 35.454147, 32.074982>,  <25.969137, 35.976677, 32.158390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.370144, 35.454147, 32.074982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.646021, 35.276367, 32.303642>,  <25.811546, 35.169701, 32.440842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.646021, 35.276367, 32.303642>,  <25.370144, 35.454147, 32.074982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.646021, 35.276367, 32.303642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665583, -0.078199, 0.742216,
		-0.285175, -0.892384, -0.349751,
		0.689691, -0.444450, 0.571655,
		25.852928, 35.143032, 32.475140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.790134, 35.207569, 31.779823>,  <25.370144, 35.454147, 32.074982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.790134, 35.207569, 31.779823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.907907, 34.826168, 31.805573>,  <24.978571, 34.597328, 31.821022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.907907, 34.826168, 31.805573>,  <24.790134, 35.207569, 31.779823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.907907, 34.826168, 31.805573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168079, 0.014644, 0.985665,
		-0.940776, -0.301030, -0.155952,
		0.294431, -0.953502, 0.064374,
		24.996237, 34.540119, 31.824884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.944506, 34.955463, 32.445389>,  <24.790134, 35.207569, 31.779823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.944506, 34.955463, 32.445389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.293289, 34.980862, 32.639568>,  <25.502560, 34.996101, 32.756077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.293289, 34.980862, 32.639568>,  <24.944506, 34.955463, 32.445389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.293289, 34.980862, 32.639568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484976, -0.023698, 0.874207,
		0.067014, -0.997701, 0.010132,
		0.871956, 0.063498, 0.485449,
		25.554876, 34.999908, 32.785202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.729710, 34.646313, 33.034489>,  <24.944506, 34.955463, 32.445389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.729710, 34.646313, 33.034489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.093596, 34.781723, 33.130669>,  <25.311928, 34.862968, 33.188377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.093596, 34.781723, 33.130669>,  <24.729710, 34.646313, 33.034489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.093596, 34.781723, 33.130669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244215, -0.032130, 0.969189,
		0.335820, -0.940409, 0.053444,
		0.909716, 0.338524, 0.240452,
		25.366510, 34.883282, 33.202805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.257452, 34.176968, 33.337952>,  <24.729710, 34.646313, 33.034489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.257452, 34.176968, 33.337952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.502232, 34.483131, 33.417618>,  <25.649099, 34.666828, 33.465420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.502232, 34.483131, 33.417618>,  <25.257452, 34.176968, 33.337952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.502232, 34.483131, 33.417618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269165, -0.035242, 0.962449,
		0.743687, -0.642577, 0.184456,
		0.611947, 0.765410, 0.199168,
		25.685816, 34.712753, 33.477367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.536324, 34.070480, 33.964684>,  <25.257452, 34.176968, 33.337952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.536324, 34.070480, 33.964684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.586298, 34.462605, 33.903519>,  <25.616283, 34.697880, 33.866817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.586298, 34.462605, 33.903519>,  <25.536324, 34.070480, 33.964684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.586298, 34.462605, 33.903519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474977, 0.194412, 0.858255,
		0.871084, -0.034596, 0.489914,
		0.124937, 0.980310, -0.152916,
		25.623779, 34.756699, 33.857643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.877359, 34.414547, 34.615280>,  <25.536324, 34.070480, 33.964684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.877359, 34.414547, 34.615280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.707331, 34.704079, 34.397884>,  <25.605312, 34.877800, 34.267448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.707331, 34.704079, 34.397884>,  <25.877359, 34.414547, 34.615280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.707331, 34.704079, 34.397884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507558, 0.306549, 0.805241,
		0.749465, 0.618139, 0.237081,
		-0.425073, 0.723832, -0.543489,
		25.579809, 34.921227, 34.234837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.048981, 34.986069, 35.005184>,  <25.877359, 34.414547, 34.615280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.048981, 34.986069, 35.005184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.711180, 35.053936, 34.801998>,  <25.508499, 35.094658, 34.680088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.711180, 35.053936, 34.801998>,  <26.048981, 34.986069, 35.005184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.711180, 35.053936, 34.801998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376214, 0.487095, 0.788163,
		0.381152, 0.856709, -0.347522,
		-0.844503, 0.169667, -0.507964,
		25.457829, 35.104836, 34.649609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.717073, 35.708839, 35.279270>,  <26.048981, 34.986069, 35.005184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.717073, 35.708839, 35.279270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.432533, 35.494244, 35.097649>,  <25.261808, 35.365486, 34.988674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.432533, 35.494244, 35.097649>,  <25.717073, 35.708839, 35.279270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.432533, 35.494244, 35.097649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634063, 0.211133, 0.743900,
		-0.303225, 0.817072, -0.490355,
		-0.711350, -0.536485, -0.454054,
		25.219128, 35.333298, 34.961433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.411327, 35.954285, 35.615303>,  <25.717073, 35.708839, 35.279270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.411327, 35.954285, 35.615303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.117775, 35.936211, 35.886410>,  <25.941643, 35.925365, 36.049076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.117775, 35.936211, 35.886410>,  <26.411327, 35.954285, 35.615303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.117775, 35.936211, 35.886410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546827, -0.552645, -0.628939,
		0.402984, -0.832191, 0.380869,
		-0.733883, -0.045183, 0.677771,
		25.897610, 35.922657, 36.089741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.291391, 35.261124, 35.883015>,  <26.411327, 35.954285, 35.615303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.291391, 35.261124, 35.883015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.951981, 35.467499, 35.930016>,  <25.748335, 35.591324, 35.958218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.951981, 35.467499, 35.930016>,  <26.291391, 35.261124, 35.883015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.951981, 35.467499, 35.930016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454611, -0.597151, -0.660863,
		-0.270797, -0.614180, 0.741250,
		-0.848527, 0.515940, 0.117506,
		25.697422, 35.622280, 35.965267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.941065, 34.949860, 35.707310>,  <26.291391, 35.261124, 35.883015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.941065, 34.949860, 35.707310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.290394, 35.028164, 35.528877>,  <27.499990, 35.075146, 35.421818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.290394, 35.028164, 35.528877>,  <26.941065, 34.949860, 35.707310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.290394, 35.028164, 35.528877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417514, -0.772558, 0.478369,
		-0.250979, -0.604015, -0.756423,
		0.873323, 0.195756, -0.446080,
		27.552391, 35.086891, 35.395054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.280933, 34.211926, 35.353085>,  <26.941065, 34.949860, 35.707310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.280933, 34.211926, 35.353085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.516510, 34.503723, 35.492222>,  <27.657856, 34.678802, 35.575703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.516510, 34.503723, 35.492222>,  <27.280933, 34.211926, 35.353085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.516510, 34.503723, 35.492222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474963, -0.660649, 0.581337,
		0.653881, -0.177161, -0.735564,
		0.588940, 0.729491, 0.347840,
		27.693192, 34.722569, 35.596573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.924667, 34.018150, 35.387115>,  <27.280933, 34.211926, 35.353085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.924667, 34.018150, 35.387115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.944363, 34.308075, 35.661991>,  <27.956181, 34.482029, 35.826916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.944363, 34.308075, 35.661991>,  <27.924667, 34.018150, 35.387115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.944363, 34.308075, 35.661991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580265, -0.580761, 0.570972,
		0.812938, 0.370638, -0.449177,
		0.049240, 0.724807, 0.687190,
		27.959135, 34.525517, 35.868149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.604300, 33.950478, 35.681927>,  <27.924667, 34.018150, 35.387115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.604300, 33.950478, 35.681927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.393257, 34.160549, 35.949005>,  <28.266632, 34.286594, 36.109253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.393257, 34.160549, 35.949005>,  <28.604300, 33.950478, 35.681927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.393257, 34.160549, 35.949005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337587, -0.591639, 0.732120,
		0.779529, 0.611676, 0.134859,
		-0.527608, 0.525182, 0.667693,
		28.234974, 34.318104, 36.149315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.660814, 33.230061, 35.887127>,  <28.604300, 33.950478, 35.681927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.660814, 33.230061, 35.887127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.998695, 33.195824, 35.675789>,  <29.201424, 33.175282, 35.548985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.998695, 33.195824, 35.675789>,  <28.660814, 33.230061, 35.887127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.998695, 33.195824, 35.675789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243382, 0.940597, 0.236732,
		0.476697, -0.328558, 0.815359,
		0.844704, -0.085594, -0.528345,
		29.252106, 33.170147, 35.517284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.255436, 33.311432, 36.382244>,  <28.660814, 33.230061, 35.887127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.255436, 33.311432, 36.382244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.259665, 33.448429, 36.006458>,  <29.262201, 33.530628, 35.780987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.259665, 33.448429, 36.006458>,  <29.255436, 33.311432, 36.382244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.259665, 33.448429, 36.006458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056711, 0.938206, 0.341400,
		0.998335, 0.049668, 0.029342,
		0.010572, 0.342495, -0.939460,
		29.262836, 33.551178, 35.724621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.120096, 34.056129, 36.314774>,  <29.255436, 33.311432, 36.382244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.120096, 34.056129, 36.314774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.739178, 34.085094, 36.433357>,  <28.510626, 34.102474, 36.504509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.739178, 34.085094, 36.433357>,  <29.120096, 34.056129, 36.314774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.739178, 34.085094, 36.433357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160240, -0.708107, 0.687683,
		0.259718, 0.702383, 0.662726,
		-0.952297, 0.072408, 0.296458,
		28.453489, 34.106815, 36.522293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.286945, 33.976372, 36.934940>,  <29.120096, 34.056129, 36.314774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.286945, 33.976372, 36.934940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.891798, 33.927799, 36.896214>,  <28.654711, 33.898655, 36.872978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.891798, 33.927799, 36.896214>,  <29.286945, 33.976372, 36.934940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.891798, 33.927799, 36.896214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028768, -0.755710, 0.654274,
		-0.152616, 0.643550, 0.750034,
		-0.987867, -0.121430, -0.096819,
		28.595438, 33.891369, 36.867168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.851822, 33.910469, 37.609535>,  <29.286945, 33.976372, 36.934940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.851822, 33.910469, 37.609535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.668951, 33.677265, 37.340881>,  <28.559229, 33.537342, 37.179688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.668951, 33.677265, 37.340881>,  <28.851822, 33.910469, 37.609535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.668951, 33.677265, 37.340881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112347, -0.711268, 0.693884,
		-0.882250, 0.392685, 0.259678,
		-0.457179, -0.583005, -0.671634,
		28.531797, 33.502365, 37.139393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.235500, 33.278488, 37.520878>,  <28.851822, 33.910469, 37.609535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.235500, 33.278488, 37.520878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.039112, 33.212826, 37.863106>,  <28.921280, 33.173428, 38.068443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.039112, 33.212826, 37.863106>,  <29.235500, 33.278488, 37.520878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.039112, 33.212826, 37.863106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764273, 0.552527, -0.332568,
		-0.418135, -0.817171, -0.396730,
		-0.490969, -0.164152, 0.855572,
		28.891821, 33.163582, 38.119778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.584574, 32.990788, 37.457973>,  <29.235500, 33.278488, 37.520878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.584574, 32.990788, 37.457973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.567223, 33.204350, 37.795746>,  <28.556812, 33.332485, 37.998409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.567223, 33.204350, 37.795746>,  <28.584574, 32.990788, 37.457973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.567223, 33.204350, 37.795746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711529, 0.576821, -0.401252,
		-0.701316, -0.618245, 0.354865,
		-0.043379, 0.533902, 0.844433,
		28.554209, 33.364521, 38.049076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.636301, 32.505913, 36.940651>,  <28.584574, 32.990788, 37.457973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.636301, 32.505913, 36.940651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.376673, 32.608963, 37.226963>,  <28.220896, 32.670792, 37.398750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.376673, 32.608963, 37.226963>,  <28.636301, 32.505913, 36.940651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.376673, 32.608963, 37.226963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072227, 0.915792, -0.395106,
		-0.757291, -0.308150, -0.575806,
		-0.649071, 0.257622, 0.715778,
		28.181952, 32.686249, 37.441696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.078253, 32.671566, 36.554977>,  <28.636301, 32.505913, 36.940651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.078253, 32.671566, 36.554977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.086157, 32.835342, 36.919827>,  <28.090900, 32.933609, 37.138737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.086157, 32.835342, 36.919827>,  <28.078253, 32.671566, 36.554977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.086157, 32.835342, 36.919827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045017, 0.911738, -0.408298,
		-0.998791, -0.032993, 0.036449,
		0.019761, 0.409445, 0.912121,
		28.092085, 32.958176, 37.193462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.616312, 33.302319, 36.383347>,  <28.078253, 32.671566, 36.554977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.616312, 33.302319, 36.383347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.848251, 33.366589, 36.702835>,  <27.987415, 33.405151, 36.894527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.848251, 33.366589, 36.702835>,  <27.616312, 33.302319, 36.383347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.848251, 33.366589, 36.702835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044672, 0.972615, -0.228087,
		-0.813499, 0.167937, 0.556791,
		0.579848, 0.160675, 0.798724,
		28.022205, 33.414791, 36.942451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.294245, 33.705990, 36.823513>,  <27.616312, 33.302319, 36.383347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.294245, 33.705990, 36.823513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.689034, 33.762684, 36.853973>,  <27.925907, 33.796700, 36.872250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.689034, 33.762684, 36.853973>,  <27.294245, 33.705990, 36.823513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.689034, 33.762684, 36.853973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098066, 0.905141, -0.413646,
		-0.127557, 0.400789, 0.907247,
		0.986971, 0.141733, 0.076153,
		27.985125, 33.805202, 36.876820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.386847, 34.331024, 37.231094>,  <27.294245, 33.705990, 36.823513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.386847, 34.331024, 37.231094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.699221, 34.263767, 36.990475>,  <27.886646, 34.223412, 36.846104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.699221, 34.263767, 36.990475>,  <27.386847, 34.331024, 37.231094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.699221, 34.263767, 36.990475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162235, 0.875426, -0.455312,
		0.603174, 0.453163, 0.656373,
		0.780936, -0.168146, -0.601553,
		27.933502, 34.213322, 36.810009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.537657, 34.942326, 37.014805>,  <27.386847, 34.331024, 37.231094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.537657, 34.942326, 37.014805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.756802, 34.750069, 36.740921>,  <27.888288, 34.634716, 36.576591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.756802, 34.750069, 36.740921>,  <27.537657, 34.942326, 37.014805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.756802, 34.750069, 36.740921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121581, 0.764043, -0.633606,
		0.827686, 0.430377, 0.360154,
		0.547863, -0.480640, -0.684713,
		27.921160, 34.605877, 36.535507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.073282, 35.466896, 36.758953>,  <27.537657, 34.942326, 37.014805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.073282, 35.466896, 36.758953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.027142, 35.183403, 36.480556>,  <27.999456, 35.013309, 36.313519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.027142, 35.183403, 36.480556>,  <28.073282, 35.466896, 36.758953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.027142, 35.183403, 36.480556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055494, 0.704168, -0.707861,
		0.991773, -0.043030, -0.120558,
		-0.115352, -0.708728, -0.695987,
		27.992537, 34.970783, 36.271759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.590666, 35.514565, 36.163364>,  <28.073282, 35.466896, 36.758953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.590666, 35.514565, 36.163364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.279381, 35.318424, 36.006424>,  <28.092609, 35.200741, 35.912262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.279381, 35.318424, 36.006424>,  <28.590666, 35.514565, 36.163364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.279381, 35.318424, 36.006424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087991, 0.703734, -0.704993,
		0.621804, -0.514112, -0.590803,
		-0.778214, -0.490353, -0.392348,
		28.045918, 35.171318, 35.888718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.782156, 35.384418, 35.450821>,  <28.590666, 35.514565, 36.163364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.782156, 35.384418, 35.450821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.385113, 35.403568, 35.495426>,  <28.146887, 35.415058, 35.522190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.385113, 35.403568, 35.495426>,  <28.782156, 35.384418, 35.450821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.385113, 35.403568, 35.495426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045851, 0.702832, -0.709877,
		-0.112364, -0.709743, -0.695442,
		-0.992609, 0.047877, 0.111515,
		28.087330, 35.417931, 35.528881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.474329, 35.330864, 34.768532>,  <28.782156, 35.384418, 35.450821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.474329, 35.330864, 34.768532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.249264, 35.559849, 35.007092>,  <28.114223, 35.697239, 35.150227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.249264, 35.559849, 35.007092>,  <28.474329, 35.330864, 34.768532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.249264, 35.559849, 35.007092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130457, 0.773886, -0.619743,
		-0.816327, -0.270902, -0.510120,
		-0.562664, 0.572461, 0.596403,
		28.080465, 35.731586, 35.186012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.603678, 34.588997, 34.483398>,  <28.474329, 35.330864, 34.768532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.603678, 34.588997, 34.483398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.673723, 34.229553, 34.644314>,  <28.715750, 34.013885, 34.740864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.673723, 34.229553, 34.644314>,  <28.603678, 34.588997, 34.483398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.673723, 34.229553, 34.644314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984548, 0.160128, -0.070879,
		-0.000724, 0.408480, 0.912767,
		0.175112, -0.898612, 0.402285,
		28.726257, 33.959969, 34.764999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.123724, 34.734074, 34.961674>,  <28.603678, 34.588997, 34.483398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.123724, 34.734074, 34.961674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.124746, 34.353352, 34.839001>,  <29.125360, 34.124916, 34.765396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.124746, 34.353352, 34.839001>,  <29.123724, 34.734074, 34.961674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.124746, 34.353352, 34.839001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999199, 0.014678, -0.037229,
		0.039936, -0.306339, 0.951084,
		0.002555, -0.951809, -0.306680,
		29.125513, 34.067810, 34.746998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.617832, 34.318329, 35.387157>,  <29.123724, 34.734074, 34.961674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.617832, 34.318329, 35.387157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.563396, 34.131252, 35.037815>,  <29.530735, 34.019005, 34.828209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.563396, 34.131252, 35.037815>,  <29.617832, 34.318329, 35.387157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.563396, 34.131252, 35.037815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974535, -0.221780, -0.033089,
		-0.178217, -0.855616, 0.485963,
		-0.136089, -0.467691, -0.873353,
		29.522570, 33.990944, 34.775810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.941902, 33.618938, 35.433231>,  <29.617832, 34.318329, 35.387157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.941902, 33.618938, 35.433231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.952816, 33.739338, 35.051937>,  <29.959364, 33.811577, 34.823162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.952816, 33.739338, 35.051937>,  <29.941902, 33.618938, 35.433231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.952816, 33.739338, 35.051937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946176, -0.315422, -0.072516,
		-0.322498, -0.899948, -0.293409,
		0.027287, 0.301003, -0.953233,
		29.961002, 33.829639, 34.765968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.533731, 33.975327, 35.323803>,  <29.941902, 33.618938, 35.433231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.533731, 33.975327, 35.323803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.849941, 34.185635, 35.449429>,  <31.039667, 34.311821, 35.524803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.849941, 34.185635, 35.449429>,  <30.533731, 33.975327, 35.323803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.849941, 34.185635, 35.449429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574352, 0.458464, 0.678182,
		0.212581, -0.716503, 0.664404,
		0.790525, 0.525770, 0.314064,
		31.087099, 34.343365, 35.543648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.457918, 33.974041, 36.001968>,  <30.533731, 33.975327, 35.323803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.457918, 33.974041, 36.001968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.725311, 34.267349, 35.952259>,  <30.885748, 34.443333, 35.922432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.725311, 34.267349, 35.952259>,  <30.457918, 33.974041, 36.001968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.725311, 34.267349, 35.952259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493173, 0.562123, 0.663926,
		0.556682, -0.382549, 0.737402,
		0.668495, 0.733262, -0.124261,
		30.925856, 34.487331, 35.914974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.809689, 34.219875, 36.731979>,  <30.457918, 33.974041, 36.001968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.809689, 34.219875, 36.731979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.804964, 34.512566, 36.459377>,  <30.802130, 34.688179, 36.295818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.804964, 34.512566, 36.459377>,  <30.809689, 34.219875, 36.731979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.804964, 34.512566, 36.459377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354500, 0.634214, 0.687096,
		0.934981, 0.249709, 0.251903,
		-0.011814, 0.731722, -0.681501,
		30.801420, 34.732082, 36.254929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.961861, 34.711845, 37.159214>,  <30.809689, 34.219875, 36.731979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.961861, 34.711845, 37.159214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.780941, 34.886982, 36.848415>,  <30.672388, 34.992065, 36.661938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.780941, 34.886982, 36.848415>,  <30.961861, 34.711845, 37.159214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.780941, 34.886982, 36.848415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242904, 0.777791, 0.579688,
		0.858150, 0.450928, -0.245443,
		-0.452301, 0.437840, -0.776994,
		30.645250, 35.018333, 36.615318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.396029, 34.923885, 37.480133>,  <30.961861, 34.711845, 37.159214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.396029, 34.923885, 37.480133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.528017, 35.266827, 37.322113>,  <30.607210, 35.472591, 37.227303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.528017, 35.266827, 37.322113>,  <30.396029, 34.923885, 37.480133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.528017, 35.266827, 37.322113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433005, -0.509329, -0.743701,
		-0.838824, 0.074344, -0.539303,
		0.329973, 0.857355, -0.395046,
		30.627008, 35.524033, 37.203598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.043074, 35.044128, 36.830502>,  <30.396029, 34.923885, 37.480133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.043074, 35.044128, 36.830502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.406878, 35.209736, 36.845348>,  <30.625160, 35.309101, 36.854256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.406878, 35.209736, 36.845348>,  <30.043074, 35.044128, 36.830502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.406878, 35.209736, 36.845348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262081, -0.501832, -0.824305,
		-0.322654, 0.759441, -0.564928,
		0.909510, 0.414022, 0.037117,
		30.679731, 35.333942, 36.856483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.290634, 35.327953, 36.185284>,  <30.043074, 35.044128, 36.830502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.290634, 35.327953, 36.185284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.631962, 35.266327, 36.384529>,  <30.836758, 35.229351, 36.504074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.631962, 35.266327, 36.384529>,  <30.290634, 35.327953, 36.185284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.631962, 35.266327, 36.384529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360633, -0.515560, -0.777265,
		0.376555, 0.842889, -0.384375,
		0.853317, -0.154065, 0.498110,
		30.887957, 35.220108, 36.533962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.920904, 35.665905, 35.767902>,  <30.290634, 35.327953, 36.185284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.920904, 35.665905, 35.767902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.004023, 35.339443, 35.983574>,  <31.053894, 35.143566, 36.112976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.004023, 35.339443, 35.983574>,  <30.920904, 35.665905, 35.767902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.004023, 35.339443, 35.983574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347967, -0.453478, -0.820534,
		0.914188, 0.358119, 0.189764,
		0.207795, -0.816155, 0.539178,
		31.066360, 35.094597, 36.145329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.672293, 35.528053, 35.772881>,  <30.920904, 35.665905, 35.767902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.672293, 35.528053, 35.772881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.470171, 35.187366, 35.828362>,  <31.348898, 34.982952, 35.861652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.470171, 35.187366, 35.828362>,  <31.672293, 35.528053, 35.772881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.470171, 35.187366, 35.828362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405032, -0.376018, -0.833403,
		0.761982, -0.364941, 0.534977,
		-0.505304, -0.851721, 0.138706,
		31.318581, 34.931850, 35.869972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.108513, 35.076199, 35.831631>,  <31.672293, 35.528053, 35.772881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.108513, 35.076199, 35.831631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.781092, 34.873837, 35.722797>,  <31.584639, 34.752419, 35.657497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.781092, 34.873837, 35.722797>,  <32.108513, 35.076199, 35.831631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.781092, 34.873837, 35.722797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477152, -0.335093, -0.812428,
		0.319843, -0.794838, 0.515687,
		-0.818551, -0.505910, -0.272082,
		31.535526, 34.722065, 35.641174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.385197, 34.397823, 35.767780>,  <32.108513, 35.076199, 35.831631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.385197, 34.397823, 35.767780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.041214, 34.453045, 35.571243>,  <31.834824, 34.486176, 35.453323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.041214, 34.453045, 35.571243>,  <32.385197, 34.397823, 35.767780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.041214, 34.453045, 35.571243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449162, -0.252407, -0.857055,
		-0.242305, -0.957727, 0.155070,
		-0.859966, 0.138017, -0.491335,
		31.783226, 34.494461, 35.423843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.222733, 33.860535, 35.168633>,  <32.385197, 34.397823, 35.767780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.222733, 33.860535, 35.168633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.068405, 34.222404, 35.096298>,  <31.975809, 34.439526, 35.052898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.068405, 34.222404, 35.096298>,  <32.222733, 33.860535, 35.168633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.068405, 34.222404, 35.096298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556779, 0.072028, -0.827532,
		-0.735625, -0.419962, -0.531495,
		-0.385815, 0.904679, -0.180840,
		31.952662, 34.493809, 35.042046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.048244, 33.944859, 34.402149>,  <32.222733, 33.860535, 35.168633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.048244, 33.944859, 34.402149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.136101, 34.289173, 34.585804>,  <32.188812, 34.495762, 34.695995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.136101, 34.289173, 34.585804>,  <32.048244, 33.944859, 34.402149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.136101, 34.289173, 34.585804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669050, 0.209617, -0.713045,
		-0.710023, 0.463795, -0.529870,
		0.219637, 0.860787, 0.459135,
		32.201992, 34.547409, 34.723545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.929110, 34.383137, 33.971928>,  <32.048244, 33.944859, 34.402149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.929110, 34.383137, 33.971928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.200008, 34.548828, 34.215157>,  <32.362549, 34.648243, 34.361095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.200008, 34.548828, 34.215157>,  <31.929110, 34.383137, 33.971928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.200008, 34.548828, 34.215157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523038, 0.310203, -0.793855,
		-0.517464, 0.855680, -0.006573,
		0.677247, 0.414229, 0.608072,
		32.403183, 34.673096, 34.397579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.078182, 34.955894, 33.670021>,  <31.929110, 34.383137, 33.971928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.078182, 34.955894, 33.670021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.397720, 34.926674, 33.908855>,  <32.589443, 34.909142, 34.052158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.397720, 34.926674, 33.908855>,  <32.078182, 34.955894, 33.670021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.397720, 34.926674, 33.908855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591614, 0.274978, -0.757879,
		-0.108823, 0.958672, 0.262881,
		0.798843, -0.073049, 0.597088,
		32.637375, 34.904758, 34.087982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.408676, 35.510448, 33.651730>,  <32.078182, 34.955894, 33.670021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.408676, 35.510448, 33.651730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.697708, 35.267643, 33.784039>,  <32.871128, 35.121960, 33.863422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.697708, 35.267643, 33.784039>,  <32.408676, 35.510448, 33.651730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.697708, 35.267643, 33.784039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659023, 0.460397, -0.594747,
		0.208734, 0.647739, 0.732710,
		0.722578, -0.607017, 0.330774,
		32.914482, 35.085537, 33.883270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.872288, 35.913734, 33.471790>,  <32.408676, 35.510448, 33.651730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.872288, 35.913734, 33.471790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.073074, 35.579941, 33.562710>,  <33.193546, 35.379665, 33.617260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.073074, 35.579941, 33.562710>,  <32.872288, 35.913734, 33.471790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.073074, 35.579941, 33.562710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669622, 0.208641, -0.712794,
		0.547394, 0.510000, 0.663521,
		0.501963, -0.834487, 0.227299,
		33.223663, 35.329594, 33.630898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.634583, 36.163383, 33.639545>,  <32.872288, 35.913734, 33.471790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.634583, 36.163383, 33.639545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.630520, 35.778725, 33.529907>,  <33.628082, 35.547928, 33.464123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.630520, 35.778725, 33.529907>,  <33.634583, 36.163383, 33.639545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.630520, 35.778725, 33.529907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689792, 0.191713, -0.698164,
		0.723937, -0.196157, 0.661391,
		-0.010153, -0.961649, -0.274096,
		33.627476, 35.490231, 33.447678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.306831, 36.002335, 33.562378>,  <33.634583, 36.163383, 33.639545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.306831, 36.002335, 33.562378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.141735, 35.698277, 33.361652>,  <34.042675, 35.515842, 33.241215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.141735, 35.698277, 33.361652>,  <34.306831, 36.002335, 33.562378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.141735, 35.698277, 33.361652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600463, 0.187190, -0.777435,
		0.684899, -0.622203, 0.379179,
		-0.412744, -0.760147, -0.501816,
		34.017910, 35.470234, 33.211109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.907425, 35.705605, 33.322952>,  <34.306831, 36.002335, 33.562378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.907425, 35.705605, 33.322952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.606392, 35.593464, 33.084621>,  <34.425770, 35.526180, 32.941624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.606392, 35.593464, 33.084621>,  <34.907425, 35.705605, 33.322952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.606392, 35.593464, 33.084621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567100, 0.183940, -0.802848,
		0.334679, -0.942108, 0.020558,
		-0.752588, -0.280355, -0.595830,
		34.380615, 35.509357, 32.905872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.235649, 35.397469, 32.828629>,  <34.907425, 35.705605, 33.322952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.235649, 35.397469, 32.828629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.880638, 35.456059, 32.653889>,  <34.667629, 35.491211, 32.549046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.880638, 35.456059, 32.653889>,  <35.235649, 35.397469, 32.828629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.880638, 35.456059, 32.653889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460598, 0.257714, -0.849372,
		-0.011830, -0.955054, -0.296195,
		-0.887530, 0.146475, -0.436847,
		34.614380, 35.500000, 32.522835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.332169, 35.179039, 32.094166>,  <35.235649, 35.397469, 32.828629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.332169, 35.179039, 32.094166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.015450, 35.423069, 32.105873>,  <34.825417, 35.569489, 32.112896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.015450, 35.423069, 32.105873>,  <35.332169, 35.179039, 32.094166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.015450, 35.423069, 32.105873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326428, 0.463184, -0.823957,
		-0.516233, -0.642857, -0.565896,
		-0.791801, 0.610078, 0.029264,
		34.777908, 35.606091, 32.114651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.047028, 35.056873, 31.436035>,  <35.332169, 35.179039, 32.094166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.047028, 35.056873, 31.436035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.940910, 35.418461, 31.570179>,  <34.877239, 35.635414, 31.650665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.940910, 35.418461, 31.570179>,  <35.047028, 35.056873, 31.436035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.940910, 35.418461, 31.570179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392845, 0.418985, -0.818611,
		-0.880507, -0.085427, -0.466271,
		-0.265292, 0.903965, 0.335360,
		34.861324, 35.689651, 31.670788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.724625, 35.312679, 30.898851>,  <35.047028, 35.056873, 31.436035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.724625, 35.312679, 30.898851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.809143, 35.634933, 31.120230>,  <34.859856, 35.828285, 31.253056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.809143, 35.634933, 31.120230>,  <34.724625, 35.312679, 30.898851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.809143, 35.634933, 31.120230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216926, 0.513455, -0.830245,
		-0.953045, 0.295487, -0.066271,
		0.211300, 0.805637, 0.553445,
		34.872532, 35.876625, 31.286263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.445740, 35.869644, 30.571648>,  <34.724625, 35.312679, 30.898851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.445740, 35.869644, 30.571648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.725510, 36.021545, 30.813835>,  <34.893372, 36.112686, 30.959146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.725510, 36.021545, 30.813835>,  <34.445740, 35.869644, 30.571648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.725510, 36.021545, 30.813835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309206, 0.602990, -0.735387,
		-0.644356, 0.701563, 0.304326,
		0.699426, 0.379752, 0.605468,
		34.935337, 36.135471, 30.995476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.314693, 36.547775, 30.664785>,  <34.445740, 35.869644, 30.571648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.314693, 36.547775, 30.664785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.711681, 36.514362, 30.700630>,  <34.949875, 36.494312, 30.722137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.711681, 36.514362, 30.700630>,  <34.314693, 36.547775, 30.664785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.711681, 36.514362, 30.700630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120140, 0.806797, -0.578485,
		-0.023977, 0.584894, 0.810755,
		0.992467, -0.083534, 0.089614,
		35.009422, 36.489304, 30.727514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.452358, 37.119194, 30.515442>,  <34.314693, 36.547775, 30.664785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.452358, 37.119194, 30.515442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.812130, 36.945747, 30.493504>,  <35.027992, 36.841679, 30.480341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.812130, 36.945747, 30.493504>,  <34.452358, 37.119194, 30.515442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.812130, 36.945747, 30.493504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298270, 0.700676, -0.648143,
		0.319474, 0.566598, 0.759541,
		0.899429, -0.433613, -0.054848,
		35.081959, 36.815662, 30.477049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.818409, 37.675983, 30.698521>,  <34.452358, 37.119194, 30.515442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.818409, 37.675983, 30.698521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.035072, 37.399570, 30.507072>,  <35.165070, 37.233723, 30.392204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.035072, 37.399570, 30.507072>,  <34.818409, 37.675983, 30.698521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.035072, 37.399570, 30.507072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474258, 0.721329, -0.504742,
		0.694038, 0.046407, 0.718441,
		0.541656, -0.691036, -0.478621,
		35.197571, 37.192261, 30.363485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.535664, 37.927711, 30.671099>,  <34.818409, 37.675983, 30.698521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.535664, 37.927711, 30.671099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.501896, 37.649590, 30.385603>,  <35.481636, 37.482716, 30.214306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.501896, 37.649590, 30.385603>,  <35.535664, 37.927711, 30.671099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.501896, 37.649590, 30.385603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389665, 0.636220, -0.665873,
		0.917080, -0.334331, 0.217227,
		-0.084417, -0.695304, -0.713741,
		35.476570, 37.440998, 30.171480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.170879, 38.071800, 30.174995>,  <35.535664, 37.927711, 30.671099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.170879, 38.071800, 30.174995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.911880, 37.837196, 29.980368>,  <35.756481, 37.696434, 29.863590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.911880, 37.837196, 29.980368>,  <36.170879, 38.071800, 30.174995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.911880, 37.837196, 29.980368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160447, 0.519256, -0.839422,
		0.744986, -0.621592, -0.242113,
		-0.647497, -0.586511, -0.486571,
		35.717632, 37.661243, 29.834396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.459690, 37.862984, 29.566278>,  <36.170879, 38.071800, 30.174995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.459690, 37.862984, 29.566278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.071522, 37.806366, 29.488049>,  <35.838619, 37.772396, 29.441111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.071522, 37.806366, 29.488049>,  <36.459690, 37.862984, 29.566278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.071522, 37.806366, 29.488049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060169, 0.642743, -0.763715,
		0.233801, -0.752892, -0.615215,
		-0.970421, -0.141540, -0.195575,
		35.780396, 37.763905, 29.429377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.414070, 37.685493, 28.894394>,  <36.459690, 37.862984, 29.566278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.414070, 37.685493, 28.894394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.050293, 37.824760, 28.985329>,  <35.832027, 37.908321, 29.039890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.050293, 37.824760, 28.985329>,  <36.414070, 37.685493, 28.894394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.050293, 37.824760, 28.985329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057424, 0.436320, -0.897957,
		-0.411835, -0.829700, -0.376817,
		-0.909447, 0.348172, 0.227336,
		35.777458, 37.929211, 29.053530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.171452, 37.995571, 28.243465>,  <36.414070, 37.685493, 28.894394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.171452, 37.995571, 28.243465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.925720, 38.153652, 28.516645>,  <35.778282, 38.248501, 28.680553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.925720, 38.153652, 28.516645>,  <36.171452, 37.995571, 28.243465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.925720, 38.153652, 28.516645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241560, 0.729776, -0.639590,
		-0.751168, -0.557889, -0.352854,
		-0.614325, 0.395205, 0.682949,
		35.741425, 38.272213, 28.721531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.569275, 38.040798, 27.887161>,  <36.171452, 37.995571, 28.243465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.569275, 38.040798, 27.887161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.571056, 38.289745, 28.200247>,  <35.572124, 38.439114, 28.388098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.571056, 38.289745, 28.200247>,  <35.569275, 38.040798, 27.887161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.571056, 38.289745, 28.200247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302952, 0.746778, -0.592067,
		-0.952995, -0.234491, 0.191869,
		0.004450, 0.622364, 0.782715,
		35.572392, 38.476456, 28.435061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.987263, 38.598309, 27.740513>,  <35.569275, 38.040798, 27.887161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.987263, 38.598309, 27.740513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.216904, 38.767700, 28.020819>,  <35.354687, 38.869335, 28.189003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.216904, 38.767700, 28.020819>,  <34.987263, 38.598309, 27.740513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.216904, 38.767700, 28.020819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077400, 0.880097, -0.468443,
		-0.815117, 0.214694, 0.538043,
		0.574102, 0.423480, 0.700765,
		35.389133, 38.894745, 28.231049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.741470, 39.235077, 27.786306>,  <34.987263, 38.598309, 27.740513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.741470, 39.235077, 27.786306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.074646, 39.282547, 28.002501>,  <35.274551, 39.311031, 28.132217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.074646, 39.282547, 28.002501>,  <34.741470, 39.235077, 27.786306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.074646, 39.282547, 28.002501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174276, 0.870766, -0.459777,
		-0.525201, 0.477161, 0.704615,
		0.832942, 0.118678, 0.540484,
		35.324528, 39.318150, 28.164646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.776947, 39.953384, 28.006535>,  <34.741470, 39.235077, 27.786306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.776947, 39.953384, 28.006535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.144989, 39.796726, 28.008362>,  <35.365814, 39.702732, 28.009459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.144989, 39.796726, 28.008362>,  <34.776947, 39.953384, 28.006535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.144989, 39.796726, 28.008362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332418, 0.774690, -0.537916,
		0.207134, 0.496457, 0.842986,
		0.920105, -0.391644, 0.004567,
		35.421021, 39.679234, 28.009731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.216396, 40.488293, 27.895462>,  <34.776947, 39.953384, 28.006535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.216396, 40.488293, 27.895462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.469231, 40.197330, 27.788618>,  <35.620934, 40.022755, 27.724512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.469231, 40.197330, 27.788618>,  <35.216396, 40.488293, 27.895462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.469231, 40.197330, 27.788618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398061, 0.600551, -0.693459,
		0.664838, 0.332002, 0.669153,
		0.632090, -0.727402, -0.267112,
		35.658859, 39.979111, 27.708485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.850533, 40.811298, 28.074245>,  <35.216396, 40.488293, 27.895462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.850533, 40.811298, 28.074245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.933548, 40.518204, 27.815010>,  <35.983356, 40.342346, 27.659468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.933548, 40.518204, 27.815010>,  <35.850533, 40.811298, 28.074245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.933548, 40.518204, 27.815010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460538, 0.657688, -0.596112,
		0.863036, -0.174755, 0.473950,
		0.207538, -0.732739, -0.648091,
		35.995808, 40.298382, 27.620583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.545414, 40.851780, 27.883402>,  <35.850533, 40.811298, 28.074245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.545414, 40.851780, 27.883402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.374851, 40.670181, 27.570463>,  <36.272514, 40.561222, 27.382700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.374851, 40.670181, 27.570463>,  <36.545414, 40.851780, 27.883402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.374851, 40.670181, 27.570463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470409, 0.627455, -0.620496,
		0.772589, -0.632607, -0.053988,
		-0.426405, -0.453992, -0.782349,
		36.246929, 40.533985, 27.335758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.056923, 40.959644, 27.480499>,  <36.545414, 40.851780, 27.883402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.056923, 40.959644, 27.480499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.741573, 40.851887, 27.259266>,  <36.552364, 40.787231, 27.126526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.741573, 40.851887, 27.259266>,  <37.056923, 40.959644, 27.480499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.741573, 40.851887, 27.259266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368354, 0.513362, -0.775097,
		0.492727, -0.814797, -0.305495,
		-0.788375, -0.269381, -0.553081,
		36.505062, 40.771069, 27.093340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.358757, 40.771564, 26.799887>,  <37.056923, 40.959644, 27.480499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.358757, 40.771564, 26.799887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.974560, 40.862881, 26.736223>,  <36.744041, 40.917671, 26.698025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.974560, 40.862881, 26.736223>,  <37.358757, 40.771564, 26.799887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.974560, 40.862881, 26.736223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266783, 0.592547, -0.760076,
		-0.079210, -0.772510, -0.630043,
		-0.960496, 0.228291, -0.159157,
		36.686413, 40.931366, 26.688477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.318668, 40.776531, 26.117781>,  <37.358757, 40.771564, 26.799887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.318668, 40.776531, 26.117781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.983021, 40.968452, 26.220284>,  <36.781631, 41.083603, 26.281784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.983021, 40.968452, 26.220284>,  <37.318668, 40.776531, 26.117781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.983021, 40.968452, 26.220284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181235, 0.690801, -0.699962,
		-0.512864, -0.540911, -0.666623,
		-0.839122, 0.479800, 0.256255,
		36.731285, 41.112392, 26.297159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.913765, 40.933033, 25.499529>,  <37.318668, 40.776531, 26.117781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.913765, 40.933033, 25.499529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.819637, 41.200146, 25.782001>,  <36.763161, 41.360413, 25.951485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.819637, 41.200146, 25.782001>,  <36.913765, 40.933033, 25.499529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.819637, 41.200146, 25.782001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128846, 0.741607, -0.658345,
		-0.963340, -0.063932, -0.260554,
		-0.235318, 0.667782, 0.706182,
		36.749043, 41.400478, 25.993856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.605736, 41.500370, 25.152113>,  <36.913765, 40.933033, 25.499529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.605736, 41.500370, 25.152113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.704037, 41.660267, 25.505341>,  <36.763016, 41.756207, 25.717278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.704037, 41.660267, 25.505341>,  <36.605736, 41.500370, 25.152113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.704037, 41.660267, 25.505341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181695, 0.875862, -0.447048,
		-0.952151, 0.270313, 0.142614,
		0.245753, 0.399745, 0.883068,
		36.777763, 41.780190, 25.770262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.433571, 42.224953, 25.126709>,  <36.605736, 41.500370, 25.152113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.433571, 42.224953, 25.126709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.636456, 42.220688, 25.471411>,  <36.758186, 42.218128, 25.678232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.636456, 42.220688, 25.471411>,  <36.433571, 42.224953, 25.126709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.636456, 42.220688, 25.471411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377328, 0.901738, -0.210933,
		-0.774827, 0.432152, 0.461398,
		0.507215, -0.010662, 0.861753,
		36.788620, 42.217491, 25.729937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.354076, 42.924213, 25.409157>,  <36.433571, 42.224953, 25.126709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.354076, 42.924213, 25.409157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.669186, 42.761864, 25.594488>,  <36.858253, 42.664452, 25.705687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.669186, 42.761864, 25.594488>,  <36.354076, 42.924213, 25.409157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.669186, 42.761864, 25.594488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486933, 0.871026, -0.064891,
		-0.377232, 0.276729, 0.883808,
		0.787777, -0.405876, 0.463328,
		36.905518, 42.640102, 25.733486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.397293, 43.118168, 26.147949>,  <36.354076, 42.924213, 25.409157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.397293, 43.118168, 26.147949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.753361, 43.029957, 25.988466>,  <36.967003, 42.977032, 25.892776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.753361, 43.029957, 25.988466>,  <36.397293, 43.118168, 26.147949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.753361, 43.029957, 25.988466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246823, 0.968942, 0.015148,
		0.382983, -0.111894, 0.916953,
		0.890170, -0.220523, -0.398707,
		37.020412, 42.963799, 25.868855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.762058, 43.656704, 26.439348>,  <36.397293, 43.118168, 26.147949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.762058, 43.656704, 26.439348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.993366, 43.510689, 26.147499>,  <37.132153, 43.423080, 25.972389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.993366, 43.510689, 26.147499>,  <36.762058, 43.656704, 26.439348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.993366, 43.510689, 26.147499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336826, 0.921361, -0.194018,
		0.743070, -0.133561, 0.655750,
		0.578269, -0.365043, -0.729622,
		37.166847, 43.401176, 25.928612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.440174, 43.856377, 26.605715>,  <36.762058, 43.656704, 26.439348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.440174, 43.856377, 26.605715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.477184, 43.786205, 26.213661>,  <37.499390, 43.744102, 25.978430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.477184, 43.786205, 26.213661>,  <37.440174, 43.856377, 26.605715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.477184, 43.786205, 26.213661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453010, 0.883998, -0.115457,
		0.886691, -0.433327, 0.161265,
		0.092527, -0.175429, -0.980134,
		37.504944, 43.733578, 25.919621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.112988, 44.079208, 26.395832>,  <37.440174, 43.856377, 26.605715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.112988, 44.079208, 26.395832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.897476, 44.057491, 26.059553>,  <37.768169, 44.044460, 25.857786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.897476, 44.057491, 26.059553>,  <38.112988, 44.079208, 26.395832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.897476, 44.057491, 26.059553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398310, 0.862921, -0.310993,
		0.742342, -0.502414, -0.443293,
		-0.538774, -0.054295, -0.840699,
		37.735844, 44.041203, 25.807344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.531982, 44.431686, 25.920780>,  <38.112988, 44.079208, 26.395832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.531982, 44.431686, 25.920780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.164101, 44.425838, 25.763849>,  <37.943371, 44.422329, 25.669691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.164101, 44.425838, 25.763849>,  <38.531982, 44.431686, 25.920780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.164101, 44.425838, 25.763849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148649, 0.911944, -0.382441,
		0.363372, -0.410054, -0.836550,
		-0.919709, -0.014616, -0.392329,
		37.888187, 44.421455, 25.646151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.658604, 44.717510, 25.288860>,  <38.531982, 44.431686, 25.920780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.658604, 44.717510, 25.288860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.269566, 44.770763, 25.365103>,  <38.036144, 44.802715, 25.410849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.269566, 44.770763, 25.365103>,  <38.658604, 44.717510, 25.288860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.269566, 44.770763, 25.365103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062005, 0.938651, -0.339248,
		-0.224079, -0.318133, -0.921184,
		-0.972596, 0.133137, 0.190606,
		37.977787, 44.810703, 25.422285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.547604, 45.085751, 24.688356>,  <38.658604, 44.717510, 25.288860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.547604, 45.085751, 24.688356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.223740, 45.122940, 24.920149>,  <38.029419, 45.145252, 25.059225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.223740, 45.122940, 24.920149>,  <38.547604, 45.085751, 24.688356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.223740, 45.122940, 24.920149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213948, 0.872673, -0.438940,
		-0.546507, -0.479373, -0.686682,
		-0.809665, 0.092970, 0.579482,
		37.980839, 45.150829, 25.093994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.898392, 45.065041, 24.274868>,  <38.547604, 45.085751, 24.688356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.898392, 45.065041, 24.274868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.839146, 45.278610, 24.607853>,  <37.803596, 45.406750, 24.807644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.839146, 45.278610, 24.607853>,  <37.898392, 45.065041, 24.274868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.839146, 45.278610, 24.607853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521114, 0.673273, -0.524542,
		-0.840536, -0.511502, 0.178509,
		-0.148119, 0.533920, 0.832461,
		37.794708, 45.438786, 24.857592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.349098, 45.386364, 23.979166>,  <37.898392, 45.065041, 24.274868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.349098, 45.386364, 23.979166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.481621, 45.580761, 24.302660>,  <37.561134, 45.697399, 24.496756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.481621, 45.580761, 24.302660>,  <37.349098, 45.386364, 23.979166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.481621, 45.580761, 24.302660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188886, 0.873954, -0.447802,
		-0.924423, -0.004398, 0.381344,
		0.331308, 0.485989, 0.808734,
		37.581013, 45.726559, 24.545280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.805645, 45.886700, 24.329187>,  <37.349098, 45.386364, 23.979166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.805645, 45.886700, 24.329187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.194077, 45.979774, 24.350620>,  <37.427135, 46.035618, 24.363480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.194077, 45.979774, 24.350620>,  <36.805645, 45.886700, 24.329187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.194077, 45.979774, 24.350620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196449, 0.906121, -0.374636,
		-0.135725, 0.353273, 0.925622,
		0.971075, 0.232685, 0.053583,
		37.485397, 46.049580, 24.366695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.906601, 46.490959, 24.620209>,  <36.805645, 45.886700, 24.329187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.906601, 46.490959, 24.620209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.189106, 46.441475, 24.341385>,  <37.358608, 46.411785, 24.174091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.189106, 46.441475, 24.341385>,  <36.906601, 46.490959, 24.620209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.189106, 46.441475, 24.341385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435892, 0.699860, -0.565857,
		0.557846, 0.703485, 0.440360,
		0.706262, -0.123711, -0.697058,
		37.400986, 46.404362, 24.132267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.975258, 47.147987, 24.245213>,  <36.906601, 46.490959, 24.620209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.975258, 47.147987, 24.245213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.175655, 46.904907, 23.998734>,  <37.295895, 46.759060, 23.850847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.175655, 46.904907, 23.998734>,  <36.975258, 47.147987, 24.245213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.175655, 46.904907, 23.998734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183579, 0.621171, -0.761869,
		0.845755, 0.494815, 0.199643,
		0.500997, -0.607704, -0.616196,
		37.325954, 46.722595, 23.813875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.493675, 47.540035, 24.056763>,  <36.975258, 47.147987, 24.245213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.493675, 47.540035, 24.056763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.381035, 47.271687, 23.782351>,  <37.313450, 47.110680, 23.617704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.381035, 47.271687, 23.782351>,  <37.493675, 47.540035, 24.056763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.381035, 47.271687, 23.782351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220921, 0.741085, -0.634024,
		0.933753, -0.026984, -0.356900,
		-0.281602, -0.670869, -0.686029,
		37.296555, 47.070427, 23.576542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.218792, 47.385986, 24.268713>,  <37.493675, 47.540035, 24.056763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.218792, 47.385986, 24.268713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.448769, 47.712273, 24.294161>,  <38.586754, 47.908043, 24.309429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.448769, 47.712273, 24.294161>,  <38.218792, 47.385986, 24.268713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.448769, 47.712273, 24.294161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815636, 0.565269, 0.123324,
		0.064634, -0.122796, 0.990325,
		0.574944, 0.815716, 0.063621,
		38.621250, 47.956989, 24.313248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.747795, 47.052345, 24.811035>,  <38.218792, 47.385986, 24.268713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.747795, 47.052345, 24.811035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.810223, 47.447330, 24.820435>,  <37.847679, 47.684322, 24.826075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.810223, 47.447330, 24.820435>,  <37.747795, 47.052345, 24.811035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.810223, 47.447330, 24.820435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581174, 0.072566, 0.810537,
		0.798674, -0.140154, 0.585216,
		0.156067, 0.987467, 0.023497,
		37.857044, 47.743572, 24.827484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.166336, 47.370747, 25.442190>,  <37.747795, 47.052345, 24.811035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.166336, 47.370747, 25.442190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.876537, 47.591534, 25.277056>,  <37.702656, 47.724007, 25.177975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.876537, 47.591534, 25.277056>,  <38.166336, 47.370747, 25.442190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.876537, 47.591534, 25.277056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474921, 0.034331, 0.879358,
		0.499549, 0.833159, 0.237268,
		-0.724500, 0.551966, -0.412835,
		37.659187, 47.757122, 25.153206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.830662, 47.834755, 26.039125>,  <38.166336, 47.370747, 25.442190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.830662, 47.834755, 26.039125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.580456, 47.786934, 25.730726>,  <37.430332, 47.758240, 25.545687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.580456, 47.786934, 25.730726>,  <37.830662, 47.834755, 26.039125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.580456, 47.786934, 25.730726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708582, -0.326566, 0.625513,
		-0.326566, 0.937583, 0.119556,
		-0.625513, -0.119556, -0.770999,
		37.392803, 47.751068, 25.499426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.221348, 48.214489, 26.120129>,  <37.830662, 47.834755, 26.039125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.221348, 48.214489, 26.120129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.180477, 47.856194, 25.947058>,  <37.155952, 47.641216, 25.843216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.180477, 47.856194, 25.947058>,  <37.221348, 48.214489, 26.120129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.180477, 47.856194, 25.947058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594074, -0.293926, 0.748788,
		-0.797894, 0.333554, -0.502103,
		-0.102180, -0.895740, -0.432677,
		37.149822, 47.587471, 25.817255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.502579, 47.938126, 26.220484>,  <37.221348, 48.214489, 26.120129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.502579, 47.938126, 26.220484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.766392, 47.638317, 26.197748>,  <36.924679, 47.458431, 26.184107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.766392, 47.638317, 26.197748>,  <36.502579, 47.938126, 26.220484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.766392, 47.638317, 26.197748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491590, -0.487296, 0.721722,
		-0.568645, -0.448058, -0.689846,
		0.659532, -0.749525, -0.056838,
		36.964252, 47.413460, 26.180696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.133286, 47.357681, 26.398335>,  <36.502579, 47.938126, 26.220484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.133286, 47.357681, 26.398335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.505623, 47.213966, 26.424990>,  <36.729027, 47.127735, 26.440983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.505623, 47.213966, 26.424990>,  <36.133286, 47.357681, 26.398335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.505623, 47.213966, 26.424990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288889, -0.611885, 0.736302,
		-0.223770, -0.704633, -0.673364,
		0.930844, -0.359289, 0.066639,
		36.784878, 47.106178, 26.444981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.036289, 46.666775, 26.451353>,  <36.133286, 47.357681, 26.398335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.036289, 46.666775, 26.451353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.405422, 46.743645, 26.584888>,  <36.626904, 46.789764, 26.665009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.405422, 46.743645, 26.584888>,  <36.036289, 46.666775, 26.451353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.405422, 46.743645, 26.584888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107503, -0.703742, 0.702275,
		0.369892, -0.683972, -0.628778,
		0.922834, 0.192171, 0.333838,
		36.682274, 46.801296, 26.685040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.348492, 45.973061, 26.531960>,  <36.036289, 46.666775, 26.451353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.348492, 45.973061, 26.531960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.575817, 46.219185, 26.750467>,  <36.712212, 46.366859, 26.881571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.575817, 46.219185, 26.750467>,  <36.348492, 45.973061, 26.531960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.575817, 46.219185, 26.750467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186551, -0.550259, 0.813888,
		0.801384, -0.564452, -0.197934,
		0.568315, 0.615312, 0.546268,
		36.746311, 46.403778, 26.914349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.878628, 45.618916, 26.854635>,  <36.348492, 45.973061, 26.531960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.878628, 45.618916, 26.854635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.838028, 45.951565, 27.073027>,  <36.813667, 46.151154, 27.204062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.838028, 45.951565, 27.073027>,  <36.878628, 45.618916, 26.854635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.838028, 45.951565, 27.073027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008412, -0.548078, 0.836385,
		0.994800, 0.089484, 0.048633,
		-0.101498, 0.831627, 0.545981,
		36.807579, 46.201054, 27.236820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.372349, 45.411526, 27.299870>,  <36.878628, 45.618916, 26.854635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.372349, 45.411526, 27.299870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.156403, 45.707279, 27.460798>,  <37.026836, 45.884731, 27.557356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.156403, 45.707279, 27.460798>,  <37.372349, 45.411526, 27.299870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.156403, 45.707279, 27.460798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120050, -0.405441, 0.906204,
		0.833148, 0.537525, 0.130121,
		-0.539864, 0.739381, 0.402323,
		36.994442, 45.929092, 27.581495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.732452, 45.631050, 27.867144>,  <37.372349, 45.411526, 27.299870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.732452, 45.631050, 27.867144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.369061, 45.765083, 27.967045>,  <37.151024, 45.845505, 28.026985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.369061, 45.765083, 27.967045>,  <37.732452, 45.631050, 27.867144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.369061, 45.765083, 27.967045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132361, -0.336147, 0.932462,
		0.396410, 0.880183, 0.261031,
		-0.908482, 0.335087, 0.249754,
		37.096516, 45.865608, 28.041971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.829716, 45.844154, 28.509495>,  <37.732452, 45.631050, 27.867144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.829716, 45.844154, 28.509495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.438663, 45.776073, 28.460058>,  <37.204033, 45.735226, 28.430397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.438663, 45.776073, 28.460058>,  <37.829716, 45.844154, 28.509495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.438663, 45.776073, 28.460058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000515, -0.585631, 0.810577,
		-0.210343, 0.792506, 0.572442,
		-0.977628, -0.170204, -0.123591,
		37.145374, 45.725014, 28.422981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.582554, 45.794777, 29.203062>,  <37.829716, 45.844154, 28.509495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.582554, 45.794777, 29.203062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.278278, 45.655552, 28.983902>,  <37.095711, 45.572018, 28.852406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.278278, 45.655552, 28.983902>,  <37.582554, 45.794777, 29.203062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.278278, 45.655552, 28.983902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319289, -0.534266, 0.782697,
		-0.565156, 0.770331, 0.295279,
		-0.760693, -0.348066, -0.547902,
		37.050072, 45.551132, 28.819530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.050354, 45.790863, 29.613682>,  <37.582554, 45.794777, 29.203062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.050354, 45.790863, 29.613682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.938171, 45.530838, 29.331190>,  <36.870861, 45.374825, 29.161695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.938171, 45.530838, 29.331190>,  <37.050354, 45.790863, 29.613682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.938171, 45.530838, 29.331190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302715, -0.638311, 0.707759,
		-0.910882, 0.412284, -0.017763,
		-0.280459, -0.650062, -0.706230,
		36.854034, 45.335819, 29.119322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.215569, 45.581532, 29.630264>,  <37.050354, 45.790863, 29.613682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.215569, 45.581532, 29.630264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.453800, 45.305443, 29.465883>,  <36.596737, 45.139790, 29.367254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.453800, 45.305443, 29.465883>,  <36.215569, 45.581532, 29.630264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.453800, 45.305443, 29.465883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410325, -0.701201, 0.583053,
		-0.690590, -0.178636, -0.700839,
		0.595583, -0.690222, -0.410944,
		36.632473, 45.098377, 29.342598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.902725, 44.848209, 29.731070>,  <36.215569, 45.581532, 29.630264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.902725, 44.848209, 29.731070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.265610, 44.721912, 29.619875>,  <36.483341, 44.646133, 29.553158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.265610, 44.721912, 29.619875>,  <35.902725, 44.848209, 29.731070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.265610, 44.721912, 29.619875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162510, -0.872552, 0.460699,
		-0.388017, -0.372776, -0.842900,
		0.907212, -0.315739, -0.277985,
		36.537773, 44.627190, 29.536480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.869118, 44.271988, 29.337650>,  <35.902725, 44.848209, 29.731070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.869118, 44.271988, 29.337650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.224735, 44.264256, 29.520615>,  <36.438107, 44.259617, 29.630394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.224735, 44.264256, 29.520615>,  <35.869118, 44.271988, 29.337650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.224735, 44.264256, 29.520615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236722, -0.874590, 0.423149,
		0.391871, -0.484478, -0.782124,
		0.889044, -0.019327, 0.457413,
		36.491447, 44.258457, 29.657839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.027462, 43.625748, 29.309704>,  <35.869118, 44.271988, 29.337650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.027462, 43.625748, 29.309704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.287231, 43.740326, 29.591469>,  <36.443092, 43.809074, 29.760527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.287231, 43.740326, 29.591469>,  <36.027462, 43.625748, 29.309704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.287231, 43.740326, 29.591469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166074, -0.850549, 0.498985,
		0.742068, -0.441038, -0.504797,
		0.649426, 0.286447, 0.704410,
		36.482059, 43.826260, 29.802792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.288082, 43.022606, 29.452616>,  <36.027462, 43.625748, 29.309704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.288082, 43.022606, 29.452616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.437675, 43.237743, 29.754835>,  <36.527431, 43.366825, 29.936167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.437675, 43.237743, 29.754835>,  <36.288082, 43.022606, 29.452616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.437675, 43.237743, 29.754835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151988, -0.768110, 0.622018,
		0.914896, -0.347459, -0.205515,
		0.373984, 0.537846, 0.755551,
		36.549870, 43.399097, 29.981501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.877426, 42.670143, 29.781860>,  <36.288082, 43.022606, 29.452616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.877426, 42.670143, 29.781860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.686905, 42.907688, 30.041233>,  <36.572594, 43.050217, 30.196857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.686905, 42.907688, 30.041233>,  <36.877426, 42.670143, 29.781860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.686905, 42.907688, 30.041233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217661, -0.794137, 0.567424,
		0.851916, 0.129126, 0.507508,
		-0.476300, 0.593862, 0.648433,
		36.544014, 43.085846, 30.235764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.023670, 42.280579, 30.359016>,  <36.877426, 42.670143, 29.781860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.023670, 42.280579, 30.359016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.745625, 42.545437, 30.471006>,  <36.578796, 42.704350, 30.538200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.745625, 42.545437, 30.471006>,  <37.023670, 42.280579, 30.359016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.745625, 42.545437, 30.471006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286973, -0.612643, 0.736420,
		0.659140, 0.431550, 0.615873,
		-0.695112, 0.662143, 0.279974,
		36.537090, 42.744080, 30.554998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.980438, 42.320248, 31.188356>,  <37.023670, 42.280579, 30.359016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.980438, 42.320248, 31.188356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.636940, 42.473072, 31.051779>,  <36.430840, 42.564766, 30.969831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.636940, 42.473072, 31.051779>,  <36.980438, 42.320248, 31.188356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.636940, 42.473072, 31.051779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496925, -0.458428, 0.736823,
		0.124984, 0.802417, 0.583529,
		-0.858746, 0.382061, -0.341445,
		36.379314, 42.587692, 30.949345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.769936, 42.592590, 31.762789>,  <36.980438, 42.320248, 31.188356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.769936, 42.592590, 31.762789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.448162, 42.564491, 31.526840>,  <36.255096, 42.547634, 31.385271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.448162, 42.564491, 31.526840>,  <36.769936, 42.592590, 31.762789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.448162, 42.564491, 31.526840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514101, -0.415183, 0.750549,
		-0.297626, 0.907022, 0.297876,
		-0.804437, -0.070244, -0.589870,
		36.206829, 42.543419, 31.349880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.229710, 42.851639, 32.167824>,  <36.769936, 42.592590, 31.762789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.229710, 42.851639, 32.167824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.062973, 42.635574, 31.875397>,  <35.962929, 42.505936, 31.699940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.062973, 42.635574, 31.875397>,  <36.229710, 42.851639, 32.167824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.062973, 42.635574, 31.875397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468542, -0.561510, 0.682037,
		-0.778916, 0.626840, -0.019028,
		-0.416843, -0.540165, -0.731070,
		35.937920, 42.473526, 31.656076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.558903, 42.840912, 32.314384>,  <36.229710, 42.851639, 32.167824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.558903, 42.840912, 32.314384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.633728, 42.525330, 32.080269>,  <35.678623, 42.335979, 31.939800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.633728, 42.525330, 32.080269>,  <35.558903, 42.840912, 32.314384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.633728, 42.525330, 32.080269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443055, -0.599521, 0.666541,
		-0.876761, 0.134630, -0.461697,
		0.187060, -0.788954, -0.585286,
		35.689846, 42.288643, 31.904684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.927410, 42.559849, 32.227104>,  <35.558903, 42.840912, 32.314384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.927410, 42.559849, 32.227104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.190067, 42.268211, 32.149899>,  <35.347660, 42.093231, 32.103577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.190067, 42.268211, 32.149899>,  <34.927410, 42.559849, 32.227104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.190067, 42.268211, 32.149899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606872, -0.662719, 0.438760,
		-0.447810, -0.170972, -0.877630,
		0.656638, -0.729090, -0.193014,
		35.387058, 42.049484, 32.091995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.517025, 42.038368, 31.908138>,  <34.927410, 42.559849, 32.227104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.517025, 42.038368, 31.908138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.851673, 41.857403, 32.031677>,  <35.052464, 41.748825, 32.105801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.851673, 41.857403, 32.031677>,  <34.517025, 42.038368, 31.908138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.851673, 41.857403, 32.031677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542568, -0.761996, 0.353528,
		0.075400, -0.463340, -0.882967,
		0.836621, -0.452414, 0.308848,
		35.102661, 41.721680, 32.124332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.338360, 41.237267, 31.820936>,  <34.517025, 42.038368, 31.908138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.338360, 41.237267, 31.820936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.663158, 41.253403, 32.053844>,  <34.858036, 41.263084, 32.193588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.663158, 41.253403, 32.053844>,  <34.338360, 41.237267, 31.820936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.663158, 41.253403, 32.053844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405672, -0.678245, 0.612711,
		0.419641, -0.733728, -0.534365,
		0.811993, 0.040342, 0.582272,
		34.906757, 41.265507, 32.228527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.632442, 40.538723, 31.971600>,  <34.338360, 41.237267, 31.820936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.632442, 40.538723, 31.971600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.757984, 40.769127, 32.273514>,  <34.833309, 40.907368, 32.454662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.757984, 40.769127, 32.273514>,  <34.632442, 40.538723, 31.971600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.757984, 40.769127, 32.273514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319416, -0.684565, 0.655243,
		0.894129, -0.446745, -0.030870,
		0.313859, 0.576011, 0.754787,
		34.852142, 40.941929, 32.499950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.781235, 40.030045, 32.526527>,  <34.632442, 40.538723, 31.971600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.781235, 40.030045, 32.526527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.784458, 40.376106, 32.727100>,  <34.786392, 40.583744, 32.847446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.784458, 40.376106, 32.727100>,  <34.781235, 40.030045, 32.526527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.784458, 40.376106, 32.727100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115249, -0.497307, 0.859886,
		0.993304, -0.064723, 0.095699,
		0.008063, 0.865157, 0.501436,
		34.786877, 40.635654, 32.877533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.245716, 39.866394, 33.064026>,  <34.781235, 40.030045, 32.526527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.245716, 39.866394, 33.064026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.005291, 40.169388, 33.165962>,  <34.861034, 40.351185, 33.227123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.005291, 40.169388, 33.165962>,  <35.245716, 39.866394, 33.064026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.005291, 40.169388, 33.165962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234540, -0.472017, 0.849818,
		0.764012, 0.451023, 0.461371,
		-0.601063, 0.757481, 0.254844,
		34.824974, 40.396633, 33.242416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.376026, 39.957523, 33.784641>,  <35.245716, 39.866394, 33.064026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.376026, 39.957523, 33.784641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.008533, 40.088882, 33.696930>,  <34.788036, 40.167698, 33.644302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.008533, 40.088882, 33.696930>,  <35.376026, 39.957523, 33.784641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.008533, 40.088882, 33.696930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343391, -0.390257, 0.854273,
		0.194970, 0.860146, 0.471312,
		-0.918732, 0.328402, -0.219278,
		34.732914, 40.187405, 33.631145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.124393, 39.909935, 34.454323>,  <35.376026, 39.957523, 33.784641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.124393, 39.909935, 34.454323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.792370, 39.960629, 34.237087>,  <34.593155, 39.991043, 34.106747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.792370, 39.960629, 34.237087>,  <35.124393, 39.909935, 34.454323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.792370, 39.960629, 34.237087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540139, -0.425018, 0.726367,
		-0.138770, 0.896270, 0.421241,
		-0.830056, 0.126731, -0.543090,
		34.543354, 39.998646, 34.074162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.757904, 40.229755, 34.883446>,  <35.124393, 39.909935, 34.454323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.757904, 40.229755, 34.883446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.521690, 40.045952, 34.618080>,  <34.379963, 39.935669, 34.458858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.521690, 40.045952, 34.618080>,  <34.757904, 40.229755, 34.883446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.521690, 40.045952, 34.618080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390441, -0.556771, 0.733186,
		-0.706278, 0.691995, 0.149379,
		-0.590531, -0.459510, -0.663418,
		34.344532, 39.908100, 34.419056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.065048, 40.190975, 35.157970>,  <34.757904, 40.229755, 34.883446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.065048, 40.190975, 35.157970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.098625, 39.901657, 34.883801>,  <34.118771, 39.728065, 34.719299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.098625, 39.901657, 34.883801>,  <34.065048, 40.190975, 35.157970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.098625, 39.901657, 34.883801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597248, -0.587125, 0.546424,
		-0.797652, 0.363501, -0.481267,
		0.083939, -0.723292, -0.685422,
		34.123806, 39.684669, 34.678173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.404011, 39.829582, 35.081116>,  <34.065048, 40.190975, 35.157970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.404011, 39.829582, 35.081116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.628601, 39.562923, 34.885021>,  <33.763355, 39.402927, 34.767365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.628601, 39.562923, 34.885021>,  <33.404011, 39.829582, 35.081116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.628601, 39.562923, 34.885021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419955, -0.740033, 0.525346,
		-0.713006, -0.089096, -0.695474,
		0.561480, -0.666643, -0.490232,
		33.797043, 39.362930, 34.737949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.965004, 39.228355, 35.015110>,  <33.404011, 39.829582, 35.081116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.965004, 39.228355, 35.015110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.335159, 39.096138, 34.940922>,  <33.557251, 39.016808, 34.896408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.335159, 39.096138, 34.940922>,  <32.965004, 39.228355, 35.015110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.335159, 39.096138, 34.940922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182894, -0.818020, 0.545337,
		-0.331979, -0.470726, -0.817439,
		0.925386, -0.330545, -0.185473,
		33.612774, 38.996975, 34.885281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.916397, 38.498497, 34.788517>,  <32.965004, 39.228355, 35.015110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.916397, 38.498497, 34.788517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.294930, 38.535233, 34.912468>,  <33.522049, 38.557274, 34.986839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.294930, 38.535233, 34.912468>,  <32.916397, 38.498497, 34.788517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.294930, 38.535233, 34.912468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072536, -0.873973, 0.480531,
		0.314950, -0.477219, -0.820408,
		0.946333, 0.091835, 0.309873,
		33.578831, 38.562782, 35.005428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.232437, 37.819519, 34.671570>,  <32.916397, 38.498497, 34.788517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.232437, 37.819519, 34.671570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.488224, 37.984062, 34.931374>,  <33.641697, 38.082790, 35.087257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.488224, 37.984062, 34.931374>,  <33.232437, 37.819519, 34.671570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.488224, 37.984062, 34.931374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057060, -0.867881, 0.493484,
		0.766699, -0.278505, -0.578453,
		0.639466, 0.411360, 0.649512,
		33.680065, 38.107471, 35.126228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.689552, 37.301365, 34.836277>,  <33.232437, 37.819519, 34.671570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.689552, 37.301365, 34.836277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.781197, 37.579815, 35.108429>,  <33.836185, 37.746883, 35.271721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.781197, 37.579815, 35.108429>,  <33.689552, 37.301365, 34.836277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.781197, 37.579815, 35.108429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290320, -0.716031, 0.634833,
		0.929097, 0.052080, -0.366151,
		0.229113, 0.696122, 0.680382,
		33.849930, 37.788651, 35.312542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.434517, 37.148563, 35.021179>,  <33.689552, 37.301365, 34.836277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.434517, 37.148563, 35.021179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.227066, 37.346954, 35.299759>,  <34.102596, 37.465988, 35.466908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.227066, 37.346954, 35.299759>,  <34.434517, 37.148563, 35.021179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.227066, 37.346954, 35.299759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352631, -0.617974, 0.702680,
		0.778898, 0.610015, 0.145600,
		-0.518623, 0.495973, 0.696449,
		34.071480, 37.495747, 35.508694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.870930, 37.381847, 35.543892>,  <34.434517, 37.148563, 35.021179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.870930, 37.381847, 35.543892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.501663, 37.359337, 35.695995>,  <34.280102, 37.345829, 35.787258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.501663, 37.359337, 35.695995>,  <34.870930, 37.381847, 35.543892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.501663, 37.359337, 35.695995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332933, -0.611533, 0.717763,
		0.192147, 0.789215, 0.583283,
		-0.923166, -0.056278, 0.380259,
		34.224712, 37.342453, 35.810074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.843052, 37.602177, 36.318466>,  <34.870930, 37.381847, 35.543892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.843052, 37.602177, 36.318466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.572880, 37.321724, 36.227070>,  <34.410774, 37.153454, 36.172234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.572880, 37.321724, 36.227070>,  <34.843052, 37.602177, 36.318466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.572880, 37.321724, 36.227070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377874, -0.595157, 0.709225,
		-0.633245, 0.392694, 0.666927,
		-0.675435, -0.701128, -0.228491,
		34.370251, 37.111385, 36.158524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.200588, 36.946449, 36.531330>,  <34.843052, 37.602177, 36.318466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.200588, 36.946449, 36.531330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.588371, 36.931950, 36.628361>,  <35.821041, 36.923248, 36.686577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.588371, 36.931950, 36.628361>,  <35.200588, 36.946449, 36.531330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.588371, 36.931950, 36.628361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106385, 0.953290, -0.282701,
		-0.220995, 0.299872, 0.928029,
		0.969455, -0.036253, 0.242574,
		35.879208, 36.921074, 36.701134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.443729, 37.567795, 36.864323>,  <35.200588, 36.946449, 36.531330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.443729, 37.567795, 36.864323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.815716, 37.448528, 36.778294>,  <36.038910, 37.376968, 36.726677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.815716, 37.448528, 36.778294>,  <35.443729, 37.567795, 36.864323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.815716, 37.448528, 36.778294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228154, 0.926799, -0.298313,
		0.288279, 0.228351, 0.929920,
		0.929969, -0.298162, -0.215077,
		36.094707, 37.359081, 36.713772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.979954, 37.936150, 37.204510>,  <35.443729, 37.567795, 36.864323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.979954, 37.936150, 37.204510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.130520, 37.784958, 36.866173>,  <36.220860, 37.694244, 36.663170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.130520, 37.784958, 36.866173>,  <35.979954, 37.936150, 37.204510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.130520, 37.784958, 36.866173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248223, 0.920756, -0.300988,
		0.892577, -0.096659, 0.440412,
		0.376418, -0.377975, -0.845839,
		36.243446, 37.671566, 36.612419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.737480, 38.340919, 37.044796>,  <35.979954, 37.936150, 37.204510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.737480, 38.340919, 37.044796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.635735, 38.173244, 36.696182>,  <36.574688, 38.072639, 36.487015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.635735, 38.173244, 36.696182>,  <36.737480, 38.340919, 37.044796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.635735, 38.173244, 36.696182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468754, 0.734807, -0.490233,
		0.845912, -0.533236, 0.009584,
		-0.254367, -0.419187, -0.871539,
		36.559425, 38.047489, 36.434719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.252941, 38.518574, 36.578651>,  <36.737480, 38.340919, 37.044796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.252941, 38.518574, 36.578651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.971367, 38.392685, 36.323959>,  <36.802422, 38.317154, 36.171143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.971367, 38.392685, 36.323959>,  <37.252941, 38.518574, 36.578651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.971367, 38.392685, 36.323959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289698, 0.691295, -0.661957,
		0.648502, -0.650434, -0.395451,
		-0.703933, -0.314719, -0.636735,
		36.760185, 38.298271, 36.132938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.445503, 38.412403, 35.848675>,  <37.252941, 38.518574, 36.578651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.445503, 38.412403, 35.848675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.052177, 38.459759, 35.793419>,  <36.816181, 38.488171, 35.760265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.052177, 38.459759, 35.793419>,  <37.445503, 38.412403, 35.848675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.052177, 38.459759, 35.793419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181027, 0.712375, -0.678050,
		0.018135, -0.691741, -0.721918,
		-0.983311, 0.118390, -0.138143,
		36.757183, 38.495277, 35.751976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.422253, 38.264595, 35.170261>,  <37.445503, 38.412403, 35.848675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.422253, 38.264595, 35.170261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.086128, 38.458714, 35.266891>,  <36.884453, 38.575184, 35.324871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.086128, 38.458714, 35.266891>,  <37.422253, 38.264595, 35.170261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.086128, 38.458714, 35.266891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160669, 0.648569, -0.744005,
		-0.517742, -0.586385, -0.622974,
		-0.840315, 0.485295, 0.241578,
		36.834034, 38.604301, 35.339363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.062859, 38.399578, 34.582722>,  <37.422253, 38.264595, 35.170261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.062859, 38.399578, 34.582722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.898758, 38.679264, 34.816917>,  <36.800297, 38.847076, 34.957436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.898758, 38.679264, 34.816917>,  <37.062859, 38.399578, 34.582722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.898758, 38.679264, 34.816917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126105, 0.679330, -0.722917,
		-0.903213, -0.222742, -0.366868,
		-0.410248, 0.699212, 0.585491,
		36.775684, 38.889027, 34.992565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.691631, 38.894516, 34.187801>,  <37.062859, 38.399578, 34.582722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.691631, 38.894516, 34.187801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.754131, 39.098118, 34.526386>,  <36.791634, 39.220280, 34.729538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.754131, 39.098118, 34.526386>,  <36.691631, 38.894516, 34.187801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.754131, 39.098118, 34.526386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253373, 0.807657, -0.532440,
		-0.954666, 0.297666, -0.002769,
		0.156253, 0.509004, 0.846464,
		36.801006, 39.250820, 34.780327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.436069, 39.625771, 34.097828>,  <36.691631, 38.894516, 34.187801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.436069, 39.625771, 34.097828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.644199, 39.673866, 34.436012>,  <36.769077, 39.702724, 34.638924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.644199, 39.673866, 34.436012>,  <36.436069, 39.625771, 34.097828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.644199, 39.673866, 34.436012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137649, 0.965284, -0.221991,
		-0.842805, 0.231883, 0.485706,
		0.520320, 0.120238, 0.845464,
		36.800297, 39.709938, 34.689651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.092655, 40.220333, 34.408577>,  <36.436069, 39.625771, 34.097828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.092655, 40.220333, 34.408577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.466385, 40.164795, 34.539883>,  <36.690624, 40.131470, 34.618668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.466385, 40.164795, 34.539883>,  <36.092655, 40.220333, 34.408577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.466385, 40.164795, 34.539883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233885, 0.933819, -0.270703,
		-0.268956, 0.329701, 0.904964,
		0.934323, -0.138850, 0.328269,
		36.746681, 40.123138, 34.638363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.215935, 40.817528, 34.783474>,  <36.092655, 40.220333, 34.408577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.215935, 40.817528, 34.783474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.581528, 40.666302, 34.724548>,  <36.800884, 40.575565, 34.689194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.581528, 40.666302, 34.724548>,  <36.215935, 40.817528, 34.783474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.581528, 40.666302, 34.724548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357818, 0.922197, -0.146691,
		0.191308, 0.081363, 0.978152,
		0.913985, -0.378063, -0.147310,
		36.855724, 40.552883, 34.680355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.713821, 41.294258, 35.092354>,  <36.215935, 40.817528, 34.783474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.713821, 41.294258, 35.092354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.920551, 41.078197, 34.826683>,  <37.044590, 40.948563, 34.667282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.920551, 41.078197, 34.826683>,  <36.713821, 41.294258, 35.092354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.920551, 41.078197, 34.826683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370327, 0.840539, -0.395413,
		0.771850, -0.041606, 0.634442,
		0.516822, -0.540151, -0.664178,
		37.075600, 40.916153, 34.627430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.379181, 41.606346, 35.101830>,  <36.713821, 41.294258, 35.092354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.379181, 41.606346, 35.101830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.350822, 41.418182, 34.749992>,  <37.333809, 41.305286, 34.538891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.350822, 41.418182, 34.749992>,  <37.379181, 41.606346, 35.101830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.350822, 41.418182, 34.749992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463402, 0.765348, -0.446656,
		0.883308, -0.439272, 0.163729,
		-0.070894, -0.470407, -0.879597,
		37.329556, 41.277061, 34.486115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.025913, 41.756409, 34.759888>,  <37.379181, 41.606346, 35.101830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.025913, 41.756409, 34.759888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.798637, 41.631317, 34.455425>,  <37.662273, 41.556263, 34.272747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.798637, 41.631317, 34.455425>,  <38.025913, 41.756409, 34.759888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.798637, 41.631317, 34.455425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430004, 0.675805, -0.598652,
		0.701613, -0.667447, -0.249507,
		-0.568187, -0.312733, -0.761158,
		37.628181, 41.537498, 34.227077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.488075, 41.476830, 34.220692>,  <38.025913, 41.756409, 34.759888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.488075, 41.476830, 34.220692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.135582, 41.586330, 34.066559>,  <37.924084, 41.652031, 33.974079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.135582, 41.586330, 34.066559>,  <38.488075, 41.476830, 34.220692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.135582, 41.586330, 34.066559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470456, 0.586837, -0.659009,
		0.045723, -0.762025, -0.645931,
		-0.881238, 0.273750, -0.385332,
		37.871212, 41.668457, 33.950958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.618252, 41.407745, 33.547478>,  <38.488075, 41.476830, 34.220692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.618252, 41.407745, 33.547478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.288380, 41.633068, 33.527157>,  <38.090454, 41.768261, 33.514965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.288380, 41.633068, 33.527157>,  <38.618252, 41.407745, 33.547478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.288380, 41.633068, 33.527157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407484, 0.529456, -0.744065,
		-0.392242, -0.634319, -0.666173,
		-0.824684, 0.563308, -0.050800,
		38.040974, 41.802059, 33.511917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.551289, 41.526417, 32.854076>,  <38.618252, 41.407745, 33.547478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.551289, 41.526417, 32.854076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.297401, 41.779530, 33.031487>,  <38.145069, 41.931396, 33.137932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.297401, 41.779530, 33.031487>,  <38.551289, 41.526417, 32.854076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.297401, 41.779530, 33.031487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053679, 0.608684, -0.791595,
		-0.770876, -0.478633, -0.420311,
		-0.634720, 0.632783, 0.443527,
		38.106987, 41.969364, 33.164543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.932510, 41.612457, 32.403625>,  <38.551289, 41.526417, 32.854076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.932510, 41.612457, 32.403625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.984509, 41.929607, 32.641769>,  <38.015709, 42.119896, 32.784657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.984509, 41.929607, 32.641769>,  <37.932510, 41.612457, 32.403625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.984509, 41.929607, 32.641769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016816, 0.602134, -0.798218,
		-0.991372, 0.093753, 0.091607,
		0.129995, 0.792872, 0.595362,
		38.023506, 42.167469, 32.820377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.501656, 42.108086, 32.138866>,  <37.932510, 41.612457, 32.403625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.501656, 42.108086, 32.138866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.786968, 42.292789, 32.349773>,  <37.958157, 42.403610, 32.476318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.786968, 42.292789, 32.349773>,  <37.501656, 42.108086, 32.138866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.786968, 42.292789, 32.349773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044648, 0.720834, -0.691668,
		-0.699459, 0.516892, 0.493538,
		0.713277, 0.461758, 0.527272,
		38.000950, 42.431316, 32.507954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.318649, 42.867252, 32.160275>,  <37.501656, 42.108086, 32.138866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.318649, 42.867252, 32.160275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.709805, 42.861774, 32.243744>,  <37.944496, 42.858486, 32.293827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.709805, 42.861774, 32.243744>,  <37.318649, 42.867252, 32.160275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.709805, 42.861774, 32.243744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178284, 0.576170, -0.797648,
		-0.109306, 0.817215, 0.565873,
		0.977889, -0.013699, 0.208675,
		38.003170, 42.857666, 32.306347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.560432, 43.493435, 32.046486>,  <37.318649, 42.867252, 32.160275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.560432, 43.493435, 32.046486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.921169, 43.320690, 32.051834>,  <38.137611, 43.217045, 32.055042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.921169, 43.320690, 32.051834>,  <37.560432, 43.493435, 32.046486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.921169, 43.320690, 32.051834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292913, 0.588335, -0.753700,
		0.317627, 0.683635, 0.657082,
		0.901840, -0.431863, 0.013374,
		38.191723, 43.191132, 32.055847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.202324, 43.980118, 32.176495>,  <37.560432, 43.493435, 32.046486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.202324, 43.980118, 32.176495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.378464, 43.668335, 31.998262>,  <38.484146, 43.481266, 31.891325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.378464, 43.668335, 31.998262>,  <38.202324, 43.980118, 32.176495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.378464, 43.668335, 31.998262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570708, 0.626123, -0.531283,
		0.693099, -0.020345, 0.720555,
		0.440347, -0.779459, -0.445576,
		38.510567, 43.434498, 31.864590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.955135, 44.044163, 32.149792>,  <38.202324, 43.980118, 32.176495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.955135, 44.044163, 32.149792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.833164, 43.845474, 31.824760>,  <38.759983, 43.726261, 31.629742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.833164, 43.845474, 31.824760>,  <38.955135, 44.044163, 32.149792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.833164, 43.845474, 31.824760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562365, 0.594673, -0.574551,
		0.768614, -0.632160, 0.098011,
		-0.304923, -0.496726, -0.812579,
		38.741688, 43.696457, 31.580986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.417572, 44.291382, 31.632456>,  <38.955135, 44.044163, 32.149792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.417572, 44.291382, 31.632456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.201042, 44.052658, 31.395548>,  <39.071125, 43.909424, 31.253403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.201042, 44.052658, 31.395548>,  <39.417572, 44.291382, 31.632456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.201042, 44.052658, 31.395548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511912, 0.324871, -0.795239,
		0.667016, -0.733676, 0.129651,
		-0.541327, -0.596807, -0.592272,
		39.038643, 43.873615, 31.217867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.879215, 44.157124, 31.039490>,  <39.417572, 44.291382, 31.632456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.879215, 44.157124, 31.039490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.517994, 44.033646, 30.920025>,  <39.301262, 43.959557, 30.848345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.517994, 44.033646, 30.920025>,  <39.879215, 44.157124, 31.039490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.517994, 44.033646, 30.920025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214426, 0.278494, -0.936196,
		0.372179, -0.909476, -0.185302,
		-0.903053, -0.308699, -0.298664,
		39.247078, 43.941036, 30.830425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.028938, 43.745903, 30.476263>,  <39.879215, 44.157124, 31.039490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.028938, 43.745903, 30.476263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.654148, 43.885658, 30.476864>,  <39.429276, 43.969513, 30.477224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.654148, 43.885658, 30.476864>,  <40.028938, 43.745903, 30.476263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.654148, 43.885658, 30.476864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094708, 0.258119, -0.961460,
		-0.336314, -0.900722, -0.274942,
		-0.936976, 0.349391, 0.001503,
		39.373055, 43.990475, 30.477314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.769531, 43.486389, 29.843052>,  <40.028938, 43.745903, 30.476263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.769531, 43.486389, 29.843052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.526119, 43.780098, 29.963406>,  <39.380074, 43.956326, 30.035618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.526119, 43.780098, 29.963406>,  <39.769531, 43.486389, 29.843052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.526119, 43.780098, 29.963406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054701, 0.417085, -0.907220,
		-0.791644, -0.535611, -0.293974,
		-0.608529, 0.734275, 0.300884,
		39.343559, 44.000381, 30.053671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.140175, 43.547817, 29.278341>,  <39.769531, 43.486389, 29.843052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.140175, 43.547817, 29.278341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.170113, 43.902134, 29.461544>,  <39.188076, 44.114723, 29.571466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.170113, 43.902134, 29.461544>,  <39.140175, 43.547817, 29.278341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.170113, 43.902134, 29.461544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119299, 0.448042, -0.886017,
		-0.990033, 0.120957, -0.072139,
		0.074849, 0.885792, 0.458006,
		39.192566, 44.167873, 29.598946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.728237, 43.980389, 28.869146>,  <39.140175, 43.547817, 29.278341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.728237, 43.980389, 28.869146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.969913, 44.231762, 29.065113>,  <39.114922, 44.382587, 29.182693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.969913, 44.231762, 29.065113>,  <38.728237, 43.980389, 28.869146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.969913, 44.231762, 29.065113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025430, 0.599304, -0.800117,
		-0.796430, 0.495886, 0.346115,
		0.604195, 0.628436, 0.489915,
		39.151173, 44.420292, 29.212088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.467422, 44.609474, 28.705635>,  <38.728237, 43.980389, 28.869146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.467422, 44.609474, 28.705635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.843796, 44.681355, 28.820421>,  <39.069622, 44.724483, 28.889292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.843796, 44.681355, 28.820421>,  <38.467422, 44.609474, 28.705635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.843796, 44.681355, 28.820421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142711, 0.558080, -0.817423,
		-0.307042, 0.810095, 0.499472,
		0.940935, 0.179703, 0.286963,
		39.126076, 44.735264, 28.906509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.494003, 45.346329, 28.674217>,  <38.467422, 44.609474, 28.705635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.494003, 45.346329, 28.674217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.861710, 45.191032, 28.648235>,  <39.082333, 45.097855, 28.632647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.861710, 45.191032, 28.648235>,  <38.494003, 45.346329, 28.674217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.861710, 45.191032, 28.648235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178813, 0.558859, -0.809755,
		0.350684, 0.732764, 0.583162,
		0.919264, -0.388245, -0.064955,
		39.137489, 45.074558, 28.628748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.953754, 45.926170, 28.451727>,  <38.494003, 45.346329, 28.674217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.953754, 45.926170, 28.451727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.150974, 45.587147, 28.373188>,  <39.269306, 45.383732, 28.326065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.150974, 45.587147, 28.373188>,  <38.953754, 45.926170, 28.451727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.150974, 45.587147, 28.373188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302072, 0.378415, -0.874960,
		0.815879, 0.372085, 0.442599,
		0.493045, -0.847558, -0.196345,
		39.298889, 45.332878, 28.314285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.555157, 46.213520, 28.083597>,  <38.953754, 45.926170, 28.451727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.555157, 46.213520, 28.083597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.566242, 45.821838, 28.003212>,  <39.572891, 45.586830, 27.954981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.566242, 45.821838, 28.003212>,  <39.555157, 46.213520, 28.083597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.566242, 45.821838, 28.003212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461341, 0.190878, -0.866447,
		0.886790, -0.068704, 0.457037,
		0.027710, -0.979207, -0.200964,
		39.574554, 45.528076, 27.942923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.269245, 46.105476, 27.859848>,  <39.555157, 46.213520, 28.083597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.269245, 46.105476, 27.859848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.058826, 45.793922, 27.723255>,  <39.932575, 45.606991, 27.641300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.058826, 45.793922, 27.723255>,  <40.269245, 46.105476, 27.859848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.058826, 45.793922, 27.723255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403273, 0.125063, -0.906494,
		0.748761, -0.614571, 0.248314,
		-0.526050, -0.778885, -0.341482,
		39.901012, 45.560257, 27.620811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.718147, 45.859268, 27.457134>,  <40.269245, 46.105476, 27.859848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.718147, 45.859268, 27.457134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.372166, 45.706127, 27.327345>,  <40.164577, 45.614243, 27.249472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.372166, 45.706127, 27.327345>,  <40.718147, 45.859268, 27.457134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.372166, 45.706127, 27.327345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357768, -0.016991, -0.933656,
		0.351936, -0.923655, 0.151668,
		-0.864953, -0.382849, -0.324475,
		40.112679, 45.591274, 27.230003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.817062, 45.218960, 26.987518>,  <40.718147, 45.859268, 27.457134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.817062, 45.218960, 26.987518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.462498, 45.379463, 26.895195>,  <40.249760, 45.475765, 26.839800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.462498, 45.379463, 26.895195>,  <40.817062, 45.218960, 26.987518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.462498, 45.379463, 26.895195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304252, 0.129234, -0.943785,
		-0.348873, -0.906803, -0.236638,
		-0.886408, 0.401258, -0.230810,
		40.196575, 45.499840, 26.825953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.495438, 44.977592, 26.312183>,  <40.817062, 45.218960, 26.987518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.495438, 44.977592, 26.312183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.375034, 45.349552, 26.396734>,  <40.302792, 45.572727, 26.447464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.375034, 45.349552, 26.396734>,  <40.495438, 44.977592, 26.312183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.375034, 45.349552, 26.396734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350049, 0.313927, -0.882562,
		-0.887051, -0.191665, -0.420005,
		-0.301008, 0.929900, 0.211377,
		40.284733, 45.628521, 26.460148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.323875, 44.981323, 25.578009>,  <40.495438, 44.977592, 26.312183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.323875, 44.981323, 25.578009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.590076, 44.720211, 25.433237>,  <40.749798, 44.563545, 25.346375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.590076, 44.720211, 25.433237>,  <40.323875, 44.981323, 25.578009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.590076, 44.720211, 25.433237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309919, -0.682791, 0.661625,
		-0.679000, -0.328157, -0.656713,
		0.665514, -0.652771, -0.361913,
		40.789726, 44.524380, 25.324659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.978943, 44.374073, 25.332251>,  <40.323875, 44.981323, 25.578009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.978943, 44.374073, 25.332251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.351368, 44.253181, 25.414009>,  <40.574821, 44.180645, 25.463064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.351368, 44.253181, 25.414009>,  <39.978943, 44.374073, 25.332251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.351368, 44.253181, 25.414009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349642, -0.578971, 0.736575,
		-0.104276, -0.757263, -0.644731,
		0.931062, -0.302232, 0.204398,
		40.630688, 44.162510, 25.475328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.921780, 43.616421, 25.349655>,  <39.978943, 44.374073, 25.332251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.921780, 43.616421, 25.349655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.254562, 43.716404, 25.547794>,  <40.454231, 43.776394, 25.666677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.254562, 43.716404, 25.547794>,  <39.921780, 43.616421, 25.349655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.254562, 43.716404, 25.547794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224930, -0.664181, 0.712930,
		0.507203, -0.704546, -0.496347,
		0.831957, 0.249957, 0.495348,
		40.504150, 43.791389, 25.696400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.238483, 42.968510, 25.520178>,  <39.921780, 43.616421, 25.349655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.238483, 42.968510, 25.520178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.374741, 43.245403, 25.774664>,  <40.456497, 43.411541, 25.927355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.374741, 43.245403, 25.774664>,  <40.238483, 42.968510, 25.520178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.374741, 43.245403, 25.774664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211202, -0.603051, 0.769235,
		0.916162, -0.396408, -0.059226,
		0.340648, 0.692235, 0.636215,
		40.476936, 43.453075, 25.965528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.770874, 42.679276, 25.972651>,  <40.238483, 42.968510, 25.520178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.770874, 42.679276, 25.972651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.651962, 43.003685, 26.174189>,  <40.580616, 43.198330, 26.295111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.651962, 43.003685, 26.174189>,  <40.770874, 42.679276, 25.972651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.651962, 43.003685, 26.174189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041288, -0.538127, 0.841852,
		0.953897, 0.229464, 0.193460,
		-0.297281, 0.811028, 0.503843,
		40.562778, 43.246994, 26.325342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.180412, 42.752197, 26.609659>,  <40.770874, 42.679276, 25.972651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.180412, 42.752197, 26.609659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.837505, 42.950584, 26.664949>,  <40.631760, 43.069618, 26.698124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.837505, 42.950584, 26.664949>,  <41.180412, 42.752197, 26.609659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.837505, 42.950584, 26.664949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101727, -0.426331, 0.898829,
		0.504721, 0.756476, 0.415933,
		-0.857268, 0.495970, 0.138224,
		40.580326, 43.099377, 26.706417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.301006, 43.137794, 27.275272>,  <41.180412, 42.752197, 26.609659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.301006, 43.137794, 27.275272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.912918, 43.133118, 27.178492>,  <40.680065, 43.130314, 27.120424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.912918, 43.133118, 27.178492>,  <41.301006, 43.137794, 27.275272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.912918, 43.133118, 27.178492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226731, -0.307756, 0.924056,
		-0.085262, 0.951393, 0.295940,
		-0.970218, -0.011688, -0.241951,
		40.621853, 43.129612, 27.105906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.948841, 43.213947, 27.981316>,  <41.301006, 43.137794, 27.275272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.948841, 43.213947, 27.981316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.654610, 43.086796, 27.742025>,  <40.478069, 43.010506, 27.598452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.654610, 43.086796, 27.742025>,  <40.948841, 43.213947, 27.981316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.654610, 43.086796, 27.742025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559207, -0.213520, 0.801059,
		-0.382375, 0.923775, -0.020700,
		-0.735579, -0.317881, -0.598227,
		40.433937, 42.991432, 27.562557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.437180, 43.294926, 28.377365>,  <40.948841, 43.213947, 27.981316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.437180, 43.294926, 28.377365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.297974, 43.046444, 28.096512>,  <40.214451, 42.897354, 27.927999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.297974, 43.046444, 28.096512>,  <40.437180, 43.294926, 28.377365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.297974, 43.046444, 28.096512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441181, -0.552314, 0.707325,
		-0.827191, 0.555927, -0.081850,
		-0.348014, -0.621204, -0.702134,
		40.193569, 42.860085, 27.885872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.764011, 43.140228, 28.638391>,  <40.437180, 43.294926, 28.377365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.764011, 43.140228, 28.638391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.829544, 42.868462, 28.352301>,  <39.868866, 42.705402, 28.180647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.829544, 42.868462, 28.352301>,  <39.764011, 43.140228, 28.638391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.829544, 42.868462, 28.352301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365993, -0.715141, 0.595501,
		-0.916083, 0.164205, -0.365826,
		0.163833, -0.679418, -0.715226,
		39.878693, 42.664635, 28.137733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.041485, 42.771519, 28.413395>,  <39.764011, 43.140228, 28.638391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.041485, 42.771519, 28.413395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.361034, 42.538734, 28.352564>,  <39.552765, 42.399063, 28.316065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.361034, 42.538734, 28.352564>,  <39.041485, 42.771519, 28.413395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.361034, 42.538734, 28.352564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349979, -0.655343, 0.669358,
		-0.489199, -0.481510, -0.727209,
		0.798874, -0.581957, -0.152075,
		39.600697, 42.364147, 28.306942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.795425, 42.126575, 28.611271>,  <39.041485, 42.771519, 28.413395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.795425, 42.126575, 28.611271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.192150, 42.077274, 28.597897>,  <39.430183, 42.047695, 28.589872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.192150, 42.077274, 28.597897>,  <38.795425, 42.126575, 28.611271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.192150, 42.077274, 28.597897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052013, -0.628981, 0.775679,
		-0.116631, -0.767589, -0.630242,
		0.991813, -0.123249, -0.033434,
		39.489693, 42.040298, 28.587866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.914112, 41.434040, 28.612045>,  <38.795425, 42.126575, 28.611271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.914112, 41.434040, 28.612045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.254303, 41.594963, 28.747601>,  <39.458416, 41.691517, 28.828934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.254303, 41.594963, 28.747601>,  <38.914112, 41.434040, 28.612045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.254303, 41.594963, 28.747601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035461, -0.598938, 0.800010,
		0.524823, -0.692404, -0.495114,
		0.850472, 0.402306, 0.338889,
		39.509445, 41.715656, 28.849268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.370743, 40.818588, 28.770658>,  <38.914112, 41.434040, 28.612045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.370743, 40.818588, 28.770658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.495861, 41.144878, 28.965282>,  <39.570934, 41.340652, 29.082058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.495861, 41.144878, 28.965282>,  <39.370743, 40.818588, 28.770658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.495861, 41.144878, 28.965282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109064, -0.539726, 0.834746,
		0.943537, -0.208041, -0.257792,
		0.312798, 0.815730, 0.486562,
		39.589699, 41.389599, 29.111252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.826683, 40.532177, 29.162563>,  <39.370743, 40.818588, 28.770658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.826683, 40.532177, 29.162563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.776501, 40.891964, 29.330004>,  <39.746391, 41.107834, 29.430468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.776501, 40.891964, 29.330004>,  <39.826683, 40.532177, 29.162563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.776501, 40.891964, 29.330004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274958, -0.373881, 0.885783,
		0.953236, 0.226225, -0.200409,
		-0.125457, 0.899464, 0.418599,
		39.738865, 41.161804, 29.455584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.360840, 40.651093, 29.614735>,  <39.826683, 40.532177, 29.162563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.360840, 40.651093, 29.614735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.058094, 40.875568, 29.748730>,  <39.876446, 41.010254, 29.829126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.058094, 40.875568, 29.748730>,  <40.360840, 40.651093, 29.614735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.058094, 40.875568, 29.748730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090168, -0.417993, 0.903965,
		0.647317, 0.714388, 0.265764,
		-0.756869, 0.561188, 0.334989,
		39.831032, 41.043926, 29.849226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.602741, 40.949921, 30.202860>,  <40.360840, 40.651093, 29.614735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.602741, 40.949921, 30.202860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.205849, 40.985321, 30.237822>,  <39.967712, 41.006561, 30.258799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.205849, 40.985321, 30.237822>,  <40.602741, 40.949921, 30.202860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.205849, 40.985321, 30.237822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054708, -0.320595, 0.945635,
		0.111708, 0.943073, 0.313264,
		-0.992234, 0.088497, 0.087407,
		39.908180, 41.011871, 30.264044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.512833, 40.844116, 30.974510>,  <40.602741, 40.949921, 30.202860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.512833, 40.844116, 30.974510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.132763, 40.858105, 30.850609>,  <39.904720, 40.866497, 30.776268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.132763, 40.858105, 30.850609>,  <40.512833, 40.844116, 30.974510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.132763, 40.858105, 30.850609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308479, -0.248454, 0.918211,
		-0.044847, 0.968012, 0.246863,
		-0.950173, 0.034973, -0.309753,
		39.847710, 40.868595, 30.757683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.110950, 41.289833, 31.413198>,  <40.512833, 40.844116, 30.974510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.110950, 41.289833, 31.413198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.859421, 41.018238, 31.261644>,  <39.708504, 40.855282, 31.170712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.859421, 41.018238, 31.261644>,  <40.110950, 41.289833, 31.413198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.859421, 41.018238, 31.261644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326558, -0.211606, 0.921186,
		-0.705650, 0.702991, -0.088667,
		-0.628823, -0.678990, -0.378887,
		39.670773, 40.814541, 31.147978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.601967, 41.355534, 31.812780>,  <40.110950, 41.289833, 31.413198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.601967, 41.355534, 31.812780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.547665, 40.995434, 31.647310>,  <39.515083, 40.779373, 31.548029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.547665, 40.995434, 31.647310>,  <39.601967, 41.355534, 31.812780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.547665, 40.995434, 31.647310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320343, -0.355224, 0.878178,
		-0.937523, 0.251739, -0.240162,
		-0.135760, -0.900247, -0.413673,
		39.506935, 40.725361, 31.523209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.894627, 41.144650, 31.842844>,  <39.601967, 41.355534, 31.812780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.894627, 41.144650, 31.842844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.098953, 40.802883, 31.804796>,  <39.221550, 40.597824, 31.781967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.098953, 40.802883, 31.804796>,  <38.894627, 41.144650, 31.842844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.098953, 40.802883, 31.804796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474449, -0.372445, 0.797610,
		-0.716915, -0.362302, -0.595626,
		0.510814, -0.854413, -0.095118,
		39.252197, 40.546558, 31.776260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.355446, 40.595623, 32.045883>,  <38.894627, 41.144650, 31.842844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.355446, 40.595623, 32.045883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.718449, 40.428772, 32.065639>,  <38.936249, 40.328663, 32.077492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.718449, 40.428772, 32.065639>,  <38.355446, 40.595623, 32.045883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.718449, 40.428772, 32.065639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318199, -0.605959, 0.729084,
		-0.274192, -0.677363, -0.682640,
		0.907507, -0.417125, 0.049387,
		38.990700, 40.303635, 32.080456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.189240, 39.974403, 32.066875>,  <38.355446, 40.595623, 32.045883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.189240, 39.974403, 32.066875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.566135, 39.972820, 32.200848>,  <38.792271, 39.971870, 32.281231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.566135, 39.972820, 32.200848>,  <38.189240, 39.974403, 32.066875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.566135, 39.972820, 32.200848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267532, -0.610557, 0.745417,
		0.201538, -0.791963, -0.576349,
		0.942236, -0.003962, 0.334926,
		38.848804, 39.971630, 32.301327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.389381, 39.282635, 32.221203>,  <38.189240, 39.974403, 32.066875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.389381, 39.282635, 32.221203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.665459, 39.492008, 32.421062>,  <38.831104, 39.617634, 32.540977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.665459, 39.492008, 32.421062>,  <38.389381, 39.282635, 32.221203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.665459, 39.492008, 32.421062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080476, -0.630675, 0.771863,
		0.719135, -0.572946, -0.393164,
		0.690194, 0.523434, 0.499649,
		38.872517, 39.649040, 32.570957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.700115, 38.794384, 32.618225>,  <38.389381, 39.282635, 32.221203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.700115, 38.794384, 32.618225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.810825, 39.141212, 32.783913>,  <38.877251, 39.349312, 32.883327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.810825, 39.141212, 32.783913>,  <38.700115, 38.794384, 32.618225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.810825, 39.141212, 32.783913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101073, -0.454938, 0.884769,
		0.955604, -0.203016, -0.213554,
		0.276776, 0.867073, 0.414221,
		38.893860, 39.401333, 32.908180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.291222, 38.616230, 33.049213>,  <38.700115, 38.794384, 32.618225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.291222, 38.616230, 33.049213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.150608, 38.955982, 33.206676>,  <39.066238, 39.159836, 33.301155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.150608, 38.955982, 33.206676>,  <39.291222, 38.616230, 33.049213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.150608, 38.955982, 33.206676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089311, -0.388155, 0.917256,
		0.931905, 0.357605, 0.060590,
		-0.351533, 0.849385, 0.393662,
		39.045147, 39.210796, 33.324776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.704552, 38.900707, 33.491711>,  <39.291222, 38.616230, 33.049213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.704552, 38.900707, 33.491711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.358154, 39.045216, 33.630005>,  <39.150314, 39.131920, 33.712982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.358154, 39.045216, 33.630005>,  <39.704552, 38.900707, 33.491711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.358154, 39.045216, 33.630005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165642, -0.445123, 0.880016,
		0.471818, 0.819359, 0.325634,
		-0.865996, 0.361269, 0.345738,
		39.098354, 39.153595, 33.733727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.796673, 39.242882, 34.119621>,  <39.704552, 38.900707, 33.491711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.796673, 39.242882, 34.119621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.409817, 39.142998, 34.138756>,  <39.177704, 39.083069, 34.150234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.409817, 39.142998, 34.138756>,  <39.796673, 39.242882, 34.119621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.409817, 39.142998, 34.138756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172758, -0.507381, 0.844227,
		-0.186542, 0.824748, 0.533847,
		-0.967139, -0.249710, 0.047835,
		39.119675, 39.068085, 34.153107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.667152, 39.380695, 34.806408>,  <39.796673, 39.242882, 34.119621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.667152, 39.380695, 34.806408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.377026, 39.142963, 34.667450>,  <39.202950, 39.000324, 34.584076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.377026, 39.142963, 34.667450>,  <39.667152, 39.380695, 34.806408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.377026, 39.142963, 34.667450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123117, -0.608487, 0.783955,
		-0.677311, 0.525850, 0.514520,
		-0.725321, -0.594328, -0.347394,
		39.159428, 38.964664, 34.563232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.335079, 39.173660, 35.409683>,  <39.667152, 39.380695, 34.806408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.335079, 39.173660, 35.409683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.199131, 38.931736, 35.121605>,  <39.117561, 38.786579, 34.948757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.199131, 38.931736, 35.121605>,  <39.335079, 39.173660, 35.409683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.199131, 38.931736, 35.121605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094631, -0.783890, 0.613645,
		-0.935698, 0.140409, 0.323659,
		-0.339875, -0.604815, -0.720197,
		39.097168, 38.750290, 34.905544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.752243, 38.859924, 35.656624>,  <39.335079, 39.173660, 35.409683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.752243, 38.859924, 35.656624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.901199, 38.627544, 35.367119>,  <38.990574, 38.488117, 35.193417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.901199, 38.627544, 35.367119>,  <38.752243, 38.859924, 35.656624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.901199, 38.627544, 35.367119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089329, -0.753790, 0.651016,
		-0.923768, -0.307084, -0.228807,
		0.372389, -0.580948, -0.723758,
		39.012917, 38.453259, 35.149990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.585670, 38.216911, 35.921478>,  <38.752243, 38.859924, 35.656624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.585670, 38.216911, 35.921478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.826817, 38.109501, 35.620960>,  <38.971504, 38.045055, 35.440651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.826817, 38.109501, 35.620960>,  <38.585670, 38.216911, 35.921478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.826817, 38.109501, 35.620960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372912, -0.737635, 0.562878,
		-0.705329, -0.619508, -0.344559,
		0.602866, -0.268524, -0.751297,
		39.007675, 38.028942, 35.395573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.383018, 37.534992, 35.733452>,  <38.585670, 38.216911, 35.921478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.383018, 37.534992, 35.733452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.760170, 37.617519, 35.628822>,  <38.986462, 37.667034, 35.566044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.760170, 37.617519, 35.628822>,  <38.383018, 37.534992, 35.733452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.760170, 37.617519, 35.628822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259928, -0.946706, 0.190226,
		-0.208387, -0.247349, -0.946252,
		0.942874, 0.206317, -0.261574,
		39.043034, 37.679413, 35.550350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.563580, 36.977829, 35.288025>,  <38.383018, 37.534992, 35.733452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.563580, 36.977829, 35.288025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.901005, 37.132267, 35.437336>,  <39.103458, 37.224930, 35.526920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.901005, 37.132267, 35.437336>,  <38.563580, 36.977829, 35.288025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.901005, 37.132267, 35.437336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228221, -0.886915, 0.401617,
		0.486126, -0.253599, -0.836283,
		0.843562, 0.386094, 0.373276,
		39.154072, 37.248096, 35.549320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.088890, 36.425522, 35.326649>,  <38.563580, 36.977829, 35.288025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.088890, 36.425522, 35.326649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.265369, 36.691753, 35.567429>,  <39.371258, 36.851494, 35.711895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.265369, 36.691753, 35.567429>,  <39.088890, 36.425522, 35.326649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.265369, 36.691753, 35.567429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565329, -0.727074, 0.389571,
		0.696953, 0.168420, -0.697059,
		0.441202, 0.665581, 0.601950,
		39.397732, 36.891426, 35.748013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.797283, 36.381683, 35.190781>,  <39.088890, 36.425522, 35.326649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.797283, 36.381683, 35.190781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.762699, 36.530663, 35.560387>,  <39.741947, 36.620049, 35.782150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.762699, 36.530663, 35.560387>,  <39.797283, 36.381683, 35.190781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.762699, 36.530663, 35.560387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579174, -0.735863, 0.350803,
		0.810605, 0.565499, -0.152085,
		-0.086465, 0.372447, 0.924017,
		39.736759, 36.642395, 35.837593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.477516, 36.266964, 35.480263>,  <39.797283, 36.381683, 35.190781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.477516, 36.266964, 35.480263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.256084, 36.352337, 35.802254>,  <40.123226, 36.403561, 35.995449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.256084, 36.352337, 35.802254>,  <40.477516, 36.266964, 35.480263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.256084, 36.352337, 35.802254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582126, -0.592065, 0.557304,
		0.595549, 0.777113, 0.203509,
		-0.553579, 0.213434, 0.804982,
		40.090012, 36.416367, 36.043747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.886959, 36.525108, 36.012920>,  <40.477516, 36.266964, 35.480263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.886959, 36.525108, 36.012920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.553181, 36.354710, 36.152763>,  <40.352913, 36.252472, 36.236668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.553181, 36.354710, 36.152763>,  <40.886959, 36.525108, 36.012920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.553181, 36.354710, 36.152763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550828, -0.625398, 0.552690,
		-0.016801, 0.653764, 0.756512,
		-0.834450, -0.425994, 0.349604,
		40.302845, 36.226910, 36.257645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.013504, 36.513535, 36.674980>,  <40.886959, 36.525108, 36.012920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.013504, 36.513535, 36.674980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.720123, 36.243114, 36.646675>,  <40.544094, 36.080864, 36.629692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.720123, 36.243114, 36.646675>,  <41.013504, 36.513535, 36.674980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.720123, 36.243114, 36.646675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588889, -0.683958, 0.430594,
		-0.339503, 0.274147, 0.899767,
		-0.733449, -0.676051, -0.070764,
		40.500088, 36.040298, 36.625446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.871033, 36.275291, 37.322861>,  <41.013504, 36.513535, 36.674980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.871033, 36.275291, 37.322861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.744202, 35.981030, 37.083439>,  <40.668102, 35.804474, 36.939785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.744202, 35.981030, 37.083439>,  <40.871033, 36.275291, 37.322861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.744202, 35.981030, 37.083439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593313, -0.646238, 0.479954,
		-0.739892, -0.202949, 0.641383,
		-0.317080, -0.735655, -0.598558,
		40.649078, 35.760334, 36.903870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.047455, 35.481030, 37.497704>,  <40.871033, 36.275291, 37.322861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.047455, 35.481030, 37.497704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.109837, 35.420433, 37.888134>,  <41.147266, 35.384075, 38.122391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.109837, 35.420433, 37.888134>,  <41.047455, 35.481030, 37.497704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.109837, 35.420433, 37.888134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.955713, 0.226537, 0.187865,
		-0.249577, -0.962149, -0.109453,
		0.155959, -0.151492, 0.976077,
		41.156624, 35.374985, 38.180958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.450520, 35.012379, 37.666340>,  <41.047455, 35.481030, 37.497704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.450520, 35.012379, 37.666340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.581062, 35.200329, 37.994415>,  <40.659389, 35.313099, 38.191261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.581062, 35.200329, 37.994415>,  <40.450520, 35.012379, 37.666340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.581062, 35.200329, 37.994415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.944509, 0.196348, 0.263345,
		-0.037301, -0.860616, 0.507886,
		0.326361, 0.469880, 0.820184,
		40.678970, 35.341293, 38.240471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.083542, 34.749805, 38.303276>,  <40.450520, 35.012379, 37.666340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.083542, 34.749805, 38.303276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.211674, 35.105000, 38.435253>,  <40.288551, 35.318115, 38.514439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.211674, 35.105000, 38.435253>,  <40.083542, 34.749805, 38.303276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.211674, 35.105000, 38.435253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.940565, 0.256656, 0.222409,
		0.112814, -0.381580, 0.917426,
		0.320330, 0.887989, 0.329946,
		40.307774, 35.371395, 38.534237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.848572, 34.851673, 39.031307>,  <40.083542, 34.749805, 38.303276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.848572, 34.851673, 39.031307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.921425, 35.229450, 38.921871>,  <39.965137, 35.456116, 38.856209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.921425, 35.229450, 38.921871>,  <39.848572, 34.851673, 39.031307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.921425, 35.229450, 38.921871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.942412, 0.247047, 0.225449,
		0.280514, 0.216775, 0.935051,
		0.182130, 0.944445, -0.273591,
		39.976063, 35.512783, 38.839794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.594368, 35.204750, 39.606407>,  <39.848572, 34.851673, 39.031307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.594368, 35.204750, 39.606407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.645618, 35.481300, 39.321987>,  <39.676369, 35.647232, 39.151337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.645618, 35.481300, 39.321987>,  <39.594368, 35.204750, 39.606407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.645618, 35.481300, 39.321987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781878, 0.511482, 0.356446,
		0.610125, 0.510282, 0.606102,
		0.128122, 0.691374, -0.711046,
		39.684055, 35.688713, 39.108673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.556278, 35.821342, 39.855659>,  <39.594368, 35.204750, 39.606407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.556278, 35.821342, 39.855659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.467182, 35.932518, 39.481892>,  <39.413723, 35.999226, 39.257633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.467182, 35.932518, 39.481892>,  <39.556278, 35.821342, 39.855659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.467182, 35.932518, 39.481892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747971, 0.566011, 0.346656,
		0.625241, 0.776131, 0.081820,
		-0.222739, 0.277943, -0.934417,
		39.400360, 36.015900, 39.201565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.501575, 36.525909, 39.891293>,  <39.556278, 35.821342, 39.855659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.501575, 36.525909, 39.891293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.281712, 36.398563, 39.582355>,  <39.149792, 36.322155, 39.396992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.281712, 36.398563, 39.582355>,  <39.501575, 36.525909, 39.891293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.281712, 36.398563, 39.582355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799216, 0.469517, 0.375244,
		0.243162, 0.823526, -0.512520,
		-0.549660, -0.318369, -0.772344,
		39.116814, 36.303051, 39.350651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.182842, 37.051876, 39.639008>,  <39.501575, 36.525909, 39.891293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.182842, 37.051876, 39.639008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.944126, 36.784779, 39.461040>,  <38.800896, 36.624519, 39.354259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.944126, 36.784779, 39.461040>,  <39.182842, 37.051876, 39.639008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.944126, 36.784779, 39.461040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800983, 0.528659, 0.280974,
		0.047592, 0.524057, -0.850353,
		-0.596793, -0.667745, -0.444921,
		38.765087, 36.584454, 39.327564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.761341, 37.338833, 39.062328>,  <39.182842, 37.051876, 39.639008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.761341, 37.338833, 39.062328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.585529, 37.040707, 39.262856>,  <38.480042, 36.861832, 39.383171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.585529, 37.040707, 39.262856>,  <38.761341, 37.338833, 39.062328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.585529, 37.040707, 39.262856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767604, 0.601514, 0.221280,
		-0.466474, -0.287555, -0.836489,
		-0.439530, -0.745314, 0.501319,
		38.453671, 36.817112, 39.413250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.065948, 37.310154, 38.850716>,  <38.761341, 37.338833, 39.062328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.065948, 37.310154, 38.850716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.118134, 37.211525, 39.234837>,  <38.149445, 37.152348, 39.465309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.118134, 37.211525, 39.234837>,  <38.065948, 37.310154, 38.850716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.118134, 37.211525, 39.234837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769274, 0.585852, 0.254940,
		-0.625457, -0.771996, -0.113253,
		0.130464, -0.246577, 0.960302,
		38.157272, 37.137550, 39.522926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.415386, 37.010876, 39.063511>,  <38.065948, 37.310154, 38.850716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.415386, 37.010876, 39.063511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.653339, 37.173119, 39.341099>,  <37.796112, 37.270462, 39.507652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.653339, 37.173119, 39.341099>,  <37.415386, 37.010876, 39.063511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.653339, 37.173119, 39.341099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735005, 0.623981, 0.265359,
		-0.325395, -0.667931, 0.669317,
		0.594883, 0.405605, 0.693973,
		37.831802, 37.294800, 39.549290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.036514, 37.096973, 39.714275>,  <37.415386, 37.010876, 39.063511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.036514, 37.096973, 39.714275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.314651, 37.383717, 39.693787>,  <37.481533, 37.555763, 39.681492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.314651, 37.383717, 39.693787>,  <37.036514, 37.096973, 39.714275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.314651, 37.383717, 39.693787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663013, 0.667352, 0.339198,
		0.277340, -0.201895, 0.939319,
		0.695339, 0.716854, -0.051224,
		37.523254, 37.598774, 39.678421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.463150, 37.423359, 39.942860>,  <37.036514, 37.096973, 39.714275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.463150, 37.423359, 39.942860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.238369, 37.184208, 39.714211>,  <36.103500, 37.040718, 39.577023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.238369, 37.184208, 39.714211>,  <36.463150, 37.423359, 39.942860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.238369, 37.184208, 39.714211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799341, 0.214784, 0.561178,
		-0.212740, 0.772278, -0.598606,
		-0.561957, -0.597875, -0.571620,
		36.069782, 37.004845, 39.542725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.077862, 37.403595, 40.403358>,  <36.463150, 37.423359, 39.942860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.077862, 37.403595, 40.403358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.206509, 37.663441, 40.127804>,  <37.283695, 37.819347, 39.962471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.206509, 37.663441, 40.127804>,  <37.077862, 37.403595, 40.403358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.206509, 37.663441, 40.127804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680789, 0.664302, 0.308593,
		0.658095, 0.369739, 0.655899,
		0.321616, 0.649613, -0.688888,
		37.302994, 37.858326, 39.921139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.085289, 37.971478, 40.813652>,  <37.077862, 37.403595, 40.403358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.085289, 37.971478, 40.813652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.103680, 38.097015, 40.434307>,  <37.114716, 38.172340, 40.206699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.103680, 38.097015, 40.434307>,  <37.085289, 37.971478, 40.813652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.103680, 38.097015, 40.434307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648421, 0.731554, 0.210662,
		0.759892, 0.605250, 0.237142,
		0.045979, 0.313848, -0.948359,
		37.117474, 38.191170, 40.149799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.186874, 38.788063, 40.826328>,  <37.085289, 37.971478, 40.813652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.186874, 38.788063, 40.826328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.039734, 38.674168, 40.472240>,  <36.951450, 38.605831, 40.259789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.039734, 38.674168, 40.472240>,  <37.186874, 38.788063, 40.826328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.039734, 38.674168, 40.472240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720415, 0.689178, 0.077686,
		0.587954, 0.666302, -0.458641,
		-0.367848, -0.284736, -0.885219,
		36.929379, 38.588745, 40.206676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.141903, 39.459583, 40.349159>,  <37.186874, 38.788063, 40.826328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.141903, 39.459583, 40.349159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.872749, 39.195652, 40.215382>,  <36.711258, 39.037292, 40.135117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.872749, 39.195652, 40.215382>,  <37.141903, 39.459583, 40.349159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.872749, 39.195652, 40.215382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657355, 0.740695, -0.138763,
		0.339277, 0.126474, -0.932146,
		-0.672886, -0.659830, -0.334439,
		36.670883, 38.997704, 40.115051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.745255, 39.806492, 39.872116>,  <37.141903, 39.459583, 40.349159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.745255, 39.806492, 39.872116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.485249, 39.502632, 39.863934>,  <36.329247, 39.320316, 39.859024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.485249, 39.502632, 39.863934>,  <36.745255, 39.806492, 39.872116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.485249, 39.502632, 39.863934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753832, 0.647974, -0.108933,
		0.096007, -0.055386, -0.993839,
		-0.650015, -0.759646, -0.020458,
		36.290245, 39.274738, 39.857796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.550861, 39.688515, 39.217449>,  <36.745255, 39.806492, 39.872116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.550861, 39.688515, 39.217449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.248562, 39.548119, 39.438587>,  <36.067181, 39.463879, 39.571270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.248562, 39.548119, 39.438587>,  <36.550861, 39.688515, 39.217449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.248562, 39.548119, 39.438587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610244, 0.683748, -0.400113,
		-0.237571, -0.639759, -0.730937,
		-0.755753, -0.350994, 0.552848,
		36.021835, 39.442822, 39.604443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.016083, 39.637871, 38.755096>,  <36.550861, 39.688515, 39.217449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.016083, 39.637871, 38.755096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.828320, 39.636612, 39.108288>,  <35.715660, 39.635857, 39.320202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.828320, 39.636612, 39.108288>,  <36.016083, 39.637871, 38.755096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.828320, 39.636612, 39.108288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700145, 0.610632, -0.370034,
		-0.538006, -0.791908, -0.288843,
		-0.469410, -0.003151, 0.882974,
		35.687496, 39.635666, 39.373180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.295036, 39.573860, 38.644466>,  <36.016083, 39.637871, 38.755096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.295036, 39.573860, 38.644466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.057217, 39.619003, 38.326027>,  <34.914524, 39.646091, 38.134964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.057217, 39.619003, 38.326027>,  <35.295036, 39.573860, 38.644466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.057217, 39.619003, 38.326027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790929, 0.260282, -0.553790,
		0.144709, -0.958914, -0.244016,
		-0.594550, 0.112861, -0.796098,
		34.878853, 39.652863, 38.087196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.524750, 39.600788, 38.497208>,  <35.295036, 39.573860, 38.644466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.524750, 39.600788, 38.497208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.168449, 39.647984, 38.321644>,  <33.954670, 39.676300, 38.216305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.168449, 39.647984, 38.321644>,  <34.524750, 39.600788, 38.497208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.168449, 39.647984, 38.321644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356624, -0.780122, 0.514032,
		-0.281755, 0.614401, 0.736971,
		-0.890749, 0.117990, -0.438914,
		33.901226, 39.683380, 38.189968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.818031, 40.184757, 38.881264>,  <34.524750, 39.600788, 38.497208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.818031, 40.184757, 38.881264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.675694, 40.260197, 39.247391>,  <34.590290, 40.305462, 39.467068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.675694, 40.260197, 39.247391>,  <34.818031, 40.184757, 38.881264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.675694, 40.260197, 39.247391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600310, -0.704509, 0.378543,
		0.716242, 0.684177, 0.137478,
		-0.355845, 0.188599, 0.915317,
		34.568939, 40.316776, 39.521984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.399487, 40.368225, 39.356438>,  <34.818031, 40.184757, 38.881264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.399487, 40.368225, 39.356438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.099796, 40.163300, 39.524342>,  <34.919983, 40.040344, 39.625084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.099796, 40.163300, 39.524342>,  <35.399487, 40.368225, 39.356438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.099796, 40.163300, 39.524342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658434, -0.644684, 0.388391,
		0.071633, 0.567375, 0.820338,
		-0.749222, -0.512317, 0.419760,
		34.875031, 40.009605, 39.650269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.579453, 40.206760, 40.074394>,  <35.399487, 40.368225, 39.356438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.579453, 40.206760, 40.074394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.333607, 39.934772, 39.914452>,  <35.186100, 39.771580, 39.818485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.333607, 39.934772, 39.914452>,  <35.579453, 40.206760, 40.074394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.333607, 39.934772, 39.914452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631737, -0.727857, 0.266708,
		-0.472393, -0.088682, 0.876916,
		-0.614617, -0.679971, -0.399858,
		35.149223, 39.730782, 39.794495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.366318, 39.648705, 40.567478>,  <35.579453, 40.206760, 40.074394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.366318, 39.648705, 40.567478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.398857, 39.569969, 40.176655>,  <35.418381, 39.522728, 39.942162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.398857, 39.569969, 40.176655>,  <35.366318, 39.648705, 40.567478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.398857, 39.569969, 40.176655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615083, -0.761449, 0.204618,
		-0.784254, -0.617615, 0.059130,
		0.081351, -0.196843, -0.977054,
		35.423264, 39.510918, 39.883537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.172676, 38.915348, 40.399456>,  <35.366318, 39.648705, 40.567478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.172676, 38.915348, 40.399456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.448360, 39.092018, 40.169701>,  <35.613770, 39.198021, 40.031849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.448360, 39.092018, 40.169701>,  <35.172676, 38.915348, 40.399456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.448360, 39.092018, 40.169701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551667, -0.833805, 0.020795,
		-0.469742, -0.331202, -0.818320,
		0.689207, 0.441671, -0.574386,
		35.655121, 39.224518, 39.997383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.434147, 38.398636, 39.966724>,  <35.172676, 38.915348, 40.399456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.434147, 38.398636, 39.966724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.723858, 38.673302, 39.941700>,  <35.897686, 38.838100, 39.926685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.723858, 38.673302, 39.941700>,  <35.434147, 38.398636, 39.966724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.723858, 38.673302, 39.941700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671515, -0.723058, -0.162033,
		-0.156496, 0.075347, -0.984800,
		0.724276, 0.686666, -0.062559,
		35.941139, 38.879303, 39.922932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.908844, 38.257851, 39.367569>,  <35.434147, 38.398636, 39.966724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.908844, 38.257851, 39.367569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.157864, 38.458538, 39.607807>,  <36.307274, 38.578949, 39.751949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.157864, 38.458538, 39.607807>,  <35.908844, 38.257851, 39.367569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.157864, 38.458538, 39.607807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748558, -0.605599, -0.270021,
		0.228248, 0.617683, -0.752576,
		0.622547, 0.501714, 0.600598,
		36.344627, 38.609051, 39.787987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.453251, 38.431778, 39.000195>,  <35.908844, 38.257851, 39.367569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.453251, 38.431778, 39.000195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.623055, 38.459442, 39.361305>,  <36.724937, 38.476040, 39.577972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.623055, 38.459442, 39.361305>,  <36.453251, 38.431778, 39.000195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.623055, 38.459442, 39.361305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810179, -0.474159, -0.344649,
		0.404225, 0.877719, -0.257316,
		0.424513, 0.069156, 0.902777,
		36.750408, 38.480190, 39.632137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.062283, 38.637123, 38.911163>,  <36.453251, 38.431778, 39.000195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.062283, 38.637123, 38.911163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.111397, 38.536106, 39.295067>,  <37.140865, 38.475494, 39.525410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.111397, 38.536106, 39.295067>,  <37.062283, 38.637123, 38.911163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.111397, 38.536106, 39.295067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806842, -0.537701, -0.244712,
		0.577866, 0.804425, 0.137739,
		0.122790, -0.252544, 0.959762,
		37.148235, 38.460342, 39.582996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698841, 38.811745, 39.151249>,  <37.062283, 38.637123, 38.911163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.698841, 38.811745, 39.151249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.597881, 38.511215, 39.395149>,  <37.537304, 38.330894, 39.541489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.597881, 38.511215, 39.395149>,  <37.698841, 38.811745, 39.151249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.597881, 38.511215, 39.395149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772675, -0.535823, -0.340392,
		0.582466, 0.385226, 0.715775,
		-0.252401, -0.751328, 0.609753,
		37.522160, 38.285816, 39.578075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.315159, 38.630829, 39.536003>,  <37.698841, 38.811745, 39.151249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.315159, 38.630829, 39.536003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.067238, 38.318237, 39.564671>,  <37.918484, 38.130684, 39.581871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.067238, 38.318237, 39.564671>,  <38.315159, 38.630829, 39.536003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.067238, 38.318237, 39.564671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762821, -0.621401, -0.178786,
		0.184254, -0.056140, 0.981274,
		-0.619802, -0.781479, 0.071670,
		37.881298, 38.083794, 39.586170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.524067, 38.158569, 40.038597>,  <38.315159, 38.630829, 39.536003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.524067, 38.158569, 40.038597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.336315, 37.923267, 39.775192>,  <38.223663, 37.782085, 39.617149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.336315, 37.923267, 39.775192>,  <38.524067, 38.158569, 40.038597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.336315, 37.923267, 39.775192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806644, -0.589021, -0.048782,
		-0.359182, -0.554083, 0.750986,
		-0.469376, -0.588257, -0.658514,
		38.195503, 37.746792, 39.577637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.451149, 37.524975, 40.351830>,  <38.524067, 38.158569, 40.038597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.451149, 37.524975, 40.351830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.433044, 37.477589, 39.955059>,  <38.422180, 37.449158, 39.716995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.433044, 37.477589, 39.955059>,  <38.451149, 37.524975, 40.351830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.433044, 37.477589, 39.955059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677769, -0.733091, 0.056625,
		-0.733881, -0.669734, 0.113473,
		-0.045262, -0.118465, -0.991926,
		38.419464, 37.442051, 39.657482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.320770, 36.784245, 40.221760>,  <38.451149, 37.524975, 40.351830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.320770, 36.784245, 40.221760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.965134, 36.703300, 40.057533>,  <37.751751, 36.654732, 39.959000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.965134, 36.703300, 40.057533>,  <38.320770, 36.784245, 40.221760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.965134, 36.703300, 40.057533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456243, -0.319656, -0.830459,
		0.036816, -0.925672, 0.376531,
		-0.889093, -0.202364, -0.410563,
		37.698406, 36.642590, 39.934364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.250141, 36.006645, 40.132046>,  <38.320770, 36.784245, 40.221760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.250141, 36.006645, 40.132046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.074970, 36.268410, 39.885479>,  <37.969868, 36.425468, 39.737537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.074970, 36.268410, 39.885479>,  <38.250141, 36.006645, 40.132046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.074970, 36.268410, 39.885479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560656, -0.337196, -0.756283,
		-0.702772, -0.676794, -0.219231,
		-0.437924, 0.654407, -0.616420,
		37.943592, 36.464733, 39.700554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.972260, 35.681438, 39.468273>,  <38.250141, 36.006645, 40.132046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.972260, 35.681438, 39.468273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.080044, 36.057255, 39.383743>,  <38.144714, 36.282745, 39.333027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.080044, 36.057255, 39.383743>,  <37.972260, 35.681438, 39.468273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.080044, 36.057255, 39.383743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637165, -0.338479, -0.692425,
		-0.722089, 0.051931, -0.689848,
		0.269457, 0.939540, -0.211323,
		38.160881, 36.339115, 39.320347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.987045, 35.780647, 38.705555>,  <37.972260, 35.681438, 39.468273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.987045, 35.780647, 38.705555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.255810, 36.014553, 38.887360>,  <38.417068, 36.154896, 38.996441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.255810, 36.014553, 38.887360>,  <37.987045, 35.780647, 38.705555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.255810, 36.014553, 38.887360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693677, -0.281852, -0.662851,
		-0.259506, 0.760664, -0.595019,
		0.671914, 0.584765, 0.454513,
		38.457382, 36.189983, 39.023712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.480679, 36.009369, 38.277458>,  <37.987045, 35.780647, 38.705555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.480679, 36.009369, 38.277458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.677666, 36.077538, 38.618851>,  <38.795856, 36.118439, 38.823689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.677666, 36.077538, 38.618851>,  <38.480679, 36.009369, 38.277458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.677666, 36.077538, 38.618851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864927, -0.204950, -0.458145,
		0.096844, 0.963822, -0.248332,
		0.492466, 0.170421, 0.853484,
		38.825405, 36.128662, 38.874897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.937595, 36.437492, 38.096107>,  <38.480679, 36.009369, 38.277458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.937595, 36.437492, 38.096107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.082035, 36.247196, 38.416924>,  <39.168701, 36.133018, 38.609413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.082035, 36.247196, 38.416924>,  <38.937595, 36.437492, 38.096107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.082035, 36.247196, 38.416924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885535, -0.094643, -0.454830,
		0.292290, 0.874478, 0.387112,
		0.361101, -0.475743, 0.802044,
		39.190365, 36.104473, 38.657536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.643776, 36.454304, 38.084629>,  <38.937595, 36.437492, 38.096107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.643776, 36.454304, 38.084629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.651691, 36.210506, 38.401649>,  <39.656441, 36.064228, 38.591862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.651691, 36.210506, 38.401649>,  <39.643776, 36.454304, 38.084629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.651691, 36.210506, 38.401649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908156, -0.320590, -0.269213,
		0.418165, 0.725083, 0.547168,
		0.019785, -0.609489, 0.792548,
		39.657627, 36.027660, 38.639412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.227486, 36.630669, 38.431877>,  <39.643776, 36.454304, 38.084629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.227486, 36.630669, 38.431877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.119404, 36.258869, 38.532288>,  <40.054554, 36.035789, 38.592533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.119404, 36.258869, 38.532288>,  <40.227486, 36.630669, 38.431877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.119404, 36.258869, 38.532288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950949, -0.298436, -0.081436,
		0.150609, 0.216704, 0.964550,
		-0.270209, -0.929503, 0.251022,
		40.038342, 35.980019, 38.607594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.758808, 36.522961, 38.895439>,  <40.227486, 36.630669, 38.431877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.758808, 36.522961, 38.895439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.609989, 36.172604, 38.772549>,  <40.520699, 35.962387, 38.698814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.609989, 36.172604, 38.772549>,  <40.758808, 36.522961, 38.895439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.609989, 36.172604, 38.772549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914775, -0.402112, 0.038640,
		-0.157386, -0.266670, 0.950850,
		-0.372044, -0.875896, -0.307230,
		40.498375, 35.909836, 38.680378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.023102, 36.005215, 39.358791>,  <40.758808, 36.522961, 38.895439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.023102, 36.005215, 39.358791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.939835, 35.804020, 39.023251>,  <40.889874, 35.683304, 38.821926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.939835, 35.804020, 39.023251>,  <41.023102, 36.005215, 39.358791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.939835, 35.804020, 39.023251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933421, -0.358392, -0.016736,
		-0.292220, -0.786487, 0.544101,
		-0.208164, -0.502985, -0.838853,
		40.877384, 35.653126, 38.771595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.217587, 35.326485, 39.472973>,  <41.023102, 36.005215, 39.358791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.217587, 35.326485, 39.472973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.201164, 35.346001, 39.073788>,  <41.191311, 35.357708, 38.834274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.201164, 35.346001, 39.073788>,  <41.217587, 35.326485, 39.472973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.201164, 35.346001, 39.073788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974297, -0.219463, -0.050807,
		-0.221495, -0.974400, -0.038525,
		-0.041051, 0.048788, -0.997965,
		41.188850, 35.360638, 38.774399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.558708, 34.701805, 39.213741>,  <41.217587, 35.326485, 39.472973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.558708, 34.701805, 39.213741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.557045, 35.019176, 38.970280>,  <41.556046, 35.209599, 38.824203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.557045, 35.019176, 38.970280>,  <41.558708, 34.701805, 39.213741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.557045, 35.019176, 38.970280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965392, -0.155535, -0.209349,
		-0.260770, -0.588458, -0.765321,
		-0.004159, 0.793427, -0.608652,
		41.555798, 35.257206, 38.787685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.796833, 34.491066, 38.459026>,  <41.558708, 34.701805, 39.213741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.796833, 34.491066, 38.459026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.897346, 34.874523, 38.512478>,  <41.957653, 35.104599, 38.544548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.897346, 34.874523, 38.512478>,  <41.796833, 34.491066, 38.459026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.897346, 34.874523, 38.512478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959162, -0.228102, -0.167264,
		-0.129865, 0.170205, -0.976814,
		0.251283, 0.958645, 0.133632,
		41.972733, 35.162117, 38.552567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.188030, 34.656811, 37.895355>,  <41.796833, 34.491066, 38.459026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.188030, 34.656811, 37.895355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.308048, 34.858116, 38.219505>,  <42.380058, 34.978897, 38.413994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.308048, 34.858116, 38.219505>,  <42.188030, 34.656811, 37.895355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.308048, 34.858116, 38.219505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925134, -0.360650, -0.118566,
		0.232591, 0.785278, -0.573794,
		0.300046, 0.503260, 0.810372,
		42.398064, 35.009094, 38.462616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.803905, 35.229214, 37.777462>,  <42.188030, 34.656811, 37.895355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.803905, 35.229214, 37.777462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.804150, 35.085728, 38.150841>,  <42.804295, 34.999638, 38.374866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.804150, 35.085728, 38.150841>,  <42.803905, 35.229214, 37.777462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.804150, 35.085728, 38.150841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967213, -0.236853, -0.091650,
		0.253966, 0.902898, 0.346810,
		0.000608, -0.358715, 0.933447,
		42.804333, 34.978115, 38.430874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.386196, 35.714886, 37.556419>,  <42.803905, 35.229214, 37.777462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.386196, 35.714886, 37.556419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.684120, 35.858597, 37.781334>,  <43.862877, 35.944824, 37.916283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.684120, 35.858597, 37.781334>,  <43.386196, 35.714886, 37.556419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.684120, 35.858597, 37.781334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507073, 0.243001, -0.826939,
		-0.433738, 0.901038, -0.001190,
		0.744814, 0.359278, 0.562291,
		43.907566, 35.966381, 37.950020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.472706, 36.524422, 37.409760>,  <43.386196, 35.714886, 37.556419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.472706, 36.524422, 37.409760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.820957, 36.353180, 37.506695>,  <44.029907, 36.250435, 37.564854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.820957, 36.353180, 37.506695>,  <43.472706, 36.524422, 37.409760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.820957, 36.353180, 37.506695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432010, 0.429744, -0.792898,
		0.235303, 0.795013, 0.559095,
		0.870632, -0.428106, 0.242334,
		44.082146, 36.224747, 37.579395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.063862, 36.950474, 37.691071>,  <43.472706, 36.524422, 37.409760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.063862, 36.950474, 37.691071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.219540, 36.669064, 37.453220>,  <44.312946, 36.500217, 37.310509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.219540, 36.669064, 37.453220>,  <44.063862, 36.950474, 37.691071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.219540, 36.669064, 37.453220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540172, 0.697188, -0.471320,
		0.746151, -0.137764, 0.651368,
		0.389195, -0.703527, -0.594624,
		44.336300, 36.458004, 37.274834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.905781, 36.878239, 37.819874>,  <44.063862, 36.950474, 37.691071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.905781, 36.878239, 37.819874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.737896, 36.839352, 37.458900>,  <44.637165, 36.816017, 37.242317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.737896, 36.839352, 37.458900>,  <44.905781, 36.878239, 37.819874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.737896, 36.839352, 37.458900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367813, 0.890736, -0.267025,
		0.829793, -0.444001, -0.338092,
		-0.419710, -0.097221, -0.902436,
		44.611984, 36.810184, 37.188168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.460606, 36.910572, 37.387993>,  <44.905781, 36.878239, 37.819874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.460606, 36.910572, 37.387993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.132259, 37.030388, 37.193485>,  <44.935253, 37.102276, 37.076782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.132259, 37.030388, 37.193485>,  <45.460606, 36.910572, 37.387993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.132259, 37.030388, 37.193485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436579, 0.878028, -0.196129,
		0.368207, -0.373289, -0.851516,
		-0.820867, 0.299538, -0.486266,
		44.885998, 37.120251, 37.047604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.394951, 36.889217, 36.605911>,  <45.460606, 36.910572, 37.387993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.394951, 36.889217, 36.605911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.207436, 37.195015, 36.782902>,  <45.094925, 37.378494, 36.889095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.207436, 37.195015, 36.782902>,  <45.394951, 36.889217, 36.605911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.207436, 37.195015, 36.782902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643259, 0.638773, -0.422121,
		-0.605352, 0.086743, -0.791217,
		-0.468792, 0.764490, 0.442481,
		45.066799, 37.424362, 36.915646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.147446, 37.227364, 36.027847>,  <45.394951, 36.889217, 36.605911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.147446, 37.227364, 36.027847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.289738, 37.418163, 36.349327>,  <45.375114, 37.532642, 36.542213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.289738, 37.418163, 36.349327>,  <45.147446, 37.227364, 36.027847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.289738, 37.418163, 36.349327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788422, 0.308597, -0.532126,
		-0.501842, 0.822946, -0.266299,
		0.355732, 0.476999, 0.803695,
		45.396458, 37.561264, 36.590435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.616039, 36.842617, 35.597340>,  <45.147446, 37.227364, 36.027847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.616039, 36.842617, 35.597340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.278221, 36.906349, 35.392849>,  <44.075531, 36.944588, 35.270153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.278221, 36.906349, 35.392849>,  <44.616039, 36.842617, 35.597340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.278221, 36.906349, 35.392849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067024, -0.915750, -0.396118,
		-0.531271, -0.368805, 0.762714,
		-0.844546, 0.159326, -0.511231,
		44.024857, 36.954147, 35.239479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.338398, 36.148621, 35.497742>,  <44.616039, 36.842617, 35.597340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.338398, 36.148621, 35.497742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.236973, 36.392029, 35.196964>,  <44.176117, 36.538074, 35.016499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.236973, 36.392029, 35.196964>,  <44.338398, 36.148621, 35.497742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.236973, 36.392029, 35.196964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139923, -0.746095, -0.650972,
		-0.957146, -0.270275, 0.104036,
		-0.253562, 0.608518, -0.751939,
		44.160904, 36.574585, 34.971382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.941402, 36.037632, 35.123600>,  <44.338398, 36.148621, 35.497742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.941402, 36.037632, 35.123600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.244320, 36.220306, 35.310333>,  <45.426071, 36.329910, 35.422375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.244320, 36.220306, 35.310333>,  <44.941402, 36.037632, 35.123600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.244320, 36.220306, 35.310333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429927, -0.189457, 0.882762,
		0.491592, -0.869219, 0.052867,
		0.757298, 0.456688, 0.466837,
		45.471508, 36.357311, 35.450386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.130177, 35.620461, 35.675079>,  <44.941402, 36.037632, 35.123600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.130177, 35.620461, 35.675079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.281597, 35.979813, 35.764172>,  <45.372448, 36.195423, 35.817627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.281597, 35.979813, 35.764172>,  <45.130177, 35.620461, 35.675079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.281597, 35.979813, 35.764172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318972, -0.099276, 0.942550,
		0.868883, -0.427846, 0.248978,
		0.378549, 0.898383, 0.222730,
		45.395161, 36.249329, 35.830990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.442226, 35.480682, 36.263802>,  <45.130177, 35.620461, 35.675079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.442226, 35.480682, 36.263802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.327271, 35.863754, 36.257439>,  <45.258297, 36.093597, 36.253620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.327271, 35.863754, 36.257439>,  <45.442226, 35.480682, 36.263802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.327271, 35.863754, 36.257439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403717, -0.106058, 0.908716,
		0.868572, 0.267583, 0.417113,
		-0.287394, 0.957680, -0.015909,
		45.241051, 36.151058, 36.252666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.120857, 35.529922, 36.165604>,  <45.442226, 35.480682, 36.263802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.120857, 35.529922, 36.165604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.091713, 35.591888, 35.771507>,  <46.074226, 35.629070, 35.535049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.091713, 35.591888, 35.771507>,  <46.120857, 35.529922, 36.165604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.091713, 35.591888, 35.771507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800590, -0.580027, -0.150413,
		-0.594765, -0.799731, -0.081763,
		-0.072865, 0.154919, -0.985236,
		46.069855, 35.638363, 35.475937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.220226, 34.889439, 35.833477>,  <46.120857, 35.529922, 36.165604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.220226, 34.889439, 35.833477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.326866, 35.225586, 35.644711>,  <46.390850, 35.427273, 35.531452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.326866, 35.225586, 35.644711>,  <46.220226, 34.889439, 35.833477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.326866, 35.225586, 35.644711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913180, -0.376852, -0.155190,
		-0.308260, -0.389571, -0.867877,
		0.266603, 0.840367, -0.471917,
		46.406849, 35.477695, 35.503136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.590984, 34.826973, 35.208172>,  <46.220226, 34.889439, 35.833477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.590984, 34.826973, 35.208172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.776318, 35.135567, 35.382595>,  <46.887516, 35.320721, 35.487247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.776318, 35.135567, 35.382595>,  <46.590984, 34.826973, 35.208172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.776318, 35.135567, 35.382595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886173, -0.406034, -0.223235,
		0.004831, 0.489850, -0.871793,
		0.463329, 0.771481, 0.436053,
		46.915318, 35.367012, 35.513412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.148571, 34.877151, 34.767147>,  <46.590984, 34.826973, 35.208172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.148571, 34.877151, 34.767147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.227470, 35.033878, 35.126606>,  <47.274811, 35.127914, 35.342281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.227470, 35.033878, 35.126606>,  <47.148571, 34.877151, 34.767147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.227470, 35.033878, 35.126606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951238, -0.298232, -0.078763,
		0.237146, 0.870365, -0.431539,
		0.197251, 0.391818, 0.898649,
		47.286644, 35.151424, 35.396202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.852131, 35.200043, 34.725281>,  <47.148571, 34.877151, 34.767147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.852131, 35.200043, 34.725281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.750336, 35.117344, 35.103168>,  <47.689259, 35.067726, 35.329903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.750336, 35.117344, 35.103168>,  <47.852131, 35.200043, 34.725281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.750336, 35.117344, 35.103168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921981, -0.346698, 0.172489,
		0.291870, 0.914908, 0.278846,
		-0.254487, -0.206746, 0.944718,
		47.673988, 35.055321, 35.386585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<39.475307, 38.062592, 28.286964> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.091423, 38.069344, 28.174768>,  <38.861092, 38.073395, 28.107450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.091423, 38.069344, 28.174768>,  <39.475307, 38.062592, 28.286964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.091423, 38.069344, 28.174768> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260964, -0.423683, 0.867405,
		-0.104201, 0.905654, 0.411016,
		-0.959708, 0.016876, -0.280491,
		38.803509, 38.074406, 28.090622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.124115, 38.150799, 28.867508>,  <39.475307, 38.062592, 28.286964>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.124115, 38.150799, 28.867508> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.849457, 38.004845, 28.615992>,  <38.684662, 37.917271, 28.465082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.849457, 38.004845, 28.615992>,  <39.124115, 38.150799, 28.867508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.849457, 38.004845, 28.615992> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349698, -0.592506, 0.725705,
		-0.637360, 0.718189, 0.279242,
		-0.686646, -0.364885, -0.628789,
		38.643463, 37.895378, 28.427355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.447254, 38.137871, 29.225868>,  <39.124115, 38.150799, 28.867508>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.447254, 38.137871, 29.225868> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.392895, 37.883038, 28.922380>,  <38.360279, 37.730137, 28.740288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.392895, 37.883038, 28.922380>,  <38.447254, 38.137871, 29.225868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.392895, 37.883038, 28.922380> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312910, -0.699022, 0.643005,
		-0.940010, 0.324795, -0.104354,
		-0.135899, -0.637085, -0.758719,
		38.352123, 37.691914, 28.694765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.704109, 37.904274, 29.300297>,  <38.447254, 38.137871, 29.225868>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.704109, 37.904274, 29.300297> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.906746, 37.631283, 29.089552>,  <38.028328, 37.467487, 28.963104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.906746, 37.631283, 29.089552>,  <37.704109, 37.904274, 29.300297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.906746, 37.631283, 29.089552> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365761, -0.723484, 0.585483,
		-0.780756, -0.103897, -0.616138,
		0.506596, -0.682478, -0.526863,
		38.058723, 37.426540, 28.931494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.205971, 37.466732, 29.246449>,  <37.704109, 37.904274, 29.300297>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.205971, 37.466732, 29.246449> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.534042, 37.248142, 29.178726>,  <37.730885, 37.116989, 29.138094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.534042, 37.248142, 29.178726>,  <37.205971, 37.466732, 29.246449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.534042, 37.248142, 29.178726> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347088, -0.710555, 0.612079,
		-0.454789, -0.443252, -0.772460,
		0.820181, -0.546479, -0.169305,
		37.780098, 37.084198, 29.127935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.989025, 36.786610, 29.234476>,  <37.205971, 37.466732, 29.246449>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.989025, 36.786610, 29.234476> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.381214, 36.748661, 29.303375>,  <37.616528, 36.725891, 29.344715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.381214, 36.748661, 29.303375>,  <36.989025, 36.786610, 29.234476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.381214, 36.748661, 29.303375> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186265, -0.728869, 0.658828,
		0.063043, -0.678048, -0.732309,
		0.980475, -0.094869, 0.172246,
		37.675358, 36.720200, 29.355049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.094406, 36.035362, 29.130621>,  <36.989025, 36.786610, 29.234476>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.094406, 36.035362, 29.130621> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.379902, 36.193913, 29.361609>,  <37.551197, 36.289043, 29.500200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.379902, 36.193913, 29.361609>,  <37.094406, 36.035362, 29.130621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.379902, 36.193913, 29.361609> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090898, -0.765074, 0.637494,
		0.694491, -0.507494, -0.510032,
		0.713737, 0.396373, 0.577467,
		37.594025, 36.312824, 29.534849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.501163, 35.472168, 29.319475>,  <37.094406, 36.035362, 29.130621>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.501163, 35.472168, 29.319475> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.582779, 35.762012, 29.582779>,  <37.631748, 35.935921, 29.740761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.582779, 35.762012, 29.582779>,  <37.501163, 35.472168, 29.319475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.582779, 35.762012, 29.582779> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014066, -0.674504, 0.738137,
		0.978862, -0.141347, -0.147815,
		0.204035, 0.724614, 0.658258,
		37.643990, 35.979397, 29.780256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.918346, 35.136227, 29.914631>,  <37.501163, 35.472168, 29.319475>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.918346, 35.136227, 29.914631> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.809746, 35.474159, 30.099043>,  <37.744587, 35.676918, 30.209690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.809746, 35.474159, 30.099043>,  <37.918346, 35.136227, 29.914631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.809746, 35.474159, 30.099043> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086037, -0.455799, 0.885915,
		0.958585, 0.280193, 0.051064,
		-0.271502, 0.844831, 0.461029,
		37.728294, 35.727608, 30.237352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.339924, 35.149883, 30.434326>,  <37.918346, 35.136227, 29.914631>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.339924, 35.149883, 30.434326> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.051662, 35.406277, 30.540007>,  <37.878708, 35.560112, 30.603415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.051662, 35.406277, 30.540007>,  <38.339924, 35.149883, 30.434326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.051662, 35.406277, 30.540007> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131248, -0.248059, 0.959813,
		0.680761, 0.726367, 0.094636,
		-0.720652, 0.640982, 0.264203,
		37.835468, 35.598572, 30.619268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.621967, 35.504765, 31.025190>,  <38.339924, 35.149883, 30.434326>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.621967, 35.504765, 31.025190> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.224220, 35.537754, 31.051844>,  <37.985573, 35.557549, 31.067835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.224220, 35.537754, 31.051844>,  <38.621967, 35.504765, 31.025190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.224220, 35.537754, 31.051844> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065618, -0.014955, 0.997733,
		0.083282, 0.996481, 0.009459,
		-0.994363, 0.082473, 0.066632,
		37.925911, 35.562496, 31.071833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.485744, 36.037468, 31.603193>,  <38.621967, 35.504765, 31.025190>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.485744, 36.037468, 31.603193> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.160801, 35.812790, 31.540487>,  <37.965836, 35.677982, 31.502865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.160801, 35.812790, 31.540487>,  <38.485744, 36.037468, 31.603193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.160801, 35.812790, 31.540487> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055521, -0.193101, 0.979607,
		-0.580513, 0.804493, 0.125681,
		-0.812356, -0.561697, -0.156764,
		37.917095, 35.644279, 31.493458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.104488, 36.259731, 32.129795>,  <38.485744, 36.037468, 31.603193>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.104488, 36.259731, 32.129795> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.969818, 35.913845, 31.980703>,  <37.889015, 35.706314, 31.891249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.969818, 35.913845, 31.980703>,  <38.104488, 36.259731, 32.129795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.969818, 35.913845, 31.980703> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168491, -0.334123, 0.927347,
		-0.926424, 0.375015, -0.033206,
		-0.336674, -0.864712, -0.372726,
		37.868816, 35.654430, 31.868885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.418266, 36.155319, 32.440327>,  <38.104488, 36.259731, 32.129795>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.418266, 36.155319, 32.440327> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.496174, 35.775433, 32.342262>,  <37.542919, 35.547501, 32.283424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.496174, 35.775433, 32.342262>,  <37.418266, 36.155319, 32.440327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.496174, 35.775433, 32.342262> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169075, -0.278718, 0.945373,
		-0.966167, -0.142679, -0.214860,
		0.194770, -0.949715, -0.245165,
		37.554604, 35.490517, 32.268711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.863548, 35.620434, 32.698200>,  <37.418266, 36.155319, 32.440327>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.863548, 35.620434, 32.698200> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.208202, 35.421715, 32.656677>,  <37.414993, 35.302483, 32.631763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.208202, 35.421715, 32.656677>,  <36.863548, 35.620434, 32.698200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.208202, 35.421715, 32.656677> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102090, -0.370011, 0.923401,
		-0.497153, -0.785038, -0.369533,
		0.861636, -0.496797, -0.103808,
		37.466694, 35.272675, 32.625534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.679684, 35.011059, 33.026516>,  <36.863548, 35.620434, 32.698200>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.679684, 35.011059, 33.026516> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.078190, 34.983990, 33.005039>,  <37.317291, 34.967747, 32.992153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.078190, 34.983990, 33.005039>,  <36.679684, 35.011059, 33.026516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.078190, 34.983990, 33.005039> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010795, -0.519103, 0.854643,
		-0.085704, -0.852028, -0.516432,
		0.996262, -0.067672, -0.053687,
		37.377068, 34.963688, 32.988934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.761757, 34.332294, 33.085785>,  <36.679684, 35.011059, 33.026516>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.761757, 34.332294, 33.085785> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.112328, 34.501335, 33.178116>,  <37.322670, 34.602760, 33.233513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.112328, 34.501335, 33.178116>,  <36.761757, 34.332294, 33.085785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.112328, 34.501335, 33.178116> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065108, -0.578950, 0.812759,
		0.477110, -0.697297, -0.534923,
		0.876428, 0.422603, 0.230823,
		37.375256, 34.628117, 33.247364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.202805, 33.775177, 33.343369>,  <36.761757, 34.332294, 33.085785>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.202805, 33.775177, 33.343369> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.353889, 34.118015, 33.483494>,  <37.444542, 34.323719, 33.567570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.353889, 34.118015, 33.483494>,  <37.202805, 33.775177, 33.343369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.353889, 34.118015, 33.483494> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032526, -0.365829, 0.930113,
		0.925350, -0.362713, -0.110302,
		0.377716, 0.857093, 0.350318,
		37.467205, 34.375145, 33.588589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.700615, 33.593079, 33.896767>,  <37.202805, 33.775177, 33.343369>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.700615, 33.593079, 33.896767> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.614922, 33.976452, 33.972137>,  <37.563507, 34.206478, 34.017361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.614922, 33.976452, 33.972137>,  <37.700615, 33.593079, 33.896767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.614922, 33.976452, 33.972137> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047810, -0.182390, 0.982063,
		0.975612, 0.219400, -0.006749,
		-0.214233, 0.958435, 0.188431,
		37.550652, 34.263981, 34.028667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.228752, 33.782246, 34.435028>,  <37.700615, 33.593079, 33.896767>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.228752, 33.782246, 34.435028> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.944641, 34.061703, 34.469460>,  <37.774174, 34.229378, 34.490120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.944641, 34.061703, 34.469460>,  <38.228752, 33.782246, 34.435028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.944641, 34.061703, 34.469460> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016548, -0.105676, 0.994263,
		0.703730, 0.707625, 0.063497,
		-0.710275, 0.698641, 0.086077,
		37.731560, 34.271294, 34.495281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.424267, 34.214481, 35.095943>,  <38.228752, 33.782246, 34.435028>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.424267, 34.214481, 35.095943> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.033924, 34.261612, 35.022377>,  <37.799721, 34.289890, 34.978237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.033924, 34.261612, 35.022377>,  <38.424267, 34.214481, 35.095943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.033924, 34.261612, 35.022377> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196603, -0.106999, 0.974627,
		0.095162, 0.987252, 0.127581,
		-0.975854, 0.117830, -0.183915,
		37.741169, 34.296963, 34.967201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.123779, 34.442982, 35.059856>,  <38.424267, 34.214481, 35.095943>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.123779, 34.442982, 35.059856> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.494255, 34.364223, 35.188488>,  <39.716541, 34.316967, 35.265667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.494255, 34.364223, 35.188488>,  <39.123779, 34.442982, 35.059856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.494255, 34.364223, 35.188488> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367944, 0.658399, -0.656603,
		-0.082445, 0.726459, 0.682246,
		0.926185, -0.196895, 0.321578,
		39.772110, 34.305157, 35.284962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.516384, 35.042500, 35.102398>,  <39.123779, 34.442982, 35.059856>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.516384, 35.042500, 35.102398> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.831532, 34.796234, 35.096470>,  <40.020622, 34.648476, 35.092911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.831532, 34.796234, 35.096470>,  <39.516384, 35.042500, 35.102398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.831532, 34.796234, 35.096470> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517152, 0.674494, -0.526889,
		0.334385, 0.407455, 0.849805,
		0.787871, -0.615662, -0.014824,
		40.067894, 34.611534, 35.092022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.004459, 35.447803, 35.221359>,  <39.516384, 35.042500, 35.102398>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.004459, 35.447803, 35.221359> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.206295, 35.136490, 35.071869>,  <40.327396, 34.949703, 34.982174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.206295, 35.136490, 35.071869>,  <40.004459, 35.447803, 35.221359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.206295, 35.136490, 35.071869> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466626, 0.610045, -0.640394,
		0.726397, 0.148743, 0.670986,
		0.504586, -0.778280, -0.373728,
		40.357670, 34.903008, 34.959751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.645733, 35.721756, 34.917953>,  <40.004459, 35.447803, 35.221359>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.645733, 35.721756, 34.917953> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.645882, 35.356770, 34.754292>,  <40.645969, 35.137779, 34.656094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.645882, 35.356770, 34.754292>,  <40.645733, 35.721756, 34.917953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.645882, 35.356770, 34.754292> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390343, 0.376827, -0.840020,
		0.920669, -0.159399, 0.356314,
		0.000370, -0.912466, -0.409153,
		40.645992, 35.083031, 34.631546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.293453, 35.521343, 34.732731>,  <40.645733, 35.721756, 34.917953>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.293453, 35.521343, 34.732731> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.039799, 35.314838, 34.502480>,  <40.887608, 35.190937, 34.364326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.039799, 35.314838, 34.502480>,  <41.293453, 35.521343, 34.732731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.039799, 35.314838, 34.502480> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512695, 0.276537, -0.812817,
		0.578807, -0.810558, 0.089322,
		-0.634134, -0.516258, -0.575631,
		40.849560, 35.159962, 34.329792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.750530, 35.213165, 34.111050>,  <41.293453, 35.521343, 34.732731>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.750530, 35.213165, 34.111050> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.385452, 35.108814, 33.985237>,  <41.166405, 35.046204, 33.909752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.385452, 35.108814, 33.985237>,  <41.750530, 35.213165, 34.111050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.385452, 35.108814, 33.985237> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241333, 0.277012, -0.930066,
		0.329764, -0.924773, -0.189868,
		-0.912696, -0.260881, -0.314527,
		41.111645, 35.030552, 33.890881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.910763, 34.945667, 33.549873>,  <41.750530, 35.213165, 34.111050>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.910763, 34.945667, 33.549873> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.524345, 35.035217, 33.498264>,  <41.292496, 35.088947, 33.467297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.524345, 35.035217, 33.498264>,  <41.910763, 34.945667, 33.549873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.524345, 35.035217, 33.498264> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208785, 0.382092, -0.900230,
		-0.152241, -0.896596, -0.415858,
		-0.966039, 0.223877, -0.129026,
		41.234535, 35.102379, 33.459557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.588112, 34.624222, 32.882046>,  <41.910763, 34.945667, 33.549873>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.588112, 34.624222, 32.882046> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.399277, 34.961929, 32.983513>,  <41.285976, 35.164555, 33.044392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.399277, 34.961929, 32.983513>,  <41.588112, 34.624222, 32.882046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.399277, 34.961929, 32.983513> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204726, 0.384883, -0.899973,
		-0.857451, -0.372933, -0.354542,
		-0.472087, 0.844267, 0.253669,
		41.257652, 35.215210, 33.059612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.154884, 34.769863, 32.284992>,  <41.588112, 34.624222, 32.882046>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.154884, 34.769863, 32.284992> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.182220, 35.096310, 32.514526>,  <41.198624, 35.292179, 32.652245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.182220, 35.096310, 32.514526>,  <41.154884, 34.769863, 32.284992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.182220, 35.096310, 32.514526> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257690, 0.541220, -0.800423,
		-0.963808, 0.202575, -0.173316,
		0.068344, 0.816115, 0.573834,
		41.202724, 35.341145, 32.686676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.779713, 35.236683, 31.974747>,  <41.154884, 34.769863, 32.284992>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.779713, 35.236683, 31.974747> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.993748, 35.480305, 32.208920>,  <41.122169, 35.626476, 32.349422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.993748, 35.480305, 32.208920>,  <40.779713, 35.236683, 31.974747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.993748, 35.480305, 32.208920> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151601, 0.612511, -0.775789,
		-0.831082, 0.503868, 0.235415,
		0.535089, 0.609055, 0.585433,
		41.154274, 35.663021, 32.384548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.541458, 35.944336, 32.020298>,  <40.779713, 35.236683, 31.974747>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.541458, 35.944336, 32.020298> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.926208, 35.994843, 32.117336>,  <41.157059, 36.025146, 32.175560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.926208, 35.994843, 32.117336>,  <40.541458, 35.944336, 32.020298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.926208, 35.994843, 32.117336> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070314, 0.743058, -0.665523,
		-0.264298, 0.657207, 0.705850,
		0.961874, 0.126266, 0.242600,
		41.214771, 36.032722, 32.190117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.547585, 36.553989, 31.828384>,  <40.541458, 35.944336, 32.020298>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.547585, 36.553989, 31.828384> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.936260, 36.462318, 31.851336>,  <41.169468, 36.407314, 31.865107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.936260, 36.462318, 31.851336>,  <40.547585, 36.553989, 31.828384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.936260, 36.462318, 31.851336> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208602, 0.718254, -0.663774,
		0.110911, 0.656953, 0.745729,
		0.971691, -0.229180, 0.057379,
		41.227768, 36.393566, 31.868549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.896812, 37.202709, 32.038330>,  <40.547585, 36.553989, 31.828384>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.896812, 37.202709, 32.038330> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.141029, 36.953930, 31.842201>,  <41.287560, 36.804661, 31.724524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.141029, 36.953930, 31.842201>,  <40.896812, 37.202709, 32.038330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.141029, 36.953930, 31.842201> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257478, 0.741353, -0.619759,
		0.748964, 0.252139, 0.612763,
		0.610539, -0.621950, -0.490327,
		41.324192, 36.767345, 31.695103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.462234, 37.586452, 31.972942>,  <40.896812, 37.202709, 32.038330>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.462234, 37.586452, 31.972942> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.479656, 37.313705, 31.680872>,  <41.490108, 37.150055, 31.505630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.479656, 37.313705, 31.680872>,  <41.462234, 37.586452, 31.972942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.479656, 37.313705, 31.680872> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022474, 0.731352, -0.681630,
		0.998798, 0.013275, 0.047175,
		0.043550, -0.681871, -0.730175,
		41.492722, 37.109142, 31.461819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.978146, 37.892506, 31.514549>,  <41.462234, 37.586452, 31.972942>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.978146, 37.892506, 31.514549> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.796791, 37.619846, 31.284836>,  <41.687977, 37.456253, 31.147007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.796791, 37.619846, 31.284836>,  <41.978146, 37.892506, 31.514549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.796791, 37.619846, 31.284836> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098375, 0.678644, -0.727849,
		0.885870, -0.273500, -0.374743,
		-0.453384, -0.681645, -0.574285,
		41.660774, 37.415352, 31.112551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.337414, 38.017509, 30.959562>,  <41.978146, 37.892506, 31.514549>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.337414, 38.017509, 30.959562> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.017384, 37.805889, 30.846434>,  <41.825367, 37.678917, 30.778557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.017384, 37.805889, 30.846434>,  <42.337414, 38.017509, 30.959562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.017384, 37.805889, 30.846434> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075582, 0.556583, -0.827347,
		0.595126, -0.640560, -0.485293,
		-0.800070, -0.529055, -0.282822,
		41.777363, 37.647175, 30.761587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.472317, 37.736012, 30.266256>,  <42.337414, 38.017509, 30.959562>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.472317, 37.736012, 30.266256> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.073475, 37.722012, 30.293255>,  <41.834171, 37.713612, 30.309454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.073475, 37.722012, 30.293255>,  <42.472317, 37.736012, 30.266256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.073475, 37.722012, 30.293255> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075129, 0.317006, -0.945443,
		0.011696, -0.947777, -0.318718,
		-0.997105, -0.035003, 0.067498,
		41.774342, 37.711510, 30.313503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.245304, 37.289898, 29.729839>,  <42.472317, 37.736012, 30.266256>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.245304, 37.289898, 29.729839> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.946388, 37.531944, 29.839672>,  <41.767040, 37.677174, 29.905571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.946388, 37.531944, 29.839672>,  <42.245304, 37.289898, 29.729839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.946388, 37.531944, 29.839672> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054982, 0.355492, -0.933061,
		-0.662221, -0.712363, -0.232384,
		-0.747288, 0.605116, 0.274582,
		41.722202, 37.713478, 29.922047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.750908, 37.148960, 29.244406>,  <42.245304, 37.289898, 29.729839>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.750908, 37.148960, 29.244406> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.606861, 37.486656, 29.403183>,  <41.520432, 37.689274, 29.498449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.606861, 37.486656, 29.403183>,  <41.750908, 37.148960, 29.244406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.606861, 37.486656, 29.403183> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000665, 0.425261, -0.905070,
		-0.932905, -0.326199, -0.152584,
		-0.360121, 0.844243, 0.396945,
		41.498825, 37.739929, 29.522266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<41.058979, 37.201080, 28.961168> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.126209, 37.574440, 29.087984>,  <41.166550, 37.798454, 29.164074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.126209, 37.574440, 29.087984>,  <41.058979, 37.201080, 28.961168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.126209, 37.574440, 29.087984> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270770, 0.352960, -0.895602,
		-0.947857, 0.064687, 0.312062,
		0.168080, 0.933399, 0.317041,
		41.176632, 37.854462, 29.183096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.638153, 37.625916, 28.611362>,  <41.058979, 37.201080, 28.961168>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.638153, 37.625916, 28.611362> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.927422, 37.881424, 28.716425>,  <41.100983, 38.034729, 28.779463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.927422, 37.881424, 28.716425>,  <40.638153, 37.625916, 28.611362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.927422, 37.881424, 28.716425> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224841, 0.577310, -0.784958,
		-0.653045, 0.508605, 0.561118,
		0.723173, 0.638775, 0.262654,
		41.144375, 38.073055, 28.795221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.312294, 38.286640, 28.464174>,  <40.638153, 37.625916, 28.611362>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.312294, 38.286640, 28.464174> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.710770, 38.321377, 28.467413>,  <40.949856, 38.342220, 28.469357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.710770, 38.321377, 28.467413>,  <40.312294, 38.286640, 28.464174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.710770, 38.321377, 28.467413> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043534, 0.575522, -0.816627,
		-0.075581, 0.813162, 0.577109,
		0.996189, 0.086845, 0.008098,
		41.009624, 38.347431, 28.469843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.400536, 38.945583, 28.236832>,  <40.312294, 38.286640, 28.464174>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.400536, 38.945583, 28.236832> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.774189, 38.803680, 28.221161>,  <40.998383, 38.718540, 28.211760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.774189, 38.803680, 28.221161>,  <40.400536, 38.945583, 28.236832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.774189, 38.803680, 28.221161> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123281, 0.423719, -0.897365,
		0.334944, 0.833433, 0.439546,
		0.934138, -0.354755, -0.039176,
		41.054432, 38.697254, 28.209408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.792622, 39.545418, 28.036404>,  <40.400536, 38.945583, 28.236832>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.792622, 39.545418, 28.036404> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.003784, 39.226154, 27.920298>,  <41.130482, 39.034595, 27.850634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.003784, 39.226154, 27.920298>,  <40.792622, 39.545418, 28.036404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.003784, 39.226154, 27.920298> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081001, 0.387531, -0.918291,
		0.845429, 0.461263, 0.269233,
		0.527910, -0.798158, -0.290267,
		41.162155, 38.986706, 27.833218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.479637, 39.771732, 27.902136>,  <40.792622, 39.545418, 28.036404>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.479637, 39.771732, 27.902136> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.429165, 39.430965, 27.698835>,  <41.398880, 39.226505, 27.576855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.429165, 39.430965, 27.698835>,  <41.479637, 39.771732, 27.902136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.429165, 39.430965, 27.698835> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089975, 0.500405, -0.861103,
		0.987919, -0.154384, 0.013510,
		-0.126180, -0.851915, -0.508250,
		41.391312, 39.175392, 27.546360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.925293, 39.760029, 27.372662>,  <41.479637, 39.771732, 27.902136>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.925293, 39.760029, 27.372662> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.671406, 39.472683, 27.258764>,  <41.519073, 39.300274, 27.190426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.671406, 39.472683, 27.258764>,  <41.925293, 39.760029, 27.372662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.671406, 39.472683, 27.258764> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025746, 0.387939, -0.921325,
		0.772312, -0.577454, -0.264728,
		-0.634721, -0.718367, -0.284743,
		41.480988, 39.257172, 27.173342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.223461, 39.332333, 26.799355>,  <41.925293, 39.760029, 27.372662>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.223461, 39.332333, 26.799355> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.825138, 39.295994, 26.794968>,  <41.586143, 39.274193, 26.792336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.825138, 39.295994, 26.794968>,  <42.223461, 39.332333, 26.799355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.825138, 39.295994, 26.794968> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028465, 0.421436, -0.906411,
		0.086963, -0.902297, -0.422254,
		-0.995805, -0.090844, -0.010965,
		41.526398, 39.268742, 26.791677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.114666, 39.019135, 26.205538>,  <42.223461, 39.332333, 26.799355>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.114666, 39.019135, 26.205538> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.759602, 39.169949, 26.311293>,  <41.546562, 39.260437, 26.374746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.759602, 39.169949, 26.311293>,  <42.114666, 39.019135, 26.205538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.759602, 39.169949, 26.311293> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100867, 0.401005, -0.910506,
		-0.449311, -0.834890, -0.317927,
		-0.887663, 0.377032, 0.264389,
		41.493301, 39.283058, 26.390610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.768681, 38.869144, 25.662529>,  <42.114666, 39.019135, 26.205538>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.768681, 38.869144, 25.662529> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.583118, 39.174755, 25.841887>,  <41.471783, 39.358120, 25.949501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.583118, 39.174755, 25.841887>,  <41.768681, 38.869144, 25.662529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.583118, 39.174755, 25.841887> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154355, 0.428701, -0.890163,
		-0.872334, -0.482163, -0.080945,
		-0.463905, 0.764025, 0.448395,
		41.443947, 39.403961, 25.976404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.285789, 39.027843, 25.203112>,  <41.768681, 38.869144, 25.662529>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.285789, 39.027843, 25.203112> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.316582, 39.356197, 25.429462>,  <41.335056, 39.553211, 25.565273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.316582, 39.356197, 25.429462>,  <41.285789, 39.027843, 25.203112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.316582, 39.356197, 25.429462> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089603, 0.570962, -0.816072,
		-0.992998, 0.012119, 0.117508,
		0.076983, 0.820887, 0.565878,
		41.339676, 39.602463, 25.599226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.071209, 39.448368, 24.792635>,  <41.285789, 39.027843, 25.203112>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.071209, 39.448368, 24.792635> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.223774, 39.699841, 25.063719>,  <41.315311, 39.850723, 25.226370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.223774, 39.699841, 25.063719>,  <41.071209, 39.448368, 24.792635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.223774, 39.699841, 25.063719> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168338, 0.673634, -0.719638,
		-0.908950, 0.388561, 0.151100,
		0.381409, 0.628679, 0.677709,
		41.338196, 39.888443, 25.267031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.894966, 40.105202, 24.452902>,  <41.071209, 39.448368, 24.792635>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.894966, 40.105202, 24.452902> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.196037, 40.149303, 24.712540>,  <41.376678, 40.175766, 24.868322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.196037, 40.149303, 24.712540>,  <40.894966, 40.105202, 24.452902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.196037, 40.149303, 24.712540> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342525, 0.776382, -0.529062,
		-0.562278, 0.620543, 0.546598,
		0.752675, 0.110256, 0.649094,
		41.421841, 40.182381, 24.907269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.642563, 40.662331, 24.816683>,  <40.894966, 40.105202, 24.452902>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.642563, 40.662331, 24.816683> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.041725, 40.652950, 24.840809>,  <41.281223, 40.647320, 24.855284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.041725, 40.652950, 24.840809>,  <40.642563, 40.662331, 24.816683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.041725, 40.652950, 24.840809> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057272, 0.754021, -0.654348,
		-0.030129, 0.656431, 0.753784,
		0.997904, -0.023455, 0.060313,
		41.341095, 40.645912, 24.858902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.719582, 41.293659, 24.874041>,  <40.642563, 40.662331, 24.816683>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.719582, 41.293659, 24.874041> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.079891, 41.147549, 24.780083>,  <41.296078, 41.059883, 24.723709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.079891, 41.147549, 24.780083>,  <40.719582, 41.293659, 24.874041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.079891, 41.147549, 24.780083> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156926, 0.778098, -0.608225,
		0.404943, 0.511013, 0.758213,
		0.900775, -0.365280, -0.234894,
		41.350124, 41.037964, 24.709614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.145226, 41.838219, 24.987633>,  <40.719582, 41.293659, 24.874041>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.145226, 41.838219, 24.987633> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.319592, 41.593250, 24.723837>,  <41.424210, 41.446270, 24.565559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.319592, 41.593250, 24.723837>,  <41.145226, 41.838219, 24.987633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.319592, 41.593250, 24.723837> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340568, 0.790530, -0.508996,
		0.833063, -0.002723, 0.553171,
		0.435912, -0.612418, -0.659488,
		41.450367, 41.409523, 24.525990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.823856, 42.120152, 24.903664>,  <41.145226, 41.838219, 24.987633>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.823856, 42.120152, 24.903664> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.737343, 41.899361, 24.581535>,  <41.685436, 41.766888, 24.388258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.737343, 41.899361, 24.581535>,  <41.823856, 42.120152, 24.903664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.737343, 41.899361, 24.581535> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379684, 0.712365, -0.590234,
		0.899479, -0.433424, 0.055507,
		-0.216280, -0.551979, -0.805321,
		41.672459, 41.733768, 24.339939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.348160, 42.348717, 24.451872>,  <41.823856, 42.120152, 24.903664>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.348160, 42.348717, 24.451872> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.069431, 42.162483, 24.233637>,  <41.902195, 42.050743, 24.102695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.069431, 42.162483, 24.233637>,  <42.348160, 42.348717, 24.451872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.069431, 42.162483, 24.233637> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021769, 0.746593, -0.664925,
		0.716908, -0.475215, -0.510111,
		-0.696828, -0.465585, -0.545583,
		41.860382, 42.022808, 24.069962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.687012, 42.313709, 23.841848>,  <42.348160, 42.348717, 24.451872>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.687012, 42.313709, 23.841848> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.295120, 42.256245, 23.786001>,  <42.059986, 42.221767, 23.752493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.295120, 42.256245, 23.786001>,  <42.687012, 42.313709, 23.841848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.295120, 42.256245, 23.786001> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009387, 0.729104, -0.684339,
		0.200109, -0.669155, -0.715673,
		-0.979729, -0.143660, -0.139620,
		42.001202, 42.213146, 23.744116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.666306, 42.362705, 23.129267>,  <42.687012, 42.313709, 23.841848>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.666306, 42.362705, 23.129267> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.281357, 42.363873, 23.237951>,  <42.050388, 42.364574, 23.303162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.281357, 42.363873, 23.237951>,  <42.666306, 42.362705, 23.129267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.281357, 42.363873, 23.237951> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207129, 0.639334, -0.740506,
		-0.175878, -0.768923, -0.614674,
		-0.962374, 0.002922, 0.271711,
		41.992645, 42.364750, 23.319464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.343960, 42.314590, 22.527231>,  <42.666306, 42.362705, 23.129267>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.343960, 42.314590, 22.527231> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.119884, 42.524059, 22.783968>,  <41.985439, 42.649738, 22.938011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.119884, 42.524059, 22.783968>,  <42.343960, 42.314590, 22.527231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.119884, 42.524059, 22.783968> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164944, 0.688799, -0.705938,
		-0.811778, -0.501326, -0.299480,
		-0.560187, 0.523668, 0.641843,
		41.951828, 42.681160, 22.976521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.747803, 42.482384, 22.127720>,  <42.343960, 42.314590, 22.527231>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.747803, 42.482384, 22.127720> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.829811, 42.725929, 22.434250>,  <41.879017, 42.872055, 22.618168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.829811, 42.725929, 22.434250>,  <41.747803, 42.482384, 22.127720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.829811, 42.725929, 22.434250> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247311, 0.789778, -0.561327,
		-0.946997, -0.074435, 0.312500,
		0.205023, 0.608859, 0.766326,
		41.891319, 42.908588, 22.664148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.126648, 42.915993, 22.366776>,  <41.747803, 42.482384, 22.127720>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.126648, 42.915993, 22.366776> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.471031, 43.114300, 22.412310>,  <41.677662, 43.233284, 22.439631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.471031, 43.114300, 22.412310>,  <41.126648, 42.915993, 22.366776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.471031, 43.114300, 22.412310> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406514, 0.805128, -0.431875,
		-0.305764, 0.325551, 0.894721,
		0.860962, 0.495768, 0.113838,
		41.729321, 43.263031, 22.446461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.925190, 43.487122, 22.730688>,  <41.126648, 42.915993, 22.366776>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.925190, 43.487122, 22.730688> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.245106, 43.550350, 22.499050>,  <41.437054, 43.588287, 22.360067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.245106, 43.550350, 22.499050>,  <40.925190, 43.487122, 22.730688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.245106, 43.550350, 22.499050> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502169, 0.704728, -0.501183,
		0.328883, 0.691645, 0.643012,
		0.799789, 0.158070, -0.579095,
		41.485043, 43.597771, 22.325321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.629425, 44.047707, 23.023209>,  <40.925190, 43.487122, 22.730688>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.629425, 44.047707, 23.023209> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.230358, 44.035748, 23.047758>,  <39.990917, 44.028572, 23.062489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.230358, 44.035748, 23.047758>,  <40.629425, 44.047707, 23.023209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.230358, 44.035748, 23.047758> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055822, -0.874798, 0.481262,
		0.039300, 0.483565, 0.874426,
		-0.997667, -0.029898, 0.061373,
		39.931057, 44.026779, 23.066170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.442993, 43.931870, 23.702799>,  <40.629425, 44.047707, 23.023209>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.442993, 43.931870, 23.702799> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.092567, 43.819134, 23.546297>,  <39.882313, 43.751492, 23.452396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.092567, 43.819134, 23.546297>,  <40.442993, 43.931870, 23.702799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.092567, 43.819134, 23.546297> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029217, -0.778881, 0.626491,
		-0.481309, 0.560277, 0.674115,
		-0.876064, -0.281841, -0.391252,
		39.829750, 43.734581, 23.428921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.924797, 43.858883, 24.287956>,  <40.442993, 43.931870, 23.702799>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.924797, 43.858883, 24.287956> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.758919, 43.644260, 23.993982>,  <39.659393, 43.515488, 23.817598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.758919, 43.644260, 23.993982>,  <39.924797, 43.858883, 24.287956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.758919, 43.644260, 23.993982> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090655, -0.779278, 0.620087,
		-0.905434, 0.323772, 0.274520,
		-0.414694, -0.536561, -0.734936,
		39.634510, 43.483292, 23.773502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.296268, 43.625938, 24.595936>,  <39.924797, 43.858883, 24.287956>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.296268, 43.625938, 24.595936> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.361763, 43.376297, 24.290339>,  <39.401058, 43.226513, 24.106979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.361763, 43.376297, 24.290339>,  <39.296268, 43.625938, 24.595936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.361763, 43.376297, 24.290339> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476215, -0.728241, 0.492833,
		-0.863950, 0.283132, -0.416445,
		0.163735, -0.624100, -0.763996,
		39.410885, 43.189068, 24.061140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.662586, 43.137768, 24.629700>,  <39.296268, 43.625938, 24.595936>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.662586, 43.137768, 24.629700> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.916721, 42.982357, 24.362745>,  <39.069202, 42.889111, 24.202574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.916721, 42.982357, 24.362745>,  <38.662586, 43.137768, 24.629700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.916721, 42.982357, 24.362745> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334127, -0.917441, 0.216014,
		-0.696211, 0.085750, -0.712697,
		0.635334, -0.388522, -0.667383,
		39.107323, 42.865799, 24.162531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.292870, 42.645927, 24.154213>,  <38.662586, 43.137768, 24.629700>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.292870, 42.645927, 24.154213> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.683735, 42.570923, 24.194208>,  <38.918255, 42.525921, 24.218206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.683735, 42.570923, 24.194208>,  <38.292870, 42.645927, 24.154213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.683735, 42.570923, 24.194208> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212065, -0.890629, 0.402254,
		0.013627, -0.414271, -0.910052,
		0.977161, -0.187508, 0.099989,
		38.976883, 42.514671, 24.224205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.332249, 41.961151, 24.105200>,  <38.292870, 42.645927, 24.154213>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.332249, 41.961151, 24.105200> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.689587, 42.030987, 24.270826>,  <38.903988, 42.072887, 24.370203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.689587, 42.030987, 24.270826>,  <38.332249, 41.961151, 24.105200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.689587, 42.030987, 24.270826> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069975, -0.856149, 0.511969,
		0.443888, -0.486340, -0.752620,
		0.893346, 0.174592, 0.414066,
		38.957592, 42.083363, 24.395046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.543602, 41.302067, 24.256363>,  <38.332249, 41.961151, 24.105200>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.543602, 41.302067, 24.256363> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.795277, 41.533829, 24.463596>,  <38.946281, 41.672886, 24.587936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.795277, 41.533829, 24.463596>,  <38.543602, 41.302067, 24.256363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.795277, 41.533829, 24.463596> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036514, -0.687858, 0.724927,
		0.776394, -0.437198, -0.453949,
		0.629189, 0.579404, 0.518085,
		38.984032, 41.707649, 24.619022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.187157, 40.913731, 24.407146>,  <38.543602, 41.302067, 24.256363>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.187157, 40.913731, 24.407146> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.176300, 41.205338, 24.680729>,  <39.169785, 41.380302, 24.844879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.176300, 41.205338, 24.680729>,  <39.187157, 40.913731, 24.407146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.176300, 41.205338, 24.680729> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155656, -0.672780, 0.723283,
		0.987438, 0.126096, -0.095213,
		-0.027146, 0.729018, 0.683956,
		39.168156, 41.424042, 24.885916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.735611, 40.776978, 24.761852>,  <39.187157, 40.913731, 24.407146>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.735611, 40.776978, 24.761852> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.444393, 40.958595, 24.967297>,  <39.269665, 41.067566, 25.090563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.444393, 40.958595, 24.967297>,  <39.735611, 40.776978, 24.761852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.444393, 40.958595, 24.967297> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027898, -0.728968, 0.683979,
		0.684965, 0.512294, 0.518053,
		-0.728042, 0.454049, 0.513609,
		39.225979, 41.094810, 25.121380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.864670, 40.749241, 25.527822>,  <39.735611, 40.776978, 24.761852>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.864670, 40.749241, 25.527822> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.473618, 40.813251, 25.473234>,  <39.238987, 40.851658, 25.440481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.473618, 40.813251, 25.473234>,  <39.864670, 40.749241, 25.527822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.473618, 40.813251, 25.473234> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207001, -0.617337, 0.758977,
		0.037209, 0.770250, 0.636656,
		-0.977633, 0.160029, -0.136472,
		39.180328, 40.861259, 25.432293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.653641, 40.716755, 26.234823>,  <39.864670, 40.749241, 25.527822>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.653641, 40.716755, 26.234823> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.308998, 40.749825, 26.034502>,  <39.102215, 40.769665, 25.914309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.308998, 40.749825, 26.034502>,  <39.653641, 40.716755, 26.234823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.308998, 40.749825, 26.034502> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463383, -0.530795, 0.709601,
		-0.207161, 0.843458, 0.495643,
		-0.861603, 0.082671, -0.500804,
		39.050518, 40.774624, 25.884260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.083748, 40.797947, 26.710987>,  <39.653641, 40.716755, 26.234823>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.083748, 40.797947, 26.710987> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.931442, 40.634563, 26.379160>,  <38.840061, 40.536533, 26.180063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.931442, 40.634563, 26.379160>,  <39.083748, 40.797947, 26.710987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.931442, 40.634563, 26.379160> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462749, -0.692550, 0.553387,
		-0.800552, 0.594591, 0.074684,
		-0.380762, -0.408455, -0.829569,
		38.817215, 40.512028, 26.130289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.464725, 40.529236, 26.927917>,  <39.083748, 40.797947, 26.710987>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.464725, 40.529236, 26.927917> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.521660, 40.356426, 26.571693>,  <38.555820, 40.252743, 26.357960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.521660, 40.356426, 26.571693>,  <38.464725, 40.529236, 26.927917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.521660, 40.356426, 26.571693> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234738, -0.888788, 0.393643,
		-0.961581, 0.153018, -0.227918,
		0.142336, -0.432021, -0.890561,
		38.564362, 40.226818, 26.304525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.949696, 40.029671, 26.882095>,  <38.464725, 40.529236, 26.927917>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.949696, 40.029671, 26.882095> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.237492, 39.930241, 26.622696>,  <38.410168, 39.870583, 26.467056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.237492, 39.930241, 26.622696>,  <37.949696, 40.029671, 26.882095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.237492, 39.930241, 26.622696> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086944, -0.894172, 0.439200,
		-0.689043, -0.372381, -0.621733,
		0.719486, -0.248572, -0.648499,
		38.453339, 39.855667, 26.428146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.726295, 39.423973, 26.540533>,  <37.949696, 40.029671, 26.882095>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.726295, 39.423973, 26.540533> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.123062, 39.398094, 26.496887>,  <38.361122, 39.382565, 26.470699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.123062, 39.398094, 26.496887>,  <37.726295, 39.423973, 26.540533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.123062, 39.398094, 26.496887> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028620, -0.952112, 0.304409,
		-0.123583, -0.298827, -0.946272,
		0.991922, -0.064702, -0.109112,
		38.420639, 39.378685, 26.464153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.767452, 38.746590, 26.304287>,  <37.726295, 39.423973, 26.540533>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.767452, 38.746590, 26.304287> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.140644, 38.839439, 26.414320>,  <38.364559, 38.895149, 26.480339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.140644, 38.839439, 26.414320>,  <37.767452, 38.746590, 26.304287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.140644, 38.839439, 26.414320> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059960, -0.853814, 0.517114,
		0.354903, -0.465963, -0.810508,
		0.932979, 0.232123, 0.275082,
		38.420536, 38.909077, 26.496845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.101944, 38.110851, 26.225500>,  <37.767452, 38.746590, 26.304287>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.101944, 38.110851, 26.225500> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.302242, 38.341553, 26.483679>,  <38.422421, 38.479973, 26.638586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.302242, 38.341553, 26.483679>,  <38.101944, 38.110851, 26.225500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.302242, 38.341553, 26.483679> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072637, -0.771040, 0.632630,
		0.862540, -0.269906, -0.427991,
		0.500749, 0.576757, 0.645447,
		38.452469, 38.514580, 26.677313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.738663, 37.815083, 26.335913>,  <38.101944, 38.110851, 26.225500>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.738663, 37.815083, 26.335913> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.607445, 38.038387, 26.640736>,  <38.528713, 38.172371, 26.823629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.607445, 38.038387, 26.640736>,  <38.738663, 37.815083, 26.335913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.607445, 38.038387, 26.640736> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081167, -0.787056, 0.611519,
		0.941170, 0.262457, 0.212874,
		-0.328041, 0.558265, 0.762056,
		38.509033, 38.205868, 26.869352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.173534, 37.861725, 26.975521>,  <38.738663, 37.815083, 26.335913>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.173534, 37.861725, 26.975521> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.794704, 37.891808, 27.100351>,  <38.567406, 37.909859, 27.175249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.794704, 37.891808, 27.100351>,  <39.173534, 37.861725, 26.975521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.794704, 37.891808, 27.100351> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075443, -0.892789, 0.444113,
		0.312021, 0.444153, 0.839864,
		-0.947075, 0.075210, 0.312077,
		38.510582, 37.914371, 27.193974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.131603, 35.989880, 31.088881> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.888992, 36.230442, 31.296894>,  <41.743427, 36.374779, 31.421703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.888992, 36.230442, 31.296894>,  <42.131603, 35.989880, 31.088881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.888992, 36.230442, 31.296894> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099386, -0.591600, 0.800082,
		0.788827, 0.536955, 0.299050,
		-0.606526, 0.601406, 0.520036,
		41.707035, 36.410862, 31.452906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.461990, 35.916199, 31.780527>,  <42.131603, 35.989880, 31.088881>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.461990, 35.916199, 31.780527> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.092422, 36.063866, 31.820713>,  <41.870682, 36.152466, 31.844824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.092422, 36.063866, 31.820713>,  <42.461990, 35.916199, 31.780527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.092422, 36.063866, 31.820713> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089597, -0.464051, 0.881265,
		0.371959, 0.805213, 0.461821,
		-0.923915, 0.369172, 0.100463,
		41.815247, 36.174618, 31.850853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.385502, 36.254383, 32.532063>,  <42.461990, 35.916199, 31.780527>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.385502, 36.254383, 32.532063> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.010788, 36.190487, 32.407536>,  <41.785961, 36.152149, 32.332817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.010788, 36.190487, 32.407536>,  <42.385502, 36.254383, 32.532063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.010788, 36.190487, 32.407536> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199993, -0.485636, 0.850976,
		-0.287125, 0.859442, 0.422988,
		-0.936783, -0.159742, -0.311321,
		41.729752, 36.142563, 32.314140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.877815, 36.459980, 33.071053>,  <42.385502, 36.254383, 32.532063>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.877815, 36.459980, 33.071053> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.674397, 36.189133, 32.858303>,  <41.552345, 36.026623, 32.730652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.674397, 36.189133, 32.858303>,  <41.877815, 36.459980, 33.071053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.674397, 36.189133, 32.858303> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216074, -0.497589, 0.840070,
		-0.833483, 0.542138, 0.106737,
		-0.508545, -0.677121, -0.531874,
		41.521832, 35.985996, 32.698742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.309921, 36.458008, 33.435673>,  <41.877815, 36.459980, 33.071053>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.309921, 36.458008, 33.435673> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.288548, 36.130424, 33.207127>,  <41.275723, 35.933876, 33.070000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.288548, 36.130424, 33.207127>,  <41.309921, 36.458008, 33.435673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.288548, 36.130424, 33.207127> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431821, -0.496964, 0.752701,
		-0.900375, 0.286944, -0.327089,
		-0.053432, -0.818957, -0.571362,
		41.272518, 35.884739, 33.035717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.598648, 36.220356, 33.490448>,  <41.309921, 36.458008, 33.435673>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.598648, 36.220356, 33.490448> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.807079, 35.909336, 33.349655>,  <40.932137, 35.722725, 33.265179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.807079, 35.909336, 33.349655>,  <40.598648, 36.220356, 33.490448>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.807079, 35.909336, 33.349655> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317077, -0.559230, 0.765979,
		-0.792426, -0.287531, -0.537947,
		0.521078, -0.777552, -0.351979,
		40.963402, 35.676071, 33.244061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.117065, 35.630867, 33.291115>,  <40.598648, 36.220356, 33.490448>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.117065, 35.630867, 33.291115> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.471607, 35.473068, 33.388073>,  <40.684330, 35.378391, 33.446247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.471607, 35.473068, 33.388073>,  <40.117065, 35.630867, 33.291115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.471607, 35.473068, 33.388073> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443694, -0.574037, 0.688198,
		-0.132348, -0.717534, -0.683834,
		0.886352, -0.394495, 0.242393,
		40.737514, 35.354721, 33.460793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.899097, 35.016769, 33.539917>,  <40.117065, 35.630867, 33.291115>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.899097, 35.016769, 33.539917> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.284698, 35.026451, 33.645840>,  <40.516060, 35.032261, 33.709393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.284698, 35.026451, 33.645840>,  <39.899097, 35.016769, 33.539917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.284698, 35.026451, 33.645840> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226799, -0.445033, 0.866318,
		0.138813, -0.895187, -0.423523,
		0.963999, 0.024202, 0.264804,
		40.573898, 35.033710, 33.725281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.146992, 34.324207, 33.657574>,  <39.899097, 35.016769, 33.539917>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.146992, 34.324207, 33.657574> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.357891, 34.588867, 33.870827>,  <40.484432, 34.747662, 33.998779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.357891, 34.588867, 33.870827>,  <40.146992, 34.324207, 33.657574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.357891, 34.588867, 33.870827> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236316, -0.488489, 0.839960,
		0.816187, -0.568857, -0.101198,
		0.527251, 0.661650, 0.533128,
		40.516068, 34.787361, 34.030766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.433964, 33.878975, 34.146637>,  <40.146992, 34.324207, 33.657574>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.433964, 33.878975, 34.146637> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.513569, 34.241104, 34.296726>,  <40.561333, 34.458382, 34.386780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.513569, 34.241104, 34.296726>,  <40.433964, 33.878975, 34.146637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.513569, 34.241104, 34.296726> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095770, -0.363079, 0.926823,
		0.975305, -0.220388, 0.014444,
		0.199016, 0.905319, 0.375219,
		40.573273, 34.512699, 34.409290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.054272, 33.840508, 34.535252>,  <40.433964, 33.878975, 34.146637>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.054272, 33.840508, 34.535252> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.836098, 34.145489, 34.674492>,  <40.705193, 34.328476, 34.758034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.836098, 34.145489, 34.674492>,  <41.054272, 33.840508, 34.535252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.836098, 34.145489, 34.674492> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141202, -0.492966, 0.858514,
		0.826174, 0.419112, 0.376540,
		-0.545435, 0.762450, 0.348096,
		40.672466, 34.374222, 34.778919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.058590, 33.763638, 35.266411>,  <41.054272, 33.840508, 34.535252>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.058590, 33.763638, 35.266411> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.765774, 34.032314, 35.220901>,  <40.590084, 34.193520, 35.193596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.765774, 34.032314, 35.220901>,  <41.058590, 33.763638, 35.266411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.765774, 34.032314, 35.220901> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429692, -0.325646, 0.842211,
		0.528655, 0.665422, 0.527007,
		-0.732044, 0.671690, -0.113773,
		40.546162, 34.233822, 35.186771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.975994, 34.239971, 35.930340>,  <41.058590, 33.763638, 35.266411>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.975994, 34.239971, 35.930340> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.639805, 34.244404, 35.713642>,  <40.438091, 34.247063, 35.583626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.639805, 34.244404, 35.713642>,  <40.975994, 34.239971, 35.930340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.639805, 34.244404, 35.713642> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541571, -0.049507, 0.839196,
		-0.017524, 0.998712, 0.047609,
		-0.840472, 0.011077, -0.541741,
		40.387665, 34.247726, 35.551121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.504715, 34.864208, 35.990406>,  <40.975994, 34.239971, 35.930340>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.504715, 34.864208, 35.990406> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.245029, 34.590004, 35.858593>,  <40.089218, 34.425484, 35.779503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.245029, 34.590004, 35.858593>,  <40.504715, 34.864208, 35.990406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.245029, 34.590004, 35.858593> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500742, 0.059098, 0.863577,
		-0.572515, 0.725662, -0.381630,
		-0.649218, -0.685509, -0.329535,
		40.050262, 34.384350, 35.759731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.877323, 34.874374, 36.312595>,  <40.504715, 34.864208, 35.990406>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.877323, 34.874374, 36.312595> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.104408, 35.134384, 36.514652>,  <40.240662, 35.290390, 36.635887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.104408, 35.134384, 36.514652>,  <39.877323, 34.874374, 36.312595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.104408, 35.134384, 36.514652> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568788, 0.753318, -0.330139,
		-0.595129, -0.099891, 0.797398,
		0.567716, 0.650026, 0.505138,
		40.274723, 35.329391, 36.666195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.422955, 35.313087, 36.609913>,  <39.877323, 34.874374, 36.312595>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.422955, 35.313087, 36.609913> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.766453, 35.517776, 36.599365>,  <39.972553, 35.640591, 36.593037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.766453, 35.517776, 36.599365>,  <39.422955, 35.313087, 36.609913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.766453, 35.517776, 36.599365> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490046, 0.805164, -0.334014,
		-0.149687, 0.299758, 0.942199,
		0.858748, 0.511719, -0.026373,
		40.024078, 35.671291, 36.591454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.231903, 35.982670, 36.946865>,  <39.422955, 35.313087, 36.609913>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.231903, 35.982670, 36.946865> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.552464, 36.037418, 36.713966>,  <39.744801, 36.070267, 36.574226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.552464, 36.037418, 36.713966>,  <39.231903, 35.982670, 36.946865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.552464, 36.037418, 36.713966> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288385, 0.941263, -0.175663,
		0.524008, 0.308690, 0.793805,
		0.801404, 0.136873, -0.582251,
		39.792885, 36.078480, 36.539291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.281868, 36.623985, 37.028419>,  <39.231903, 35.982670, 36.946865>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.281868, 36.623985, 37.028419> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.550732, 36.555431, 36.740299>,  <39.712048, 36.514297, 36.567429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.550732, 36.555431, 36.740299>,  <39.281868, 36.623985, 37.028419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.550732, 36.555431, 36.740299> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274752, 0.845644, -0.457600,
		0.687544, 0.505482, 0.521317,
		0.672157, -0.171387, -0.720300,
		39.752380, 36.504017, 36.524208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.668182, 37.227188, 37.015427>,  <39.281868, 36.623985, 37.028419>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.668182, 37.227188, 37.015427> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.693645, 37.035305, 36.665382>,  <39.708923, 36.920174, 36.455357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.693645, 37.035305, 36.665382>,  <39.668182, 37.227188, 37.015427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.693645, 37.035305, 36.665382> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263026, 0.837823, -0.478402,
		0.962686, 0.260634, -0.072839,
		0.063662, -0.479710, -0.875115,
		39.712746, 36.891392, 36.402847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.847191, 37.699398, 36.648937>,  <39.668182, 37.227188, 37.015427>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.847191, 37.699398, 36.648937> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.741596, 37.446659, 36.357433>,  <39.678242, 37.295017, 36.182533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.741596, 37.446659, 36.357433>,  <39.847191, 37.699398, 36.648937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.741596, 37.446659, 36.357433> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165916, 0.774043, -0.611006,
		0.950150, -0.040383, -0.309167,
		-0.263983, -0.631843, -0.728757,
		39.662399, 37.257107, 36.138805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.287212, 37.775600, 35.961697>,  <39.847191, 37.699398, 36.648937>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.287212, 37.775600, 35.961697> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.937172, 37.617111, 35.850552>,  <39.727150, 37.522018, 35.783863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.937172, 37.617111, 35.850552>,  <40.287212, 37.775600, 35.961697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.937172, 37.617111, 35.850552> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096566, 0.705588, -0.702012,
		0.474210, -0.587498, -0.655721,
		-0.875100, -0.396222, -0.277865,
		39.674641, 37.498245, 35.767193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.275154, 37.843288, 35.299149>,  <40.287212, 37.775600, 35.961697>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.275154, 37.843288, 35.299149> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.883255, 37.793015, 35.361492>,  <39.648113, 37.762852, 35.398899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.883255, 37.793015, 35.361492>,  <40.275154, 37.843288, 35.299149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.883255, 37.793015, 35.361492> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199907, 0.657774, -0.726203,
		-0.011252, -0.742656, -0.669579,
		-0.979750, -0.125682, 0.155864,
		39.589329, 37.755310, 35.408253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.028183, 37.757809, 34.656528>,  <40.275154, 37.843288, 35.299149>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.028183, 37.757809, 34.656528> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.705849, 37.848373, 34.875385>,  <39.512447, 37.902714, 35.006699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.705849, 37.848373, 34.875385>,  <40.028183, 37.757809, 34.656528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.705849, 37.848373, 34.875385> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305749, 0.632200, -0.711927,
		-0.507090, -0.740986, -0.440227,
		-0.805839, 0.226412, 0.547138,
		39.464096, 37.916298, 35.039528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.501583, 37.746899, 34.148567>,  <40.028183, 37.757809, 34.656528>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.501583, 37.746899, 34.148567> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.334026, 37.947330, 34.451473>,  <39.233494, 38.067589, 34.633217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.334026, 37.947330, 34.451473>,  <39.501583, 37.746899, 34.148567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.334026, 37.947330, 34.451473> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526373, 0.545552, -0.652154,
		-0.739908, -0.671785, 0.035228,
		-0.418889, 0.501077, 0.757267,
		39.208359, 38.097652, 34.678654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.753986, 37.850853, 34.029415>,  <39.501583, 37.746899, 34.148567>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.753986, 37.850853, 34.029415> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.859375, 38.118591, 34.307281>,  <38.922607, 38.279236, 34.473999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.859375, 38.118591, 34.307281>,  <38.753986, 37.850853, 34.029415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.859375, 38.118591, 34.307281> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336530, 0.738643, -0.584084,
		-0.904062, -0.079882, 0.419870,
		0.263476, 0.669347, 0.694661,
		38.938419, 38.319397, 34.515678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.175179, 38.175533, 34.144638>,  <38.753986, 37.850853, 34.029415>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.175179, 38.175533, 34.144638> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.474552, 38.415668, 34.257381>,  <38.654175, 38.559750, 34.325027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.474552, 38.415668, 34.257381>,  <38.175179, 38.175533, 34.144638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.474552, 38.415668, 34.257381> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333723, 0.708173, -0.622189,
		-0.573129, 0.371604, 0.730366,
		0.748433, 0.600334, 0.281862,
		38.699081, 38.595768, 34.341942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.879360, 38.783379, 34.007172>,  <38.175179, 38.175533, 34.144638>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.879360, 38.783379, 34.007172> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.261395, 38.886421, 34.065750>,  <38.490616, 38.948246, 34.100895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.261395, 38.886421, 34.065750>,  <37.879360, 38.783379, 34.007172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.261395, 38.886421, 34.065750> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103748, 0.753627, -0.649062,
		-0.277566, 0.604719, 0.746507,
		0.955088, 0.257606, 0.146443,
		38.547920, 38.963703, 34.109684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.928299, 39.542351, 34.122707>,  <37.879360, 38.783379, 34.007172>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.928299, 39.542351, 34.122707> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.278141, 39.421604, 33.970947>,  <38.488045, 39.349155, 33.879890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.278141, 39.421604, 33.970947>,  <37.928299, 39.542351, 34.122707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.278141, 39.421604, 33.970947> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091521, 0.665666, -0.740617,
		0.476124, 0.682468, 0.554565,
		0.874602, -0.301871, -0.379400,
		38.540524, 39.331043, 33.857128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.077213, 40.143246, 34.450089>,  <37.928299, 39.542351, 34.122707>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.077213, 40.143246, 34.450089> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.702419, 40.251068, 34.538990>,  <37.477543, 40.315762, 34.592331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.702419, 40.251068, 34.538990>,  <38.077213, 40.143246, 34.450089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.702419, 40.251068, 34.538990> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074477, -0.775654, 0.626750,
		0.341336, 0.570703, 0.746852,
		-0.936986, 0.269556, 0.222254,
		37.421322, 40.331936, 34.605667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.007534, 39.910992, 35.069504>,  <38.077213, 40.143246, 34.450089>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.007534, 39.910992, 35.069504> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.628906, 39.998859, 34.975056>,  <37.401730, 40.051579, 34.918388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.628906, 39.998859, 34.975056>,  <38.007534, 39.910992, 35.069504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.628906, 39.998859, 34.975056> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310054, -0.821306, 0.478877,
		-0.088731, 0.526500, 0.845532,
		-0.946569, 0.219670, -0.236119,
		37.344936, 40.064762, 34.904221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542988, 39.831715, 35.719017>,  <38.007534, 39.910992, 35.069504>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.542988, 39.831715, 35.719017> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.304962, 39.822292, 35.397686>,  <37.162148, 39.816639, 35.204887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.304962, 39.822292, 35.397686>,  <37.542988, 39.831715, 35.719017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.304962, 39.822292, 35.397686> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499984, -0.771732, 0.392995,
		-0.629215, 0.635511, 0.447453,
		-0.595067, -0.023559, -0.803331,
		37.126442, 39.815224, 35.156685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.946968, 39.782761, 35.965786>,  <37.542988, 39.831715, 35.719017>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.946968, 39.782761, 35.965786> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.902290, 39.631653, 35.598129>,  <36.875484, 39.540989, 35.377537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.902290, 39.631653, 35.598129>,  <36.946968, 39.782761, 35.965786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.902290, 39.631653, 35.598129> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411962, -0.824103, 0.388769,
		-0.904330, 0.422073, -0.063579,
		-0.111693, -0.377767, -0.919139,
		36.868782, 39.518322, 35.322388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.202164, 39.812141, 35.679535>,  <36.946968, 39.782761, 35.965786>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.202164, 39.812141, 35.679535> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.386139, 39.513287, 35.487602>,  <36.496525, 39.333973, 35.372444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.386139, 39.513287, 35.487602>,  <36.202164, 39.812141, 35.679535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.386139, 39.513287, 35.487602> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459280, -0.662655, 0.591566,
		-0.759945, -0.051708, -0.647928,
		0.459941, -0.747137, -0.479833,
		36.524120, 39.289146, 35.343651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.770161, 39.263409, 35.641174>,  <36.202164, 39.812141, 35.679535>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.770161, 39.263409, 35.641174> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.109257, 39.056950, 35.592300>,  <36.312714, 38.933075, 35.562977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.109257, 39.056950, 35.592300>,  <35.770161, 39.263409, 35.641174>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.109257, 39.056950, 35.592300> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411563, -0.785408, 0.462332,
		-0.334593, -0.341652, -0.878249,
		0.847740, -0.516147, -0.122180,
		36.363579, 38.902107, 35.555645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.489624, 38.563862, 35.729046>,  <35.770161, 39.263409, 35.641174>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.489624, 38.563862, 35.729046> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.889393, 38.557487, 35.741085>,  <36.129253, 38.553661, 35.748310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.889393, 38.557487, 35.741085>,  <35.489624, 38.563862, 35.729046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.889393, 38.557487, 35.741085> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026525, -0.918620, 0.394251,
		0.021365, -0.394821, -0.918510,
		0.999420, -0.015940, 0.030098,
		36.189220, 38.552704, 35.750114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.764339, 37.810497, 35.474968>,  <35.489624, 38.563862, 35.729046>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.764339, 37.810497, 35.474968> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.107632, 37.954578, 35.621223>,  <36.313606, 38.041027, 35.708977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.107632, 37.954578, 35.621223>,  <35.764339, 37.810497, 35.474968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.107632, 37.954578, 35.621223> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229139, -0.906340, 0.355027,
		0.459277, -0.220912, -0.860385,
		0.858231, 0.360203, 0.365641,
		36.365101, 38.062641, 35.730915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.279129, 37.369759, 35.348801>,  <35.764339, 37.810497, 35.474968>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.279129, 37.369759, 35.348801> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.373497, 37.592934, 35.667057>,  <36.430119, 37.726837, 35.858009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.373497, 37.592934, 35.667057>,  <36.279129, 37.369759, 35.348801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.373497, 37.592934, 35.667057> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160475, -0.829880, 0.534365,
		0.958431, 0.001614, -0.285318,
		0.235918, 0.557939, 0.795643,
		36.444271, 37.760315, 35.905750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.922924, 37.185841, 35.662178>,  <36.279129, 37.369759, 35.348801>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.922924, 37.185841, 35.662178> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.682995, 37.338097, 35.943695>,  <36.539036, 37.429451, 36.112606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.682995, 37.338097, 35.943695>,  <36.922924, 37.185841, 35.662178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.682995, 37.338097, 35.943695> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136892, -0.817808, 0.558972,
		0.788333, 0.431630, 0.438437,
		-0.599827, 0.380638, 0.703792,
		36.503048, 37.452290, 36.154831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.254230, 36.962410, 36.263466>,  <36.922924, 37.185841, 35.662178>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.254230, 36.962410, 36.263466> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.895985, 37.073685, 36.402309>,  <36.681038, 37.140450, 36.485615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.895985, 37.073685, 36.402309>,  <37.254230, 36.962410, 36.263466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.895985, 37.073685, 36.402309> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039003, -0.826418, 0.561704,
		0.443114, 0.489533, 0.751004,
		-0.895616, 0.278190, 0.347105,
		36.627300, 37.157143, 36.506439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.137463, 36.731552, 37.000565>,  <37.254230, 36.962410, 36.263466>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.137463, 36.731552, 37.000565> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.752678, 36.774647, 36.900146>,  <36.521809, 36.800503, 36.839897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.752678, 36.774647, 36.900146>,  <37.137463, 36.731552, 37.000565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.752678, 36.774647, 36.900146> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256514, -0.672322, 0.694395,
		-0.093968, 0.732377, 0.674384,
		-0.961962, 0.107738, -0.251041,
		36.464088, 36.806969, 36.824833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.238884, 42.909721, 32.675991> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.861469, 42.873001, 32.548672>,  <38.635021, 42.850967, 32.472282>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.861469, 42.873001, 32.548672>,  <39.238884, 42.909721, 32.675991>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.861469, 42.873001, 32.548672> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290680, -0.231397, 0.928419,
		-0.158886, 0.968518, 0.191645,
		-0.943536, -0.091805, -0.318294,
		38.578407, 42.845459, 32.453182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.765732, 43.263855, 33.178055>,  <39.238884, 42.909721, 32.675991>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.765732, 43.263855, 33.178055> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.558895, 42.986305, 32.977596>,  <38.434792, 42.819775, 32.857319>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.558895, 42.986305, 32.977596>,  <38.765732, 43.263855, 33.178055>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.558895, 42.986305, 32.977596> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311269, -0.392972, 0.865265,
		-0.797324, 0.603416, -0.012778,
		-0.517094, -0.693874, -0.501151,
		38.403767, 42.778145, 32.827251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.077526, 43.221916, 33.577312>,  <38.765732, 43.263855, 33.178055>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.077526, 43.221916, 33.577312> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.075249, 42.895493, 33.346138>,  <38.073883, 42.699638, 33.207432>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.075249, 42.895493, 33.346138>,  <38.077526, 43.221916, 33.577312>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.075249, 42.895493, 33.346138> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314950, -0.547071, 0.775577,
		-0.949091, 0.186435, -0.253905,
		-0.005691, -0.816061, -0.577938,
		38.073540, 42.650673, 33.172756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.428059, 42.961544, 33.743759>,  <38.077526, 43.221916, 33.577312>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.428059, 42.961544, 33.743759> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.634987, 42.663620, 33.575169>,  <37.759144, 42.484867, 33.474014>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.634987, 42.663620, 33.575169>,  <37.428059, 42.961544, 33.743759>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.634987, 42.663620, 33.575169> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432520, -0.652519, 0.622211,
		-0.738451, -0.139582, -0.659703,
		0.517318, -0.744806, -0.421480,
		37.790184, 42.440178, 33.448727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.970371, 42.568401, 33.424988>,  <37.428059, 42.961544, 33.743759>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.970371, 42.568401, 33.424988> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.295727, 42.345928, 33.493179>,  <37.490940, 42.212444, 33.534096>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.295727, 42.345928, 33.493179>,  <36.970371, 42.568401, 33.424988>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.295727, 42.345928, 33.493179> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548004, -0.634275, 0.545331,
		-0.195171, -0.536990, -0.820701,
		0.813388, -0.556181, 0.170481,
		37.539742, 42.179073, 33.544323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.689888, 41.963673, 33.348377>,  <36.970371, 42.568401, 33.424988>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.689888, 41.963673, 33.348377> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.040390, 41.883747, 33.523766>,  <37.250690, 41.835793, 33.628998>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.040390, 41.883747, 33.523766>,  <36.689888, 41.963673, 33.348377>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.040390, 41.883747, 33.523766> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415428, -0.774302, 0.477364,
		0.244124, -0.600444, -0.761492,
		0.876255, -0.199809, 0.438467,
		37.303268, 41.823803, 33.655304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.857384, 41.259319, 33.216019>,  <36.689888, 41.963673, 33.348377>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.857384, 41.259319, 33.216019> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.062386, 41.359856, 33.544449>,  <37.185387, 41.420177, 33.741508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.062386, 41.359856, 33.544449>,  <36.857384, 41.259319, 33.216019>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.062386, 41.359856, 33.544449> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267061, -0.862127, 0.430600,
		0.816097, -0.439963, -0.374725,
		0.512508, 0.251337, 0.821076,
		37.216137, 41.435257, 33.790771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.252850, 40.717144, 33.318172>,  <36.857384, 41.259319, 33.216019>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.252850, 40.717144, 33.318172> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.301201, 40.865578, 33.686451>,  <37.330212, 40.954636, 33.907417>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.301201, 40.865578, 33.686451>,  <37.252850, 40.717144, 33.318172>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.301201, 40.865578, 33.686451> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032055, -0.925558, 0.377246,
		0.992150, -0.075112, -0.099981,
		0.120874, 0.371080, 0.920700,
		37.337463, 40.976902, 33.962662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.719170, 40.254074, 33.716721>,  <37.252850, 40.717144, 33.318172>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.719170, 40.254074, 33.716721> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.517731, 40.459389, 33.994694>,  <37.396870, 40.582577, 34.161476>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.517731, 40.459389, 33.994694>,  <37.719170, 40.254074, 33.716721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.517731, 40.459389, 33.994694> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029112, -0.814000, 0.580135,
		0.863450, 0.271921, 0.424868,
		-0.503593, 0.513286, 0.694932,
		37.366653, 40.613373, 34.203175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.453655, 40.258957, 33.823124>,  <37.719170, 40.254074, 33.716721>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.453655, 40.258957, 33.823124> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.640636, 39.940105, 33.670246>,  <38.752823, 39.748795, 33.578518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.640636, 39.940105, 33.670246>,  <38.453655, 40.258957, 33.823124>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.640636, 39.940105, 33.670246> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148558, 0.497025, -0.854925,
		0.871448, 0.342856, 0.350754,
		0.467449, -0.797130, -0.382198,
		38.780872, 39.700966, 33.555588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.106625, 40.447376, 33.604633>,  <38.453655, 40.258957, 33.823124>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.106625, 40.447376, 33.604633> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.039108, 40.120182, 33.384666>,  <38.998596, 39.923866, 33.252686>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.039108, 40.120182, 33.384666>,  <39.106625, 40.447376, 33.604633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.039108, 40.120182, 33.384666> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370956, 0.464184, -0.804317,
		0.913181, -0.339760, 0.225084,
		-0.168794, -0.817983, -0.549920,
		38.988468, 39.874786, 33.219692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.723999, 40.351059, 33.216652>,  <39.106625, 40.447376, 33.604633>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.723999, 40.351059, 33.216652> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.452023, 40.138851, 33.014179>,  <39.288837, 40.011524, 32.892696>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.452023, 40.138851, 33.014179>,  <39.723999, 40.351059, 33.216652>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.452023, 40.138851, 33.014179> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318946, 0.407613, -0.855643,
		0.660266, -0.743234, -0.107945,
		-0.679943, -0.530524, -0.506184,
		39.248039, 39.979694, 32.862324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.087631, 40.072857, 32.689903>,  <39.723999, 40.351059, 33.216652>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.087631, 40.072857, 32.689903> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.700165, 40.050453, 32.593109>,  <39.467686, 40.037010, 32.535034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.700165, 40.050453, 32.593109>,  <40.087631, 40.072857, 32.689903>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.700165, 40.050453, 32.593109> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189006, 0.465885, -0.864423,
		0.161154, -0.883070, -0.440699,
		-0.968662, -0.056011, -0.241985,
		39.409565, 40.033649, 32.520512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.111347, 39.667610, 32.152672>,  <40.087631, 40.072857, 32.689903>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.111347, 39.667610, 32.152672> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.773937, 39.881710, 32.134926>,  <39.571491, 40.010170, 32.124279>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.773937, 39.881710, 32.134926>,  <40.111347, 39.667610, 32.152672>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.773937, 39.881710, 32.134926> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264955, 0.342852, -0.901250,
		-0.467186, -0.771982, -0.431023,
		-0.843526, 0.535253, -0.044365,
		39.520878, 40.042286, 32.121616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.771626, 39.395977, 31.529181>,  <40.111347, 39.667610, 32.152672>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.771626, 39.395977, 31.529181> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.631527, 39.759491, 31.619894>,  <39.547466, 39.977600, 31.674322>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.631527, 39.759491, 31.619894>,  <39.771626, 39.395977, 31.529181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.631527, 39.759491, 31.619894> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130477, 0.287097, -0.948974,
		-0.927524, -0.302789, -0.219132,
		-0.350251, 0.908787, 0.226782,
		39.526451, 40.032127, 31.687929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.273380, 39.508270, 31.046139>,  <39.771626, 39.395977, 31.529181>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.273380, 39.508270, 31.046139> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.353718, 39.876793, 31.179317>,  <39.401920, 40.097908, 31.259224>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.353718, 39.876793, 31.179317>,  <39.273380, 39.508270, 31.046139>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.353718, 39.876793, 31.179317> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085888, 0.322002, -0.942835,
		-0.975851, 0.217958, -0.014457,
		0.200843, 0.921309, 0.332945,
		39.413971, 40.153187, 31.279202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.833141, 39.943493, 30.717365>,  <39.273380, 39.508270, 31.046139>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.833141, 39.943493, 30.717365> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.118736, 40.188309, 30.853384>,  <39.290092, 40.335197, 30.934996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.118736, 40.188309, 30.853384>,  <38.833141, 39.943493, 30.717365>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.118736, 40.188309, 30.853384> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062316, 0.539295, -0.839808,
		-0.697379, 0.578423, 0.423189,
		0.713988, 0.612036, 0.340048,
		39.332932, 40.371918, 30.955399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.754955, 40.415714, 30.165987>,  <38.833141, 39.943493, 30.717365>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.754955, 40.415714, 30.165987> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.066383, 40.591316, 30.345367>,  <39.253239, 40.696678, 30.452995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.066383, 40.591316, 30.345367>,  <38.754955, 40.415714, 30.165987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.066383, 40.591316, 30.345367> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087749, 0.631415, -0.770464,
		-0.621397, 0.639209, 0.453076,
		0.778567, 0.439007, 0.448449,
		39.299953, 40.723019, 30.479902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.620739, 41.144123, 30.418539>,  <38.754955, 40.415714, 30.165987>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.620739, 41.144123, 30.418539> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.012047, 41.108318, 30.343733>,  <39.246830, 41.086834, 30.298849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.012047, 41.108318, 30.343733>,  <38.620739, 41.144123, 30.418539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.012047, 41.108318, 30.343733> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078601, 0.674550, -0.734033,
		0.191860, 0.732781, 0.652856,
		0.978270, -0.089517, -0.187017,
		39.305527, 41.081463, 30.287628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.925991, 41.853352, 30.243971>,  <38.620739, 41.144123, 30.418539>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.925991, 41.853352, 30.243971> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.201420, 41.598354, 30.105719>,  <39.366676, 41.445354, 30.022768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.201420, 41.598354, 30.105719>,  <38.925991, 41.853352, 30.243971>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.201420, 41.598354, 30.105719> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138465, 0.583438, -0.800267,
		0.711822, 0.503187, 0.490013,
		0.688576, -0.637497, -0.345630,
		39.407993, 41.407104, 30.002029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.416187, 42.327213, 29.929800>,  <38.925991, 41.853352, 30.243971>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.416187, 42.327213, 29.929800> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.530659, 41.974174, 29.780603>,  <39.599342, 41.762352, 29.691086>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.530659, 41.974174, 29.780603>,  <39.416187, 42.327213, 29.929800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.530659, 41.974174, 29.780603> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163913, 0.428629, -0.888487,
		0.944051, 0.193129, 0.267335,
		0.286180, -0.882597, -0.372991,
		39.616512, 41.709396, 29.668705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.007992, 42.512917, 29.566204>,  <39.416187, 42.327213, 29.929800>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.007992, 42.512917, 29.566204> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.894054, 42.145164, 29.457678>,  <39.825691, 41.924515, 29.392563>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.894054, 42.145164, 29.457678>,  <40.007992, 42.512917, 29.566204>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.894054, 42.145164, 29.457678> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217340, 0.213728, -0.952410,
		0.933611, -0.330253, 0.138939,
		-0.284841, -0.919377, -0.271316,
		39.808601, 41.869350, 29.376284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.592388, 42.122551, 29.470448>,  <40.007992, 42.512917, 29.566204>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.592388, 42.122551, 29.470448> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.268379, 42.015041, 29.261976>,  <40.073975, 41.950535, 29.136892>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.268379, 42.015041, 29.261976>,  <40.592388, 42.122551, 29.470448>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.268379, 42.015041, 29.261976> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376712, 0.442612, -0.813746,
		0.449401, -0.855483, -0.257269,
		-0.810016, -0.268782, -0.521182,
		40.025375, 41.934406, 29.105623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.814335, 39.795979, 26.411942> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.970230, 40.025326, 26.700205>,  <36.063766, 40.162933, 26.873163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.970230, 40.025326, 26.700205>,  <35.814335, 39.795979, 26.411942>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.970230, 40.025326, 26.700205> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225253, -0.699418, 0.678288,
		0.892951, -0.426689, -0.143440,
		0.389743, 0.573368, 0.720659,
		36.087154, 40.197334, 26.916403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.179955, 39.369347, 26.706594>,  <35.814335, 39.795979, 26.411942>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.179955, 39.369347, 26.706594> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.130333, 39.651909, 26.985336>,  <36.100559, 39.821445, 27.152582>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.130333, 39.651909, 26.985336>,  <36.179955, 39.369347, 26.706594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.130333, 39.651909, 26.985336> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305284, -0.695386, 0.650569,
		0.944147, -0.132036, 0.301916,
		-0.124050, 0.706402, 0.696855,
		36.093117, 39.863831, 27.194393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.502472, 39.102287, 27.310974>,  <36.179955, 39.369347, 26.706594>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.502472, 39.102287, 27.310974> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.234974, 39.367134, 27.446249>,  <36.074474, 39.526043, 27.527414>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.234974, 39.367134, 27.446249>,  <36.502472, 39.102287, 27.310974>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.234974, 39.367134, 27.446249> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212848, -0.606326, 0.766201,
		0.712370, 0.440413, 0.546411,
		-0.668748, 0.662121, 0.338188,
		36.034348, 39.565769, 27.547705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.591549, 39.113842, 28.000488>,  <36.502472, 39.102287, 27.310974>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.591549, 39.113842, 28.000488> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.228245, 39.277641, 27.966127>,  <36.010262, 39.375919, 27.945511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.228245, 39.277641, 27.966127>,  <36.591549, 39.113842, 28.000488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.228245, 39.277641, 27.966127> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355195, -0.646094, 0.675573,
		0.221143, 0.644107, 0.732272,
		-0.908258, 0.409498, -0.085904,
		35.955769, 39.400490, 27.940355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.500977, 39.287060, 28.630476>,  <36.591549, 39.113842, 28.000488>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.500977, 39.287060, 28.630476> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.129711, 39.277119, 28.481939>,  <35.906952, 39.271152, 28.392817>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.129711, 39.277119, 28.481939>,  <36.500977, 39.287060, 28.630476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.129711, 39.277119, 28.481939> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234770, -0.735106, 0.636004,
		-0.288785, 0.677496, 0.676463,
		-0.928163, -0.024855, -0.371344,
		35.851261, 39.269661, 28.370537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.075695, 39.432533, 29.190889>,  <36.500977, 39.287060, 28.630476>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.075695, 39.432533, 29.190889> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.868740, 39.250988, 28.900696>,  <35.744568, 39.142063, 28.726580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.868740, 39.250988, 28.900696>,  <36.075695, 39.432533, 29.190889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.868740, 39.250988, 28.900696> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275939, -0.714006, 0.643469,
		-0.810043, 0.533111, 0.244179,
		-0.517386, -0.453859, -0.725482,
		35.713524, 39.114830, 28.683052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.416599, 39.309849, 29.465202>,  <36.075695, 39.432533, 29.190889>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.416599, 39.309849, 29.465202> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.461788, 39.046635, 29.167418>,  <35.488903, 38.888706, 28.988747>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.461788, 39.046635, 29.167418>,  <35.416599, 39.309849, 29.465202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.461788, 39.046635, 29.167418> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368461, -0.723581, 0.583667,
		-0.922753, 0.208365, -0.324208,
		0.112975, -0.658038, -0.744462,
		35.495682, 38.849224, 28.944078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.885662, 38.828880, 29.519566>,  <35.416599, 39.309849, 29.465202>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.885662, 38.828880, 29.519566> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.160271, 38.644981, 29.294241>,  <35.325035, 38.534641, 29.159046>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.160271, 38.644981, 29.294241>,  <34.885662, 38.828880, 29.519566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.160271, 38.644981, 29.294241> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187651, -0.860510, 0.473614,
		-0.702477, -0.219441, -0.677031,
		0.686522, -0.459748, -0.563310,
		35.366226, 38.507057, 29.125248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.546089, 38.159275, 29.358765>,  <34.885662, 38.828880, 29.519566>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.546089, 38.159275, 29.358765> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.922516, 38.092262, 29.241241>,  <35.148373, 38.052055, 29.170727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.922516, 38.092262, 29.241241>,  <34.546089, 38.159275, 29.358765>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.922516, 38.092262, 29.241241> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014836, -0.847414, 0.530725,
		-0.337892, -0.503807, -0.794989,
		0.941068, -0.167534, -0.293809,
		35.204838, 38.042004, 29.153099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.549805, 37.479301, 29.152302>,  <34.546089, 38.159275, 29.358765>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.549805, 37.479301, 29.152302> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.924294, 37.573017, 29.257059>,  <35.148987, 37.629246, 29.319914>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.924294, 37.573017, 29.257059>,  <34.549805, 37.479301, 29.152302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.924294, 37.573017, 29.257059> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050345, -0.827037, 0.559889,
		0.347773, -0.510997, -0.786089,
		0.936226, 0.234290, 0.261895,
		35.205162, 37.643303, 29.335629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.869167, 36.897697, 29.167858>,  <34.549805, 37.479301, 29.152302>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.869167, 36.897697, 29.167858> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.131592, 37.118725, 29.373478>,  <35.289047, 37.251343, 29.496851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.131592, 37.118725, 29.373478>,  <34.869167, 36.897697, 29.167858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.131592, 37.118725, 29.373478> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110553, -0.744144, 0.658808,
		0.746564, -0.375390, -0.549294,
		0.656064, 0.552568, 0.514051,
		35.328411, 37.284496, 29.527693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.524532, 36.437382, 29.327080>,  <34.869167, 36.897697, 29.167858>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.524532, 36.437382, 29.327080> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.484169, 36.749226, 29.574312>,  <35.459949, 36.936333, 29.722652>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.484169, 36.749226, 29.574312>,  <35.524532, 36.437382, 29.327080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.484169, 36.749226, 29.574312> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075473, -0.625461, 0.776596,
		0.992029, 0.031715, 0.121954,
		-0.100907, 0.779610, 0.618082,
		35.453896, 36.983109, 29.759737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.913132, 36.226612, 29.861303>,  <35.524532, 36.437382, 29.327080>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.913132, 36.226612, 29.861303> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.705799, 36.529030, 30.021168>,  <35.581398, 36.710480, 30.117086>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.705799, 36.529030, 30.021168>,  <35.913132, 36.226612, 29.861303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.705799, 36.529030, 30.021168> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033060, -0.484707, 0.874052,
		0.854541, 0.439834, 0.276233,
		-0.518330, 0.756046, 0.399661,
		35.550301, 36.755844, 30.141066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.259346, 36.452610, 30.510126>,  <35.913132, 36.226612, 29.861303>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.259346, 36.452610, 30.510126> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.863621, 36.510525, 30.503138>,  <35.626186, 36.545273, 30.498943>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.863621, 36.510525, 30.503138>,  <36.259346, 36.452610, 30.510126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.863621, 36.510525, 30.503138> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079644, -0.436013, 0.896409,
		0.122171, 0.888217, 0.442883,
		-0.989308, 0.144788, -0.017473,
		35.566830, 36.553963, 30.497896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.841850, 36.308392, 30.980385>,  <36.259346, 36.452610, 30.510126>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.841850, 36.308392, 30.980385> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.158558, 36.083237, 30.885515>,  <37.348583, 35.948143, 30.828594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.158558, 36.083237, 30.885515>,  <36.841850, 36.308392, 30.980385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.158558, 36.083237, 30.885515> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113098, 0.516675, -0.848679,
		0.600256, 0.645136, 0.472750,
		0.791771, -0.562892, -0.237174,
		37.396088, 35.914368, 30.814363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.460201, 36.835129, 30.836988>,  <36.841850, 36.308392, 30.980385>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.460201, 36.835129, 30.836988> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.541294, 36.488174, 30.655203>,  <37.589951, 36.280003, 30.546131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.541294, 36.488174, 30.655203>,  <37.460201, 36.835129, 30.836988>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.541294, 36.488174, 30.655203> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305982, 0.496977, -0.812028,
		0.930201, 0.025567, 0.366159,
		0.202734, -0.867387, -0.454466,
		37.602116, 36.227959, 30.518864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.035542, 36.933197, 30.667482>,  <37.460201, 36.835129, 30.836988>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.035542, 36.933197, 30.667482> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.930237, 36.634125, 30.423622>,  <37.867054, 36.454681, 30.277306>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.930237, 36.634125, 30.423622>,  <38.035542, 36.933197, 30.667482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.930237, 36.634125, 30.423622> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474862, 0.449655, -0.756516,
		0.839762, -0.488660, 0.236667,
		-0.263261, -0.747678, -0.609649,
		37.851257, 36.409821, 30.240728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.605412, 36.814091, 30.236143>,  <38.035542, 36.933197, 30.667482>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.605412, 36.814091, 30.236143> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.299221, 36.650070, 30.037790>,  <38.115505, 36.551659, 29.918777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.299221, 36.650070, 30.037790>,  <38.605412, 36.814091, 30.236143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.299221, 36.650070, 30.037790> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369946, 0.350090, -0.860568,
		0.526480, -0.842197, -0.116290,
		-0.765480, -0.410050, -0.495883,
		38.069576, 36.527054, 29.889025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.870598, 36.477928, 29.659937>,  <38.605412, 36.814091, 30.236143>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.870598, 36.477928, 29.659937> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.493782, 36.573898, 29.566128>,  <38.267693, 36.631481, 29.509842>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.493782, 36.573898, 29.566128>,  <38.870598, 36.477928, 29.659937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.493782, 36.573898, 29.566128> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323439, 0.463660, -0.824868,
		-0.089168, -0.852911, -0.514386,
		-0.942039, 0.239924, -0.234521,
		38.211170, 36.645874, 29.495771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.902287, 36.421501, 28.986752>,  <38.870598, 36.477928, 29.659937>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.902287, 36.421501, 28.986752> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.570194, 36.640461, 29.028841>,  <38.370937, 36.771835, 29.054094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.570194, 36.640461, 29.028841>,  <38.902287, 36.421501, 28.986752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.570194, 36.640461, 29.028841> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283398, 0.577059, -0.765956,
		-0.480002, -0.606101, -0.634224,
		-0.830231, 0.547398, 0.105222,
		38.321125, 36.804680, 29.060408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.624165, 36.482269, 28.263380>,  <38.902287, 36.421501, 28.986752>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.624165, 36.482269, 28.263380> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.450733, 36.778004, 28.469446>,  <38.346676, 36.955444, 28.593086>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.450733, 36.778004, 28.469446>,  <38.624165, 36.482269, 28.263380>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.450733, 36.778004, 28.469446> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316584, 0.660230, -0.681080,
		-0.843674, -0.132208, -0.520323,
		-0.433578, 0.739336, 0.515164,
		38.320660, 36.999805, 28.623995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.353096, 36.854191, 27.688042>,  <38.624165, 36.482269, 28.263380>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.353096, 36.854191, 27.688042> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.329632, 37.108898, 27.995569>,  <38.315552, 37.261723, 28.180086>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.329632, 37.108898, 27.995569>,  <38.353096, 36.854191, 27.688042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.329632, 37.108898, 27.995569> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179192, 0.764354, -0.619398,
		-0.982063, 0.101429, -0.158945,
		-0.058665, 0.636770, 0.768819,
		38.312031, 37.299931, 28.226215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.820942, 37.348701, 27.546103>,  <38.353096, 36.854191, 27.688042>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.820942, 37.348701, 27.546103> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.056156, 37.525009, 27.817377>,  <38.197285, 37.630795, 27.980143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.056156, 37.525009, 27.817377>,  <37.820942, 37.348701, 27.546103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.056156, 37.525009, 27.817377> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201515, 0.732196, -0.650601,
		-0.783332, 0.519240, 0.341733,
		0.588033, 0.440772, 0.678187,
		38.232567, 37.657242, 28.020834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.565514, 38.054989, 27.707253>,  <37.820942, 37.348701, 27.546103>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.565514, 38.054989, 27.707253> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.952042, 38.038189, 27.808811>,  <38.183960, 38.028111, 27.869745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.952042, 38.038189, 27.808811>,  <37.565514, 38.054989, 27.707253>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.952042, 38.038189, 27.808811> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208865, 0.704360, -0.678419,
		-0.150340, 0.708599, 0.689410,
		0.966320, -0.042000, 0.253895,
		38.241936, 38.025589, 27.884979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.816784, 38.704006, 27.985310>,  <37.565514, 38.054989, 27.707253>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.816784, 38.704006, 27.985310> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.094589, 38.490139, 27.792734>,  <38.261272, 38.361820, 27.677189>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.094589, 38.490139, 27.792734>,  <37.816784, 38.704006, 27.985310>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.094589, 38.490139, 27.792734> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209255, 0.790329, -0.575841,
		0.688378, 0.299186, 0.660775,
		0.694513, -0.534667, -0.481439,
		38.302944, 38.329739, 27.648302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.406818, 39.085590, 27.931200>,  <37.816784, 38.704006, 27.985310>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.406818, 39.085590, 27.931200> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.457603, 38.827782, 27.629612>,  <38.488075, 38.673096, 27.448660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.457603, 38.827782, 27.629612>,  <38.406818, 39.085590, 27.931200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.457603, 38.827782, 27.629612> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169168, 0.763053, -0.623805,
		0.977375, -0.048347, 0.205913,
		0.126963, -0.644525, -0.753968,
		38.495693, 38.634422, 27.403421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.032642, 39.337227, 27.572346>,  <38.406818, 39.085590, 27.931200>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.032642, 39.337227, 27.572346> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.893795, 39.070259, 27.308811>,  <38.810486, 38.910080, 27.150690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.893795, 39.070259, 27.308811>,  <39.032642, 39.337227, 27.572346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.893795, 39.070259, 27.308811> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334238, 0.568344, -0.751845,
		0.876240, -0.481183, 0.025797,
		-0.347113, -0.667419, -0.658835,
		38.789661, 38.870033, 27.111160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.565590, 39.285240, 26.993427>,  <39.032642, 39.337227, 27.572346>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.565590, 39.285240, 26.993427> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.211315, 39.163086, 26.853546>,  <38.998749, 39.089794, 26.769617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.211315, 39.163086, 26.853546>,  <39.565590, 39.285240, 26.993427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.211315, 39.163086, 26.853546> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066180, 0.662482, -0.746148,
		0.459536, -0.683999, -0.566543,
		-0.885690, -0.305388, -0.349701,
		38.945610, 39.071468, 26.748636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.242378, 39.029530, 26.682606>,  <39.565590, 39.285240, 26.993427>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.242378, 39.029530, 26.682606> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.634708, 39.100803, 26.714169>,  <40.870106, 39.143570, 26.733107>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.634708, 39.100803, 26.714169>,  <40.242378, 39.029530, 26.682606>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.634708, 39.100803, 26.714169> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070421, -0.701620, 0.709063,
		0.181709, -0.689912, -0.700717,
		0.980828, 0.178188, 0.078907,
		40.928955, 39.154259, 26.737841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.578995, 38.442024, 26.845533>,  <40.242378, 39.029530, 26.682606>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.578995, 38.442024, 26.845533> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.872963, 38.696079, 26.940611>,  <41.049343, 38.848511, 26.997658>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.872963, 38.696079, 26.940611>,  <40.578995, 38.442024, 26.845533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.872963, 38.696079, 26.940611> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219597, -0.554495, 0.802690,
		0.641619, -0.537713, -0.546981,
		0.734916, 0.635137, 0.237695,
		41.093437, 38.886620, 27.011919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.053638, 37.976219, 27.102377>,  <40.578995, 38.442024, 26.845533>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.053638, 37.976219, 27.102377> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.182369, 38.332512, 27.230770>,  <41.259605, 38.546288, 27.307806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.182369, 38.332512, 27.230770>,  <41.053638, 37.976219, 27.102377>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.182369, 38.332512, 27.230770> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260532, -0.409244, 0.874438,
		0.910249, -0.197788, -0.363768,
		0.321824, 0.890729, 0.320984,
		41.278915, 38.599731, 27.327065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.652340, 37.802162, 27.474777>,  <41.053638, 37.976219, 27.102377>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.652340, 37.802162, 27.474777> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.537766, 38.166870, 27.592512>,  <41.469021, 38.385696, 27.663153>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.537766, 38.166870, 27.592512>,  <41.652340, 37.802162, 27.474777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.537766, 38.166870, 27.592512> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180377, -0.250398, 0.951191,
		0.940968, 0.325543, -0.092740,
		-0.286432, 0.911769, 0.294337,
		41.451836, 38.440399, 27.680813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.155899, 38.071022, 28.011669>,  <41.652340, 37.802162, 27.474777>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.155899, 38.071022, 28.011669> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.810459, 38.263470, 28.071953>,  <41.603195, 38.378937, 28.108122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.810459, 38.263470, 28.071953>,  <42.155899, 38.071022, 28.011669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.810459, 38.263470, 28.071953> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027853, -0.252938, 0.967081,
		0.503402, 0.839372, 0.205038,
		-0.863603, 0.481120, 0.150708,
		41.551376, 38.407806, 28.117165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.267384, 38.364090, 28.622925>,  <42.155899, 38.071022, 28.011669>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.267384, 38.364090, 28.622925> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.871204, 38.369606, 28.568052>,  <41.633495, 38.372913, 28.535130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.871204, 38.369606, 28.568052>,  <42.267384, 38.364090, 28.622925>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.871204, 38.369606, 28.568052> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136010, -0.260651, 0.955805,
		-0.022580, 0.965335, 0.260036,
		-0.990450, 0.013786, -0.137181,
		41.574070, 38.373741, 28.526897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.963970, 38.948509, 29.070566>,  <42.267384, 38.364090, 28.622925>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.963970, 38.948509, 29.070566> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.736267, 38.631187, 28.984209>,  <41.599644, 38.440796, 28.932394>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.736267, 38.631187, 28.984209>,  <41.963970, 38.948509, 29.070566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.736267, 38.631187, 28.984209> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027063, -0.244371, 0.969304,
		-0.821713, 0.557628, 0.117641,
		-0.569259, -0.793306, -0.215893,
		41.565491, 38.393196, 28.919441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.628994, 38.984688, 29.624565>,  <41.963970, 38.948509, 29.070566>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.628994, 38.984688, 29.624565> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.538006, 38.623470, 29.478813>,  <41.483414, 38.406742, 29.391361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.538006, 38.623470, 29.478813>,  <41.628994, 38.984688, 29.624565>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.538006, 38.623470, 29.478813> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090736, -0.352905, 0.931249,
		-0.969548, 0.244897, -0.001662,
		-0.227473, -0.903041, -0.364379,
		41.469765, 38.352558, 29.369499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.033638, 38.863018, 29.886204>,  <41.628994, 38.984688, 29.624565>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.033638, 38.863018, 29.886204> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.197113, 38.508453, 29.799261>,  <41.295200, 38.295715, 29.747095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.197113, 38.508453, 29.799261>,  <41.033638, 38.863018, 29.886204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.197113, 38.508453, 29.799261> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182471, -0.312706, 0.932159,
		-0.894246, -0.341304, -0.289545,
		0.408691, -0.886412, -0.217358,
		41.319721, 38.242531, 29.734055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.653160, 38.426388, 30.311705>,  <41.033638, 38.863018, 29.886204>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.653160, 38.426388, 30.311705> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.980114, 38.226849, 30.196445>,  <41.176289, 38.107124, 30.127291>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.980114, 38.226849, 30.196445>,  <40.653160, 38.426388, 30.311705>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.980114, 38.226849, 30.196445> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085469, -0.599657, 0.795680,
		-0.569707, -0.625754, -0.532790,
		0.817391, -0.498842, -0.288147,
		41.225330, 38.077194, 30.110001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.449509, 37.755230, 30.301888>,  <40.653160, 38.426388, 30.311705>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.449509, 37.755230, 30.301888> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.848419, 37.750511, 30.330992>,  <41.087765, 37.747681, 30.348455>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.848419, 37.750511, 30.330992>,  <40.449509, 37.755230, 30.301888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.848419, 37.750511, 30.330992> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059722, -0.707910, 0.703773,
		0.043206, -0.706204, -0.706689,
		0.997279, -0.011797, 0.072762,
		41.147602, 37.746971, 30.352819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.614555, 37.084072, 30.331392>,  <40.449509, 37.755230, 30.301888>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.614555, 37.084072, 30.331392> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.970398, 37.229218, 30.442341>,  <41.183903, 37.316307, 30.508909>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.970398, 37.229218, 30.442341>,  <40.614555, 37.084072, 30.331392>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.970398, 37.229218, 30.442341> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048549, -0.678979, 0.732551,
		0.454147, -0.638213, -0.621639,
		0.889603, 0.362866, 0.277371,
		41.237278, 37.338078, 30.525553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.955090, 36.462708, 30.546347>,  <40.614555, 37.084072, 30.331392>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.955090, 36.462708, 30.546347> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.189800, 36.755589, 30.684660>,  <41.330627, 36.931316, 30.767647>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.189800, 36.755589, 30.684660>,  <40.955090, 36.462708, 30.546347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.189800, 36.755589, 30.684660> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257522, -0.573596, 0.777605,
		0.767705, -0.367237, -0.525134,
		0.586781, 0.732205, 0.345781,
		41.365833, 36.975250, 30.788395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.567406, 36.138603, 30.594519>,  <40.955090, 36.462708, 30.546347>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.567406, 36.138603, 30.594519> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.563854, 36.440563, 30.856831>,  <41.561726, 36.621738, 31.014217>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.563854, 36.440563, 30.856831>,  <41.567406, 36.138603, 30.594519>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.563854, 36.440563, 30.856831> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250490, -0.633215, 0.732320,
		0.968078, 0.170766, -0.183475,
		-0.008876, 0.754902, 0.655778,
		41.561192, 36.667034, 31.053564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<40.766857, 41.717083, 28.756771> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.384834, 41.798843, 28.670908>,  <40.155621, 41.847900, 28.619390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.384834, 41.798843, 28.670908>,  <40.766857, 41.717083, 28.756771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.384834, 41.798843, 28.670908> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286851, 0.454945, -0.843055,
		-0.074662, -0.866744, -0.493133,
		-0.955061, 0.204400, -0.214659,
		40.098316, 41.860165, 28.606510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.664261, 41.557289, 27.974680>,  <40.766857, 41.717083, 28.756771>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.664261, 41.557289, 27.974680> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.362549, 41.794708, 28.086939>,  <40.181522, 41.937160, 28.154295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.362549, 41.794708, 28.086939>,  <40.664261, 41.557289, 27.974680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.362549, 41.794708, 28.086939> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098938, 0.525333, -0.845125,
		-0.649055, -0.609694, -0.454973,
		-0.754280, 0.593547, 0.280648,
		40.136265, 41.972771, 28.171133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.212872, 41.614086, 27.397198>,  <40.664261, 41.557289, 27.974680>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.212872, 41.614086, 27.397198> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.119720, 41.942928, 27.605009>,  <40.063831, 42.140232, 27.729696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.119720, 41.942928, 27.605009>,  <40.212872, 41.614086, 27.397198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.119720, 41.942928, 27.605009> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092372, 0.550501, -0.829709,
		-0.968110, -0.145228, -0.204137,
		-0.232875, 0.822106, 0.519530,
		40.049858, 42.189560, 27.760868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.785713, 42.049839, 26.932329>,  <40.212872, 41.614086, 27.397198>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.785713, 42.049839, 26.932329> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.892281, 42.295853, 27.229181>,  <39.956223, 42.443459, 27.407293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.892281, 42.295853, 27.229181>,  <39.785713, 42.049839, 26.932329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.892281, 42.295853, 27.229181> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097802, 0.748734, -0.655615,
		-0.958882, 0.247251, 0.139327,
		0.266421, 0.615031, 0.742130,
		39.972206, 42.480362, 27.451820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.370346, 42.678272, 26.924343>,  <39.785713, 42.049839, 26.932329>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.370346, 42.678272, 26.924343> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.714779, 42.766113, 27.107784>,  <39.921440, 42.818817, 27.217848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.714779, 42.766113, 27.107784>,  <39.370346, 42.678272, 26.924343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.714779, 42.766113, 27.107784> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208977, 0.669386, -0.712917,
		-0.463538, 0.709716, 0.530504,
		0.861081, 0.219601, 0.458601,
		39.973103, 42.831993, 27.245365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.354275, 43.293552, 26.835506>,  <39.370346, 42.678272, 26.924343>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.354275, 43.293552, 26.835506> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.737762, 43.214897, 26.917662>,  <39.967857, 43.167702, 26.966955>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.737762, 43.214897, 26.917662>,  <39.354275, 43.293552, 26.835506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.737762, 43.214897, 26.917662> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284219, 0.641171, -0.712825,
		0.008482, 0.741776, 0.670594,
		0.958722, -0.196641, 0.205389,
		40.025379, 43.155907, 26.979279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.595764, 43.955967, 26.877817>,  <39.354275, 43.293552, 26.835506>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.595764, 43.955967, 26.877817> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.892109, 43.690521, 26.836372>,  <40.069916, 43.531254, 26.811504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.892109, 43.690521, 26.836372>,  <39.595764, 43.955967, 26.877817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.892109, 43.690521, 26.836372> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428026, 0.585359, -0.688584,
		0.517608, 0.465796, 0.717716,
		0.740861, -0.663618, -0.103613,
		40.114368, 43.491436, 26.805288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.276474, 44.296101, 27.015352>,  <39.595764, 43.955967, 26.877817>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.276474, 44.296101, 27.015352> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.332180, 43.973804, 26.785088>,  <40.365604, 43.780426, 26.646929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.332180, 43.973804, 26.785088>,  <40.276474, 44.296101, 27.015352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.332180, 43.973804, 26.785088> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401613, 0.577328, -0.710914,
		0.905158, -0.132188, 0.403998,
		0.139266, -0.805741, -0.575662,
		40.373959, 43.732082, 26.612389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.937260, 44.400482, 26.739817>,  <40.276474, 44.296101, 27.015352>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.937260, 44.400482, 26.739817> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.801937, 44.107906, 26.502991>,  <40.720741, 43.932362, 26.360895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.801937, 44.107906, 26.502991>,  <40.937260, 44.400482, 26.739817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.801937, 44.107906, 26.502991> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486547, 0.402585, -0.775369,
		0.805492, -0.550383, 0.219681,
		-0.338310, -0.731439, -0.592067,
		40.700443, 43.888474, 26.325371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.530842, 43.976910, 26.432863>,  <40.937260, 44.400482, 26.739817>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.530842, 43.976910, 26.432863> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.207531, 43.945316, 26.199472>,  <41.013542, 43.926361, 26.059439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.207531, 43.945316, 26.199472>,  <41.530842, 43.976910, 26.432863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.207531, 43.945316, 26.199472> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524973, 0.352061, -0.774891,
		0.266620, -0.932639, -0.243102,
		-0.808280, -0.078980, -0.583476,
		40.965046, 43.921623, 26.024429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.868893, 43.850502, 25.839703>,  <41.530842, 43.976910, 26.432863>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.868893, 43.850502, 25.839703> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.497616, 43.961533, 25.740572>,  <41.274849, 44.028152, 25.681093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.497616, 43.961533, 25.740572>,  <41.868893, 43.850502, 25.839703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.497616, 43.961533, 25.740572> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364636, 0.545665, -0.754513,
		-0.074206, -0.790696, -0.607695,
		-0.928188, 0.277577, -0.247824,
		41.219158, 44.044807, 25.666225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.790821, 43.712063, 25.195694>,  <41.868893, 43.850502, 25.839703>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.790821, 43.712063, 25.195694> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.503292, 43.983826, 25.254616>,  <41.330776, 44.146885, 25.289968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.503292, 43.983826, 25.254616>,  <41.790821, 43.712063, 25.195694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.503292, 43.983826, 25.254616> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339725, 0.528164, -0.778222,
		-0.606533, -0.509359, -0.610468,
		-0.718822, 0.679409, 0.147307,
		41.287647, 44.187649, 25.298807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.359024, 43.483440, 24.703819>,  <41.790821, 43.712063, 25.195694>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.359024, 43.483440, 24.703819> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.577015, 43.189175, 24.542921>,  <41.707809, 43.012615, 24.446383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.577015, 43.189175, 24.542921>,  <41.359024, 43.483440, 24.703819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.577015, 43.189175, 24.542921> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325686, 0.256340, -0.910065,
		0.772615, 0.626966, -0.099898,
		0.544972, -0.735665, -0.402246,
		41.740505, 42.968475, 24.422247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.976170, 43.681301, 24.340075>,  <41.359024, 43.483440, 24.703819>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.976170, 43.681301, 24.340075> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.826309, 43.341568, 24.191334>,  <41.736393, 43.137730, 24.102089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.826309, 43.341568, 24.191334>,  <41.976170, 43.681301, 24.340075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.826309, 43.341568, 24.191334> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221743, 0.471505, -0.853529,
		0.900260, -0.237318, -0.364982,
		-0.374649, -0.849331, -0.371854,
		41.713913, 43.086769, 24.079777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.736629, 43.650818, 23.687632>,  <41.976170, 43.681301, 24.340075>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.736629, 43.650818, 23.687632> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.674511, 43.434486, 23.356962>,  <41.637241, 43.304688, 23.158562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.674511, 43.434486, 23.356962>,  <41.736629, 43.650818, 23.687632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.674511, 43.434486, 23.356962> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232735, -0.833300, 0.501444,
		-0.960061, -0.114523, 0.255278,
		-0.155296, -0.540829, -0.826672,
		41.627922, 43.272236, 23.108961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.171322, 43.285999, 23.831537>,  <41.736629, 43.650818, 23.687632>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.171322, 43.285999, 23.831537> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.421116, 43.101215, 23.579628>,  <41.570992, 42.990345, 23.428482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.421116, 43.101215, 23.579628>,  <41.171322, 43.285999, 23.831537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.421116, 43.101215, 23.579628> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036014, -0.822501, 0.567623,
		-0.780208, -0.331790, -0.530274,
		0.624483, -0.461961, -0.629773,
		41.608459, 42.962627, 23.390696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.810852, 42.611271, 23.770195>,  <41.171322, 43.285999, 23.831537>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.810852, 42.611271, 23.770195> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.156586, 42.516472, 23.592768>,  <41.364025, 42.459591, 23.486311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.156586, 42.516472, 23.592768>,  <40.810852, 42.611271, 23.770195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.156586, 42.516472, 23.592768> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045670, -0.915344, 0.400076,
		-0.500836, -0.325542, -0.801989,
		0.864337, -0.236999, -0.443569,
		41.415886, 42.445374, 23.459698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.746647, 41.945755, 23.507778>,  <40.810852, 42.611271, 23.770195>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.746647, 41.945755, 23.507778> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.133652, 42.027348, 23.567535>,  <41.365852, 42.076302, 23.603390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.133652, 42.027348, 23.567535>,  <40.746647, 41.945755, 23.507778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.133652, 42.027348, 23.567535> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137402, -0.920187, 0.366575,
		0.212244, -0.334138, -0.918316,
		0.967509, 0.203982, 0.149393,
		41.423904, 42.088543, 23.612352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.159977, 41.433987, 23.125504>,  <40.746647, 41.945755, 23.507778>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.159977, 41.433987, 23.125504> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.354599, 41.595577, 23.435360>,  <41.471371, 41.692532, 23.621273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.354599, 41.595577, 23.435360>,  <41.159977, 41.433987, 23.125504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.354599, 41.595577, 23.435360> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036928, -0.895386, 0.443757,
		0.872870, -0.187305, -0.450571,
		0.486553, 0.403981, 0.774639,
		41.500565, 41.716770, 23.667751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.537510, 40.931225, 23.328053>,  <41.159977, 41.433987, 23.125504>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.537510, 40.931225, 23.328053> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.567787, 41.188011, 23.633245>,  <41.585953, 41.342083, 23.816362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.567787, 41.188011, 23.633245>,  <41.537510, 40.931225, 23.328053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.567787, 41.188011, 23.633245> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012651, -0.765736, 0.643031,
		0.997051, -0.039021, -0.066082,
		0.075693, 0.641970, 0.762984,
		41.590496, 41.380604, 23.862141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.109352, 40.686409, 23.704172>,  <41.537510, 40.931225, 23.328053>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.109352, 40.686409, 23.704172> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.885540, 40.907585, 23.951132>,  <41.751251, 41.040291, 24.099308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.885540, 40.907585, 23.951132>,  <42.109352, 40.686409, 23.704172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.885540, 40.907585, 23.951132> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147716, -0.666465, 0.730756,
		0.815537, 0.500083, 0.291233,
		-0.559535, 0.552939, 0.617397,
		41.717678, 41.073467, 24.136351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.508995, 40.591820, 24.231443>,  <42.109352, 40.686409, 23.704172>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.508995, 40.591820, 24.231443> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.148991, 40.708946, 24.360592>,  <41.932987, 40.779224, 24.438082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.148991, 40.708946, 24.360592>,  <42.508995, 40.591820, 24.231443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.148991, 40.708946, 24.360592> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003013, -0.736543, 0.676385,
		0.435866, 0.609723, 0.662011,
		-0.900007, 0.292818, 0.322871,
		41.878990, 40.796791, 24.457453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.612629, 40.620117, 24.899078>,  <42.508995, 40.591820, 24.231443>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.612629, 40.620117, 24.899078> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.213158, 40.607121, 24.914980>,  <41.973473, 40.599323, 24.924520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.213158, 40.607121, 24.914980>,  <42.612629, 40.620117, 24.899078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.213158, 40.607121, 24.914980> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051276, -0.591564, 0.804626,
		-0.002628, 0.805603, 0.592450,
		-0.998681, -0.032493, 0.039754,
		41.913555, 40.597374, 24.926907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.474720, 40.496990, 25.583258>,  <42.612629, 40.620117, 24.899078>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.474720, 40.496990, 25.583258> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.142895, 40.395645, 25.384205>,  <41.943802, 40.334839, 25.264772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.142895, 40.395645, 25.384205>,  <42.474720, 40.496990, 25.583258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.142895, 40.395645, 25.384205> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220919, -0.669544, 0.709158,
		-0.512859, 0.698226, 0.499456,
		-0.829560, -0.253359, -0.497634,
		41.894028, 40.319637, 25.234915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.057880, 40.610676, 26.033592>,  <42.474720, 40.496990, 25.583258>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.057880, 40.610676, 26.033592> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.820118, 40.392269, 25.797441>,  <41.677460, 40.261223, 25.655750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.820118, 40.392269, 25.797441>,  <42.057880, 40.610676, 26.033592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.820118, 40.392269, 25.797441> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342757, -0.492102, 0.800221,
		-0.727462, 0.678011, 0.105356,
		-0.594405, -0.546019, -0.590378,
		41.641796, 40.228462, 25.620329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.435329, 40.636600, 26.393513>,  <42.057880, 40.610676, 26.033592>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.435329, 40.636600, 26.393513> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.399628, 40.323391, 26.147293>,  <41.378208, 40.135464, 25.999561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.399628, 40.323391, 26.147293>,  <41.435329, 40.636600, 26.393513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.399628, 40.323391, 26.147293> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151214, -0.600200, 0.785426,
		-0.984463, 0.163183, -0.064834,
		-0.089255, -0.783027, -0.615551,
		41.372852, 40.088482, 25.962627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.802376, 40.374237, 26.622309>,  <41.435329, 40.636600, 26.393513>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.802376, 40.374237, 26.622309> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.014526, 40.098335, 26.425156>,  <41.141815, 39.932793, 26.306864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.014526, 40.098335, 26.425156>,  <40.802376, 40.374237, 26.622309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.014526, 40.098335, 26.425156> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167452, -0.655175, 0.736686,
		-0.831061, -0.308186, -0.462990,
		0.530376, -0.689759, -0.492884,
		41.173637, 39.891407, 26.277290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.273556, 39.742596, 26.529568>,  <40.802376, 40.374237, 26.622309>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.273556, 39.742596, 26.529568> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.657646, 39.633492, 26.505671>,  <40.888100, 39.568027, 26.491333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.657646, 39.633492, 26.505671>,  <40.273556, 39.742596, 26.529568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.657646, 39.633492, 26.505671> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116594, -0.586078, 0.801822,
		-0.253718, -0.762965, -0.594569,
		0.960226, -0.272759, -0.059741,
		40.945713, 39.551662, 26.487747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.684418, 39.287766, 26.257479>,  <40.273556, 39.742596, 26.529568>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.684418, 39.287766, 26.257479> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.285225, 39.297455, 26.280956>,  <39.045708, 39.303268, 26.295042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.285225, 39.297455, 26.280956>,  <39.684418, 39.287766, 26.257479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.285225, 39.297455, 26.280956> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012815, 0.828471, -0.559886,
		-0.062189, -0.559508, -0.826489,
		-0.997982, 0.024227, 0.058692,
		38.985828, 39.304722, 26.298563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.391434, 39.408401, 25.640030>,  <39.684418, 39.287766, 26.257479>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.391434, 39.408401, 25.640030> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.092003, 39.528709, 25.876392>,  <38.912346, 39.600895, 26.018209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.092003, 39.528709, 25.876392>,  <39.391434, 39.408401, 25.640030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.092003, 39.528709, 25.876392> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099212, 0.830356, -0.548330,
		-0.655583, -0.469093, -0.591746,
		-0.748577, 0.300767, 0.590906,
		38.867428, 39.618938, 26.053665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.764801, 39.498459, 25.222490>,  <39.391434, 39.408401, 25.640030>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.764801, 39.498459, 25.222490> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.697937, 39.735142, 25.537945>,  <38.657818, 39.877151, 25.727217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.697937, 39.735142, 25.537945>,  <38.764801, 39.498459, 25.222490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.697937, 39.735142, 25.537945> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015428, 0.798222, -0.602166,
		-0.985809, -0.112827, -0.124304,
		-0.167163, 0.591703, 0.788634,
		38.647789, 39.912651, 25.774534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.307789, 39.971718, 25.053638>,  <38.764801, 39.498459, 25.222490>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.307789, 39.971718, 25.053638> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.471371, 40.133717, 25.380743>,  <38.569519, 40.230915, 25.577005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.471371, 40.133717, 25.380743>,  <38.307789, 39.971718, 25.053638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.471371, 40.133717, 25.380743> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167570, 0.847556, -0.503556,
		-0.897038, 0.342963, 0.278745,
		0.408954, 0.405000, 0.817760,
		38.594055, 40.255215, 25.626072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.023113, 40.628178, 25.054020>,  <38.307789, 39.971718, 25.053638>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.023113, 40.628178, 25.054020> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.313709, 40.681553, 25.323660>,  <38.488068, 40.713577, 25.485443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.313709, 40.681553, 25.323660>,  <38.023113, 40.628178, 25.054020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.313709, 40.681553, 25.323660> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054743, 0.966610, -0.250336,
		-0.684995, 0.218768, 0.694927,
		0.726489, 0.133436, 0.674099,
		38.531654, 40.721584, 25.525890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.936443, 41.208599, 25.458908>,  <38.023113, 40.628178, 25.054020>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.936443, 41.208599, 25.458908> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.325909, 41.118244, 25.446568>,  <38.559589, 41.064030, 25.439163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.325909, 41.118244, 25.446568>,  <37.936443, 41.208599, 25.458908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.325909, 41.118244, 25.446568> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185701, 0.864290, -0.467460,
		0.132256, 0.449420, 0.883476,
		0.973665, -0.225887, -0.030849,
		38.618008, 41.050480, 25.437313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.292603, 41.810261, 25.634443>,  <37.936443, 41.208599, 25.458908>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.292603, 41.810261, 25.634443> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.597343, 41.598095, 25.485723>,  <38.780190, 41.470795, 25.396492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.597343, 41.598095, 25.485723>,  <38.292603, 41.810261, 25.634443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.597343, 41.598095, 25.485723> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372943, 0.828495, -0.417743,
		0.529611, 0.179600, 0.829009,
		0.761857, -0.530414, -0.371800,
		38.825901, 41.438972, 25.374184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.021755, 42.272331, 26.219585>,  <38.292603, 41.810261, 25.634443>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.021755, 42.272331, 26.219585> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.666973, 42.379467, 26.069078>,  <37.454105, 42.443748, 25.978775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.666973, 42.379467, 26.069078>,  <38.021755, 42.272331, 26.219585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.666973, 42.379467, 26.069078> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423854, -0.795656, 0.432758,
		-0.183469, 0.543319, 0.819234,
		-0.886953, 0.267838, -0.376266,
		37.400887, 42.459820, 25.956198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.553509, 42.222523, 26.761366>,  <38.021755, 42.272331, 26.219585>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.553509, 42.222523, 26.761366> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.309132, 42.230713, 26.444803>,  <37.162506, 42.235626, 26.254866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.309132, 42.230713, 26.444803>,  <37.553509, 42.222523, 26.761366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.309132, 42.230713, 26.444803> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531264, -0.751754, 0.390673,
		-0.586946, 0.659126, 0.470156,
		-0.610944, 0.020474, -0.791409,
		37.125847, 42.236855, 26.207380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.835247, 42.277893, 26.941565>,  <37.553509, 42.222523, 26.761366>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.835247, 42.277893, 26.941565> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.826248, 42.135643, 26.567822>,  <36.820847, 42.050293, 26.343576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.826248, 42.135643, 26.567822>,  <36.835247, 42.277893, 26.941565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.826248, 42.135643, 26.567822> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705062, -0.656952, 0.267025,
		-0.708789, 0.664787, -0.235959,
		-0.022501, -0.355630, -0.934356,
		36.819496, 42.028954, 26.287514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.163052, 42.166973, 26.920340>,  <36.835247, 42.277893, 26.941565>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.163052, 42.166973, 26.920340> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.321064, 41.946007, 26.626732>,  <36.415871, 41.813427, 26.450567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.321064, 41.946007, 26.626732>,  <36.163052, 42.166973, 26.920340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.321064, 41.946007, 26.626732> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545135, -0.784083, 0.296719,
		-0.739445, 0.282926, -0.610880,
		0.395031, -0.552420, -0.734018,
		36.439571, 41.780281, 26.406527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.674198, 41.785686, 26.540737>,  <36.163052, 42.166973, 26.920340>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.674198, 41.785686, 26.540737> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.012081, 41.580223, 26.480585>,  <36.214813, 41.456944, 26.444494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.012081, 41.580223, 26.480585>,  <35.674198, 41.785686, 26.540737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.012081, 41.580223, 26.480585> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426600, -0.815837, 0.390414,
		-0.323225, -0.265636, -0.908275,
		0.844712, -0.513661, -0.150378,
		36.265495, 41.426125, 26.435471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.391422, 41.126602, 26.481161>,  <35.674198, 41.785686, 26.540737>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.391422, 41.126602, 26.481161> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.784512, 41.098320, 26.549568>,  <36.020367, 41.081352, 26.590612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.784512, 41.098320, 26.549568>,  <35.391422, 41.126602, 26.481161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.784512, 41.098320, 26.549568> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156042, -0.813410, 0.560370,
		0.099488, -0.577377, -0.810394,
		0.982728, -0.070705, 0.171020,
		36.079330, 41.077110, 26.600874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.547295, 40.487179, 26.247847>,  <35.391422, 41.126602, 26.481161>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.547295, 40.487179, 26.247847> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.818192, 40.585629, 26.525196>,  <35.980728, 40.644699, 26.691605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.818192, 40.585629, 26.525196>,  <35.547295, 40.487179, 26.247847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.818192, 40.585629, 26.525196> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189161, -0.852466, 0.487360,
		0.711029, -0.461220, -0.530768,
		0.677242, 0.246126, 0.693372,
		36.021362, 40.659466, 26.733208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<39.540806, 46.363815, 26.417238> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.747173, 46.026463, 26.357199>,  <39.870995, 45.824051, 26.321175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.747173, 46.026463, 26.357199>,  <39.540806, 46.363815, 26.417238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.747173, 46.026463, 26.357199> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516705, -0.446135, 0.730740,
		-0.683259, -0.299446, -0.665950,
		0.515920, -0.843384, -0.150100,
		39.901951, 45.773449, 26.312168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.029152, 45.715389, 26.338980>,  <39.540806, 46.363815, 26.417238>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.029152, 45.715389, 26.338980> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.392590, 45.672821, 26.500538>,  <39.610653, 45.647278, 26.597473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.392590, 45.672821, 26.500538>,  <39.029152, 45.715389, 26.338980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.392590, 45.672821, 26.500538> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414674, -0.345687, 0.841751,
		0.050038, -0.932295, -0.358221,
		0.908593, -0.106425, 0.403896,
		39.665169, 45.640892, 26.621706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.967983, 45.171574, 26.843029>,  <39.029152, 45.715389, 26.338980>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.967983, 45.171574, 26.843029> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.340076, 45.279331, 26.942709>,  <39.563332, 45.343987, 27.002518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.340076, 45.279331, 26.942709>,  <38.967983, 45.171574, 26.843029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.340076, 45.279331, 26.942709> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148821, -0.343793, 0.927178,
		0.335448, -0.899574, -0.279715,
		0.930229, 0.269392, 0.249200,
		39.619144, 45.360149, 27.017469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.217407, 44.594234, 27.056107>,  <38.967983, 45.171574, 26.843029>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.217407, 44.594234, 27.056107> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.430374, 44.879475, 27.238544>,  <39.558155, 45.050621, 27.348007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.430374, 44.879475, 27.238544>,  <39.217407, 44.594234, 27.056107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.430374, 44.879475, 27.238544> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217569, -0.405425, 0.887859,
		0.818046, -0.571941, -0.060705,
		0.532414, 0.713102, 0.456093,
		39.590099, 45.093407, 27.375372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.585644, 44.275066, 27.548845>,  <39.217407, 44.594234, 27.056107>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.585644, 44.275066, 27.548845> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.559258, 44.653862, 27.674614>,  <39.543427, 44.881138, 27.750076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.559258, 44.653862, 27.674614>,  <39.585644, 44.275066, 27.548845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.559258, 44.653862, 27.674614> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067785, -0.318634, 0.945451,
		0.995517, 0.041052, 0.085210,
		-0.065964, 0.946988, 0.314423,
		39.539467, 44.937958, 27.768940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.059330, 44.313240, 28.113478>,  <39.585644, 44.275066, 27.548845>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.059330, 44.313240, 28.113478> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.832100, 44.638653, 28.163212>,  <39.695763, 44.833900, 28.193052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.832100, 44.638653, 28.163212>,  <40.059330, 44.313240, 28.113478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.832100, 44.638653, 28.163212> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044003, -0.120838, 0.991696,
		0.821797, 0.568833, 0.032848,
		-0.568079, 0.813528, 0.124335,
		39.661674, 44.882710, 28.200512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.371033, 44.622261, 28.615879>,  <40.059330, 44.313240, 28.113478>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.371033, 44.622261, 28.615879> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.999477, 44.770378, 28.618849>,  <39.776546, 44.859249, 28.620630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.999477, 44.770378, 28.618849>,  <40.371033, 44.622261, 28.615879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.999477, 44.770378, 28.618849> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113872, -0.304610, 0.945646,
		0.352427, 0.877551, 0.325114,
		-0.928885, 0.370293, 0.007424,
		39.720810, 44.881466, 28.621077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.348152, 44.952332, 29.233181>,  <40.371033, 44.622261, 28.615879>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.348152, 44.952332, 29.233181> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.959846, 44.897064, 29.154676>,  <39.726864, 44.863903, 29.107574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.959846, 44.897064, 29.154676>,  <40.348152, 44.952332, 29.233181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.959846, 44.897064, 29.154676> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141372, -0.331643, 0.932752,
		-0.193965, 0.933232, 0.302416,
		-0.970769, -0.138168, -0.196260,
		39.668617, 44.855614, 29.095798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.960564, 45.303715, 29.735071>,  <40.348152, 44.952332, 29.233181>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.960564, 45.303715, 29.735071> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.719147, 45.025295, 29.579512>,  <39.574295, 44.858242, 29.486176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.719147, 45.025295, 29.579512>,  <39.960564, 45.303715, 29.735071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.719147, 45.025295, 29.579512> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212542, -0.329653, 0.919867,
		-0.768477, 0.637839, 0.051021,
		-0.603547, -0.696053, -0.388898,
		39.538082, 44.816479, 29.462843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.351913, 45.316338, 30.196293>,  <39.960564, 45.303715, 29.735071>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.351913, 45.316338, 30.196293> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.340256, 44.962986, 30.009192>,  <39.333263, 44.750977, 29.896931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.340256, 44.962986, 30.009192>,  <39.351913, 45.316338, 30.196293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.340256, 44.962986, 30.009192> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386367, -0.421627, 0.820336,
		-0.921885, 0.204630, -0.329021,
		-0.029141, -0.883378, -0.467754,
		39.331512, 44.697971, 29.868866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.716858, 45.079891, 30.308731>,  <39.351913, 45.316338, 30.196293>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.716858, 45.079891, 30.308731> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.900711, 44.741577, 30.200365>,  <39.011021, 44.538589, 30.135345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.900711, 44.741577, 30.200365>,  <38.716858, 45.079891, 30.308731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.900711, 44.741577, 30.200365> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476862, -0.492373, 0.728129,
		-0.749229, -0.205480, -0.629630,
		0.459629, -0.845782, -0.270915,
		39.038601, 44.487843, 30.119091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.156010, 44.543419, 30.438938>,  <38.716858, 45.079891, 30.308731>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.156010, 44.543419, 30.438938> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.515694, 44.368423, 30.437237>,  <38.731506, 44.263428, 30.436216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.515694, 44.368423, 30.437237>,  <38.156010, 44.543419, 30.438938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.515694, 44.368423, 30.437237> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297532, -0.618616, 0.727179,
		-0.320762, -0.652625, -0.686435,
		0.899214, -0.437488, -0.004252,
		38.785458, 44.237179, 30.435961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.724545, 44.199127, 29.943731>,  <38.156010, 44.543419, 30.438938>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.724545, 44.199127, 29.943731> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.331406, 44.223896, 29.874237>,  <37.095524, 44.238758, 29.832541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.331406, 44.223896, 29.874237>,  <37.724545, 44.199127, 29.943731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.331406, 44.223896, 29.874237> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163285, 0.730165, -0.663473,
		0.085769, -0.680458, -0.727750,
		-0.982844, 0.061925, -0.173734,
		37.036552, 44.242474, 29.822117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.658600, 44.174774, 29.144049>,  <37.724545, 44.199127, 29.943731>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.658600, 44.174774, 29.144049> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.304844, 44.315716, 29.266493>,  <37.092590, 44.400280, 29.339958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.304844, 44.315716, 29.266493>,  <37.658600, 44.174774, 29.144049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.304844, 44.315716, 29.266493> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036195, 0.602080, -0.797615,
		-0.465348, -0.716480, -0.519718,
		-0.884388, 0.352357, 0.306109,
		37.039528, 44.421421, 29.358326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.238155, 44.260857, 28.595840>,  <37.658600, 44.174774, 29.144049>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.238155, 44.260857, 28.595840> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.065609, 44.519985, 28.846996>,  <36.962082, 44.675465, 28.997690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.065609, 44.519985, 28.846996>,  <37.238155, 44.260857, 28.595840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.065609, 44.519985, 28.846996> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221340, 0.598708, -0.769778,
		-0.874604, -0.471034, -0.114873,
		-0.431366, 0.647824, 0.627891,
		36.936199, 44.714333, 29.035364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.615704, 44.427711, 28.257118>,  <37.238155, 44.260857, 28.595840>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.615704, 44.427711, 28.257118> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.699257, 44.725193, 28.511133>,  <36.749390, 44.903683, 28.663542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.699257, 44.725193, 28.511133>,  <36.615704, 44.427711, 28.257118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.699257, 44.725193, 28.511133> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186539, 0.667738, -0.720645,
		-0.959986, 0.032069, 0.278206,
		0.208879, 0.743705, 0.635038,
		36.761921, 44.948303, 28.701645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.102371, 44.901093, 28.190872>,  <36.615704, 44.427711, 28.257118>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.102371, 44.901093, 28.190872> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.384789, 45.114250, 28.377432>,  <36.554237, 45.242146, 28.489368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.384789, 45.114250, 28.377432>,  <36.102371, 44.901093, 28.190872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.384789, 45.114250, 28.377432> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107663, 0.731714, -0.673056,
		-0.699941, 0.424989, 0.573992,
		0.706039, 0.532897, 0.466401,
		36.596600, 45.274120, 28.517353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.779118, 45.561024, 28.230082>,  <36.102371, 44.901093, 28.190872>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.779118, 45.561024, 28.230082> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.171566, 45.616421, 28.284088>,  <36.407036, 45.649658, 28.316492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.171566, 45.616421, 28.284088>,  <35.779118, 45.561024, 28.230082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.171566, 45.616421, 28.284088> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015511, 0.752163, -0.658795,
		-0.192789, 0.644261, 0.740108,
		0.981118, 0.138488, 0.135016,
		36.465900, 45.657967, 28.324593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.924831, 46.305565, 28.360750>,  <35.779118, 45.561024, 28.230082>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.924831, 46.305565, 28.360750> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.271641, 46.165131, 28.219322>,  <36.479725, 46.080872, 28.134466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.271641, 46.165131, 28.219322>,  <35.924831, 46.305565, 28.360750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.271641, 46.165131, 28.219322> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051096, 0.768500, -0.637807,
		0.495643, 0.534927, 0.684245,
		0.867022, -0.351086, -0.353569,
		36.531746, 46.059803, 28.113251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.260525, 46.886379, 28.173958>,  <35.924831, 46.305565, 28.360750>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.260525, 46.886379, 28.173958> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.478313, 46.608059, 27.986591>,  <36.608986, 46.441067, 27.874172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.478313, 46.608059, 27.986591>,  <36.260525, 46.886379, 28.173958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.478313, 46.608059, 27.986591> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183177, 0.643604, -0.743115,
		0.818536, 0.318799, 0.477877,
		0.544467, -0.695803, -0.468416,
		36.641655, 46.399319, 27.846066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.771454, 47.254883, 27.907164>,  <36.260525, 46.886379, 28.173958>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.771454, 47.254883, 27.907164> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.823475, 46.920975, 27.693157>,  <36.854687, 46.720631, 27.564753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.823475, 46.920975, 27.693157>,  <36.771454, 47.254883, 27.907164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.823475, 46.920975, 27.693157> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193550, 0.550591, -0.812027,
		0.972433, 0.002052, 0.233174,
		0.130050, -0.834773, -0.535015,
		36.862492, 46.670544, 27.532652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.412132, 47.303154, 27.676619>,  <36.771454, 47.254883, 27.907164>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.412132, 47.303154, 27.676619> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.205662, 47.045448, 27.450882>,  <37.081779, 46.890823, 27.315439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.205662, 47.045448, 27.450882>,  <37.412132, 47.303154, 27.676619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.205662, 47.045448, 27.450882> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278840, 0.496598, -0.821973,
		0.809822, -0.581643, -0.076683,
		-0.516175, -0.644269, -0.564341,
		37.050808, 46.852169, 27.281580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.849392, 47.132301, 27.101381>,  <37.412132, 47.303154, 27.676619>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.849392, 47.132301, 27.101381> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.494160, 47.005444, 26.968277>,  <37.281021, 46.929329, 26.888414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.494160, 47.005444, 26.968277>,  <37.849392, 47.132301, 27.101381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.494160, 47.005444, 26.968277> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291475, 0.171258, -0.941123,
		0.355461, -0.932786, -0.059651,
		-0.888082, -0.317146, -0.332759,
		37.227734, 46.910301, 26.868450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.988338, 46.607979, 26.560284>,  <37.849392, 47.132301, 27.101381>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.988338, 46.607979, 26.560284> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.628925, 46.778511, 26.518549>,  <37.413277, 46.880833, 26.493509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.628925, 46.778511, 26.518549>,  <37.988338, 46.607979, 26.560284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.628925, 46.778511, 26.518549> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279195, 0.371753, -0.885353,
		-0.338669, -0.824645, -0.453061,
		-0.898528, 0.426334, -0.104336,
		37.359367, 46.906410, 26.487247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.876225, 46.580528, 25.878187>,  <37.988338, 46.607979, 26.560284>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.876225, 46.580528, 25.878187> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.583969, 46.837498, 25.970676>,  <37.408615, 46.991680, 26.026169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.583969, 46.837498, 25.970676>,  <37.876225, 46.580528, 25.878187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.583969, 46.837498, 25.970676> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158465, 0.488961, -0.857791,
		-0.664123, -0.590093, -0.459055,
		-0.730636, 0.642423, 0.231221,
		37.364777, 47.030224, 26.040043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.584015, 45.991283, 25.971363>,  <37.876225, 46.580528, 25.878187>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.584015, 45.991283, 25.971363> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.588749, 45.801888, 25.619074>,  <37.591591, 45.688251, 25.407701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.588749, 45.801888, 25.619074>,  <37.584015, 45.991283, 25.971363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.588749, 45.801888, 25.619074> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164162, -0.869753, 0.465382,
		-0.986362, 0.139071, -0.088026,
		0.011839, -0.473486, -0.880722,
		37.592300, 45.659843, 25.354856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.989208, 45.442978, 25.864271>,  <37.584015, 45.991283, 25.971363>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.989208, 45.442978, 25.864271> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.272243, 45.347210, 25.598339>,  <37.442066, 45.289749, 25.438780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.272243, 45.347210, 25.598339>,  <36.989208, 45.442978, 25.864271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.272243, 45.347210, 25.598339> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002023, -0.941534, 0.336912,
		-0.706622, -0.237049, -0.666702,
		0.707588, -0.239418, -0.664829,
		37.484520, 45.275383, 25.398890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.720325, 44.901028, 25.582600>,  <36.989208, 45.442978, 25.864271>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.720325, 44.901028, 25.582600> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.112152, 44.862991, 25.511705>,  <37.347248, 44.840168, 25.469168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.112152, 44.862991, 25.511705>,  <36.720325, 44.901028, 25.582600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.112152, 44.862991, 25.511705> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061926, -0.980960, 0.184071,
		-0.191367, -0.169334, -0.966801,
		0.979563, -0.095095, -0.177238,
		37.406021, 44.834461, 25.458534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.710979, 44.403851, 25.113348>,  <36.720325, 44.901028, 25.582600>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.710979, 44.403851, 25.113348> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.085327, 44.414543, 25.253880>,  <37.309937, 44.420959, 25.338200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.085327, 44.414543, 25.253880>,  <36.710979, 44.403851, 25.113348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.085327, 44.414543, 25.253880> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001578, -0.996790, 0.080042,
		0.352342, -0.075464, -0.932824,
		0.935870, 0.026731, 0.351330,
		37.366089, 44.422562, 25.359278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.112759, 44.048584, 24.696316>,  <36.710979, 44.403851, 25.113348>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.112759, 44.048584, 24.696316> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.295238, 44.036831, 25.052073>,  <37.404724, 44.029778, 25.265528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.295238, 44.036831, 25.052073>,  <37.112759, 44.048584, 24.696316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.295238, 44.036831, 25.052073> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047403, -0.998838, -0.008689,
		0.888616, -0.038196, -0.457060,
		0.456197, -0.029387, 0.889394,
		37.432098, 44.028015, 25.318892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.507446, 43.525688, 24.646336>,  <37.112759, 44.048584, 24.696316>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.507446, 43.525688, 24.646336> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.503876, 43.579533, 25.042679>,  <37.501732, 43.611839, 25.280485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.503876, 43.579533, 25.042679>,  <37.507446, 43.525688, 24.646336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.503876, 43.579533, 25.042679> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175366, -0.975752, 0.130976,
		0.984463, -0.172593, 0.032318,
		-0.008929, 0.134608, 0.990858,
		37.501198, 43.619915, 25.339937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.935577, 42.943790, 24.970055>,  <37.507446, 43.525688, 24.646336>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.935577, 42.943790, 24.970055> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.722466, 43.086998, 25.276773>,  <37.594601, 43.172920, 25.460804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.722466, 43.086998, 25.276773>,  <37.935577, 42.943790, 24.970055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.722466, 43.086998, 25.276773> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196214, -0.933671, 0.299598,
		0.823195, 0.009162, 0.567685,
		-0.532776, 0.358016, 0.766795,
		37.562634, 43.194401, 25.506811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.211014, 42.545326, 25.519110>,  <37.935577, 42.943790, 24.970055>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.211014, 42.545326, 25.519110> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.850014, 42.691883, 25.609661>,  <37.633415, 42.779816, 25.663992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.850014, 42.691883, 25.609661>,  <38.211014, 42.545326, 25.519110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.850014, 42.691883, 25.609661> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228802, -0.853197, 0.468727,
		0.364885, 0.371231, 0.853842,
		-0.902501, 0.366392, 0.226380,
		37.579262, 42.801800, 25.677574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.938438, 42.339233, 25.692991>,  <38.211014, 42.545326, 25.519110>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.938438, 42.339233, 25.692991> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.050121, 42.046352, 25.444500>,  <39.117130, 41.870625, 25.295404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.050121, 42.046352, 25.444500>,  <38.938438, 42.339233, 25.692991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.050121, 42.046352, 25.444500> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414139, 0.675514, -0.610057,
		0.866334, -0.086945, 0.491840,
		0.279203, -0.732203, -0.621228,
		39.133881, 41.826691, 25.258131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.667755, 42.481667, 25.449501>,  <38.938438, 42.339233, 25.692991>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.667755, 42.481667, 25.449501> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.466770, 42.247330, 25.195158>,  <39.346180, 42.106728, 25.042553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.466770, 42.247330, 25.195158>,  <39.667755, 42.481667, 25.449501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.466770, 42.247330, 25.195158> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288528, 0.579657, -0.762069,
		0.815034, -0.566376, -0.122224,
		-0.502466, -0.585847, -0.635855,
		39.316032, 42.071575, 25.004402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.141071, 42.292728, 24.919466>,  <39.667755, 42.481667, 25.449501>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.141071, 42.292728, 24.919466> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.783115, 42.232479, 24.751427>,  <39.568340, 42.196327, 24.650602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.783115, 42.232479, 24.751427>,  <40.141071, 42.292728, 24.919466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.783115, 42.232479, 24.751427> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280821, 0.541551, -0.792377,
		0.346858, -0.827063, -0.442330,
		-0.894890, -0.150627, -0.420098,
		39.514648, 42.187290, 24.625397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.229565, 42.106415, 24.249659>,  <40.141071, 42.292728, 24.919466>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.229565, 42.106415, 24.249659> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.858871, 42.254745, 24.273857>,  <39.636456, 42.343746, 24.288376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.858871, 42.254745, 24.273857>,  <40.229565, 42.106415, 24.249659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.858871, 42.254745, 24.273857> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150902, 0.514787, -0.843933,
		-0.344098, -0.772968, -0.533027,
		-0.926728, 0.370830, 0.060495,
		39.580853, 42.365993, 24.292006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.069897, 42.174458, 23.569279>,  <40.229565, 42.106415, 24.249659>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.069897, 42.174458, 23.569279> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.789227, 42.386402, 23.759815>,  <39.620827, 42.513569, 23.874138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.789227, 42.386402, 23.759815>,  <40.069897, 42.174458, 23.569279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.789227, 42.386402, 23.759815> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109811, 0.740985, -0.662482,
		-0.703987, -0.412538, -0.578113,
		-0.701672, 0.529862, 0.476343,
		39.578724, 42.545361, 23.902718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.620625, 42.417973, 23.049068>,  <40.069897, 42.174458, 23.569279>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.620625, 42.417973, 23.049068> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.511322, 42.653316, 23.353477>,  <39.445740, 42.794525, 23.536123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.511322, 42.653316, 23.353477>,  <39.620625, 42.417973, 23.049068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.511322, 42.653316, 23.353477> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091416, 0.803438, -0.588329,
		-0.957587, -0.091196, -0.273332,
		-0.273259, 0.588363, 0.761025,
		39.429344, 42.829826, 23.581785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.057514, 42.808731, 22.823524>,  <39.620625, 42.417973, 23.049068>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.057514, 42.808731, 22.823524> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.227047, 43.003719, 23.128874>,  <39.328766, 43.120712, 23.312082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.227047, 43.003719, 23.128874>,  <39.057514, 42.808731, 22.823524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.227047, 43.003719, 23.128874> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054212, 0.854956, -0.515859,
		-0.904117, 0.177253, 0.388784,
		0.423831, 0.487474, 0.763372,
		39.354195, 43.149960, 23.357885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.638325, 43.475254, 22.910501>,  <39.057514, 42.808731, 22.823524>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.638325, 43.475254, 22.910501> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.005505, 43.531071, 23.059042>,  <39.225811, 43.564560, 23.148167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.005505, 43.531071, 23.059042>,  <38.638325, 43.475254, 22.910501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.005505, 43.531071, 23.059042> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015465, 0.922790, -0.384992,
		-0.396405, 0.359145, 0.844913,
		0.917945, 0.139546, 0.371353,
		39.280888, 43.572933, 23.170448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.616959, 44.040657, 23.283831>,  <38.638325, 43.475254, 22.910501>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.616959, 44.040657, 23.283831> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.005924, 44.011982, 23.195036>,  <39.239304, 43.994778, 23.141760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.005924, 44.011982, 23.195036>,  <38.616959, 44.040657, 23.283831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.005924, 44.011982, 23.195036> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036575, 0.892986, -0.448596,
		0.230390, 0.444339, 0.865727,
		0.972411, -0.071688, -0.221987,
		39.297646, 43.990475, 23.128439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.828197, 33.680801, 34.897495> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.978439, 34.011032, 35.065948>,  <37.068584, 34.209171, 35.167019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.978439, 34.011032, 35.065948>,  <36.828197, 33.680801, 34.897495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.978439, 34.011032, 35.065948> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287008, 0.328447, -0.899861,
		-0.881220, 0.458859, -0.113580,
		0.375605, 0.825573, 0.421130,
		37.091122, 34.258705, 35.192287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.508343, 34.345177, 34.578423>,  <36.828197, 33.680801, 34.897495>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.508343, 34.345177, 34.578423> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.884251, 34.366417, 34.713486>,  <37.109795, 34.379162, 34.794525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.884251, 34.366417, 34.713486>,  <36.508343, 34.345177, 34.578423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.884251, 34.366417, 34.713486> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286191, 0.417896, -0.862240,
		-0.186896, 0.906941, 0.377528,
		0.939768, 0.053104, 0.337662,
		37.166180, 34.382347, 34.814785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.785088, 35.095261, 34.501137>,  <36.508343, 34.345177, 34.578423>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.785088, 35.095261, 34.501137> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.066605, 34.811363, 34.488888>,  <37.235516, 34.641026, 34.481541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.066605, 34.811363, 34.488888>,  <36.785088, 35.095261, 34.501137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.066605, 34.811363, 34.488888> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214516, 0.253410, -0.943274,
		0.677244, 0.657301, 0.330600,
		0.703792, -0.709746, -0.030619,
		37.277740, 34.598438, 34.479702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.187943, 35.473099, 34.100727>,  <36.785088, 35.095261, 34.501137>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.187943, 35.473099, 34.100727> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.330219, 35.099285, 34.105213>,  <37.415585, 34.874996, 34.107906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.330219, 35.099285, 34.105213>,  <37.187943, 35.473099, 34.100727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.330219, 35.099285, 34.105213> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182704, 0.057755, -0.981470,
		0.916573, 0.351147, 0.191286,
		0.355688, -0.934537, 0.011220,
		37.436924, 34.818924, 34.108578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.924171, 35.478020, 34.117561>,  <37.187943, 35.473099, 34.100727>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.924171, 35.478020, 34.117561> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.753647, 35.159664, 33.945602>,  <37.651333, 34.968651, 33.842426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.753647, 35.159664, 33.945602>,  <37.924171, 35.478020, 34.117561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.753647, 35.159664, 33.945602> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362308, 0.285224, -0.887344,
		0.828848, -0.534042, 0.166763,
		-0.426315, -0.795893, -0.429895,
		37.625751, 34.920895, 33.816635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.501900, 35.273483, 33.604065>,  <37.924171, 35.478020, 34.117561>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.501900, 35.273483, 33.604065> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.183716, 35.064739, 33.480831>,  <37.992805, 34.939491, 33.406891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.183716, 35.064739, 33.480831>,  <38.501900, 35.273483, 33.604065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.183716, 35.064739, 33.480831> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281272, 0.132370, -0.950455,
		0.536785, -0.842698, 0.041490,
		-0.795455, -0.521859, -0.308082,
		37.945080, 34.908180, 33.388405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.646076, 34.930508, 32.995552>,  <38.501900, 35.273483, 33.604065>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.646076, 34.930508, 32.995552> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.249565, 34.879646, 32.981678>,  <38.011658, 34.849129, 32.973354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.249565, 34.879646, 32.981678>,  <38.646076, 34.930508, 32.995552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.249565, 34.879646, 32.981678> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039664, -0.036866, -0.998533,
		0.125688, -0.991198, 0.041588,
		-0.991277, -0.127153, -0.034681,
		37.952183, 34.841499, 32.971275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.333916, 34.371983, 32.495949>,  <38.646076, 34.930508, 32.995552>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.333916, 34.371983, 32.495949> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.079296, 34.678268, 32.532787>,  <37.926525, 34.862041, 32.554890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.079296, 34.678268, 32.532787>,  <38.333916, 34.371983, 32.495949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.079296, 34.678268, 32.532787> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004017, 0.122710, -0.992434,
		-0.771222, -0.631367, -0.081187,
		-0.636553, 0.765713, 0.092101,
		37.888329, 34.907982, 32.560417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.963383, 34.339504, 31.872934>,  <38.333916, 34.371983, 32.495949>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.963383, 34.339504, 31.872934> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.857700, 34.700741, 32.008362>,  <37.794292, 34.917480, 32.089619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.857700, 34.700741, 32.008362>,  <37.963383, 34.339504, 31.872934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.857700, 34.700741, 32.008362> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251975, 0.274217, -0.928070,
		-0.930970, -0.330510, 0.155106,
		-0.264204, 0.903088, 0.338568,
		37.778439, 34.971668, 32.109932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.298828, 34.427692, 31.570135>,  <37.963383, 34.339504, 31.872934>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.298828, 34.427692, 31.570135> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.432842, 34.791611, 31.668133>,  <37.513248, 35.009964, 31.726931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.432842, 34.791611, 31.668133>,  <37.298828, 34.427692, 31.570135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.432842, 34.791611, 31.668133> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167548, 0.313405, -0.934722,
		-0.927190, 0.272114, 0.257435,
		0.335032, 0.909798, 0.244994,
		37.533352, 35.064548, 31.741631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.843315, 35.002232, 31.293306>,  <37.298828, 34.427692, 31.570135>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.843315, 35.002232, 31.293306> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.162674, 35.230377, 31.370495>,  <37.354290, 35.367264, 31.416807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.162674, 35.230377, 31.370495>,  <36.843315, 35.002232, 31.293306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.162674, 35.230377, 31.370495> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299119, 0.653843, -0.694995,
		-0.522574, 0.497164, 0.692636,
		0.798401, 0.570367, 0.192970,
		37.402195, 35.401485, 31.428387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.589355, 35.609200, 31.095419>,  <36.843315, 35.002232, 31.293306>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.589355, 35.609200, 31.095419> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.989258, 35.604393, 31.088100>,  <37.229198, 35.601509, 31.083710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.989258, 35.604393, 31.088100>,  <36.589355, 35.609200, 31.095419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.989258, 35.604393, 31.088100> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012108, 0.392690, -0.919591,
		0.018239, 0.919592, 0.392451,
		0.999760, -0.012021, -0.018297,
		37.289185, 35.600788, 31.082611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.166485, 36.340103, 31.270792>,  <36.589355, 35.609200, 31.095419>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.166485, 36.340103, 31.270792> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.822304, 36.408257, 31.078712>,  <35.615795, 36.449146, 30.963465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.822304, 36.408257, 31.078712>,  <36.166485, 36.340103, 31.270792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.822304, 36.408257, 31.078712> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508246, -0.220205, 0.832584,
		0.036113, 0.960459, 0.276071,
		-0.860454, 0.170379, -0.480197,
		35.564167, 36.459370, 30.934652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.781727, 36.675850, 31.840128>,  <36.166485, 36.340103, 31.270792>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.781727, 36.675850, 31.840128> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.541599, 36.510235, 31.566429>,  <35.397522, 36.410866, 31.402210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.541599, 36.510235, 31.566429>,  <35.781727, 36.675850, 31.840128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.541599, 36.510235, 31.566429> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523611, -0.443229, 0.727585,
		-0.604527, 0.795059, 0.049281,
		-0.600316, -0.414041, -0.684245,
		35.361504, 36.386021, 31.361156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.102074, 36.929558, 32.078186>,  <35.781727, 36.675850, 31.840128>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.102074, 36.929558, 32.078186> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.044178, 36.613342, 31.840162>,  <35.009441, 36.423611, 31.697350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.044178, 36.613342, 31.840162>,  <35.102074, 36.929558, 32.078186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.044178, 36.613342, 31.840162> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539946, -0.440851, 0.717014,
		-0.829161, 0.425079, -0.363041,
		-0.144740, -0.790543, -0.595057,
		35.000755, 36.376179, 31.661646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.342422, 36.822754, 32.022278>,  <35.102074, 36.929558, 32.078186>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.342422, 36.822754, 32.022278> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.510967, 36.469627, 31.939245>,  <34.612095, 36.257751, 31.889425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.510967, 36.469627, 31.939245>,  <34.342422, 36.822754, 32.022278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.510967, 36.469627, 31.939245> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520201, -0.422773, 0.742061,
		-0.742864, -0.204688, -0.637381,
		0.421359, -0.882817, -0.207584,
		34.637375, 36.204781, 31.876970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.776062, 36.416180, 32.087269>,  <34.342422, 36.822754, 32.022278>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.776062, 36.416180, 32.087269> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.069923, 36.144863, 32.081417>,  <34.246239, 35.982075, 32.077908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.069923, 36.144863, 32.081417>,  <33.776062, 36.416180, 32.087269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.069923, 36.144863, 32.081417> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488129, -0.543419, 0.682954,
		-0.471185, -0.494595, -0.730315,
		0.734653, -0.678285, -0.014624,
		34.290318, 35.941376, 32.077030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.470470, 35.783001, 31.981667>,  <33.776062, 36.416180, 32.087269>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.470470, 35.783001, 31.981667> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.817261, 35.674377, 32.148811>,  <34.025337, 35.609203, 32.249096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.817261, 35.674377, 32.148811>,  <33.470470, 35.783001, 31.981667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.817261, 35.674377, 32.148811> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497926, -0.506475, 0.703955,
		0.020472, -0.818377, -0.574317,
		0.866977, -0.271556, 0.417860,
		34.077354, 35.592911, 32.274170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.507828, 35.070633, 32.058361>,  <33.470470, 35.783001, 31.981667>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.507828, 35.070633, 32.058361> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.747902, 35.224590, 32.338829>,  <33.891945, 35.316963, 32.507111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.747902, 35.224590, 32.338829>,  <33.507828, 35.070633, 32.058361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.747902, 35.224590, 32.338829> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475042, -0.533745, 0.699608,
		0.643518, -0.752979, -0.137506,
		0.600183, 0.384889, 0.701171,
		33.927956, 35.340057, 32.549179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.236359, 34.688553, 32.568436>,  <33.507828, 35.070633, 32.058361>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.236359, 34.688553, 32.568436> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.517174, 34.900723, 32.758503>,  <33.685665, 35.028023, 32.872543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.517174, 34.900723, 32.758503>,  <33.236359, 34.688553, 32.568436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.517174, 34.900723, 32.758503> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239035, -0.453019, 0.858857,
		0.670822, -0.716535, -0.191247,
		0.702040, 0.530425, 0.475172,
		33.727787, 35.059849, 32.901054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.639969, 34.248138, 33.015091>,  <33.236359, 34.688553, 32.568436>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.639969, 34.248138, 33.015091> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.638577, 34.620266, 33.161781>,  <33.637741, 34.843544, 33.249794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.638577, 34.620266, 33.161781>,  <33.639969, 34.248138, 33.015091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.638577, 34.620266, 33.161781> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381192, -0.340273, 0.859597,
		0.924489, -0.136801, 0.355816,
		-0.003481, 0.930323, 0.366726,
		33.637531, 34.899364, 33.271801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.834053, 34.203102, 33.732224>,  <33.639969, 34.248138, 33.015091>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.834053, 34.203102, 33.732224> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.624989, 34.542618, 33.700268>,  <33.499550, 34.746326, 33.681095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.624989, 34.542618, 33.700268>,  <33.834053, 34.203102, 33.732224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.624989, 34.542618, 33.700268> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428891, -0.180793, 0.885080,
		0.736800, 0.496866, 0.458531,
		-0.522665, 0.848786, -0.079893,
		33.468189, 34.797253, 33.676300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.826317, 34.405174, 34.423641>,  <33.834053, 34.203102, 33.732224>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.826317, 34.405174, 34.423641> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.548176, 34.629925, 34.244408>,  <33.381290, 34.764774, 34.136868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.548176, 34.629925, 34.244408>,  <33.826317, 34.405174, 34.423641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.548176, 34.629925, 34.244408> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575232, -0.061395, 0.815683,
		0.430803, 0.824940, 0.365900,
		-0.695354, 0.561876, -0.448083,
		33.339569, 34.798489, 34.109982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.597652, 34.788868, 34.974586>,  <33.826317, 34.405174, 34.423641>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.597652, 34.788868, 34.974586> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.310352, 34.833862, 34.699932>,  <33.137974, 34.860859, 34.535141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.310352, 34.833862, 34.699932>,  <33.597652, 34.788868, 34.974586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.310352, 34.833862, 34.699932> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689307, 0.019330, 0.724211,
		0.094736, 0.993465, 0.063654,
		-0.718248, 0.112485, -0.686634,
		33.094879, 34.867607, 34.493942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.255447, 35.284775, 35.173317>,  <33.597652, 34.788868, 34.974586>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.255447, 35.284775, 35.173317> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.989590, 35.084579, 34.951412>,  <32.830074, 34.964462, 34.818268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.989590, 35.084579, 34.951412>,  <33.255447, 35.284775, 35.173317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.989590, 35.084579, 34.951412> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672003, 0.075872, 0.736651,
		-0.326592, 0.862414, -0.386756,
		-0.664642, -0.500485, -0.554766,
		32.790195, 34.934433, 34.784981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.634094, 35.612659, 35.338936>,  <33.255447, 35.284775, 35.173317>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.634094, 35.612659, 35.338936> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.517025, 35.265182, 35.179073>,  <32.446785, 35.056698, 35.083157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.517025, 35.265182, 35.179073>,  <32.634094, 35.612659, 35.338936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.517025, 35.265182, 35.179073> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588337, -0.165887, 0.791417,
		-0.753792, 0.466758, -0.462531,
		-0.292672, -0.868688, -0.399655,
		32.429222, 35.004578, 35.059177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.175930, 36.044556, 35.725533>,  <32.634094, 35.612659, 35.338936>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.175930, 36.044556, 35.725533> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.425575, 36.052902, 35.413109>,  <33.575363, 36.057911, 35.225655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.425575, 36.052902, 35.413109>,  <33.175930, 36.044556, 35.725533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.425575, 36.052902, 35.413109> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693737, -0.445104, -0.566225,
		-0.359465, 0.895236, -0.263320,
		0.624110, 0.020863, -0.781058,
		33.612808, 36.059162, 35.178791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.924694, 36.785500, 35.510380>,  <33.175930, 36.044556, 35.725533>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.924694, 36.785500, 35.510380> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.663399, 36.555592, 35.313232>,  <32.506622, 36.417648, 35.194942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.663399, 36.555592, 35.313232>,  <32.924694, 36.785500, 35.510380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.663399, 36.555592, 35.313232> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552322, 0.083524, -0.829436,
		0.517898, -0.814044, 0.262895,
		-0.653239, -0.574766, -0.492872,
		32.467426, 36.383163, 35.165371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.315792, 36.766312, 36.181293>,  <32.924694, 36.785500, 35.510380>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.315792, 36.766312, 36.181293> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.644695, 36.962242, 36.297199>,  <33.842037, 37.079800, 36.366741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.644695, 36.962242, 36.297199>,  <33.315792, 36.766312, 36.181293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.644695, 36.962242, 36.297199> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315600, 0.816138, -0.484062,
		-0.473594, 0.306574, 0.825664,
		0.822256, 0.489829, 0.289763,
		33.891373, 37.109192, 36.384129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.082615, 37.410446, 36.280582>,  <33.315792, 36.766312, 36.181293>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.082615, 37.410446, 36.280582> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.475563, 37.430882, 36.208641>,  <33.711330, 37.443142, 36.165478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.475563, 37.430882, 36.208641>,  <33.082615, 37.410446, 36.280582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.475563, 37.430882, 36.208641> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162654, 0.707879, -0.687351,
		0.092197, 0.704484, 0.703706,
		0.982366, 0.051089, -0.179851,
		33.770271, 37.446209, 36.154686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.263474, 38.084381, 36.339645>,  <33.082615, 37.410446, 36.280582>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.263474, 38.084381, 36.339645> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.534061, 37.902458, 36.107941>,  <33.696415, 37.793304, 35.968918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.534061, 37.902458, 36.107941>,  <33.263474, 38.084381, 36.339645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.534061, 37.902458, 36.107941> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061349, 0.818600, -0.571079,
		0.733913, 0.350780, 0.581658,
		0.676467, -0.454806, -0.579261,
		33.737003, 37.766018, 35.934162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.749542, 38.608948, 36.267551>,  <33.263474, 38.084381, 36.339645>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.749542, 38.608948, 36.267551> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.803581, 38.337933, 35.978359>,  <33.836002, 38.175323, 35.804844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.803581, 38.337933, 35.978359>,  <33.749542, 38.608948, 36.267551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.803581, 38.337933, 35.978359> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220196, 0.731950, -0.644796,
		0.966056, -0.072090, 0.248072,
		0.135093, -0.677533, -0.722979,
		33.844109, 38.134674, 35.761467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.445671, 38.645805, 36.047207>,  <33.749542, 38.608948, 36.267551>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.445671, 38.645805, 36.047207> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.201122, 38.492584, 35.770226>,  <34.054394, 38.400650, 35.604034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.201122, 38.492584, 35.770226>,  <34.445671, 38.645805, 36.047207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.201122, 38.492584, 35.770226> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222313, 0.756661, -0.614850,
		0.759502, -0.529827, -0.377413,
		-0.611338, -0.383076, -0.692473,
		34.017712, 38.377666, 35.562489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.768963, 38.732445, 35.360928>,  <34.445671, 38.645805, 36.047207>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.768963, 38.732445, 35.360928> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.384724, 38.672504, 35.267296>,  <34.154179, 38.636539, 35.211117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.384724, 38.672504, 35.267296>,  <34.768963, 38.732445, 35.360928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.384724, 38.672504, 35.267296> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110742, 0.566094, -0.816868,
		0.254917, -0.810606, -0.527196,
		-0.960600, -0.149851, -0.234075,
		34.096542, 38.627548, 35.197075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.904358, 38.623707, 34.675404>,  <34.768963, 38.732445, 35.360928>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.904358, 38.623707, 34.675404> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.520611, 38.712688, 34.744831>,  <34.290363, 38.766075, 34.786488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.520611, 38.712688, 34.744831>,  <34.904358, 38.623707, 34.675404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.520611, 38.712688, 34.744831> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009688, 0.588833, -0.808197,
		-0.281990, -0.777040, -0.562753,
		-0.959369, 0.222451, 0.173573,
		34.232800, 38.779423, 34.796902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.528515, 38.536591, 34.092262>,  <34.904358, 38.623707, 34.675404>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.528515, 38.536591, 34.092262> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.311768, 38.788425, 34.314972>,  <34.181721, 38.939526, 34.448597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.311768, 38.788425, 34.314972>,  <34.528515, 38.536591, 34.092262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.311768, 38.788425, 34.314972> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009927, 0.657624, -0.753281,
		-0.840407, -0.413704, -0.350094,
		-0.541865, 0.629587, 0.556779,
		34.149208, 38.977303, 34.482006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.918018, 38.807842, 33.822083>,  <34.528515, 38.536591, 34.092262>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.918018, 38.807842, 33.822083> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.008987, 39.084858, 34.095921>,  <34.063568, 39.251068, 34.260223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.008987, 39.084858, 34.095921>,  <33.918018, 38.807842, 33.822083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.008987, 39.084858, 34.095921> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053203, 0.693133, -0.718844,
		-0.972342, 0.199904, 0.120789,
		0.227422, 0.692535, 0.684598,
		34.077213, 39.292618, 34.301300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.629059, 39.415318, 33.459869>,  <33.918018, 38.807842, 33.822083>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.629059, 39.415318, 33.459869> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.849934, 39.574444, 33.752945>,  <33.982460, 39.669918, 33.928791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.849934, 39.574444, 33.752945>,  <33.629059, 39.415318, 33.459869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.849934, 39.574444, 33.752945> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229956, 0.772057, -0.592494,
		-0.801378, 0.495655, 0.334843,
		0.552190, 0.397812, 0.732688,
		34.015591, 39.693787, 33.972752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.420418, 40.072922, 33.447414>,  <33.629059, 39.415318, 33.459869>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.420418, 40.072922, 33.447414> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.765823, 40.083851, 33.648849>,  <33.973068, 40.090408, 33.769711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.765823, 40.083851, 33.648849>,  <33.420418, 40.072922, 33.447414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.765823, 40.083851, 33.648849> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250004, 0.844013, -0.474490,
		-0.437999, 0.535626, 0.721984,
		0.863513, 0.027327, 0.503586,
		34.024876, 40.092049, 33.799927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.544739, 40.740841, 33.540699>,  <33.420418, 40.072922, 33.447414>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.544739, 40.740841, 33.540699> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.902447, 40.562515, 33.556358>,  <34.117069, 40.455521, 33.565754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.902447, 40.562515, 33.556358>,  <33.544739, 40.740841, 33.540699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.902447, 40.562515, 33.556358> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406742, 0.773154, -0.486614,
		0.186673, 0.451086, 0.872739,
		0.894267, -0.445818, 0.039149,
		34.170727, 40.428768, 33.568104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.021992, 41.266350, 33.716080>,  <33.544739, 40.740841, 33.540699>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.021992, 41.266350, 33.716080> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.264305, 40.993347, 33.552517>,  <34.409695, 40.829544, 33.454380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.264305, 40.993347, 33.552517>,  <34.021992, 41.266350, 33.716080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.264305, 40.993347, 33.552517> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319486, 0.679356, -0.660609,
		0.728666, 0.269547, 0.629595,
		0.605784, -0.682510, -0.408907,
		34.446041, 40.788593, 33.429844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.621387, 41.686771, 33.640266>,  <34.021992, 41.266350, 33.716080>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.621387, 41.686771, 33.640266> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.668377, 41.367229, 33.404289>,  <34.696571, 41.175503, 33.262703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.668377, 41.367229, 33.404289>,  <34.621387, 41.686771, 33.640266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.668377, 41.367229, 33.404289> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572589, 0.539853, -0.617009,
		0.811383, -0.265315, 0.520832,
		0.117471, -0.798853, -0.589944,
		34.703617, 41.127575, 33.227306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.305332, 41.661442, 33.452686>,  <34.621387, 41.686771, 33.640266>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.305332, 41.661442, 33.452686> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.171062, 41.418674, 33.164528>,  <35.090500, 41.273014, 32.991634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.171062, 41.418674, 33.164528>,  <35.305332, 41.661442, 33.452686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.171062, 41.418674, 33.164528> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669679, 0.384077, -0.635622,
		0.662461, -0.695794, 0.277518,
		-0.335674, -0.606923, -0.720395,
		35.070362, 41.236599, 32.948410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.879990, 41.338009, 33.068798>,  <35.305332, 41.661442, 33.452686>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.879990, 41.338009, 33.068798> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.558727, 41.350311, 32.830811>,  <35.365971, 41.357693, 32.688019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.558727, 41.350311, 32.830811>,  <35.879990, 41.338009, 33.068798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.558727, 41.350311, 32.830811> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554843, 0.402340, -0.728197,
		0.216987, -0.914974, -0.340206,
		-0.803160, 0.030752, -0.594969,
		35.317780, 41.359535, 32.652321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.180115, 41.059696, 32.419575>,  <35.879990, 41.338009, 33.068798>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.180115, 41.059696, 32.419575> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.851685, 41.274464, 32.342064>,  <35.654625, 41.403324, 32.295559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.851685, 41.274464, 32.342064>,  <36.180115, 41.059696, 32.419575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.851685, 41.274464, 32.342064> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514497, 0.549094, -0.658626,
		-0.247228, -0.640480, -0.727092,
		-0.821079, 0.536918, -0.193773,
		35.605362, 41.435539, 32.283932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.258430, 41.159302, 31.748091>,  <36.180115, 41.059696, 32.419575>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.258430, 41.159302, 31.748091> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.987354, 41.431938, 31.858492>,  <35.824711, 41.595520, 31.924732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.987354, 41.431938, 31.858492>,  <36.258430, 41.159302, 31.748091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.987354, 41.431938, 31.858492> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411819, 0.662735, -0.625450,
		-0.609217, -0.310195, -0.729818,
		-0.677687, 0.681588, 0.276005,
		35.784050, 41.636414, 31.941294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.822102, 41.324696, 31.132551>,  <36.258430, 41.159302, 31.748091>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.822102, 41.324696, 31.132551> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.760456, 41.640415, 31.370293>,  <35.723469, 41.829849, 31.512938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.760456, 41.640415, 31.370293>,  <35.822102, 41.324696, 31.132551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.760456, 41.640415, 31.370293> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210763, 0.613954, -0.760683,
		-0.965313, 0.008039, -0.260972,
		-0.154110, 0.789301, 0.594352,
		35.714222, 41.877205, 31.548599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.283577, 41.776829, 30.796343>,  <35.822102, 41.324696, 31.132551>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.283577, 41.776829, 30.796343> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.499924, 41.989223, 31.057270>,  <35.629730, 42.116661, 31.213827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.499924, 41.989223, 31.057270>,  <35.283577, 41.776829, 30.796343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.499924, 41.989223, 31.057270> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208005, 0.667021, -0.715414,
		-0.814983, 0.522629, 0.250322,
		0.540866, 0.530982, 0.652320,
		35.662182, 42.148518, 31.252966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.109154, 42.473289, 30.646036>,  <35.283577, 41.776829, 30.796343>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.109154, 42.473289, 30.646036> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.454624, 42.487144, 30.847178>,  <35.661907, 42.495457, 30.967863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.454624, 42.487144, 30.847178>,  <35.109154, 42.473289, 30.646036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.454624, 42.487144, 30.847178> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344525, 0.687639, -0.639105,
		-0.367919, 0.725226, 0.581964,
		0.863677, 0.034638, 0.502854,
		35.713726, 42.497536, 30.998034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.264366, 43.144093, 30.731682>,  <35.109154, 42.473289, 30.646036>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.264366, 43.144093, 30.731682> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.616158, 42.957420, 30.769064>,  <35.827232, 42.845417, 30.791494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.616158, 42.957420, 30.769064>,  <35.264366, 43.144093, 30.731682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.616158, 42.957420, 30.769064> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433983, 0.705699, -0.560043,
		0.195408, 0.533102, 0.823175,
		0.879474, -0.466681, 0.093458,
		35.880001, 42.817417, 30.797102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.647213, 43.605103, 31.046543>,  <35.264366, 43.144093, 30.731682>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.647213, 43.605103, 31.046543> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.912540, 43.353512, 30.884357>,  <36.071735, 43.202557, 30.787046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.912540, 43.353512, 30.884357>,  <35.647213, 43.605103, 31.046543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.912540, 43.353512, 30.884357> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538111, 0.777422, -0.325657,
		0.520048, -0.002172, 0.854135,
		0.663315, -0.628976, -0.405465,
		36.111534, 43.164818, 30.762718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.286621, 43.935452, 31.173723>,  <35.647213, 43.605103, 31.046543>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.286621, 43.935452, 31.173723> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.380253, 43.673992, 30.885847>,  <36.436432, 43.517117, 30.713121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.380253, 43.673992, 30.885847>,  <36.286621, 43.935452, 31.173723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.380253, 43.673992, 30.885847> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451157, 0.728758, -0.515140,
		0.861199, -0.204108, 0.465486,
		0.234082, -0.653645, -0.719690,
		36.450478, 43.477898, 30.669941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.801781, 44.188595, 31.007969>,  <36.286621, 43.935452, 31.173723>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.801781, 44.188595, 31.007969> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.738468, 43.946579, 30.695848>,  <36.700481, 43.801369, 30.508575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.738468, 43.946579, 30.695848>,  <36.801781, 44.188595, 31.007969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.738468, 43.946579, 30.695848> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468575, 0.649582, -0.598733,
		0.869129, -0.460399, 0.180690,
		-0.158283, -0.605043, -0.780301,
		36.690983, 43.765068, 30.461758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.394535, 44.205666, 30.617460>,  <36.801781, 44.188595, 31.007969>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.394535, 44.205666, 30.617460> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.096825, 44.086967, 30.378130>,  <36.918198, 44.015747, 30.234531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.096825, 44.086967, 30.378130>,  <37.394535, 44.205666, 30.617460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.096825, 44.086967, 30.378130> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269977, 0.685733, -0.675931,
		0.610871, -0.664614, -0.430262,
		-0.744278, -0.296746, -0.598325,
		36.873543, 43.997944, 30.198631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.029636, 43.792648, 30.437246>,  <37.394535, 44.205666, 30.617460>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.029636, 43.792648, 30.437246> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.413605, 43.801670, 30.548990>,  <38.643986, 43.807083, 30.616035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.413605, 43.801670, 30.548990>,  <38.029636, 43.792648, 30.437246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.413605, 43.801670, 30.548990> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224898, -0.532800, 0.815809,
		0.167246, -0.845940, -0.506373,
		0.959922, 0.022559, 0.279358,
		38.701580, 43.808437, 30.632797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.155361, 43.159718, 30.623230>,  <38.029636, 43.792648, 30.437246>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.155361, 43.159718, 30.623230> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.453537, 43.338924, 30.820650>,  <38.632442, 43.446449, 30.939102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.453537, 43.338924, 30.820650>,  <38.155361, 43.159718, 30.623230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.453537, 43.338924, 30.820650> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132303, -0.626256, 0.768310,
		0.653307, -0.638030, -0.407564,
		0.745443, 0.448020, 0.493551,
		38.677170, 43.473331, 30.968716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.586681, 42.589123, 30.786411>,  <38.155361, 43.159718, 30.623230>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.586681, 42.589123, 30.786411> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.624218, 42.907444, 31.025707>,  <38.646740, 43.098438, 31.169285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.624218, 42.907444, 31.025707>,  <38.586681, 42.589123, 30.786411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.624218, 42.907444, 31.025707> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181423, -0.577163, 0.796221,
		0.978918, -0.183252, 0.090216,
		0.093840, 0.795802, 0.598242,
		38.652370, 43.146183, 31.205179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.028572, 42.381947, 31.325222>,  <38.586681, 42.589123, 30.786411>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.028572, 42.381947, 31.325222> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.834538, 42.698071, 31.474941>,  <38.718117, 42.887745, 31.564772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.834538, 42.698071, 31.474941>,  <39.028572, 42.381947, 31.325222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.834538, 42.698071, 31.474941> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080831, -0.466719, 0.880704,
		0.870724, 0.396960, 0.290280,
		-0.485083, 0.790314, 0.374297,
		38.689014, 42.935165, 31.587231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.307148, 42.432858, 32.041622>,  <39.028572, 42.381947, 31.325222>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.307148, 42.432858, 32.041622> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.955124, 42.621078, 32.016098>,  <38.743908, 42.734013, 32.000782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.955124, 42.621078, 32.016098>,  <39.307148, 42.432858, 32.041622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.955124, 42.621078, 32.016098> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269582, -0.384458, 0.882903,
		0.390917, 0.794212, 0.465200,
		-0.880062, 0.470552, -0.063814,
		38.691105, 42.762245, 31.996954>
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
