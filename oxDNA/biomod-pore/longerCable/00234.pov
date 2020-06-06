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
	<24.550539, 35.033409, 34.933449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.171984, 35.149590, 34.989998>,  <23.944851, 35.219299, 35.023930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.171984, 35.149590, 34.989998>,  <24.550539, 35.033409, 34.933449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.171984, 35.149590, 34.989998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276160, -0.954518, 0.112382,
		0.167589, 0.067314, 0.983556,
		-0.946387, 0.290453, 0.141378,
		23.888067, 35.236725, 35.032410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.304552, 34.893158, 35.327389>,  <24.550539, 35.033409, 34.933449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.304552, 34.893158, 35.327389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.701536, 34.919201, 35.285847>,  <25.939726, 34.934826, 35.260921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.701536, 34.919201, 35.285847>,  <25.304552, 34.893158, 35.327389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.701536, 34.919201, 35.285847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036401, -0.652485, -0.756927,
		-0.117042, 0.755000, -0.645195,
		0.992460, 0.065107, -0.103851,
		25.999273, 34.938732, 35.254692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.460100, 35.029194, 34.612778>,  <25.304552, 34.893158, 35.327389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.460100, 35.029194, 34.612778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.777502, 34.849194, 34.776653>,  <25.967943, 34.741192, 34.874981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.777502, 34.849194, 34.776653>,  <25.460100, 35.029194, 34.612778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.777502, 34.849194, 34.776653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076931, -0.593635, -0.801048,
		0.603684, 0.667153, -0.436432,
		0.793503, -0.450005, 0.409693,
		26.015553, 34.714191, 34.899563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.746332, 34.592751, 34.083199>,  <25.460100, 35.029194, 34.612778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.746332, 34.592751, 34.083199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.979925, 34.456364, 34.377872>,  <26.120081, 34.374531, 34.554676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.979925, 34.456364, 34.377872>,  <25.746332, 34.592751, 34.083199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.979925, 34.456364, 34.377872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179881, -0.830595, -0.527025,
		0.791585, 0.440289, -0.423720,
		0.583984, -0.340966, 0.736686,
		26.155121, 34.354073, 34.598877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.407114, 34.503654, 33.729630>,  <25.746332, 34.592751, 34.083199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.407114, 34.503654, 33.729630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.356905, 34.279549, 34.057129>,  <26.326780, 34.145084, 34.253628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.356905, 34.279549, 34.057129>,  <26.407114, 34.503654, 33.729630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.356905, 34.279549, 34.057129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244295, -0.817318, -0.521835,
		0.961543, 0.134514, 0.239461,
		-0.125522, -0.560266, 0.818747,
		26.319248, 34.111469, 34.302753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.029148, 34.017162, 33.893349>,  <26.407114, 34.503654, 33.729630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.029148, 34.017162, 33.893349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.660450, 33.903584, 33.998997>,  <26.439230, 33.835438, 34.062386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.660450, 33.903584, 33.998997>,  <27.029148, 34.017162, 33.893349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.660450, 33.903584, 33.998997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004293, -0.688519, -0.725206,
		0.387770, -0.667322, 0.635858,
		-0.921746, -0.283943, 0.264122,
		26.383926, 33.818401, 34.078232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.044678, 33.299736, 33.916996>,  <27.029148, 34.017162, 33.893349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.044678, 33.299736, 33.916996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.650694, 33.360687, 33.884415>,  <26.414303, 33.397259, 33.864864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.650694, 33.360687, 33.884415>,  <27.044678, 33.299736, 33.916996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.650694, 33.360687, 33.884415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086526, -0.843048, -0.530833,
		-0.149558, -0.515801, 0.843553,
		-0.984960, 0.152380, -0.081454,
		26.355206, 33.406403, 33.859978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.761652, 32.610771, 34.035305>,  <27.044678, 33.299736, 33.916996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.761652, 32.610771, 34.035305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.493601, 32.824421, 33.829144>,  <26.332769, 32.952610, 33.705444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.493601, 32.824421, 33.829144>,  <26.761652, 32.610771, 34.035305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.493601, 32.824421, 33.829144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019178, -0.706616, -0.707337,
		-0.741996, -0.464123, 0.483768,
		-0.670130, 0.534120, -0.515405,
		26.292562, 32.984657, 33.674522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.275234, 32.103741, 33.892742>,  <26.761652, 32.610771, 34.035305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.275234, 32.103741, 33.892742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.233891, 32.414833, 33.644726>,  <26.209084, 32.601486, 33.495914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.233891, 32.414833, 33.644726>,  <26.275234, 32.103741, 33.892742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.233891, 32.414833, 33.644726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176286, -0.627838, -0.758118,
		-0.978897, 0.030945, 0.201996,
		-0.103361, 0.777729, -0.620044,
		26.202883, 32.648151, 33.458714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.746349, 31.879129, 33.466755>,  <26.275234, 32.103741, 33.892742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.746349, 31.879129, 33.466755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.890465, 32.187695, 33.256950>,  <25.976934, 32.372833, 33.131065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.890465, 32.187695, 33.256950>,  <25.746349, 31.879129, 33.466755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.890465, 32.187695, 33.256950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168623, -0.499158, -0.849946,
		-0.917473, 0.394673, -0.049764,
		0.360291, 0.771411, -0.524515,
		25.998552, 32.419117, 33.099594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.185589, 32.166309, 33.141823>,  <25.746349, 31.879129, 33.466755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.185589, 32.166309, 33.141823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.505613, 32.255699, 32.919125>,  <25.697628, 32.309334, 32.785507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.505613, 32.255699, 32.919125>,  <25.185589, 32.166309, 33.141823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.505613, 32.255699, 32.919125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415719, -0.462568, -0.783077,
		-0.432530, 0.857956, -0.277179,
		0.800060, 0.223476, -0.556743,
		25.745630, 32.322742, 32.752102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.018030, 32.527336, 32.525822>,  <25.185589, 32.166309, 33.141823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.018030, 32.527336, 32.525822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.342258, 32.295940, 32.489315>,  <25.536795, 32.157104, 32.467411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.342258, 32.295940, 32.489315>,  <25.018030, 32.527336, 32.525822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.342258, 32.295940, 32.489315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384930, -0.408813, -0.827467,
		0.441367, 0.705851, -0.554048,
		0.810570, -0.578486, -0.091267,
		25.585430, 32.122395, 32.461933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.243113, 32.695110, 31.881281>,  <25.018030, 32.527336, 32.525822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.243113, 32.695110, 31.881281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.332165, 32.331753, 32.022846>,  <25.385595, 32.113739, 32.107784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.332165, 32.331753, 32.022846>,  <25.243113, 32.695110, 31.881281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.332165, 32.331753, 32.022846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443445, -0.417651, -0.793047,
		0.868213, 0.019615, -0.495804,
		0.222629, -0.908396, 0.353912,
		25.398952, 32.059235, 32.129021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.717751, 32.889622, 31.301548>,  <25.243113, 32.695110, 31.881281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.717751, 32.889622, 31.301548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.935316, 32.556152, 31.263309>,  <26.065855, 32.356071, 31.240366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.935316, 32.556152, 31.263309>,  <25.717751, 32.889622, 31.301548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.935316, 32.556152, 31.263309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734885, -0.418244, -0.533869,
		0.405093, 0.360631, -0.840146,
		0.543916, -0.833677, -0.095594,
		26.098492, 32.306049, 31.234631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.358608, 33.280396, 31.349831>,  <25.717751, 32.889622, 31.301548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.358608, 33.280396, 31.349831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.719357, 33.308224, 31.520376>,  <26.935806, 33.324921, 31.622704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.719357, 33.308224, 31.520376>,  <26.358608, 33.280396, 31.349831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.719357, 33.308224, 31.520376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428504, 0.269418, 0.862438,
		-0.054870, -0.960507, 0.272792,
		0.901873, 0.069571, 0.426364,
		26.989918, 33.329094, 31.648285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.285849, 32.994690, 31.971817>,  <26.358608, 33.280396, 31.349831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.285849, 32.994690, 31.971817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.571768, 33.274185, 31.983334>,  <26.743319, 33.441883, 31.990244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.571768, 33.274185, 31.983334>,  <26.285849, 32.994690, 31.971817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.571768, 33.274185, 31.983334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373836, 0.346988, 0.860143,
		0.591026, -0.625590, 0.509240,
		0.714797, 0.698739, 0.028789,
		26.786207, 33.483807, 31.991970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.025671, 32.709637, 32.241867>,  <26.285849, 32.994690, 31.971817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.025671, 32.709637, 32.241867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.658863, 32.627529, 32.378654>,  <26.438778, 32.578266, 32.460728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.658863, 32.627529, 32.378654>,  <27.025671, 32.709637, 32.241867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.658863, 32.627529, 32.378654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015321, 0.838631, 0.544484,
		-0.398551, 0.504541, -0.765895,
		-0.917018, -0.205270, 0.341968,
		26.383759, 32.565948, 32.481243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.677105, 33.320107, 32.471840>,  <27.025671, 32.709637, 32.241867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.677105, 33.320107, 32.471840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.441511, 33.060707, 32.664734>,  <26.300156, 32.905067, 32.780468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.441511, 33.060707, 32.664734>,  <26.677105, 33.320107, 32.471840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.441511, 33.060707, 32.664734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047663, 0.623551, 0.780329,
		-0.806737, 0.436617, -0.398171,
		-0.588985, -0.648498, 0.482231,
		26.264816, 32.866158, 32.809402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.098362, 33.675785, 32.651569>,  <26.677105, 33.320107, 32.471840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.098362, 33.675785, 32.651569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.128986, 33.369129, 32.906570>,  <26.147362, 33.185135, 33.059570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.128986, 33.369129, 32.906570>,  <26.098362, 33.675785, 32.651569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.128986, 33.369129, 32.906570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187077, 0.616978, 0.764422,
		-0.979357, -0.177786, -0.096183,
		0.076561, -0.766636, 0.637501,
		26.151955, 33.139137, 33.097820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.500126, 33.758705, 32.952187>,  <26.098362, 33.675785, 32.651569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.500126, 33.758705, 32.952187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.749783, 33.544472, 33.179729>,  <25.899576, 33.415932, 33.316254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.749783, 33.544472, 33.179729>,  <25.500126, 33.758705, 32.952187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.749783, 33.544472, 33.179729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302188, 0.505943, 0.807901,
		-0.720507, -0.676147, 0.153933,
		0.624141, -0.535582, 0.568859,
		25.937025, 33.383797, 33.350388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.829624, 34.012989, 32.968281>,  <25.500126, 33.758705, 32.952187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.829624, 34.012989, 32.968281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.541473, 34.117222, 32.711174>,  <24.368584, 34.179764, 32.556908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.541473, 34.117222, 32.711174>,  <24.829624, 34.012989, 32.968281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.541473, 34.117222, 32.711174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168785, -0.833015, -0.526876,
		-0.672735, -0.488038, 0.556100,
		-0.720375, 0.260586, -0.642772,
		24.325361, 34.195396, 32.518341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.133339, 33.796883, 33.584587>,  <24.829624, 34.012989, 32.968281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.133339, 33.796883, 33.584587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.503201, 33.664627, 33.660156>,  <25.725117, 33.585274, 33.705498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.503201, 33.664627, 33.660156>,  <25.133339, 33.796883, 33.584587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.503201, 33.664627, 33.660156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007335, 0.480558, 0.876932,
		-0.380738, -0.812245, 0.441925,
		0.924654, -0.330640, 0.188925,
		25.780598, 33.565434, 33.716835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.157337, 33.533390, 34.274315>,  <25.133339, 33.796883, 33.584587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.157337, 33.533390, 34.274315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.544333, 33.612900, 34.211761>,  <25.776529, 33.660606, 34.174229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.544333, 33.612900, 34.211761>,  <25.157337, 33.533390, 34.274315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.544333, 33.612900, 34.211761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009346, 0.645990, 0.763289,
		0.252746, -0.737011, 0.626845,
		0.967488, 0.198776, -0.156384,
		25.834579, 33.672531, 34.164845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.438030, 33.537659, 34.930836>,  <25.157337, 33.533390, 34.274315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.438030, 33.537659, 34.930836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.632843, 33.792404, 34.691769>,  <25.749731, 33.945251, 34.548328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.632843, 33.792404, 34.691769>,  <25.438030, 33.537659, 34.930836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.632843, 33.792404, 34.691769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033872, 0.697569, 0.715717,
		0.872728, -0.328332, 0.361310,
		0.487031, 0.636864, -0.597666,
		25.778954, 33.983463, 34.512470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.096291, 33.350197, 35.341541>,  <25.438030, 33.537659, 34.930836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.096291, 33.350197, 35.341541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.194611, 33.591091, 35.037727>,  <26.253603, 33.735630, 34.855438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.194611, 33.591091, 35.037727>,  <26.096291, 33.350197, 35.341541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.194611, 33.591091, 35.037727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277190, 0.794522, 0.540278,
		0.928843, 0.077736, 0.362226,
		0.245798, 0.602239, -0.759534,
		26.268351, 33.771763, 34.809868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.595793, 33.790146, 35.621452>,  <26.096291, 33.350197, 35.341541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.595793, 33.790146, 35.621452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.441828, 33.963547, 35.295528>,  <26.349449, 34.067589, 35.099972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.441828, 33.963547, 35.295528>,  <26.595793, 33.790146, 35.621452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.441828, 33.963547, 35.295528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012354, 0.880333, 0.474196,
		0.922870, 0.192591, -0.333497,
		-0.384914, 0.433501, -0.814812,
		26.326353, 34.093597, 35.051086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.116674, 34.321548, 35.468914>,  <26.595793, 33.790146, 35.621452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.116674, 34.321548, 35.468914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.761406, 34.418488, 35.312752>,  <26.548244, 34.476650, 35.219055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.761406, 34.418488, 35.312752>,  <27.116674, 34.321548, 35.468914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.761406, 34.418488, 35.312752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094426, 0.735219, 0.671220,
		0.449702, 0.633024, -0.630118,
		-0.888173, 0.242349, -0.390404,
		26.494953, 34.491192, 35.195629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.066217, 35.043839, 35.594250>,  <27.116674, 34.321548, 35.468914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.066217, 35.043839, 35.594250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.697672, 34.903553, 35.527203>,  <26.476545, 34.819382, 35.486973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.697672, 34.903553, 35.527203>,  <27.066217, 35.043839, 35.594250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.697672, 34.903553, 35.527203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379433, 0.717832, 0.583736,
		-0.084400, 0.601432, -0.794454,
		-0.921362, -0.350710, -0.167618,
		26.421263, 34.798340, 35.476917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.715233, 34.721966, 35.898918>,  <27.066217, 35.043839, 35.594250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.715233, 34.721966, 35.898918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.027393, 34.480854, 35.965412>,  <28.214689, 34.336189, 36.005310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.027393, 34.480854, 35.965412>,  <27.715233, 34.721966, 35.898918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.027393, 34.480854, 35.965412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603597, 0.795632, 0.051379,
		-0.163233, 0.060244, 0.984746,
		0.780401, -0.602777, 0.166237,
		28.261513, 34.300022, 36.015282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.092373, 34.940243, 36.609776>,  <27.715233, 34.721966, 35.898918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.092373, 34.940243, 36.609776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.302052, 34.778530, 36.309971>,  <28.427858, 34.681503, 36.130089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.302052, 34.778530, 36.309971>,  <28.092373, 34.940243, 36.609776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.302052, 34.778530, 36.309971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585566, 0.810160, -0.027457,
		0.618328, -0.424498, 0.661417,
		0.524198, -0.404280, -0.749516,
		28.459311, 34.657246, 36.085117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.767717, 35.058540, 36.660091>,  <28.092373, 34.940243, 36.609776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.767717, 35.058540, 36.660091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.835026, 34.940166, 36.283981>,  <28.875410, 34.869144, 36.058315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.835026, 34.940166, 36.283981>,  <28.767717, 35.058540, 36.660091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.835026, 34.940166, 36.283981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544027, 0.823327, -0.161765,
		0.822021, -0.484313, 0.299536,
		0.168271, -0.295930, -0.940271,
		28.885508, 34.851387, 36.001900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.543898, 34.981686, 36.583271>,  <28.767717, 35.058540, 36.660091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.543898, 34.981686, 36.583271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.357391, 35.077633, 36.242668>,  <29.245487, 35.135201, 36.038307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.357391, 35.077633, 36.242668>,  <29.543898, 34.981686, 36.583271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.357391, 35.077633, 36.242668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625992, 0.769585, -0.125989,
		0.625084, -0.591779, -0.508987,
		-0.466267, 0.239868, -0.851504,
		29.217512, 35.149593, 35.987217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.059120, 34.954674, 36.012112>,  <29.543898, 34.981686, 36.583271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.059120, 34.954674, 36.012112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.754902, 35.180210, 35.883327>,  <29.572371, 35.315533, 35.806057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.754902, 35.180210, 35.883327>,  <30.059120, 34.954674, 36.012112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.754902, 35.180210, 35.883327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630600, 0.759555, -0.159436,
		0.154651, -0.324286, -0.933232,
		-0.760544, 0.563839, -0.321961,
		29.526739, 35.349361, 35.786739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.262238, 35.262939, 35.467663>,  <30.059120, 34.954674, 36.012112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.262238, 35.262939, 35.467663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.963598, 35.513618, 35.556965>,  <29.784414, 35.664024, 35.610546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.963598, 35.513618, 35.556965>,  <30.262238, 35.262939, 35.467663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.963598, 35.513618, 35.556965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601524, 0.779260, -0.175850,
		-0.284178, 0.003003, -0.958767,
		-0.746600, 0.626694, 0.223255,
		29.739618, 35.701626, 35.623940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.468481, 35.931923, 35.147778>,  <30.262238, 35.262939, 35.467663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.468481, 35.931923, 35.147778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.103106, 36.023270, 35.282528>,  <29.883881, 36.078075, 35.363377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.103106, 36.023270, 35.282528>,  <30.468481, 35.931923, 35.147778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.103106, 36.023270, 35.282528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218262, 0.973510, -0.068113,
		-0.343504, 0.011309, -0.939083,
		-0.913437, 0.228363, 0.336873,
		29.829075, 36.091778, 35.383591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.256819, 36.551144, 34.705780>,  <30.468481, 35.931923, 35.147778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.256819, 36.551144, 34.705780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.029493, 36.547302, 35.034882>,  <29.893099, 36.544998, 35.232342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.029493, 36.547302, 35.034882>,  <30.256819, 36.551144, 34.705780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.029493, 36.547302, 35.034882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196994, 0.969263, 0.147382,
		-0.798883, 0.245838, -0.548954,
		-0.568313, -0.009600, 0.822757,
		29.858999, 36.544422, 35.281708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.676706, 36.919334, 34.573402>,  <30.256819, 36.551144, 34.705780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.676706, 36.919334, 34.573402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.816904, 36.932003, 34.947815>,  <29.901022, 36.939606, 35.172462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.816904, 36.932003, 34.947815>,  <29.676706, 36.919334, 34.573402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.816904, 36.932003, 34.947815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195657, 0.974899, -0.106253,
		-0.915900, 0.220382, 0.335498,
		0.350493, 0.031674, 0.936029,
		29.922052, 36.941505, 35.228622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.330734, 37.451183, 35.096851>,  <29.676706, 36.919334, 34.573402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.330734, 37.451183, 35.096851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.724234, 37.407486, 35.153843>,  <29.960333, 37.381268, 35.188038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.724234, 37.407486, 35.153843>,  <29.330734, 37.451183, 35.096851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.724234, 37.407486, 35.153843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114014, 0.993146, -0.025710,
		-0.138696, 0.041537, 0.989464,
		0.983750, -0.109247, 0.142481,
		30.019360, 37.374710, 35.196587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.449053, 37.862514, 35.538414>,  <29.330734, 37.451183, 35.096851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.449053, 37.862514, 35.538414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.751038, 37.812008, 35.281013>,  <29.932228, 37.781704, 35.126575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.751038, 37.812008, 35.281013>,  <29.449053, 37.862514, 35.538414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.751038, 37.812008, 35.281013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212969, 0.975307, 0.058490,
		0.620224, -0.181203, 0.763209,
		0.754962, -0.126263, -0.643499,
		29.977526, 37.774128, 35.087963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.138445, 38.190929, 35.786491>,  <29.449053, 37.862514, 35.538414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.138445, 38.190929, 35.786491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.139439, 38.144161, 35.389236>,  <30.140036, 38.116100, 35.150883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.139439, 38.144161, 35.389236>,  <30.138445, 38.190929, 35.786491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.139439, 38.144161, 35.389236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202091, 0.972708, -0.114012,
		0.979364, -0.200421, 0.026047,
		0.002486, -0.116923, -0.993138,
		30.140184, 38.109085, 35.091293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.857367, 38.253582, 35.454426>,  <30.138445, 38.190929, 35.786491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.857367, 38.253582, 35.454426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.573620, 38.341064, 35.186405>,  <30.403372, 38.393555, 35.025593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.573620, 38.341064, 35.186405>,  <30.857367, 38.253582, 35.454426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.573620, 38.341064, 35.186405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573022, 0.732496, -0.367554,
		0.410424, -0.644684, -0.644930,
		-0.709365, 0.218705, -0.670052,
		30.360811, 38.406677, 34.985390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.126440, 37.545746, 35.436783>,  <30.857367, 38.253582, 35.454426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.126440, 37.545746, 35.436783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.772779, 37.648888, 35.592625>,  <30.560583, 37.710773, 35.686131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.772779, 37.648888, 35.592625>,  <31.126440, 37.545746, 35.436783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.772779, 37.648888, 35.592625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292695, -0.955679, -0.031733,
		0.364152, -0.142091, 0.920436,
		-0.884151, 0.257851, 0.389602,
		30.507534, 37.726242, 35.709507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.886719, 37.175240, 36.113483>,  <31.126440, 37.545746, 35.436783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.886719, 37.175240, 36.113483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.531210, 37.305672, 35.984642>,  <30.317904, 37.383930, 35.907337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.531210, 37.305672, 35.984642>,  <30.886719, 37.175240, 36.113483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.531210, 37.305672, 35.984642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329311, -0.943096, -0.046079,
		-0.318804, 0.065120, 0.945581,
		-0.888773, 0.326080, -0.322108,
		30.264578, 37.403496, 35.888008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.219366, 37.081017, 36.632858>,  <30.886719, 37.175240, 36.113483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.219366, 37.081017, 36.632858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.098581, 37.071041, 36.251659>,  <30.026110, 37.065056, 36.022942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.098581, 37.071041, 36.251659>,  <30.219366, 37.081017, 36.632858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.098581, 37.071041, 36.251659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480431, -0.859452, 0.174722,
		-0.823410, 0.510607, 0.247541,
		-0.301964, -0.024941, -0.952993,
		30.007992, 37.063560, 35.965763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.835505, 36.469093, 36.654137>,  <30.219366, 37.081017, 36.632858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.835505, 36.469093, 36.654137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.784529, 36.572456, 36.271099>,  <29.753942, 36.634476, 36.041279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.784529, 36.572456, 36.271099>,  <29.835505, 36.469093, 36.654137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.784529, 36.572456, 36.271099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507694, -0.846391, -0.160838,
		-0.852060, 0.465667, 0.239055,
		-0.127437, 0.258411, -0.957592,
		29.746298, 36.649979, 35.983822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.190308, 36.428963, 36.472900>,  <29.835505, 36.469093, 36.654137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.190308, 36.428963, 36.472900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.359673, 36.379070, 36.113976>,  <29.461292, 36.349136, 35.898621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.359673, 36.379070, 36.113976>,  <29.190308, 36.428963, 36.472900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.359673, 36.379070, 36.113976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478119, -0.872070, -0.104388,
		-0.769495, 0.473220, -0.428882,
		0.423414, -0.124731, -0.897309,
		29.486696, 36.341652, 35.844784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.698072, 36.396835, 35.908855>,  <29.190308, 36.428963, 36.472900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.698072, 36.396835, 35.908855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.025038, 36.184105, 35.820316>,  <29.221216, 36.056465, 35.767193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.025038, 36.184105, 35.820316>,  <28.698072, 36.396835, 35.908855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.025038, 36.184105, 35.820316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559528, -0.824384, -0.085554,
		-0.136978, 0.193785, -0.971434,
		0.817414, -0.531825, -0.221351,
		29.270262, 36.024559, 35.753910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.568247, 36.082882, 35.260532>,  <28.698072, 36.396835, 35.908855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.568247, 36.082882, 35.260532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.853439, 35.855370, 35.424553>,  <29.024555, 35.718861, 35.522964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.853439, 35.855370, 35.424553>,  <28.568247, 36.082882, 35.260532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.853439, 35.855370, 35.424553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582209, -0.806120, -0.105848,
		0.390754, -0.163267, -0.905900,
		0.712982, -0.568783, 0.410050,
		29.067333, 35.684734, 35.547569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.559084, 35.460125, 34.905968>,  <28.568247, 36.082882, 35.260532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.559084, 35.460125, 34.905968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.737789, 35.384563, 35.255760>,  <28.845013, 35.339226, 35.465637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.737789, 35.384563, 35.255760>,  <28.559084, 35.460125, 34.905968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.737789, 35.384563, 35.255760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315665, -0.947874, -0.043485,
		0.837113, -0.256616, -0.483106,
		0.446764, -0.188902, 0.874482,
		28.871819, 35.327892, 35.518105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.767496, 34.821308, 34.813732>,  <28.559084, 35.460125, 34.905968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.767496, 34.821308, 34.813732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.755167, 34.855030, 35.212116>,  <28.747770, 34.875263, 35.451149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.755167, 34.855030, 35.212116>,  <28.767496, 34.821308, 34.813732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.755167, 34.855030, 35.212116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290921, -0.954053, 0.071754,
		0.956250, -0.287535, 0.053931,
		-0.030821, 0.084305, 0.995963,
		28.745920, 34.880322, 35.510906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.122831, 34.102291, 35.007023>,  <28.767496, 34.821308, 34.813732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.122831, 34.102291, 35.007023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.887533, 34.262672, 35.287937>,  <28.746353, 34.358902, 35.456486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.887533, 34.262672, 35.287937>,  <29.122831, 34.102291, 35.007023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.887533, 34.262672, 35.287937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433112, -0.889584, 0.145103,
		0.682921, -0.218812, 0.696951,
		-0.588246, 0.400951, 0.702285,
		28.711060, 34.382957, 35.498623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.441462, 34.827839, 35.224606>,  <29.122831, 34.102291, 35.007023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.441462, 34.827839, 35.224606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.835314, 34.765614, 35.256363>,  <30.071625, 34.728279, 35.275417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.835314, 34.765614, 35.256363>,  <29.441462, 34.827839, 35.224606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.835314, 34.765614, 35.256363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174188, -0.841488, 0.511427,
		-0.012751, -0.517395, -0.855651,
		0.984630, -0.155565, 0.079394,
		30.130703, 34.718945, 35.280182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.937382, 34.277561, 35.047848>,  <29.441462, 34.827839, 35.224606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.937382, 34.277561, 35.047848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.705587, 34.218113, 34.727322>,  <29.566511, 34.182442, 34.535007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.705587, 34.218113, 34.727322>,  <29.937382, 34.277561, 35.047848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.705587, 34.218113, 34.727322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395041, -0.808775, 0.435689,
		-0.712838, 0.569028, 0.409962,
		-0.579486, -0.148624, -0.801316,
		29.531742, 34.173527, 34.486927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.840076, 33.661003, 34.643719>,  <29.937382, 34.277561, 35.047848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.840076, 33.661003, 34.643719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.979174, 33.470596, 34.320610>,  <30.062632, 33.356354, 34.126747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.979174, 33.470596, 34.320610>,  <29.840076, 33.661003, 34.643719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.979174, 33.470596, 34.320610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345829, -0.735669, 0.582403,
		-0.871481, -0.481875, -0.091204,
		0.347741, -0.476012, -0.807767,
		30.083496, 33.327793, 34.078281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.458187, 32.989040, 34.593002>,  <29.840076, 33.661003, 34.643719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.458187, 32.989040, 34.593002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.842146, 33.063046, 34.508743>,  <30.072521, 33.107449, 34.458187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.842146, 33.063046, 34.508743>,  <29.458187, 32.989040, 34.593002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.842146, 33.063046, 34.508743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279931, -0.590936, 0.756593,
		0.015501, -0.785216, -0.619028,
		0.959895, 0.185013, -0.210646,
		30.130114, 33.118549, 34.445549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.742617, 32.373875, 34.594105>,  <29.458187, 32.989040, 34.593002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.742617, 32.373875, 34.594105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.030972, 32.640919, 34.668530>,  <30.203983, 32.801144, 34.713184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.030972, 32.640919, 34.668530>,  <29.742617, 32.373875, 34.594105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.030972, 32.640919, 34.668530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339635, -0.574327, 0.744847,
		0.604128, -0.473756, -0.640768,
		0.720886, 0.667610, 0.186063,
		30.247238, 32.841202, 34.724350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.208294, 31.977097, 34.858940>,  <29.742617, 32.373875, 34.594105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.208294, 31.977097, 34.858940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.345112, 32.341675, 34.950390>,  <30.427202, 32.560421, 35.005260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.345112, 32.341675, 34.950390>,  <30.208294, 31.977097, 34.858940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.345112, 32.341675, 34.950390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502659, -0.383037, 0.774995,
		0.793938, -0.150163, -0.589163,
		0.342047, 0.911446, 0.228627,
		30.447725, 32.615108, 35.018978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.064592, 32.177120, 34.762486>,  <30.208294, 31.977097, 34.858940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.064592, 32.177120, 34.762486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.890087, 32.352345, 35.076881>,  <30.785383, 32.457478, 35.265518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.890087, 32.352345, 35.076881>,  <31.064592, 32.177120, 34.762486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.890087, 32.352345, 35.076881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683399, -0.406930, 0.606114,
		0.585355, 0.801570, -0.121840,
		-0.436263, 0.438057, 0.785990,
		30.759209, 32.483761, 35.312679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.570112, 32.524563, 35.157215>,  <31.064592, 32.177120, 34.762486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.570112, 32.524563, 35.157215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.254169, 32.351578, 35.331161>,  <31.064604, 32.247787, 35.435528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.254169, 32.351578, 35.331161>,  <31.570112, 32.524563, 35.157215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.254169, 32.351578, 35.331161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584180, -0.314653, 0.748149,
		-0.186714, 0.844968, 0.501165,
		-0.789856, -0.432460, 0.434863,
		31.017212, 32.221840, 35.461620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.683527, 32.503822, 35.831249>,  <31.570112, 32.524563, 35.157215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.683527, 32.503822, 35.831249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.418585, 32.213337, 35.757603>,  <31.259621, 32.039043, 35.713417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.418585, 32.213337, 35.757603>,  <31.683527, 32.503822, 35.831249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.418585, 32.213337, 35.757603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478734, -0.599297, 0.641605,
		-0.576282, 0.336828, 0.744611,
		-0.662354, -0.726216, -0.184113,
		31.219879, 31.995472, 35.702370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.234434, 32.341831, 36.496998>,  <31.683527, 32.503822, 35.831249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.234434, 32.341831, 36.496998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.329159, 32.078232, 36.211441>,  <31.385994, 31.920073, 36.040108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.329159, 32.078232, 36.211441>,  <31.234434, 32.341831, 36.496998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.329159, 32.078232, 36.211441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532791, -0.526365, 0.662627,
		-0.812437, -0.537274, 0.226457,
		0.236813, -0.658997, -0.713893,
		31.400204, 31.880533, 35.997272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.721148, 32.931782, 36.480129>,  <31.234434, 32.341831, 36.496998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.721148, 32.931782, 36.480129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.467392, 33.039169, 36.190170>,  <30.315140, 33.103600, 36.016193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.467392, 33.039169, 36.190170>,  <30.721148, 32.931782, 36.480129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.467392, 33.039169, 36.190170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128932, 0.961367, 0.243210,
		0.762187, 0.060826, -0.644492,
		-0.634387, 0.268467, -0.724899,
		30.277077, 33.119709, 35.972702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.074503, 33.433327, 35.940399>,  <30.721148, 32.931782, 36.480129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.074503, 33.433327, 35.940399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.706940, 33.520279, 36.072071>,  <30.486403, 33.572449, 36.151073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.706940, 33.520279, 36.072071>,  <31.074503, 33.433327, 35.940399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.706940, 33.520279, 36.072071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360769, 0.800621, 0.478385,
		-0.159556, 0.558348, -0.814119,
		-0.918906, 0.217379, 0.329178,
		30.431269, 33.585491, 36.170826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.741846, 33.845303, 35.432861>,  <31.074503, 33.433327, 35.940399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.741846, 33.845303, 35.432861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.717161, 33.473263, 35.288029>,  <30.702351, 33.250038, 35.201130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.717161, 33.473263, 35.288029>,  <30.741846, 33.845303, 35.432861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.717161, 33.473263, 35.288029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093003, 0.366551, -0.925738,
		0.993751, -0.023454, -0.109123,
		-0.061711, -0.930102, -0.362079,
		30.698648, 33.194233, 35.179405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.136108, 33.783539, 34.763229>,  <30.741846, 33.845303, 35.432861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.136108, 33.783539, 34.763229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.866974, 33.487980, 34.777771>,  <30.705492, 33.310646, 34.786495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.866974, 33.487980, 34.777771>,  <31.136108, 33.783539, 34.763229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.866974, 33.487980, 34.777771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347414, 0.272202, -0.897335,
		0.653140, -0.616392, -0.439851,
		-0.672839, -0.738896, 0.036357,
		30.665123, 33.266312, 34.788677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.353327, 33.461887, 34.167164>,  <31.136108, 33.783539, 34.763229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.353327, 33.461887, 34.167164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.974743, 33.365498, 34.253090>,  <30.747593, 33.307663, 34.304646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.974743, 33.365498, 34.253090>,  <31.353327, 33.461887, 34.167164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.974743, 33.365498, 34.253090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258837, 0.168813, -0.951055,
		0.192912, -0.955738, -0.222146,
		-0.946461, -0.240970, 0.214815,
		30.690805, 33.293205, 34.317535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.169403, 32.849277, 33.735252>,  <31.353327, 33.461887, 34.167164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.169403, 32.849277, 33.735252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.860870, 33.073147, 33.856461>,  <30.675751, 33.207466, 33.929184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.860870, 33.073147, 33.856461>,  <31.169403, 32.849277, 33.735252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.860870, 33.073147, 33.856461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234443, 0.192780, -0.952823,
		-0.591682, -0.805982, -0.017486,
		-0.771329, 0.559669, 0.303021,
		30.629471, 33.241047, 33.947369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.503704, 32.623558, 33.396996>,  <31.169403, 32.849277, 33.735252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.503704, 32.623558, 33.396996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.519140, 33.015583, 33.474957>,  <30.528402, 33.250797, 33.521732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.519140, 33.015583, 33.474957>,  <30.503704, 32.623558, 33.396996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.519140, 33.015583, 33.474957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189233, 0.198684, -0.961621,
		-0.981174, 0.000226, 0.193127,
		0.038588, 0.980063, 0.194901,
		30.530716, 33.309601, 33.533428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.039169, 32.793781, 32.917580>,  <30.503704, 32.623558, 33.396996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.039169, 32.793781, 32.917580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.250895, 33.116482, 33.022629>,  <30.377930, 33.310104, 33.085659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.250895, 33.116482, 33.022629>,  <30.039169, 32.793781, 32.917580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.250895, 33.116482, 33.022629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100035, 0.366731, -0.924933,
		-0.842508, 0.463309, 0.274820,
		0.529315, 0.806754, 0.262627,
		30.409689, 33.358509, 33.101418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.628935, 33.424175, 32.719917>,  <30.039169, 32.793781, 32.917580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.628935, 33.424175, 32.719917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.022938, 33.488712, 32.744335>,  <30.259340, 33.527435, 32.758984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.022938, 33.488712, 32.744335>,  <29.628935, 33.424175, 32.719917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.022938, 33.488712, 32.744335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008034, 0.396379, -0.918052,
		-0.172313, 0.903800, 0.391733,
		0.985010, 0.161340, 0.061040,
		30.318441, 33.537113, 32.762646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.741747, 33.984142, 32.411461>,  <29.628935, 33.424175, 32.719917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.741747, 33.984142, 32.411461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.116407, 33.844097, 32.407322>,  <30.341204, 33.760071, 32.404839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.116407, 33.844097, 32.407322>,  <29.741747, 33.984142, 32.411461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.116407, 33.844097, 32.407322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148738, 0.424323, -0.893212,
		0.317119, 0.835087, 0.449517,
		0.936650, -0.350114, -0.010352,
		30.397402, 33.739063, 32.404217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.148251, 34.554516, 32.225826>,  <29.741747, 33.984142, 32.411461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.148251, 34.554516, 32.225826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.381514, 34.235043, 32.166443>,  <30.521471, 34.043358, 32.130814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.381514, 34.235043, 32.166443>,  <30.148251, 34.554516, 32.225826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.381514, 34.235043, 32.166443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336971, 0.404105, -0.850382,
		0.739173, 0.445883, 0.504789,
		0.583159, -0.798678, -0.148454,
		30.556461, 33.995438, 32.121906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.708494, 34.806702, 31.845163>,  <30.148251, 34.554516, 32.225826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.708494, 34.806702, 31.845163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.714445, 34.414631, 31.766144>,  <30.718016, 34.179386, 31.718731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.714445, 34.414631, 31.766144>,  <30.708494, 34.806702, 31.845163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.714445, 34.414631, 31.766144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265901, 0.194337, -0.944209,
		0.963885, -0.038481, 0.263522,
		0.014878, -0.980179, -0.197551,
		30.718908, 34.120579, 31.706879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.306856, 34.676170, 31.529789>,  <30.708494, 34.806702, 31.845163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.306856, 34.676170, 31.529789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.102808, 34.359356, 31.395649>,  <30.980379, 34.169266, 31.315165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.102808, 34.359356, 31.395649>,  <31.306856, 34.676170, 31.529789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.102808, 34.359356, 31.395649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423577, 0.107998, -0.899399,
		0.748572, -0.600847, 0.280396,
		-0.510119, -0.792035, -0.335350,
		30.949772, 34.121746, 31.295044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.797239, 34.255920, 31.055973>,  <31.306856, 34.676170, 31.529789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.797239, 34.255920, 31.055973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.418299, 34.160046, 30.971050>,  <31.190935, 34.102520, 30.920097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.418299, 34.160046, 30.971050>,  <31.797239, 34.255920, 31.055973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.418299, 34.160046, 30.971050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195421, 0.092430, -0.976354,
		0.253647, -0.966439, -0.040723,
		-0.947351, -0.239691, -0.212308,
		31.134094, 34.088139, 30.907358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.750753, 33.568382, 30.615246>,  <31.797239, 34.255920, 31.055973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.750753, 33.568382, 30.615246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.444969, 33.814678, 30.538858>,  <31.261499, 33.962456, 30.493027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.444969, 33.814678, 30.538858>,  <31.750753, 33.568382, 30.615246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.444969, 33.814678, 30.538858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315229, 0.098630, -0.943876,
		-0.562344, -0.781755, -0.269497,
		-0.764460, 0.615736, -0.190968,
		31.215631, 33.999397, 30.481567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.729733, 33.425636, 29.899662>,  <31.750753, 33.568382, 30.615246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.729733, 33.425636, 29.899662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.456167, 33.716179, 29.926994>,  <31.292028, 33.890503, 29.943394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.456167, 33.716179, 29.926994>,  <31.729733, 33.425636, 29.899662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.456167, 33.716179, 29.926994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133456, 0.216634, -0.967088,
		-0.717254, -0.652284, -0.245095,
		-0.683912, 0.726357, 0.068330,
		31.250994, 33.934086, 29.947493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.154070, 33.270699, 29.300625>,  <31.729733, 33.425636, 29.899662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.154070, 33.270699, 29.300625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.159437, 33.657028, 29.404171>,  <31.162657, 33.888824, 29.466299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.159437, 33.657028, 29.404171>,  <31.154070, 33.270699, 29.300625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.159437, 33.657028, 29.404171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116383, 0.255618, -0.959747,
		-0.993114, 0.043004, -0.108975,
		0.013417, 0.965821, 0.258863,
		31.163462, 33.946774, 29.481831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.626642, 33.724964, 28.846497>,  <31.154070, 33.270699, 29.300625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.626642, 33.724964, 28.846497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.904312, 33.980843, 28.978504>,  <31.070915, 34.134369, 29.057709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.904312, 33.980843, 28.978504>,  <30.626642, 33.724964, 28.846497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.904312, 33.980843, 28.978504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000857, 0.459221, -0.888321,
		-0.719805, 0.616369, 0.319329,
		0.694176, 0.639692, 0.330021,
		31.112564, 34.172749, 29.077511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.514057, 34.309563, 28.440222>,  <30.626642, 33.724964, 28.846497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.514057, 34.309563, 28.440222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.866879, 34.358646, 28.622177>,  <31.078571, 34.388096, 28.731350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.866879, 34.358646, 28.622177>,  <30.514057, 34.309563, 28.440222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.866879, 34.358646, 28.622177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325073, 0.540368, -0.776099,
		-0.341038, 0.832433, 0.436746,
		0.882055, 0.122705, 0.454888,
		31.131495, 34.395458, 28.758644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.611540, 34.999210, 28.460562>,  <30.514057, 34.309563, 28.440222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.611540, 34.999210, 28.460562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.976685, 34.842594, 28.506832>,  <31.195770, 34.748623, 28.534594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.976685, 34.842594, 28.506832>,  <30.611540, 34.999210, 28.460562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.976685, 34.842594, 28.506832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385331, 0.732623, -0.561055,
		0.134932, 0.556738, 0.819656,
		0.912860, -0.391544, 0.115674,
		31.250542, 34.725132, 28.541534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.162371, 35.509880, 28.810268>,  <30.611540, 34.999210, 28.460562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.162371, 35.509880, 28.810268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.332424, 35.227745, 28.583374>,  <31.434456, 35.058464, 28.447237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.332424, 35.227745, 28.583374>,  <31.162371, 35.509880, 28.810268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.332424, 35.227745, 28.583374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525591, 0.702584, -0.479719,
		0.736895, -0.094187, 0.669414,
		0.425136, -0.705340, -0.567234,
		31.459965, 35.016144, 28.413204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.672735, 35.842701, 28.621006>,  <31.162371, 35.509880, 28.810268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.672735, 35.842701, 28.621006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.665489, 35.549110, 28.349434>,  <31.661140, 35.372955, 28.186491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.665489, 35.549110, 28.349434>,  <31.672735, 35.842701, 28.621006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.665489, 35.549110, 28.349434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465363, 0.594818, -0.655461,
		0.884934, -0.327825, 0.330791,
		-0.018116, -0.733978, -0.678932,
		31.660055, 35.328918, 28.145754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.357727, 35.762363, 28.376026>,  <31.672735, 35.842701, 28.621006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.357727, 35.762363, 28.376026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.124249, 35.579758, 28.107430>,  <31.984161, 35.470196, 27.946272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.124249, 35.579758, 28.107430>,  <32.357727, 35.762363, 28.376026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.124249, 35.579758, 28.107430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447981, 0.508675, -0.735230,
		0.677210, -0.729965, -0.092403,
		-0.583695, -0.456511, -0.671490,
		31.949141, 35.442806, 27.905983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.896790, 35.560093, 27.754452>,  <32.357727, 35.762363, 28.376026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.896790, 35.560093, 27.754452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.526669, 35.539101, 27.604221>,  <32.304596, 35.526505, 27.514084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.526669, 35.539101, 27.604221>,  <32.896790, 35.560093, 27.754452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.526669, 35.539101, 27.604221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321729, 0.415638, -0.850726,
		0.200753, -0.908015, -0.367706,
		-0.925305, -0.052485, -0.375575,
		32.249077, 35.523354, 27.491549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.901493, 35.235916, 27.200686>,  <32.896790, 35.560093, 27.754452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.901493, 35.235916, 27.200686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.565281, 35.445370, 27.145100>,  <32.363552, 35.571041, 27.111748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.565281, 35.445370, 27.145100>,  <32.901493, 35.235916, 27.200686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.565281, 35.445370, 27.145100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363302, 0.354520, -0.861584,
		-0.401888, -0.774677, -0.488223,
		-0.840534, 0.523632, -0.138964,
		32.313122, 35.602459, 27.103411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.750065, 35.166473, 26.461967>,  <32.901493, 35.235916, 27.200686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.750065, 35.166473, 26.461967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.533649, 35.487366, 26.562927>,  <32.403801, 35.679901, 26.623503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.533649, 35.487366, 26.562927>,  <32.750065, 35.166473, 26.461967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.533649, 35.487366, 26.562927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352255, 0.488694, -0.798182,
		-0.763672, -0.342937, -0.546991,
		-0.541037, 0.802230, 0.252400,
		32.371338, 35.728035, 26.638647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.371056, 35.353512, 25.895203>,  <32.750065, 35.166473, 26.461967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.371056, 35.353512, 25.895203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.370171, 35.688816, 26.113306>,  <32.369640, 35.889999, 26.244169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.370171, 35.688816, 26.113306>,  <32.371056, 35.353512, 25.895203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.370171, 35.688816, 26.113306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367989, 0.507683, -0.779001,
		-0.929828, 0.198925, -0.309596,
		-0.002214, 0.838264, 0.545260,
		32.369507, 35.940296, 26.276884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.941927, 35.901825, 25.497040>,  <32.371056, 35.353512, 25.895203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.941927, 35.901825, 25.497040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.197441, 36.086761, 25.743032>,  <32.350750, 36.197723, 25.890627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.197441, 36.086761, 25.743032>,  <31.941927, 35.901825, 25.497040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.197441, 36.086761, 25.743032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227274, 0.650252, -0.724927,
		-0.735052, 0.602840, 0.310293,
		0.638784, 0.462337, 0.614979,
		32.389076, 36.225464, 25.927526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.947493, 36.582977, 25.216446>,  <31.941927, 35.901825, 25.497040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.947493, 36.582977, 25.216446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.264389, 36.594082, 25.460276>,  <32.454529, 36.600746, 25.606573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.264389, 36.594082, 25.460276>,  <31.947493, 36.582977, 25.216446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.264389, 36.594082, 25.460276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382285, 0.756047, -0.531273,
		-0.475617, 0.653928, 0.588359,
		0.792242, 0.027761, 0.609576,
		32.502060, 36.602409, 25.643148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.980255, 37.270199, 25.301407>,  <31.947493, 36.582977, 25.216446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.980255, 37.270199, 25.301407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.344707, 37.118401, 25.365685>,  <32.563377, 37.027321, 25.404251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.344707, 37.118401, 25.365685>,  <31.980255, 37.270199, 25.301407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.344707, 37.118401, 25.365685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391384, 0.674691, -0.625788,
		0.129062, 0.633070, 0.763260,
		0.911132, -0.379493, 0.160696,
		32.618046, 37.004551, 25.413893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.456455, 37.870567, 25.397833>,  <31.980255, 37.270199, 25.301407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.456455, 37.870567, 25.397833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.727154, 37.584805, 25.326677>,  <32.889572, 37.413349, 25.283985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.727154, 37.584805, 25.326677>,  <32.456455, 37.870567, 25.397833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.727154, 37.584805, 25.326677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519187, 0.634416, -0.572679,
		0.521978, 0.295200, 0.800247,
		0.676745, -0.714404, -0.177887,
		32.930176, 37.370483, 25.273312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.136948, 38.185341, 25.417686>,  <32.456455, 37.870567, 25.397833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.136948, 38.185341, 25.417686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.195251, 37.829487, 25.244570>,  <33.230232, 37.615974, 25.140699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.195251, 37.829487, 25.244570>,  <33.136948, 38.185341, 25.417686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.195251, 37.829487, 25.244570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716334, 0.396636, -0.574061,
		0.682364, -0.226349, 0.695087,
		0.145758, -0.889632, -0.432792,
		33.238979, 37.562595, 25.114733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.849564, 38.091206, 25.449617>,  <33.136948, 38.185341, 25.417686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.849564, 38.091206, 25.449617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.694778, 37.878853, 25.148043>,  <33.601910, 37.751442, 24.967098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.694778, 37.878853, 25.148043>,  <33.849564, 38.091206, 25.449617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.694778, 37.878853, 25.148043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580545, 0.494976, -0.646503,
		0.716400, -0.687866, 0.116667,
		-0.386960, -0.530885, -0.753938,
		33.578690, 37.719589, 24.921862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.429623, 38.032326, 25.055174>,  <33.849564, 38.091206, 25.449617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.429623, 38.032326, 25.055174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.109749, 37.978958, 24.821011>,  <33.917824, 37.946938, 24.680513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.109749, 37.978958, 24.821011>,  <34.429623, 38.032326, 25.055174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.109749, 37.978958, 24.821011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473254, 0.459963, -0.751309,
		0.369505, -0.877857, -0.304685,
		-0.799685, -0.133419, -0.585408,
		33.869843, 37.938931, 24.645388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.668171, 37.900509, 24.428442>,  <34.429623, 38.032326, 25.055174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.668171, 37.900509, 24.428442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.287479, 37.980148, 24.335007>,  <34.059063, 38.027931, 24.278946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.287479, 37.980148, 24.335007>,  <34.668171, 37.900509, 24.428442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.287479, 37.980148, 24.335007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292044, 0.353338, -0.888742,
		-0.094413, -0.914063, -0.394429,
		-0.951734, 0.199099, -0.233587,
		34.001961, 38.039879, 24.264931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.498940, 37.595745, 23.748898>,  <34.668171, 37.900509, 24.428442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.498940, 37.595745, 23.748898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.205231, 37.866596, 23.768238>,  <34.029003, 38.029106, 23.779842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.205231, 37.866596, 23.768238>,  <34.498940, 37.595745, 23.748898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.205231, 37.866596, 23.768238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136709, 0.217262, -0.966493,
		-0.664946, -0.703060, -0.252099,
		-0.734274, 0.677129, 0.048353,
		33.984947, 38.069736, 23.782743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.111332, 37.556705, 23.147072>,  <34.498940, 37.595745, 23.748898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.111332, 37.556705, 23.147072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.996838, 37.913807, 23.286243>,  <33.928143, 38.128067, 23.369745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.996838, 37.913807, 23.286243>,  <34.111332, 37.556705, 23.147072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.996838, 37.913807, 23.286243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002697, 0.362368, -0.932031,
		-0.958156, -0.267718, -0.101315,
		-0.286235, 0.892758, 0.347927,
		33.910969, 38.181633, 23.390621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.654839, 37.817326, 22.630440>,  <34.111332, 37.556705, 23.147072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.654839, 37.817326, 22.630440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.809772, 38.130821, 22.824646>,  <33.902733, 38.318920, 22.941170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.809772, 38.130821, 22.824646>,  <33.654839, 37.817326, 22.630440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.809772, 38.130821, 22.824646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113053, 0.482271, -0.868696,
		-0.914981, 0.391365, 0.098196,
		0.387335, 0.783740, 0.485514,
		33.925972, 38.365944, 22.970301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.363075, 38.282604, 22.270235>,  <33.654839, 37.817326, 22.630440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.363075, 38.282604, 22.270235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.687481, 38.423981, 22.456713>,  <33.882126, 38.508804, 22.568600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.687481, 38.423981, 22.456713>,  <33.363075, 38.282604, 22.270235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.687481, 38.423981, 22.456713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244915, 0.518567, -0.819210,
		-0.531293, 0.778569, 0.334003,
		0.811014, 0.353438, 0.466194,
		33.930786, 38.530014, 22.596571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.414127, 39.002808, 22.137444>,  <33.363075, 38.282604, 22.270235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.414127, 39.002808, 22.137444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.780743, 38.915497, 22.271500>,  <34.000710, 38.863110, 22.351933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.780743, 38.915497, 22.271500>,  <33.414127, 39.002808, 22.137444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.780743, 38.915497, 22.271500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399701, 0.529831, -0.748009,
		-0.014291, 0.819532, 0.572856,
		0.916534, -0.218281, 0.335140,
		34.055702, 38.850014, 22.372042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.914085, 39.623344, 22.278889>,  <33.414127, 39.002808, 22.137444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.914085, 39.623344, 22.278889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.161381, 39.317898, 22.204405>,  <34.309757, 39.134632, 22.159716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.161381, 39.317898, 22.204405>,  <33.914085, 39.623344, 22.278889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.161381, 39.317898, 22.204405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481742, 0.555332, -0.677887,
		0.621052, 0.329392, 0.711193,
		0.618239, -0.763614, -0.186208,
		34.346851, 39.088814, 22.148542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.560535, 40.090099, 22.187981>,  <33.914085, 39.623344, 22.278889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.560535, 40.090099, 22.187981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.617863, 39.720886, 22.045166>,  <34.652260, 39.499359, 21.959476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.617863, 39.720886, 22.045166>,  <34.560535, 40.090099, 22.187981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.617863, 39.720886, 22.045166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489143, 0.379683, -0.785226,
		0.860348, -0.062102, 0.505910,
		0.143322, -0.923030, -0.357036,
		34.660858, 39.443977, 21.938055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.288754, 40.010361, 22.089499>,  <34.560535, 40.090099, 22.187981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.288754, 40.010361, 22.089499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.115017, 39.735580, 21.856449>,  <35.010773, 39.570713, 21.716619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.115017, 39.735580, 21.856449>,  <35.288754, 40.010361, 22.089499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.115017, 39.735580, 21.856449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580487, 0.281115, -0.764205,
		0.688752, -0.670133, 0.276662,
		-0.434345, -0.686946, -0.582622,
		34.984715, 39.529495, 21.681662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.822166, 39.796238, 21.685055>,  <35.288754, 40.010361, 22.089499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.822166, 39.796238, 21.685055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.485268, 39.691624, 21.496496>,  <35.283127, 39.628857, 21.383362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.485268, 39.691624, 21.496496>,  <35.822166, 39.796238, 21.685055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.485268, 39.691624, 21.496496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357498, 0.383527, -0.851530,
		0.403492, -0.885726, -0.229531,
		-0.842253, -0.261529, -0.471395,
		35.232594, 39.613163, 21.355078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.071373, 39.632332, 21.169716>,  <35.822166, 39.796238, 21.685055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.071373, 39.632332, 21.169716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.689014, 39.680759, 21.062681>,  <35.459599, 39.709816, 20.998461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.689014, 39.680759, 21.062681>,  <36.071373, 39.632332, 21.169716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.689014, 39.680759, 21.062681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293596, 0.418353, -0.859524,
		0.007885, -0.900179, -0.435448,
		-0.955897, 0.121068, -0.267587,
		35.402245, 39.717079, 20.982405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.963852, 39.496845, 20.412857>,  <36.071373, 39.632332, 21.169716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.963852, 39.496845, 20.412857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.642143, 39.719604, 20.495811>,  <35.449120, 39.853260, 20.545584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.642143, 39.719604, 20.495811>,  <35.963852, 39.496845, 20.412857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.642143, 39.719604, 20.495811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092654, 0.462225, -0.881909,
		-0.586992, -0.690081, -0.423354,
		-0.804273, 0.556899, 0.207384,
		35.400860, 39.886673, 20.558027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.491024, 39.536995, 19.808428>,  <35.963852, 39.496845, 20.412857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.491024, 39.536995, 19.808428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.426800, 39.857395, 20.039122>,  <35.388264, 40.049633, 20.177538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.426800, 39.857395, 20.039122>,  <35.491024, 39.536995, 19.808428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.426800, 39.857395, 20.039122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071228, 0.592196, -0.802639,
		-0.984452, -0.087795, -0.152139,
		-0.160564, 0.800997, 0.576735,
		35.378632, 40.097694, 20.212143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.026314, 39.989407, 19.375263>,  <35.491024, 39.536995, 19.808428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.026314, 39.989407, 19.375263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.161404, 40.215538, 19.676287>,  <35.242458, 40.351215, 19.856901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.161404, 40.215538, 19.676287>,  <35.026314, 39.989407, 19.375263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.161404, 40.215538, 19.676287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118546, 0.818716, -0.561828,
		-0.933750, 0.100530, 0.343518,
		0.337724, 0.565329, 0.752559,
		35.262722, 40.385136, 19.902054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.600983, 40.712608, 19.361013>,  <35.026314, 39.989407, 19.375263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.600983, 40.712608, 19.361013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.921001, 40.776806, 19.592243>,  <35.113014, 40.815323, 19.730982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.921001, 40.776806, 19.592243>,  <34.600983, 40.712608, 19.361013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.921001, 40.776806, 19.592243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081220, 0.925710, -0.369412,
		-0.594416, 0.342497, 0.727575,
		0.800045, 0.160491, 0.578074,
		35.161015, 40.824955, 19.765665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.521271, 41.315250, 19.949379>,  <34.600983, 40.712608, 19.361013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.521271, 41.315250, 19.949379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.894337, 41.283455, 19.808630>,  <35.118176, 41.264378, 19.724180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.894337, 41.283455, 19.808630>,  <34.521271, 41.315250, 19.949379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.894337, 41.283455, 19.808630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022216, 0.960912, -0.275963,
		0.360054, 0.265198, 0.894445,
		0.932667, -0.079490, -0.351872,
		35.174137, 41.259609, 19.703068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.091118, 41.770401, 20.172306>,  <34.521271, 41.315250, 19.949379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.091118, 41.770401, 20.172306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.142052, 41.687210, 19.784382>,  <35.172611, 41.637295, 19.551628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.142052, 41.687210, 19.784382>,  <35.091118, 41.770401, 20.172306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.142052, 41.687210, 19.784382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042005, 0.978023, -0.204221,
		0.990969, -0.014732, 0.133276,
		0.127338, -0.207975, -0.969810,
		35.180252, 41.624817, 19.493439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.602722, 42.261402, 19.976307>,  <35.091118, 41.770401, 20.172306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.602722, 42.261402, 19.976307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.417458, 42.152328, 19.638996>,  <35.306297, 42.086884, 19.436609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.417458, 42.152328, 19.638996>,  <35.602722, 42.261402, 19.976307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.417458, 42.152328, 19.638996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061901, 0.939213, -0.337708,
		0.884107, -0.208615, -0.418132,
		-0.463166, -0.272687, -0.843278,
		35.278507, 42.070522, 19.386013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.812813, 42.599514, 19.370445>,  <35.602722, 42.261402, 19.976307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.812813, 42.599514, 19.370445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.418430, 42.542110, 19.404619>,  <35.181801, 42.507668, 19.425123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.418430, 42.542110, 19.404619>,  <35.812813, 42.599514, 19.370445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.418430, 42.542110, 19.404619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130864, 0.981647, 0.138721,
		-0.103774, 0.125592, -0.986640,
		-0.985954, -0.143512, 0.085434,
		35.122643, 42.499058, 19.430250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.896202, 43.365070, 18.995037>,  <35.812813, 42.599514, 19.370445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.896202, 43.365070, 18.995037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.993393, 43.363110, 19.383045>,  <36.051708, 43.361935, 19.615850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.993393, 43.363110, 19.383045>,  <35.896202, 43.365070, 18.995037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.993393, 43.363110, 19.383045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884115, 0.412569, -0.219381,
		-0.399126, 0.910913, 0.104577,
		0.242982, -0.004897, 0.970019,
		36.066288, 43.361641, 19.674051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.305393, 44.010708, 19.139858>,  <35.896202, 43.365070, 18.995037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.305393, 44.010708, 19.139858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.399101, 43.721619, 19.399948>,  <36.455326, 43.548164, 19.556002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.399101, 43.721619, 19.399948>,  <36.305393, 44.010708, 19.139858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.399101, 43.721619, 19.399948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966135, 0.247499, -0.072990,
		-0.108178, 0.645304, 0.756228,
		0.234266, -0.722722, 0.650225,
		36.469379, 43.504803, 19.595015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.747253, 44.221111, 19.701698>,  <36.305393, 44.010708, 19.139858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.747253, 44.221111, 19.701698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.849297, 43.846657, 19.604893>,  <36.910522, 43.621983, 19.546810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.849297, 43.846657, 19.604893>,  <36.747253, 44.221111, 19.701698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.849297, 43.846657, 19.604893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953461, 0.285157, -0.097964,
		0.160719, -0.205758, 0.965315,
		0.255110, -0.936135, -0.242012,
		36.925831, 43.565815, 19.532290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.189697, 43.981564, 20.160639>,  <36.747253, 44.221111, 19.701698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.189697, 43.981564, 20.160639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.250355, 43.800747, 19.809032>,  <37.286751, 43.692257, 19.598068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.250355, 43.800747, 19.809032>,  <37.189697, 43.981564, 20.160639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.250355, 43.800747, 19.809032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972987, 0.224880, 0.052208,
		0.174072, -0.863186, 0.473928,
		0.151643, -0.452038, -0.879014,
		37.295849, 43.665134, 19.545328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.997601, 43.298481, 20.611755>,  <37.189697, 43.981564, 20.160639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.997601, 43.298481, 20.611755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.727592, 43.443535, 20.354742>,  <36.565590, 43.530567, 20.200535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.727592, 43.443535, 20.354742>,  <36.997601, 43.298481, 20.611755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.727592, 43.443535, 20.354742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733034, -0.428496, 0.528255,
		-0.083756, 0.827577, 0.555068,
		-0.675016, 0.362639, -0.642531,
		36.525089, 43.552326, 20.161983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.351944, 43.477245, 20.981339>,  <36.997601, 43.298481, 20.611755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.351944, 43.477245, 20.981339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.272110, 43.424587, 20.592939>,  <36.224209, 43.392994, 20.359900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.272110, 43.424587, 20.592939>,  <36.351944, 43.477245, 20.981339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.272110, 43.424587, 20.592939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788549, -0.566668, 0.238911,
		-0.581683, 0.813363, 0.009295,
		-0.199588, -0.131641, -0.970997,
		36.212234, 43.385094, 20.301640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.816257, 43.449425, 21.628244>,  <36.351944, 43.477245, 20.981339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.816257, 43.449425, 21.628244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.692028, 43.090080, 21.503996>,  <36.617489, 42.874474, 21.429447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.692028, 43.090080, 21.503996>,  <36.816257, 43.449425, 21.628244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.692028, 43.090080, 21.503996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331647, -0.203833, 0.921120,
		-0.890815, 0.389096, -0.234634,
		-0.310578, -0.898363, -0.310620,
		36.598854, 42.820572, 21.410810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.154495, 43.419453, 21.917645>,  <36.816257, 43.449425, 21.628244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.154495, 43.419453, 21.917645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.281651, 43.048958, 21.836615>,  <36.357944, 42.826660, 21.787996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.281651, 43.048958, 21.836615>,  <36.154495, 43.419453, 21.917645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.281651, 43.048958, 21.836615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402386, -0.325260, 0.855740,
		-0.858504, -0.190520, -0.476101,
		0.317893, -0.926233, -0.202575,
		36.377018, 42.771088, 21.775843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.618557, 43.009758, 22.073376>,  <36.154495, 43.419453, 21.917645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.618557, 43.009758, 22.073376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.951008, 42.788975, 22.100414>,  <36.150478, 42.656506, 22.116638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.951008, 42.788975, 22.100414>,  <35.618557, 43.009758, 22.073376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.951008, 42.788975, 22.100414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287353, -0.322227, 0.901997,
		-0.476081, -0.769100, -0.426418,
		0.831129, -0.551956, 0.067597,
		36.200348, 42.623386, 22.120693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.348553, 42.345493, 22.409300>,  <35.618557, 43.009758, 22.073376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.348553, 42.345493, 22.409300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.748039, 42.337280, 22.427809>,  <35.987732, 42.332352, 22.438915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.748039, 42.337280, 22.427809>,  <35.348553, 42.345493, 22.409300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.748039, 42.337280, 22.427809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049862, -0.557217, 0.828869,
		0.008762, -0.830113, -0.557526,
		0.998718, -0.020537, 0.046273,
		36.047653, 42.331120, 22.441690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.451214, 41.713348, 22.802357>,  <35.348553, 42.345493, 22.409300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.451214, 41.713348, 22.802357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.794495, 41.917850, 22.820694>,  <36.000465, 42.040550, 22.831696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.794495, 41.917850, 22.820694>,  <35.451214, 41.713348, 22.802357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.794495, 41.917850, 22.820694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245066, -0.486564, 0.838569,
		0.451027, -0.708432, -0.542863,
		0.858206, 0.511254, 0.045841,
		36.051956, 42.071228, 22.834446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.020649, 41.232254, 22.980970>,  <35.451214, 41.713348, 22.802357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.020649, 41.232254, 22.980970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.161938, 41.586590, 23.101320>,  <36.246712, 41.799191, 23.173531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.161938, 41.586590, 23.101320>,  <36.020649, 41.232254, 22.980970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.161938, 41.586590, 23.101320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360307, -0.425604, 0.830084,
		0.863375, -0.184793, -0.469505,
		0.353217, 0.885840, 0.300874,
		36.267902, 41.852341, 23.191582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.635479, 41.091457, 23.252539>,  <36.020649, 41.232254, 22.980970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.635479, 41.091457, 23.252539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.513973, 41.437347, 23.412527>,  <36.441071, 41.644882, 23.508520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.513973, 41.437347, 23.412527>,  <36.635479, 41.091457, 23.252539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.513973, 41.437347, 23.412527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068280, -0.398972, 0.914417,
		0.950299, 0.305073, 0.062148,
		-0.303760, 0.864726, 0.399973,
		36.422844, 41.696766, 23.532518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.967319, 41.142849, 23.914532>,  <36.635479, 41.091457, 23.252539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.967319, 41.142849, 23.914532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.657406, 41.394032, 23.943878>,  <36.471458, 41.544739, 23.961487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.657406, 41.394032, 23.943878>,  <36.967319, 41.142849, 23.914532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.657406, 41.394032, 23.943878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114179, -0.253116, 0.960675,
		0.621829, 0.735940, 0.267809,
		-0.774785, 0.627953, 0.073366,
		36.424969, 41.582417, 23.965887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.086441, 41.347515, 24.561911>,  <36.967319, 41.142849, 23.914532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.086441, 41.347515, 24.561911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.715267, 41.463753, 24.468529>,  <36.492565, 41.533493, 24.412498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.715267, 41.463753, 24.468529>,  <37.086441, 41.347515, 24.561911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.715267, 41.463753, 24.468529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305966, -0.236051, 0.922315,
		0.212909, 0.927274, 0.307950,
		-0.927930, 0.290591, -0.233456,
		36.436890, 41.550930, 24.398491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.893158, 41.894150, 25.019718>,  <37.086441, 41.347515, 24.561911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.893158, 41.894150, 25.019718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.563686, 41.715496, 24.879963>,  <36.366005, 41.608303, 24.796110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.563686, 41.715496, 24.879963>,  <36.893158, 41.894150, 25.019718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.563686, 41.715496, 24.879963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183876, -0.372483, 0.909640,
		-0.536415, 0.813497, 0.224682,
		-0.823680, -0.446631, -0.349388,
		36.316582, 41.581505, 24.775146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.295353, 42.018871, 25.567631>,  <36.893158, 41.894150, 25.019718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.295353, 42.018871, 25.567631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.147984, 41.747776, 25.313091>,  <36.059563, 41.585117, 25.160368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.147984, 41.747776, 25.313091>,  <36.295353, 42.018871, 25.567631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.147984, 41.747776, 25.313091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316403, -0.552221, 0.771324,
		-0.874159, 0.485515, -0.010988,
		-0.368422, -0.677737, -0.636348,
		36.037457, 41.544456, 25.122187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.574440, 41.881447, 25.763842>,  <36.295353, 42.018871, 25.567631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.574440, 41.881447, 25.763842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.684334, 41.550594, 25.567730>,  <35.750271, 41.352081, 25.450062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.684334, 41.550594, 25.567730>,  <35.574440, 41.881447, 25.763842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.684334, 41.550594, 25.567730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348412, -0.560885, 0.751011,
		-0.896176, -0.035506, -0.442275,
		0.274731, -0.827132, -0.490281,
		35.766754, 41.302456, 25.420647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.954205, 41.430779, 25.820351>,  <35.574440, 41.881447, 25.763842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.954205, 41.430779, 25.820351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.271938, 41.204678, 25.731339>,  <35.462578, 41.069019, 25.677931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.271938, 41.204678, 25.731339>,  <34.954205, 41.430779, 25.820351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.271938, 41.204678, 25.731339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234824, -0.623556, 0.745678,
		-0.560250, -0.540068, -0.628050,
		0.794341, -0.565248, -0.222526,
		35.510239, 41.035103, 25.664579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.663654, 40.796150, 25.682655>,  <34.954205, 41.430779, 25.820351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.663654, 40.796150, 25.682655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.046524, 40.712997, 25.763248>,  <35.276245, 40.663105, 25.811604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.046524, 40.712997, 25.763248>,  <34.663654, 40.796150, 25.682655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.046524, 40.712997, 25.763248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286032, -0.786452, 0.547430,
		0.044656, -0.581619, -0.812235,
		0.957179, -0.207879, 0.201482,
		35.333679, 40.650635, 25.823692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.746460, 40.061714, 25.494623>,  <34.663654, 40.796150, 25.682655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.746460, 40.061714, 25.494623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.019379, 40.185925, 25.759363>,  <35.183128, 40.260452, 25.918207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.019379, 40.185925, 25.759363>,  <34.746460, 40.061714, 25.494623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.019379, 40.185925, 25.759363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225086, -0.772108, 0.594294,
		0.695565, -0.554457, -0.456910,
		0.682294, 0.310525, 0.661852,
		35.224068, 40.279083, 25.957918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.139095, 39.483021, 25.663734>,  <34.746460, 40.061714, 25.494623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.139095, 39.483021, 25.663734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.153179, 39.736298, 25.973011>,  <35.161629, 39.888264, 26.158577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.153179, 39.736298, 25.973011>,  <35.139095, 39.483021, 25.663734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.153179, 39.736298, 25.973011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230739, -0.747617, 0.622759,
		0.972378, -0.200331, 0.119781,
		0.035208, 0.633195, 0.773191,
		35.163742, 39.926254, 26.204967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.411430, 39.130234, 26.195465>,  <35.139095, 39.483021, 25.663734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.411430, 39.130234, 26.195465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.303696, 39.443920, 26.419062>,  <35.239056, 39.632130, 26.553219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.303696, 39.443920, 26.419062>,  <35.411430, 39.130234, 26.195465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.303696, 39.443920, 26.419062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232966, -0.616253, 0.752302,
		0.934445, 0.072394, 0.348672,
		-0.269333, 0.784214, 0.558989,
		35.222897, 39.679184, 26.586758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.691578, 38.986973, 26.923012>,  <35.411430, 39.130234, 26.195465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.691578, 38.986973, 26.923012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.416393, 39.271797, 26.979130>,  <35.251282, 39.442692, 27.012800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.416393, 39.271797, 26.979130>,  <35.691578, 38.986973, 26.923012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.416393, 39.271797, 26.979130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313736, -0.466102, 0.827236,
		0.654434, 0.525088, 0.544058,
		-0.687958, 0.712062, 0.140293,
		35.210007, 39.485416, 27.021217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.785324, 39.205276, 27.571562>,  <35.691578, 38.986973, 26.923012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.785324, 39.205276, 27.571562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.422844, 39.358444, 27.499807>,  <35.205357, 39.450344, 27.456755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.422844, 39.358444, 27.499807>,  <35.785324, 39.205276, 27.571562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.422844, 39.358444, 27.499807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305762, -0.300339, 0.903496,
		0.292088, 0.873596, 0.389248,
		-0.906198, 0.382918, -0.179387,
		35.150986, 39.473320, 27.445992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.626209, 39.546467, 28.186134>,  <35.785324, 39.205276, 27.571562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.626209, 39.546467, 28.186134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.281132, 39.455284, 28.005556>,  <35.074085, 39.400574, 27.897209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.281132, 39.455284, 28.005556>,  <35.626209, 39.546467, 28.186134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.281132, 39.455284, 28.005556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389493, -0.269912, 0.880592,
		-0.322587, 0.935513, 0.144063,
		-0.862689, -0.227956, -0.451446,
		35.022324, 39.386898, 27.870123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.104187, 39.911091, 28.548513>,  <35.626209, 39.546467, 28.186134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.104187, 39.911091, 28.548513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.906597, 39.628357, 28.345980>,  <34.788044, 39.458717, 28.224459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.906597, 39.628357, 28.345980>,  <35.104187, 39.911091, 28.548513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.906597, 39.628357, 28.345980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566413, -0.180224, 0.804174,
		-0.659673, 0.684033, -0.311336,
		-0.493971, -0.706837, -0.506334,
		34.758408, 39.416306, 28.194080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.363514, 39.983261, 28.633657>,  <35.104187, 39.911091, 28.548513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.363514, 39.983261, 28.633657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.376019, 39.603306, 28.509251>,  <34.383522, 39.375332, 28.434607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.376019, 39.603306, 28.509251>,  <34.363514, 39.983261, 28.633657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.376019, 39.603306, 28.509251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431777, -0.293469, 0.852903,
		-0.901439, 0.107630, -0.419313,
		0.031257, -0.949890, -0.311017,
		34.385395, 39.318340, 28.415945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.685963, 39.731361, 28.728794>,  <34.363514, 39.983261, 28.633657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.685963, 39.731361, 28.728794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.915703, 39.403938, 28.725183>,  <34.053547, 39.207485, 28.723017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.915703, 39.403938, 28.725183>,  <33.685963, 39.731361, 28.728794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.915703, 39.403938, 28.725183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521605, -0.374447, 0.766627,
		-0.630908, -0.435607, -0.642029,
		0.574354, -0.818557, -0.009026,
		34.088009, 39.158371, 28.722475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.213562, 39.111862, 28.687086>,  <33.685963, 39.731361, 28.728794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.213562, 39.111862, 28.687086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.572784, 38.997929, 28.821167>,  <33.788319, 38.929569, 28.901615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.572784, 38.997929, 28.821167>,  <33.213562, 39.111862, 28.687086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.572784, 38.997929, 28.821167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427434, -0.385120, 0.817914,
		-0.103878, -0.877811, -0.467609,
		0.898059, -0.284835, 0.335201,
		33.842201, 38.912479, 28.921728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.976006, 38.504730, 29.104025>,  <33.213562, 39.111862, 28.687086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.976006, 38.504730, 29.104025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.359356, 38.539848, 29.212698>,  <33.589367, 38.560917, 29.277901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.359356, 38.539848, 29.212698>,  <32.976006, 38.504730, 29.104025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.359356, 38.539848, 29.212698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213029, -0.413680, 0.885148,
		0.190097, -0.906180, -0.377758,
		0.958375, 0.087791, 0.271682,
		33.646870, 38.566185, 29.294203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.183907, 37.927567, 29.306601>,  <32.976006, 38.504730, 29.104025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.183907, 37.927567, 29.306601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.459755, 38.163074, 29.475258>,  <33.625263, 38.304379, 29.576452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.459755, 38.163074, 29.475258>,  <33.183907, 37.927567, 29.306601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.459755, 38.163074, 29.475258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263556, -0.338259, 0.903393,
		0.674513, -0.734121, -0.078095,
		0.689616, 0.588768, 0.421642,
		33.666641, 38.339706, 29.601751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.513374, 37.558971, 29.854858>,  <33.183907, 37.927567, 29.306601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.513374, 37.558971, 29.854858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.635040, 37.927959, 29.949970>,  <33.708038, 38.149353, 30.007038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.635040, 37.927959, 29.949970>,  <33.513374, 37.558971, 29.854858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.635040, 37.927959, 29.949970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251276, -0.163075, 0.954079,
		0.918882, -0.349947, 0.182191,
		0.304166, 0.922466, 0.237780,
		33.726292, 38.204700, 30.021305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.996037, 37.446304, 30.505514>,  <33.513374, 37.558971, 29.854858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.996037, 37.446304, 30.505514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.852562, 37.819611, 30.497887>,  <33.766476, 38.043594, 30.493311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.852562, 37.819611, 30.497887>,  <33.996037, 37.446304, 30.505514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.852562, 37.819611, 30.497887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282115, -0.088910, 0.955252,
		0.889805, 0.348018, 0.295179,
		-0.358689, 0.933262, -0.019069,
		33.744957, 38.099590, 30.492167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.294785, 37.679344, 30.970675>,  <33.996037, 37.446304, 30.505514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.294785, 37.679344, 30.970675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.948257, 37.873863, 30.925056>,  <33.740341, 37.990574, 30.897686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.948257, 37.873863, 30.925056>,  <34.294785, 37.679344, 30.970675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.948257, 37.873863, 30.925056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263707, -0.251386, 0.931270,
		0.424206, 0.836850, 0.346020,
		-0.866318, 0.486299, -0.114043,
		33.688362, 38.019753, 30.890844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.059471, 37.839046, 31.710854>,  <34.294785, 37.679344, 30.970675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.059471, 37.839046, 31.710854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.734867, 37.921234, 31.492043>,  <33.540104, 37.970547, 31.360756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.734867, 37.921234, 31.492043>,  <34.059471, 37.839046, 31.710854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.734867, 37.921234, 31.492043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582282, -0.205762, 0.786517,
		0.049044, 0.956789, 0.286616,
		-0.811506, 0.205466, -0.547030,
		33.491417, 37.982872, 31.327934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.710693, 38.091511, 32.271454>,  <34.059471, 37.839046, 31.710854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.710693, 38.091511, 32.271454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.463650, 37.986725, 31.974823>,  <33.315426, 37.923855, 31.796844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.463650, 37.986725, 31.974823>,  <33.710693, 38.091511, 32.271454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.463650, 37.986725, 31.974823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557743, -0.518912, 0.647807,
		-0.554515, 0.813699, 0.174375,
		-0.617605, -0.261963, -0.741579,
		33.278370, 37.908134, 31.752350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.116013, 38.099159, 32.675728>,  <33.710693, 38.091511, 32.271454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.116013, 38.099159, 32.675728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.026810, 37.903851, 32.338242>,  <32.973289, 37.786663, 32.135750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.026810, 37.903851, 32.338242>,  <33.116013, 38.099159, 32.675728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.026810, 37.903851, 32.338242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639339, -0.580103, 0.504704,
		-0.735877, 0.651971, -0.182808,
		-0.223005, -0.488276, -0.843715,
		32.959908, 37.757366, 32.085129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.317665, 38.242046, 32.724651>,  <33.116013, 38.099159, 32.675728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.317665, 38.242046, 32.724651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.446236, 37.918221, 32.528164>,  <32.523376, 37.723927, 32.410271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.446236, 37.918221, 32.528164>,  <32.317665, 38.242046, 32.724651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.446236, 37.918221, 32.528164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656760, -0.564290, 0.500243,
		-0.682167, 0.161820, -0.713066,
		0.321426, -0.809562, -0.491217,
		32.542664, 37.675350, 32.380798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.727289, 37.832417, 32.621201>,  <32.317665, 38.242046, 32.724651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.727289, 37.832417, 32.621201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.016964, 37.573864, 32.525078>,  <32.190769, 37.418732, 32.467403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.016964, 37.573864, 32.525078>,  <31.727289, 37.832417, 32.621201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.016964, 37.573864, 32.525078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458632, -0.711678, 0.532138,
		-0.514984, -0.275155, -0.811838,
		0.724188, -0.646378, -0.240308,
		32.234219, 37.379951, 32.452984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.412397, 37.146496, 32.392033>,  <31.727289, 37.832417, 32.621201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.412397, 37.146496, 32.392033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.786982, 37.068802, 32.508869>,  <32.011730, 37.022186, 32.578972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.786982, 37.068802, 32.508869>,  <31.412397, 37.146496, 32.392033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.786982, 37.068802, 32.508869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332085, -0.759100, 0.559898,
		0.112971, -0.621320, -0.775370,
		0.936460, -0.194237, 0.292088,
		32.067921, 37.010532, 32.596497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.480328, 36.351067, 32.351624>,  <31.412397, 37.146496, 32.392033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.480328, 36.351067, 32.351624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.768099, 36.496761, 32.588184>,  <31.940762, 36.584179, 32.730122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.768099, 36.496761, 32.588184>,  <31.480328, 36.351067, 32.351624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.768099, 36.496761, 32.588184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073779, -0.806572, 0.586514,
		0.690635, -0.465588, -0.553399,
		0.719430, 0.364238, 0.591398,
		31.983929, 36.606033, 32.765602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.848053, 35.792095, 32.472946>,  <31.480328, 36.351067, 32.351624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.848053, 35.792095, 32.472946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.989302, 36.027519, 32.763847>,  <32.074051, 36.168774, 32.938389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.989302, 36.027519, 32.763847>,  <31.848053, 35.792095, 32.472946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.989302, 36.027519, 32.763847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229457, -0.808073, 0.542556,
		0.907003, -0.024714, -0.420398,
		0.353121, 0.588564, 0.727254,
		32.095238, 36.204090, 32.982025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.494225, 35.476494, 32.752563>,  <31.848053, 35.792095, 32.472946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.494225, 35.476494, 32.752563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.411125, 35.738022, 33.043591>,  <32.361267, 35.894939, 33.218208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.411125, 35.738022, 33.043591>,  <32.494225, 35.476494, 32.752563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.411125, 35.738022, 33.043591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240378, -0.686869, 0.685878,
		0.948188, 0.317380, -0.014472,
		-0.207744, 0.653820, 0.727572,
		32.348801, 35.934170, 33.261864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.102821, 35.517433, 33.206081>,  <32.494225, 35.476494, 32.752563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.102821, 35.517433, 33.206081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.768288, 35.618927, 33.400467>,  <32.567566, 35.679825, 33.517097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.768288, 35.618927, 33.400467>,  <33.102821, 35.517433, 33.206081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.768288, 35.618927, 33.400467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263410, -0.591427, 0.762121,
		0.480790, 0.765397, 0.427795,
		-0.836335, 0.253735, 0.485966,
		32.517387, 35.695049, 33.546257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.686649, 35.733150, 33.735271>,  <33.102821, 35.517433, 33.206081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.686649, 35.733150, 33.735271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.010426, 35.590767, 33.922077>,  <34.204689, 35.505337, 34.034161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.010426, 35.590767, 33.922077>,  <33.686649, 35.733150, 33.735271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.010426, 35.590767, 33.922077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587041, 0.509451, -0.629160,
		-0.013969, 0.783424, 0.621330,
		0.809437, -0.355958, 0.467019,
		34.253258, 35.483978, 34.062183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.111336, 36.283833, 33.735828>,  <33.686649, 35.733150, 33.735271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.111336, 36.283833, 33.735828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.334049, 35.953854, 33.774738>,  <34.467678, 35.755867, 33.798084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.334049, 35.953854, 33.774738>,  <34.111336, 36.283833, 33.735828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.334049, 35.953854, 33.774738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703103, 0.405681, -0.584011,
		0.442314, 0.393561, 0.805896,
		0.556781, -0.824944, 0.097275,
		34.501083, 35.706371, 33.803921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.731503, 36.559521, 33.669159>,  <34.111336, 36.283833, 33.735828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.731503, 36.559521, 33.669159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.805481, 36.168530, 33.628506>,  <34.849869, 35.933933, 33.604115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.805481, 36.168530, 33.628506>,  <34.731503, 36.559521, 33.669159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.805481, 36.168530, 33.628506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701335, 0.203722, -0.683101,
		0.688422, 0.055053, 0.723218,
		0.184942, -0.977480, -0.101636,
		34.860962, 35.875286, 33.598015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.443054, 36.511528, 33.806076>,  <34.731503, 36.559521, 33.669159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.443054, 36.511528, 33.806076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.337433, 36.180775, 33.607468>,  <35.274059, 35.982323, 33.488300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.337433, 36.180775, 33.607468>,  <35.443054, 36.511528, 33.806076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.337433, 36.180775, 33.607468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819277, 0.079370, -0.567878,
		0.508979, -0.556741, 0.656491,
		-0.264056, -0.826886, -0.496523,
		35.258217, 35.932709, 33.458511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.034523, 36.203964, 33.662754>,  <35.443054, 36.511528, 33.806076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.034523, 36.203964, 33.662754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.785362, 36.051193, 33.389660>,  <35.635864, 35.959530, 33.225803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.785362, 36.051193, 33.389660>,  <36.034523, 36.203964, 33.662754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.785362, 36.051193, 33.389660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700796, 0.115439, -0.703959,
		0.347677, -0.916953, 0.195747,
		-0.622901, -0.381929, -0.682733,
		35.598492, 35.936615, 33.184841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.511383, 35.797249, 33.281925>,  <36.034523, 36.203964, 33.662754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.511383, 35.797249, 33.281925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.186451, 35.851707, 33.055092>,  <35.991489, 35.884380, 32.918991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.186451, 35.851707, 33.055092>,  <36.511383, 35.797249, 33.281925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.186451, 35.851707, 33.055092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576527, 0.040866, -0.816055,
		-0.087927, -0.989846, -0.111687,
		-0.812333, 0.136144, -0.567080,
		35.942753, 35.892551, 32.884968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.634499, 35.381523, 32.693115>,  <36.511383, 35.797249, 33.281925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.634499, 35.381523, 32.693115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.354076, 35.635494, 32.563267>,  <36.185822, 35.787876, 32.485359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.354076, 35.635494, 32.563267>,  <36.634499, 35.381523, 32.693115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.354076, 35.635494, 32.563267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462495, 0.058341, -0.884700,
		-0.542785, -0.770362, -0.334553,
		-0.701058, 0.634932, -0.324622,
		36.143761, 35.825974, 32.465881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.346973, 35.189419, 32.025349>,  <36.634499, 35.381523, 32.693115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.346973, 35.189419, 32.025349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.294765, 35.584469, 32.060143>,  <36.263439, 35.821499, 32.081020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.294765, 35.584469, 32.060143>,  <36.346973, 35.189419, 32.025349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.294765, 35.584469, 32.060143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507332, 0.141915, -0.849985,
		-0.851809, -0.066811, -0.519575,
		-0.130523, 0.987622, 0.086989,
		36.255608, 35.880756, 32.086239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.158543, 35.473816, 31.315140>,  <36.346973, 35.189419, 32.025349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.158543, 35.473816, 31.315140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.293144, 35.773876, 31.542835>,  <36.373905, 35.953915, 31.679453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.293144, 35.773876, 31.542835>,  <36.158543, 35.473816, 31.315140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.293144, 35.773876, 31.542835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387402, 0.440689, -0.809761,
		-0.858303, 0.493013, -0.142317,
		0.336505, 0.750154, 0.569239,
		36.394096, 35.998924, 31.713608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.910358, 35.944611, 30.831856>,  <36.158543, 35.473816, 31.315140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.910358, 35.944611, 30.831856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.181885, 36.083832, 31.090488>,  <36.344799, 36.167366, 31.245668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.181885, 36.083832, 31.090488>,  <35.910358, 35.944611, 30.831856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.181885, 36.083832, 31.090488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403024, 0.559464, -0.724273,
		-0.613824, 0.752236, 0.239500,
		0.678816, 0.348052, 0.646582,
		36.385529, 36.188248, 31.284464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.955101, 36.595764, 30.723196>,  <35.910358, 35.944611, 30.831856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.955101, 36.595764, 30.723196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.302761, 36.569069, 30.919203>,  <36.511356, 36.553051, 31.036808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.302761, 36.569069, 30.919203>,  <35.955101, 36.595764, 30.723196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.302761, 36.569069, 30.919203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391264, 0.698811, -0.598812,
		-0.302465, 0.712186, 0.633487,
		0.869153, -0.066741, 0.490019,
		36.563507, 36.549046, 31.066208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.175880, 37.226395, 30.760246>,  <35.955101, 36.595764, 30.723196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.175880, 37.226395, 30.760246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.520184, 37.038383, 30.838390>,  <36.726765, 36.925579, 30.885277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.520184, 37.038383, 30.838390>,  <36.175880, 37.226395, 30.760246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.520184, 37.038383, 30.838390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484233, 0.637870, -0.598865,
		0.156868, 0.610080, 0.776656,
		0.860762, -0.470026, 0.195359,
		36.778412, 36.897377, 30.896997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.731678, 37.724697, 30.886335>,  <36.175880, 37.226395, 30.760246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.731678, 37.724697, 30.886335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.941154, 37.401257, 30.779074>,  <37.066841, 37.207191, 30.714716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.941154, 37.401257, 30.779074>,  <36.731678, 37.724697, 30.886335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.941154, 37.401257, 30.779074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596384, 0.572751, -0.562390,
		0.608337, 0.134596, 0.782183,
		0.523691, -0.808604, -0.268154,
		37.098263, 37.158676, 30.698627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.450047, 37.955227, 30.889008>,  <36.731678, 37.724697, 30.886335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.450047, 37.955227, 30.889008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.418755, 37.643250, 30.640633>,  <37.399979, 37.456062, 30.491608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.418755, 37.643250, 30.640633>,  <37.450047, 37.955227, 30.889008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.418755, 37.643250, 30.640633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461821, 0.523635, -0.715910,
		0.883516, -0.342769, 0.319231,
		-0.078231, -0.779946, -0.620938,
		37.395287, 37.409267, 30.454351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.928333, 38.197090, 30.514650>,  <37.450047, 37.955227, 30.889008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.928333, 38.197090, 30.514650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.770630, 37.894199, 30.306353>,  <37.676010, 37.712467, 30.181374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.770630, 37.894199, 30.306353>,  <37.928333, 38.197090, 30.514650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.770630, 37.894199, 30.306353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213596, 0.475620, -0.853325,
		0.893834, -0.447657, -0.025776,
		-0.394256, -0.757225, -0.520743,
		37.652351, 37.667030, 30.150129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.438210, 38.020752, 29.905956>,  <37.928333, 38.197090, 30.514650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.438210, 38.020752, 29.905956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.065109, 37.914364, 29.808596>,  <37.841251, 37.850533, 29.750179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.065109, 37.914364, 29.808596>,  <38.438210, 38.020752, 29.905956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.065109, 37.914364, 29.808596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014644, 0.646611, -0.762679,
		0.360236, -0.714951, -0.599230,
		-0.932746, -0.265969, -0.243402,
		37.785286, 37.834572, 29.735575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.387218, 37.890556, 29.146086>,  <38.438210, 38.020752, 29.905956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.387218, 37.890556, 29.146086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.995384, 37.938175, 29.210882>,  <37.760284, 37.966747, 29.249760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.995384, 37.938175, 29.210882>,  <38.387218, 37.890556, 29.146086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.995384, 37.938175, 29.210882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065634, 0.572269, -0.817435,
		-0.190014, -0.811379, -0.552773,
		-0.979585, 0.119044, 0.161993,
		37.701508, 37.973888, 29.259480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.079166, 37.620193, 28.592249>,  <38.387218, 37.890556, 29.146086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.079166, 37.620193, 28.592249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.864460, 37.898922, 28.782541>,  <37.735638, 38.066158, 28.896717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.864460, 37.898922, 28.782541>,  <38.079166, 37.620193, 28.592249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.864460, 37.898922, 28.782541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079355, 0.519648, -0.850688,
		-0.839993, -0.494369, -0.223632,
		-0.536764, 0.696825, 0.475731,
		37.703430, 38.107971, 28.925261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.461540, 37.717606, 28.180372>,  <38.079166, 37.620193, 28.592249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.461540, 37.717606, 28.180372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.482956, 38.040791, 28.415092>,  <37.495808, 38.234699, 28.555923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.482956, 38.040791, 28.415092>,  <37.461540, 37.717606, 28.180372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.482956, 38.040791, 28.415092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172085, 0.586316, -0.791594,
		-0.983626, -0.058596, 0.170430,
		0.053542, 0.807961, 0.586799,
		37.499020, 38.283180, 28.591133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.984348, 37.990658, 27.827860>,  <37.461540, 37.717606, 28.180372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.984348, 37.990658, 27.827860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.190655, 38.245949, 28.056473>,  <37.314438, 38.399124, 28.193640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.190655, 38.245949, 28.056473>,  <36.984348, 37.990658, 27.827860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.190655, 38.245949, 28.056473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062370, 0.637368, -0.768031,
		-0.854457, 0.431770, 0.288925,
		0.515764, 0.638230, 0.571533,
		37.345383, 38.437416, 28.227932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.626781, 38.609806, 27.709654>,  <36.984348, 37.990658, 27.827860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.626781, 38.609806, 27.709654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.006992, 38.645885, 27.828556>,  <37.235119, 38.667534, 27.899899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.006992, 38.645885, 27.828556>,  <36.626781, 38.609806, 27.709654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.006992, 38.645885, 27.828556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197056, 0.564667, -0.801448,
		-0.240137, 0.820375, 0.518959,
		0.950528, 0.090194, 0.297258,
		37.292152, 38.672943, 27.917734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.894119, 39.307060, 27.670771>,  <36.626781, 38.609806, 27.709654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.894119, 39.307060, 27.670771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.167152, 39.022175, 27.605242>,  <37.330971, 38.851242, 27.565926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.167152, 39.022175, 27.605242>,  <36.894119, 39.307060, 27.670771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.167152, 39.022175, 27.605242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253147, 0.440708, -0.861216,
		0.685566, 0.546379, 0.481113,
		0.682580, -0.712213, -0.163820,
		37.371925, 38.808510, 27.556095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.450825, 39.649395, 27.504591>,  <36.894119, 39.307060, 27.670771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.450825, 39.649395, 27.504591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.476662, 39.279812, 27.353790>,  <37.492165, 39.058064, 27.263309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.476662, 39.279812, 27.353790>,  <37.450825, 39.649395, 27.504591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.476662, 39.279812, 27.353790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363097, 0.373654, -0.853547,
		0.929510, -0.081759, 0.359620,
		0.064588, -0.923958, -0.377002,
		37.496037, 39.002625, 27.240690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.173893, 39.587597, 27.356861>,  <37.450825, 39.649395, 27.504591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.173893, 39.587597, 27.356861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.966305, 39.327808, 27.134563>,  <37.841751, 39.171936, 27.001184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.966305, 39.327808, 27.134563>,  <38.173893, 39.587597, 27.356861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.966305, 39.327808, 27.134563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363409, 0.420830, -0.831165,
		0.773694, -0.633314, 0.017626,
		-0.518971, -0.649473, -0.555746,
		37.810612, 39.132965, 26.967840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.612469, 39.580513, 26.768764>,  <38.173893, 39.587597, 27.356861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.612469, 39.580513, 26.768764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.284184, 39.395592, 26.634474>,  <38.087212, 39.284641, 26.553900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.284184, 39.395592, 26.634474>,  <38.612469, 39.580513, 26.768764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.284184, 39.395592, 26.634474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214078, 0.295974, -0.930897,
		0.529721, -0.835869, -0.143941,
		-0.820711, -0.462301, -0.335725,
		38.037971, 39.256901, 26.533756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.748009, 39.194473, 26.195047>,  <38.612469, 39.580513, 26.768764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.748009, 39.194473, 26.195047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.361130, 39.288616, 26.156797>,  <38.129002, 39.345100, 26.133848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.361130, 39.288616, 26.156797>,  <38.748009, 39.194473, 26.195047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.361130, 39.288616, 26.156797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146933, 0.211205, -0.966335,
		-0.207236, -0.948683, -0.238858,
		-0.967194, 0.235356, -0.095624,
		38.070972, 39.359222, 26.128111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.652554, 38.848991, 25.563766>,  <38.748009, 39.194473, 26.195047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.652554, 38.848991, 25.563766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.364521, 39.122131, 25.613077>,  <38.191700, 39.286015, 25.642664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.364521, 39.122131, 25.613077>,  <38.652554, 38.848991, 25.563766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.364521, 39.122131, 25.613077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114263, 0.291926, -0.949591,
		-0.684414, -0.669700, -0.288236,
		-0.720085, 0.682848, 0.123277,
		38.148495, 39.326984, 25.650061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.155685, 38.670639, 25.095201>,  <38.652554, 38.848991, 25.563766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.155685, 38.670639, 25.095201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.087563, 39.056217, 25.176981>,  <38.046688, 39.287563, 25.226049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.087563, 39.056217, 25.176981>,  <38.155685, 38.670639, 25.095201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.087563, 39.056217, 25.176981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042595, 0.214487, -0.975797,
		-0.984469, -0.157481, -0.077589,
		-0.170311, 0.963948, 0.204448,
		38.036469, 39.345402, 25.238316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698734, 38.881687, 24.677378>,  <38.155685, 38.670639, 25.095201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.698734, 38.881687, 24.677378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.828308, 39.246403, 24.778343>,  <37.906052, 39.465233, 24.838923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.828308, 39.246403, 24.778343>,  <37.698734, 38.881687, 24.677378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.828308, 39.246403, 24.778343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042654, 0.252454, -0.966669,
		-0.945117, 0.323906, 0.042888,
		0.323937, 0.911785, 0.252414,
		37.925488, 39.519939, 24.854067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.375904, 39.439857, 24.239115>,  <37.698734, 38.881687, 24.677378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.375904, 39.439857, 24.239115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.704041, 39.635483, 24.357676>,  <37.900921, 39.752857, 24.428812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.704041, 39.635483, 24.357676>,  <37.375904, 39.439857, 24.239115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.704041, 39.635483, 24.357676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172603, 0.282385, -0.943646,
		-0.545203, 0.825272, 0.147238,
		0.820342, 0.489065, 0.296401,
		37.950142, 39.782204, 24.446596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.289871, 40.202812, 24.070387>,  <37.375904, 39.439857, 24.239115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.289871, 40.202812, 24.070387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.679550, 40.116718, 24.097567>,  <37.913357, 40.065060, 24.113874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.679550, 40.116718, 24.097567>,  <37.289871, 40.202812, 24.070387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.679550, 40.116718, 24.097567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137929, 0.329419, -0.934055,
		0.178659, 0.919324, 0.350606,
		0.974195, -0.215236, 0.067948,
		37.971809, 40.052147, 24.117950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.576599, 40.724892, 23.719746>,  <37.289871, 40.202812, 24.070387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.576599, 40.724892, 23.719746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.898075, 40.489338, 23.753912>,  <38.090961, 40.348007, 23.774412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.898075, 40.489338, 23.753912>,  <37.576599, 40.724892, 23.719746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.898075, 40.489338, 23.753912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258609, 0.216391, -0.941433,
		0.535910, 0.778712, 0.326203,
		0.803692, -0.588883, 0.085416,
		38.139183, 40.312672, 23.779537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.182098, 41.077461, 23.468105>,  <37.576599, 40.724892, 23.719746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.182098, 41.077461, 23.468105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.287376, 40.692551, 23.440542>,  <38.350544, 40.461605, 23.424004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.287376, 40.692551, 23.440542>,  <38.182098, 41.077461, 23.468105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.287376, 40.692551, 23.440542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340424, 0.159469, -0.926651,
		0.902684, 0.220433, 0.369554,
		0.263197, -0.962278, -0.068909,
		38.366337, 40.403866, 23.419870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.878799, 41.043564, 23.203884>,  <38.182098, 41.077461, 23.468105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.878799, 41.043564, 23.203884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.707829, 40.698116, 23.096954>,  <38.605244, 40.490849, 23.032797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.707829, 40.698116, 23.096954>,  <38.878799, 41.043564, 23.203884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.707829, 40.698116, 23.096954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343319, 0.118484, -0.931716,
		0.836322, -0.490021, 0.245854,
		-0.427431, -0.863621, -0.267324,
		38.579597, 40.439030, 23.016758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.340672, 40.848717, 22.798994>,  <38.878799, 41.043564, 23.203884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.340672, 40.848717, 22.798994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.061935, 40.571278, 22.725965>,  <38.894695, 40.404816, 22.682148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.061935, 40.571278, 22.725965>,  <39.340672, 40.848717, 22.798994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.061935, 40.571278, 22.725965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314955, -0.067225, -0.946723,
		0.644373, -0.717217, 0.265298,
		-0.696841, -0.693599, -0.182573,
		38.852882, 40.363197, 22.671194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.650017, 40.319386, 22.532597>,  <39.340672, 40.848717, 22.798994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.650017, 40.319386, 22.532597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.271339, 40.269386, 22.413845>,  <39.044132, 40.239388, 22.342594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.271339, 40.269386, 22.413845>,  <39.650017, 40.319386, 22.532597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.271339, 40.269386, 22.413845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298338, 0.007330, -0.954432,
		0.121482, -0.992130, 0.030354,
		-0.946698, -0.125002, -0.296881,
		38.987331, 40.231888, 22.324781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.546101, 39.703560, 22.108345>,  <39.650017, 40.319386, 22.532597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.546101, 39.703560, 22.108345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.266399, 39.976654, 22.023565>,  <39.098579, 40.140511, 21.972698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.266399, 39.976654, 22.023565>,  <39.546101, 39.703560, 22.108345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.266399, 39.976654, 22.023565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324162, 0.038571, -0.945215,
		-0.637154, -0.729650, -0.248287,
		-0.699252, 0.682733, -0.211949,
		39.056625, 40.181473, 21.959980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.290451, 39.560314, 21.502090>,  <39.546101, 39.703560, 22.108345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.290451, 39.560314, 21.502090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.253551, 39.958115, 21.521931>,  <39.231411, 40.196793, 21.533834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.253551, 39.958115, 21.521931>,  <39.290451, 39.560314, 21.502090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.253551, 39.958115, 21.521931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352175, 0.079183, -0.932579,
		-0.931377, -0.068564, -0.357542,
		-0.092252, 0.994499, 0.049603,
		39.225876, 40.256466, 21.536812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.706779, 38.943443, 21.271790>,  <39.290451, 39.560314, 21.502090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.706779, 38.943443, 21.271790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.919437, 38.656307, 21.091982>,  <40.047031, 38.484028, 20.984098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.919437, 38.656307, 21.091982>,  <39.706779, 38.943443, 21.271790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.919437, 38.656307, 21.091982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129762, -0.455438, 0.880760,
		-0.836971, -0.526578, -0.148981,
		0.531640, -0.717838, -0.449518,
		40.078930, 38.440956, 20.957127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.317799, 38.288967, 21.508200>,  <39.706779, 38.943443, 21.271790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.317799, 38.288967, 21.508200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.693153, 38.206459, 21.397287>,  <39.918365, 38.156956, 21.330740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.693153, 38.206459, 21.397287>,  <39.317799, 38.288967, 21.508200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.693153, 38.206459, 21.397287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114354, -0.571820, 0.812370,
		-0.326121, -0.794025, -0.513000,
		0.938386, -0.206267, -0.277282,
		39.974670, 38.144577, 21.314102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.425495, 37.563122, 21.691126>,  <39.317799, 38.288967, 21.508200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.425495, 37.563122, 21.691126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.799168, 37.700504, 21.652441>,  <40.023369, 37.782932, 21.629230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.799168, 37.700504, 21.652441>,  <39.425495, 37.563122, 21.691126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.799168, 37.700504, 21.652441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282886, -0.547724, 0.787384,
		0.217460, -0.762914, -0.608829,
		0.934177, 0.343454, -0.096710,
		40.079422, 37.803539, 21.623428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.910633, 36.966015, 21.747530>,  <39.425495, 37.563122, 21.691126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.910633, 36.966015, 21.747530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.148075, 37.279388, 21.821138>,  <40.290539, 37.467415, 21.865303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.148075, 37.279388, 21.821138>,  <39.910633, 36.966015, 21.747530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.148075, 37.279388, 21.821138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367857, -0.467525, 0.803805,
		0.715765, -0.409446, -0.565716,
		0.593601, 0.783437, 0.184021,
		40.326157, 37.514420, 21.876345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.583057, 36.763794, 21.778131>,  <39.910633, 36.966015, 21.747530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.583057, 36.763794, 21.778131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.595226, 37.093796, 22.003857>,  <40.602528, 37.291798, 22.139292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.595226, 37.093796, 22.003857>,  <40.583057, 36.763794, 21.778131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.595226, 37.093796, 22.003857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198183, -0.558344, 0.805590,
		0.979693, 0.087331, -0.180485,
		0.030420, 0.825000, 0.564313,
		40.604351, 37.341297, 22.173151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.119572, 36.684353, 22.196075>,  <40.583057, 36.763794, 21.778131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.119572, 36.684353, 22.196075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.878738, 36.947495, 22.377058>,  <40.734238, 37.105381, 22.485647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.878738, 36.947495, 22.377058>,  <41.119572, 36.684353, 22.196075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.878738, 36.947495, 22.377058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199399, -0.424834, 0.883038,
		0.773133, 0.621883, 0.124610,
		-0.602085, 0.657859, 0.452456,
		40.698112, 37.144852, 22.512794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.506042, 36.682640, 22.829500>,  <41.119572, 36.684353, 22.196075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.506042, 36.682640, 22.829500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.174316, 36.888378, 22.916840>,  <40.975281, 37.011822, 22.969242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.174316, 36.888378, 22.916840>,  <41.506042, 36.682640, 22.829500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.174316, 36.888378, 22.916840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057334, -0.310369, 0.948886,
		0.555826, 0.799448, 0.227905,
		-0.829319, 0.514349, 0.218347,
		40.925522, 37.042683, 22.982344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.608337, 37.036255, 23.422697>,  <41.506042, 36.682640, 22.829500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.608337, 37.036255, 23.422697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.214573, 36.975868, 23.386589>,  <40.978313, 36.939636, 23.364923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.214573, 36.975868, 23.386589>,  <41.608337, 37.036255, 23.422697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.214573, 36.975868, 23.386589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027187, -0.376432, 0.926045,
		-0.173786, 0.914061, 0.366458,
		-0.984408, -0.150971, -0.090269,
		40.919250, 36.930576, 23.359509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.204849, 37.292576, 24.056747>,  <41.608337, 37.036255, 23.422697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.204849, 37.292576, 24.056747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.952003, 37.027981, 23.895319>,  <40.800297, 36.869225, 23.798462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.952003, 37.027981, 23.895319>,  <41.204849, 37.292576, 24.056747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.952003, 37.027981, 23.895319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207523, -0.357277, 0.910652,
		-0.746569, 0.659387, 0.088567,
		-0.632115, -0.661485, -0.403569,
		40.762367, 36.829536, 23.774248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.514137, 37.330128, 24.406622>,  <41.204849, 37.292576, 24.056747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.514137, 37.330128, 24.406622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.460869, 36.991520, 24.200447>,  <40.428909, 36.788357, 24.076742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.460869, 36.991520, 24.200447>,  <40.514137, 37.330128, 24.406622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.460869, 36.991520, 24.200447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380036, -0.436701, 0.815392,
		-0.915335, 0.304469, -0.263553,
		-0.133168, -0.846517, -0.515437,
		40.420918, 36.737564, 24.045816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.816212, 37.133659, 24.544771>,  <40.514137, 37.330128, 24.406622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.816212, 37.133659, 24.544771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.014778, 36.794521, 24.470232>,  <40.133919, 36.591038, 24.425508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.014778, 36.794521, 24.470232>,  <39.816212, 37.133659, 24.544771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.014778, 36.794521, 24.470232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399525, -0.413719, 0.818057,
		-0.770684, -0.331645, -0.544112,
		0.496414, -0.847849, -0.186346,
		40.163704, 36.540165, 24.414328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.299770, 36.599819, 24.597454>,  <39.816212, 37.133659, 24.544771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.299770, 36.599819, 24.597454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.659767, 36.434574, 24.653101>,  <39.875767, 36.335426, 24.686489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.659767, 36.434574, 24.653101>,  <39.299770, 36.599819, 24.597454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.659767, 36.434574, 24.653101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324553, -0.421984, 0.846519,
		-0.291004, -0.807011, -0.513859,
		0.899990, -0.413114, 0.139119,
		39.929764, 36.310638, 24.694838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.115612, 35.979607, 24.907459>,  <39.299770, 36.599819, 24.597454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.115612, 35.979607, 24.907459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.505390, 36.038670, 24.975159>,  <39.739258, 36.074108, 25.015779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.505390, 36.038670, 24.975159>,  <39.115612, 35.979607, 24.907459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.505390, 36.038670, 24.975159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071464, -0.510557, 0.856869,
		0.212934, -0.847071, -0.486960,
		0.974450, 0.147656, 0.169250,
		39.797726, 36.082966, 25.025934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.408272, 35.312038, 25.114613>,  <39.115612, 35.979607, 24.907459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.408272, 35.312038, 25.114613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.670074, 35.581261, 25.252373>,  <39.827156, 35.742794, 25.335030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.670074, 35.581261, 25.252373>,  <39.408272, 35.312038, 25.114613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.670074, 35.581261, 25.252373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038400, -0.425346, 0.904216,
		0.755077, -0.605044, -0.252549,
		0.654511, 0.673054, 0.344403,
		39.866428, 35.783176, 25.355694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.923306, 34.915459, 25.511751>,  <39.408272, 35.312038, 25.114613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.923306, 34.915459, 25.511751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.937164, 35.289326, 25.653284>,  <39.945480, 35.513645, 25.738203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.937164, 35.289326, 25.653284>,  <39.923306, 34.915459, 25.511751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.937164, 35.289326, 25.653284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129100, -0.355265, 0.925808,
		0.991026, 0.013602, -0.132975,
		0.034649, 0.934667, 0.353833,
		39.947559, 35.569725, 25.759434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.588116, 34.980579, 26.030571>,  <39.923306, 34.915459, 25.511751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.588116, 34.980579, 26.030571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.319092, 35.263191, 26.118643>,  <40.157677, 35.432758, 26.171486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.319092, 35.263191, 26.118643>,  <40.588116, 34.980579, 26.030571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.319092, 35.263191, 26.118643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025794, -0.274959, 0.961110,
		0.739594, 0.652082, 0.166701,
		-0.672558, 0.706532, 0.220178,
		40.117325, 35.475151, 26.184696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.725994, 35.252850, 26.743727>,  <40.588116, 34.980579, 26.030571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.725994, 35.252850, 26.743727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.368519, 35.430019, 26.715025>,  <40.154034, 35.536320, 26.697803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.368519, 35.430019, 26.715025>,  <40.725994, 35.252850, 26.743727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.368519, 35.430019, 26.715025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001199, 0.157557, 0.987509,
		0.448695, 0.882607, -0.140275,
		-0.893684, 0.442922, -0.071753,
		40.100414, 35.562897, 26.693499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.558060, 35.654209, 27.390800>,  <40.725994, 35.252850, 26.743727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.558060, 35.654209, 27.390800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.189796, 35.652451, 27.234661>,  <39.968838, 35.651394, 27.140978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.189796, 35.652451, 27.234661>,  <40.558060, 35.654209, 27.390800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.189796, 35.652451, 27.234661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388948, 0.095693, 0.916276,
		0.033326, 0.995401, -0.089810,
		-0.920657, -0.004396, -0.390348,
		39.913601, 35.651131, 27.117558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.182503, 36.260426, 27.611273>,  <40.558060, 35.654209, 27.390800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.182503, 36.260426, 27.611273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.905945, 35.982113, 27.533443>,  <39.740009, 35.815125, 27.486746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.905945, 35.982113, 27.533443>,  <40.182503, 36.260426, 27.611273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.905945, 35.982113, 27.533443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292865, 0.023715, 0.955860,
		-0.660454, 0.717863, -0.220166,
		-0.691398, -0.695781, -0.194574,
		39.698524, 35.773380, 27.475071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.659252, 36.478645, 28.009136>,  <40.182503, 36.260426, 27.611273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.659252, 36.478645, 28.009136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.610279, 36.089798, 27.929148>,  <39.580894, 35.856487, 27.881155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.610279, 36.089798, 27.929148>,  <39.659252, 36.478645, 28.009136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.610279, 36.089798, 27.929148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414156, -0.133062, 0.900427,
		-0.901934, 0.193063, -0.386318,
		-0.122434, -0.972122, -0.199972,
		39.573547, 35.798161, 27.869156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.078922, 36.340878, 28.328270>,  <39.659252, 36.478645, 28.009136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.078922, 36.340878, 28.328270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.178432, 35.954407, 28.301107>,  <39.238136, 35.722523, 28.284809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.178432, 35.954407, 28.301107>,  <39.078922, 36.340878, 28.328270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.178432, 35.954407, 28.301107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627536, -0.214189, 0.748547,
		-0.737775, -0.143602, -0.659595,
		0.248771, -0.966179, -0.067908,
		39.253063, 35.664555, 28.280735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.459000, 36.007454, 28.507847>,  <39.078922, 36.340878, 28.328270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.459000, 36.007454, 28.507847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.719631, 35.707268, 28.552111>,  <38.876011, 35.527157, 28.578669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.719631, 35.707268, 28.552111>,  <38.459000, 36.007454, 28.507847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.719631, 35.707268, 28.552111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499731, -0.314896, 0.806913,
		-0.570716, -0.581066, -0.580212,
		0.651577, -0.750468, 0.110660,
		38.915104, 35.482128, 28.585308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.114185, 35.338707, 28.541637>,  <38.459000, 36.007454, 28.507847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.114185, 35.338707, 28.541637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.468224, 35.284130, 28.719624>,  <38.680645, 35.251385, 28.826414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.468224, 35.284130, 28.719624>,  <38.114185, 35.338707, 28.541637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.468224, 35.284130, 28.719624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456533, -0.440380, 0.773074,
		0.090475, -0.887384, -0.452067,
		0.885094, -0.136440, 0.444963,
		38.733753, 35.243198, 28.853113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.013718, 34.745712, 28.975557>,  <38.114185, 35.338707, 28.541637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.013718, 34.745712, 28.975557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.351955, 34.905327, 29.117395>,  <38.554897, 35.001095, 29.202497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.351955, 34.905327, 29.117395>,  <38.013718, 34.745712, 28.975557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.351955, 34.905327, 29.117395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143784, -0.469455, 0.871171,
		0.514091, -0.787645, -0.339596,
		0.845598, 0.399033, 0.354594,
		38.605637, 35.025036, 29.223774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.564762, 34.152458, 29.223890>,  <38.013718, 34.745712, 28.975557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.564762, 34.152458, 29.223890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.639397, 34.492229, 29.421337>,  <38.684177, 34.696091, 29.539804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.639397, 34.492229, 29.421337>,  <38.564762, 34.152458, 29.223890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.639397, 34.492229, 29.421337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138569, -0.474663, 0.869191,
		0.972617, -0.230579, 0.029138,
		0.186587, 0.849428, 0.493617,
		38.695374, 34.747059, 29.569422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.919823, 33.906303, 29.737463>,  <38.564762, 34.152458, 29.223890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.919823, 33.906303, 29.737463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.785179, 34.268322, 29.841450>,  <38.704391, 34.485535, 29.903843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.785179, 34.268322, 29.841450>,  <38.919823, 33.906303, 29.737463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.785179, 34.268322, 29.841450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295281, -0.363605, 0.883516,
		0.894149, 0.220636, 0.389636,
		-0.336609, 0.905047, 0.259968,
		38.684196, 34.539837, 29.919439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.183598, 34.040848, 30.364380>,  <38.919823, 33.906303, 29.737463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.183598, 34.040848, 30.364380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.926186, 34.342075, 30.419167>,  <38.771740, 34.522812, 30.452040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.926186, 34.342075, 30.419167>,  <39.183598, 34.040848, 30.364380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.926186, 34.342075, 30.419167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001911, -0.177364, 0.984143,
		0.765420, 0.633586, 0.112700,
		-0.643528, 0.753068, 0.136969,
		38.733128, 34.567997, 30.460257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.479923, 34.547203, 30.823357>,  <39.183598, 34.040848, 30.364380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.479923, 34.547203, 30.823357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.080059, 34.537758, 30.827789>,  <38.840141, 34.532093, 30.830448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.080059, 34.537758, 30.827789>,  <39.479923, 34.547203, 30.823357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.080059, 34.537758, 30.827789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017261, -0.280363, 0.959739,
		-0.019554, 0.959604, 0.280675,
		-0.999660, -0.023611, 0.011081,
		38.780163, 34.530674, 30.831114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.337757, 34.707802, 31.436266>,  <39.479923, 34.547203, 30.823357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.337757, 34.707802, 31.436266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.986263, 34.553913, 31.323259>,  <38.775368, 34.461578, 31.255455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.986263, 34.553913, 31.323259>,  <39.337757, 34.707802, 31.436266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.986263, 34.553913, 31.323259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224223, -0.189799, 0.955877,
		-0.421367, 0.903309, 0.080520,
		-0.878734, -0.384720, -0.282517,
		38.722645, 34.438496, 31.238504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.843571, 34.981327, 31.950142>,  <39.337757, 34.707802, 31.436266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.843571, 34.981327, 31.950142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.656361, 34.660595, 31.801537>,  <38.544037, 34.468155, 31.712374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.656361, 34.660595, 31.801537>,  <38.843571, 34.981327, 31.950142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.656361, 34.660595, 31.801537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254864, -0.280063, 0.925532,
		-0.846167, 0.527854, -0.073282,
		-0.468022, -0.801832, -0.371511,
		38.515953, 34.420044, 31.690083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.170967, 35.056873, 32.173237>,  <38.843571, 34.981327, 31.950142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.170967, 35.056873, 32.173237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.227913, 34.671700, 32.081593>,  <38.262081, 34.440598, 32.026608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.227913, 34.671700, 32.081593>,  <38.170967, 35.056873, 32.173237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.227913, 34.671700, 32.081593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310994, -0.263263, 0.913223,
		-0.939688, -0.058763, -0.336947,
		0.142369, -0.962933, -0.229110,
		38.270622, 34.382820, 32.012859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.530674, 34.646347, 32.342312>,  <38.170967, 35.056873, 32.173237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.530674, 34.646347, 32.342312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.823345, 34.373730, 32.337475>,  <37.998947, 34.210159, 32.334572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.823345, 34.373730, 32.337475>,  <37.530674, 34.646347, 32.342312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.823345, 34.373730, 32.337475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269293, -0.305309, 0.913383,
		-0.626204, -0.665043, -0.406923,
		0.731676, -0.681545, -0.012094,
		38.042847, 34.169266, 32.333847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.138729, 34.132561, 32.515991>,  <37.530674, 34.646347, 32.342312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.138729, 34.132561, 32.515991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.517162, 34.017078, 32.574753>,  <37.744221, 33.947788, 32.610012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.517162, 34.017078, 32.574753>,  <37.138729, 34.132561, 32.515991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.517162, 34.017078, 32.574753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281147, -0.506576, 0.815069,
		-0.160891, -0.812424, -0.560430,
		0.946081, -0.288700, 0.146907,
		37.800987, 33.930470, 32.618824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.046932, 33.433701, 32.586044>,  <37.138729, 34.132561, 32.515991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.046932, 33.433701, 32.586044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.391174, 33.500393, 32.778526>,  <37.597721, 33.540409, 32.894016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.391174, 33.500393, 32.778526>,  <37.046932, 33.433701, 32.586044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.391174, 33.500393, 32.778526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268584, -0.654205, 0.707021,
		0.432685, -0.737711, -0.518233,
		0.860608, 0.166728, 0.481202,
		37.649357, 33.550411, 32.922886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.276798, 32.817898, 32.837799>,  <37.046932, 33.433701, 32.586044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.276798, 32.817898, 32.837799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.504215, 33.053055, 33.067982>,  <37.640663, 33.194149, 33.206093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.504215, 33.053055, 33.067982>,  <37.276798, 32.817898, 32.837799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.504215, 33.053055, 33.067982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063387, -0.666124, 0.743142,
		0.820210, -0.458983, -0.341454,
		0.568540, 0.587889, 0.575455,
		37.674778, 33.229420, 33.240620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.876457, 32.426117, 33.119907>,  <37.276798, 32.817898, 32.837799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.876457, 32.426117, 33.119907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.814407, 32.726173, 33.377037>,  <37.777176, 32.906208, 33.531315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.814407, 32.726173, 33.377037>,  <37.876457, 32.426117, 33.119907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.814407, 32.726173, 33.377037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024600, -0.653433, 0.756585,
		0.987588, 0.101554, 0.119819,
		-0.155127, 0.750142, 0.642824,
		37.767868, 32.951218, 33.569885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.181450, 32.150139, 33.649994>,  <37.876457, 32.426117, 33.119907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.181450, 32.150139, 33.649994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.992805, 32.455990, 33.825687>,  <37.879620, 32.639500, 33.931103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.992805, 32.455990, 33.825687>,  <38.181450, 32.150139, 33.649994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.992805, 32.455990, 33.825687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034283, -0.513627, 0.857328,
		0.881140, 0.389268, 0.268446,
		-0.471611, 0.764629, 0.439232,
		37.851322, 32.685379, 33.957458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.449181, 32.226276, 34.395672>,  <38.181450, 32.150139, 33.649994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.449181, 32.226276, 34.395672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.096542, 32.415028, 34.400139>,  <37.884960, 32.528278, 34.402817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.096542, 32.415028, 34.400139>,  <38.449181, 32.226276, 34.395672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.096542, 32.415028, 34.400139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128309, -0.262346, 0.956405,
		0.454232, 0.841730, 0.291829,
		-0.881595, 0.471874, 0.011165,
		37.832066, 32.556591, 34.403488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.299423, 32.379864, 35.187923>,  <38.449181, 32.226276, 34.395672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.299423, 32.379864, 35.187923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.958393, 32.444286, 34.989056>,  <37.753777, 32.482941, 34.869736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.958393, 32.444286, 34.989056>,  <38.299423, 32.379864, 35.187923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.958393, 32.444286, 34.989056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520580, -0.345404, 0.780828,
		-0.045970, 0.924531, 0.378324,
		-0.852574, 0.161053, -0.497171,
		37.702621, 32.492603, 34.839905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.022842, 32.180450, 34.832527>,  <38.299423, 32.379864, 35.187923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.022842, 32.180450, 34.832527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.326519, 31.921471, 34.859184>,  <39.508724, 31.766083, 34.875179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.326519, 31.921471, 34.859184>,  <39.022842, 32.180450, 34.832527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.326519, 31.921471, 34.859184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053950, 0.164630, 0.984879,
		-0.648629, -0.744116, 0.159915,
		0.759191, -0.647448, 0.066639,
		39.554276, 31.727236, 34.879177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.935341, 31.491421, 35.317539>,  <39.022842, 32.180450, 34.832527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.935341, 31.491421, 35.317539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.326233, 31.569977, 35.285404>,  <39.560768, 31.617109, 35.266125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.326233, 31.569977, 35.285404>,  <38.935341, 31.491421, 35.317539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.326233, 31.569977, 35.285404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070187, 0.058117, 0.995839,
		0.200243, -0.978802, 0.043009,
		0.977229, 0.196391, -0.080337,
		39.619400, 31.628893, 35.261303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.315487, 31.013664, 35.709862>,  <38.935341, 31.491421, 35.317539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.315487, 31.013664, 35.709862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.580063, 31.309742, 35.661518>,  <39.738808, 31.487389, 35.632511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.580063, 31.309742, 35.661518>,  <39.315487, 31.013664, 35.709862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.580063, 31.309742, 35.661518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208692, -0.026870, 0.977612,
		0.720376, -0.671856, -0.172246,
		0.661443, 0.740194, -0.120855,
		39.778496, 31.531799, 35.625263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.942616, 30.738098, 36.055099>,  <39.315487, 31.013664, 35.709862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.942616, 30.738098, 36.055099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.995186, 31.134266, 36.038147>,  <40.026730, 31.371967, 36.027977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.995186, 31.134266, 36.038147>,  <39.942616, 30.738098, 36.055099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.995186, 31.134266, 36.038147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335590, -0.004225, 0.941998,
		0.932795, -0.138026, -0.332931,
		0.131428, 0.990419, -0.042379,
		40.034615, 31.431393, 36.025433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.637222, 30.906401, 36.156681>,  <39.942616, 30.738098, 36.055099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.637222, 30.906401, 36.156681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.393810, 31.202293, 36.271568>,  <40.247765, 31.379829, 36.340500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.393810, 31.202293, 36.271568>,  <40.637222, 30.906401, 36.156681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.393810, 31.202293, 36.271568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344170, -0.080092, 0.935485,
		0.715010, 0.668120, -0.205854,
		-0.608529, 0.739730, 0.287213,
		40.211250, 31.424213, 36.357731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.105167, 31.317249, 36.556782>,  <40.637222, 30.906401, 36.156681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.105167, 31.317249, 36.556782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.755867, 31.480686, 36.662979>,  <40.546288, 31.578749, 36.726700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.755867, 31.480686, 36.662979>,  <41.105167, 31.317249, 36.556782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.755867, 31.480686, 36.662979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342512, 0.127162, 0.930868,
		0.346584, 0.903816, -0.250992,
		-0.873250, 0.408591, 0.265495,
		40.493893, 31.603264, 36.742626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.346596, 31.697052, 37.076500>,  <41.105167, 31.317249, 36.556782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.346596, 31.697052, 37.076500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.949772, 31.716969, 37.122681>,  <40.711678, 31.728918, 37.150391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.949772, 31.716969, 37.122681>,  <41.346596, 31.697052, 37.076500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.949772, 31.716969, 37.122681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115927, 0.006775, 0.993235,
		0.048672, 0.998737, -0.012493,
		-0.992064, 0.049791, 0.115451,
		40.652153, 31.731905, 37.157314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.221088, 32.320919, 37.368771>,  <41.346596, 31.697052, 37.076500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.221088, 32.320919, 37.368771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.925720, 32.063972, 37.450844>,  <40.748497, 31.909805, 37.500088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.925720, 32.063972, 37.450844>,  <41.221088, 32.320919, 37.368771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.925720, 32.063972, 37.450844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068238, 0.231532, 0.970431,
		-0.670875, 0.730591, -0.127135,
		-0.738424, -0.642363, 0.205183,
		40.704193, 31.871264, 37.512398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.760288, 32.639458, 37.899319>,  <41.221088, 32.320919, 37.368771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.760288, 32.639458, 37.899319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.752625, 32.239643, 37.908825>,  <40.748028, 31.999756, 37.914528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.752625, 32.239643, 37.908825>,  <40.760288, 32.639458, 37.899319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.752625, 32.239643, 37.908825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104858, 0.021630, 0.994252,
		-0.994303, 0.021542, 0.104395,
		-0.019160, -0.999534, 0.023765,
		40.746876, 31.939783, 37.915955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.261307, 32.526726, 38.418926>,  <40.760288, 32.639458, 37.899319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.261307, 32.526726, 38.418926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.492374, 32.202751, 38.378326>,  <40.631016, 32.008366, 38.353966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.492374, 32.202751, 38.378326>,  <40.261307, 32.526726, 38.418926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.492374, 32.202751, 38.378326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098464, -0.192573, 0.976330,
		-0.810312, -0.554001, -0.190993,
		0.577668, -0.809938, -0.101495,
		40.665676, 31.959770, 38.347878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.690849, 32.292599, 38.174843>,  <40.261307, 32.526726, 38.418926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.690849, 32.292599, 38.174843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.846493, 32.005974, 38.406406>,  <39.939877, 31.833998, 38.545345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.846493, 32.005974, 38.406406>,  <39.690849, 32.292599, 38.174843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.846493, 32.005974, 38.406406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280143, 0.506621, 0.815387,
		-0.877562, -0.479449, -0.003611,
		0.389107, -0.716564, 0.578906,
		39.963226, 31.791004, 38.580078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.179523, 31.905413, 38.657650>,  <39.690849, 32.292599, 38.174843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.179523, 31.905413, 38.657650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.547421, 31.917212, 38.814217>,  <39.768158, 31.924292, 38.908157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.547421, 31.917212, 38.814217>,  <39.179523, 31.905413, 38.657650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.547421, 31.917212, 38.814217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334528, 0.580560, 0.742321,
		-0.205341, -0.813683, 0.543834,
		0.919742, 0.029499, 0.391413,
		39.823341, 31.926062, 38.931641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.111805, 31.801680, 39.283772>,  <39.179523, 31.905413, 38.657650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.111805, 31.801680, 39.283772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.464970, 31.986404, 39.249844>,  <39.676868, 32.097240, 39.229485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.464970, 31.986404, 39.249844>,  <39.111805, 31.801680, 39.283772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.464970, 31.986404, 39.249844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178733, 0.497606, 0.848789,
		0.434187, -0.734247, 0.521884,
		0.882913, 0.461812, -0.084820,
		39.729843, 32.124950, 39.224396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.103321, 32.098549, 39.930508>,  <39.111805, 31.801680, 39.283772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.103321, 32.098549, 39.930508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.403278, 32.285534, 39.743259>,  <39.583252, 32.397724, 39.630909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.403278, 32.285534, 39.743259>,  <39.103321, 32.098549, 39.930508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.403278, 32.285534, 39.743259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144422, 0.806214, 0.573725,
		0.645599, -0.362627, 0.672089,
		0.749896, 0.467461, -0.468119,
		39.628246, 32.425774, 39.602821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.556778, 32.286736, 40.484627>,  <39.103321, 32.098549, 39.930508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.556778, 32.286736, 40.484627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.648129, 32.519875, 40.172695>,  <39.702938, 32.659756, 39.985535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.648129, 32.519875, 40.172695>,  <39.556778, 32.286736, 40.484627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.648129, 32.519875, 40.172695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115450, 0.811561, 0.572748,
		0.966703, -0.040773, 0.252634,
		0.228381, 0.582844, -0.779830,
		39.716644, 32.694729, 39.938747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.060860, 32.790165, 40.576851>,  <39.556778, 32.286736, 40.484627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.060860, 32.790165, 40.576851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.835724, 32.993805, 40.316380>,  <39.700642, 33.115990, 40.160099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.835724, 32.993805, 40.316380>,  <40.060860, 32.790165, 40.576851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.835724, 32.993805, 40.316380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156582, 0.839214, 0.520771,
		0.811599, 0.191148, -0.552059,
		-0.562840, 0.509100, -0.651175,
		39.666870, 33.146534, 40.121029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.387077, 33.421883, 40.555252>,  <40.060860, 32.790165, 40.576851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.387077, 33.421883, 40.555252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.005836, 33.501194, 40.463795>,  <39.777092, 33.548779, 40.408920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.005836, 33.501194, 40.463795>,  <40.387077, 33.421883, 40.555252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.005836, 33.501194, 40.463795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004345, 0.764386, 0.644745,
		0.302610, 0.613516, -0.729401,
		-0.953105, 0.198276, -0.228645,
		39.719906, 33.560677, 40.395203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.142185, 34.162476, 40.444439>,  <40.387077, 33.421883, 40.555252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.142185, 34.162476, 40.444439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.809490, 33.975197, 40.563770>,  <39.609871, 33.862831, 40.635368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.809490, 33.975197, 40.563770>,  <40.142185, 34.162476, 40.444439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.809490, 33.975197, 40.563770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122687, 0.679092, 0.723728,
		-0.541437, 0.565354, -0.622271,
		-0.831741, -0.468198, 0.298324,
		39.559967, 33.834736, 40.653267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.605824, 34.597809, 40.559910>,  <40.142185, 34.162476, 40.444439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.605824, 34.597809, 40.559910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.499432, 34.292492, 40.795414>,  <39.435596, 34.109303, 40.936714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.499432, 34.292492, 40.795414>,  <39.605824, 34.597809, 40.559910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.499432, 34.292492, 40.795414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061875, 0.623015, 0.779759,
		-0.961991, 0.170968, -0.212937,
		-0.265977, -0.763297, 0.588757,
		39.419640, 34.063503, 40.972042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.387188, 34.969105, 41.058952>,  <39.605824, 34.597809, 40.559910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.387188, 34.969105, 41.058952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.352211, 34.601379, 41.212425>,  <39.331226, 34.380745, 41.304508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.352211, 34.601379, 41.212425>,  <39.387188, 34.969105, 41.058952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.352211, 34.601379, 41.212425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119159, 0.392046, 0.912196,
		-0.989017, 0.034041, -0.143825,
		-0.087438, -0.919315, 0.383684,
		39.325981, 34.325584, 41.327530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.895370, 35.039047, 41.640224>,  <39.387188, 34.969105, 41.058952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.895370, 35.039047, 41.640224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.126007, 34.722309, 41.720737>,  <39.264389, 34.532265, 41.769047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.126007, 34.722309, 41.720737>,  <38.895370, 35.039047, 41.640224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.126007, 34.722309, 41.720737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082747, 0.301687, 0.949809,
		-0.812830, -0.530998, 0.239474,
		0.576593, -0.791849, 0.201282,
		39.298985, 34.484753, 41.781120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.559841, 34.575066, 42.052975>,  <38.895370, 35.039047, 41.640224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.559841, 34.575066, 42.052975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.952362, 34.534927, 42.118675>,  <39.187874, 34.510845, 42.158096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.952362, 34.534927, 42.118675>,  <38.559841, 34.575066, 42.052975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.952362, 34.534927, 42.118675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133035, 0.263137, 0.955542,
		-0.139103, -0.959526, 0.244868,
		0.981301, -0.100343, 0.164253,
		39.246754, 34.504826, 42.167950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.831642, 34.075081, 42.602451>,  <38.559841, 34.575066, 42.052975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.831642, 34.075081, 42.602451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.055099, 34.403431, 42.554985>,  <39.189175, 34.600441, 42.526505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.055099, 34.403431, 42.554985>,  <38.831642, 34.075081, 42.602451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.055099, 34.403431, 42.554985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090629, 0.202632, 0.975052,
		0.824440, -0.533955, 0.187594,
		0.558646, 0.820873, -0.118666,
		39.222694, 34.649693, 42.519386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.153740, 34.459011, 43.177837>,  <38.831642, 34.075081, 42.602451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.153740, 34.459011, 43.177837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.302364, 34.093273, 43.113441>,  <39.391537, 33.873829, 43.074802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.302364, 34.093273, 43.113441>,  <39.153740, 34.459011, 43.177837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.302364, 34.093273, 43.113441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201746, 0.089744, -0.975318,
		0.906225, 0.394865, -0.151120,
		0.371556, -0.914346, -0.160991,
		39.413830, 33.818970, 43.065144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.794159, 34.489742, 42.828304>,  <39.153740, 34.459011, 43.177837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.794159, 34.489742, 42.828304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.554924, 34.178314, 42.752274>,  <39.411385, 33.991459, 42.706657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.554924, 34.178314, 42.752274>,  <39.794159, 34.489742, 42.828304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.554924, 34.178314, 42.752274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144030, 0.128886, -0.981144,
		0.788385, -0.614182, 0.035053,
		-0.598083, -0.778568, -0.190072,
		39.375500, 33.944744, 42.695251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.191910, 34.157249, 42.372211>,  <39.794159, 34.489742, 42.828304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.191910, 34.157249, 42.372211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.802700, 34.075367, 42.329670>,  <39.569172, 34.026237, 42.304146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.802700, 34.075367, 42.329670>,  <40.191910, 34.157249, 42.372211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.802700, 34.075367, 42.329670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115850, -0.034929, -0.992652,
		0.199486, -0.978200, 0.057702,
		-0.973028, -0.204705, -0.106356,
		39.510792, 34.013954, 42.297764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.950386, 33.431755, 42.078659>,  <40.191910, 34.157249, 42.372211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.950386, 33.431755, 42.078659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.674080, 33.702377, 41.976597>,  <39.508297, 33.864750, 41.915359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.674080, 33.702377, 41.976597>,  <39.950386, 33.431755, 42.078659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.674080, 33.702377, 41.976597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024969, -0.330349, -0.943528,
		-0.722645, -0.658131, 0.211302,
		-0.690769, 0.676560, -0.255158,
		39.466850, 33.905346, 41.900051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.465855, 33.103252, 41.838352>,  <39.950386, 33.431755, 42.078659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.465855, 33.103252, 41.838352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.390709, 33.465855, 41.687119>,  <39.345623, 33.683418, 41.596378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.390709, 33.465855, 41.687119>,  <39.465855, 33.103252, 41.838352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.390709, 33.465855, 41.687119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040370, -0.377489, -0.925134,
		-0.981365, -0.189064, 0.034321,
		-0.187865, 0.906508, -0.378087,
		39.334351, 33.737808, 41.573692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.811680, 33.085430, 41.540382>,  <39.465855, 33.103252, 41.838352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.811680, 33.085430, 41.540382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.003677, 33.386726, 41.360500>,  <39.118877, 33.567505, 41.252571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.003677, 33.386726, 41.360500>,  <38.811680, 33.085430, 41.540382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.003677, 33.386726, 41.360500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081145, -0.472298, -0.877696,
		-0.873511, 0.457780, -0.165579,
		0.479995, 0.753241, -0.449704,
		39.147675, 33.612698, 41.225590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.432590, 33.191410, 40.896412>,  <38.811680, 33.085430, 41.540382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.432590, 33.191410, 40.896412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.785351, 33.370441, 40.837177>,  <38.997005, 33.477859, 40.801636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.785351, 33.370441, 40.837177>,  <38.432590, 33.191410, 40.896412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.785351, 33.370441, 40.837177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098582, -0.482243, -0.870473,
		-0.461022, 0.753069, -0.469411,
		0.881896, 0.447582, -0.148086,
		39.049919, 33.504715, 40.792751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.736626, 33.402794, 40.265285>,  <38.432590, 33.191410, 40.896412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.736626, 33.402794, 40.265285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.990974, 33.678856, 40.127094>,  <39.143585, 33.844494, 40.044182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.990974, 33.678856, 40.127094>,  <38.736626, 33.402794, 40.265285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.990974, 33.678856, 40.127094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253657, -0.609639, -0.750998,
		-0.728918, 0.389908, -0.562716,
		0.635874, 0.690153, -0.345474,
		39.181736, 33.885902, 40.023453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.699726, 33.503967, 39.547192>,  <38.736626, 33.402794, 40.265285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.699726, 33.503967, 39.547192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.072086, 33.603539, 39.654118>,  <39.295502, 33.663280, 39.718273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.072086, 33.603539, 39.654118>,  <38.699726, 33.503967, 39.547192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.072086, 33.603539, 39.654118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359196, -0.756741, -0.546188,
		0.066328, 0.604466, -0.793865,
		0.930902, 0.248925, 0.267315,
		39.351357, 33.678215, 39.734314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.292290, 33.556709, 39.038925>,  <38.699726, 33.503967, 39.547192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.292290, 33.556709, 39.038925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.471649, 33.462467, 39.383816>,  <39.579266, 33.405922, 39.590748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.471649, 33.462467, 39.383816>,  <39.292290, 33.556709, 39.038925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.471649, 33.462467, 39.383816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356934, -0.837187, -0.414385,
		0.819474, 0.493567, -0.291297,
		0.448397, -0.235604, 0.862224,
		39.606167, 33.391785, 39.642483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.981953, 33.437199, 38.878452>,  <39.292290, 33.556709, 39.038925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.981953, 33.437199, 38.878452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.905323, 33.223778, 39.207966>,  <39.859344, 33.095726, 39.405674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.905323, 33.223778, 39.207966>,  <39.981953, 33.437199, 38.878452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.905323, 33.223778, 39.207966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359402, -0.819171, -0.446978,
		0.913307, 0.210441, 0.348691,
		-0.191575, -0.533549, 0.823787,
		39.847851, 33.063713, 39.455101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.582111, 33.042049, 38.981308>,  <39.981953, 33.437199, 38.878452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.582111, 33.042049, 38.981308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.275932, 32.860874, 39.164146>,  <40.092224, 32.752167, 39.273849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.275932, 32.860874, 39.164146>,  <40.582111, 33.042049, 38.981308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.275932, 32.860874, 39.164146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231063, -0.856414, -0.461697,
		0.600584, -0.247787, 0.760198,
		-0.765447, -0.452942, 0.457094,
		40.046299, 32.724991, 39.301273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.886074, 32.570534, 39.284195>,  <40.582111, 33.042049, 38.981308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.886074, 32.570534, 39.284195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.516438, 32.426521, 39.232929>,  <40.294655, 32.340115, 39.202171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.516438, 32.426521, 39.232929>,  <40.886074, 32.570534, 39.284195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.516438, 32.426521, 39.232929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376850, -0.802765, -0.462117,
		0.063488, -0.475339, 0.877509,
		-0.924096, -0.360028, -0.128165,
		40.239208, 32.318512, 39.194481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.005283, 31.898088, 39.533390>,  <40.886074, 32.570534, 39.284195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.005283, 31.898088, 39.533390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.686905, 31.942688, 39.295383>,  <40.495876, 31.969448, 39.152580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.686905, 31.942688, 39.295383>,  <41.005283, 31.898088, 39.533390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.686905, 31.942688, 39.295383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325865, -0.749429, -0.576340,
		-0.510179, -0.652629, 0.560172,
		-0.795945, 0.111496, -0.595011,
		40.448120, 31.976137, 39.116879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.940895, 31.287836, 39.153942>,  <41.005283, 31.898088, 39.533390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.940895, 31.287836, 39.153942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.685699, 31.525957, 38.958561>,  <40.532581, 31.668829, 38.841331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.685699, 31.525957, 38.958561>,  <40.940895, 31.287836, 39.153942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.685699, 31.525957, 38.958561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123277, -0.705094, -0.698316,
		-0.760119, -0.385298, 0.523225,
		-0.637982, 0.595305, -0.488457,
		40.494305, 31.704548, 38.812023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.783703, 30.851530, 38.595070>,  <40.940895, 31.287836, 39.153942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.783703, 30.851530, 38.595070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.622128, 31.196672, 38.473537>,  <40.525181, 31.403757, 38.400616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.622128, 31.196672, 38.473537>,  <40.783703, 30.851530, 38.595070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.622128, 31.196672, 38.473537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083779, -0.365634, -0.926980,
		-0.910942, -0.348987, 0.219983,
		-0.403937, 0.862856, -0.303834,
		40.500946, 31.455528, 38.382389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.242928, 30.753290, 38.112106>,  <40.783703, 30.851530, 38.595070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.242928, 30.753290, 38.112106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.339298, 31.134871, 38.040627>,  <40.397121, 31.363819, 37.997738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.339298, 31.134871, 38.040627>,  <40.242928, 30.753290, 38.112106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.339298, 31.134871, 38.040627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058172, -0.169601, -0.983795,
		-0.968799, 0.247415, 0.014632,
		0.240924, 0.953951, -0.178702,
		40.411575, 31.421055, 37.987015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.741486, 31.015232, 37.603176>,  <40.242928, 30.753290, 38.112106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.741486, 31.015232, 37.603176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.020985, 31.299557, 37.570923>,  <40.188683, 31.470152, 37.551571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.020985, 31.299557, 37.570923>,  <39.741486, 31.015232, 37.603176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.020985, 31.299557, 37.570923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292292, 0.180800, -0.939083,
		-0.652931, 0.679749, 0.334098,
		0.698746, 0.710811, -0.080635,
		40.230610, 31.512800, 37.546734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.387192, 31.627729, 37.481506>,  <39.741486, 31.015232, 37.603176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.387192, 31.627729, 37.481506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.764160, 31.673063, 37.355652>,  <39.990341, 31.700264, 37.280140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.764160, 31.673063, 37.355652>,  <39.387192, 31.627729, 37.481506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.764160, 31.673063, 37.355652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332719, 0.222688, -0.916356,
		-0.033790, 0.968279, 0.247575,
		0.942421, 0.113337, -0.314640,
		40.046886, 31.707064, 37.261261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.389702, 32.286407, 37.076736>,  <39.387192, 31.627729, 37.481506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.389702, 32.286407, 37.076736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.702801, 32.055882, 36.982784>,  <39.890659, 31.917566, 36.926411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.702801, 32.055882, 36.982784>,  <39.389702, 32.286407, 37.076736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.702801, 32.055882, 36.982784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120296, 0.230191, -0.965682,
		0.610601, 0.784142, 0.110854,
		0.782749, -0.576311, -0.234884,
		39.937626, 31.882988, 36.912319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.827694, 32.615932, 36.550598>,  <39.389702, 32.286407, 37.076736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.827694, 32.615932, 36.550598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.989414, 32.256393, 36.482929>,  <40.086445, 32.040668, 36.442329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.989414, 32.256393, 36.482929>,  <39.827694, 32.615932, 36.550598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.989414, 32.256393, 36.482929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003351, 0.186412, -0.982466,
		0.914622, 0.396641, 0.078378,
		0.404297, -0.898847, -0.169168,
		40.110703, 31.986740, 36.432178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.243465, 32.708923, 35.945038>,  <39.827694, 32.615932, 36.550598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.243465, 32.708923, 35.945038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.166126, 32.318279, 35.982658>,  <40.119720, 32.083893, 36.005230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.166126, 32.318279, 35.982658>,  <40.243465, 32.708923, 35.945038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.166126, 32.318279, 35.982658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198483, -0.054945, -0.978563,
		0.960844, -0.207873, -0.183217,
		-0.193350, -0.976611, 0.094053,
		40.108120, 32.025295, 36.010876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.662460, 32.400234, 35.498920>,  <40.243465, 32.708923, 35.945038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.662460, 32.400234, 35.498920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.345421, 32.164837, 35.562737>,  <40.155197, 32.023598, 35.601028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.345421, 32.164837, 35.562737>,  <40.662460, 32.400234, 35.498920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.345421, 32.164837, 35.562737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096270, -0.137594, -0.985799,
		0.602090, -0.796706, 0.052403,
		-0.792603, -0.588495, 0.159543,
		40.107639, 31.988289, 35.610600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.902657, 31.818651, 35.096363>,  <40.662460, 32.400234, 35.498920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.902657, 31.818651, 35.096363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.505707, 31.799244, 35.141674>,  <40.267536, 31.787600, 35.168861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.505707, 31.799244, 35.141674>,  <40.902657, 31.818651, 35.096363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.505707, 31.799244, 35.141674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101929, -0.193456, -0.975800,
		0.069259, -0.979909, 0.187036,
		-0.992378, -0.048519, 0.113279,
		40.207993, 31.784689, 35.175659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.705994, 31.327751, 34.681252>,  <40.902657, 31.818651, 35.096363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.705994, 31.327751, 34.681252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.366199, 31.524603, 34.757339>,  <40.162323, 31.642714, 34.802990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.366199, 31.524603, 34.757339>,  <40.705994, 31.327751, 34.681252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.366199, 31.524603, 34.757339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255655, -0.068565, -0.964334,
		-0.461534, -0.867818, 0.184060,
		-0.849486, 0.492128, 0.190217,
		40.111355, 31.672241, 34.814404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.899261, 30.667477, 34.987286>,  <40.705994, 31.327751, 34.681252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.899261, 30.667477, 34.987286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.215969, 30.437372, 34.905144>,  <41.405994, 30.299309, 34.855858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.215969, 30.437372, 34.905144>,  <40.899261, 30.667477, 34.987286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.215969, 30.437372, 34.905144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457893, 0.336479, 0.822870,
		-0.404267, -0.745557, 0.529823,
		0.791771, -0.575262, -0.205358,
		41.453499, 30.264793, 34.843536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.104618, 30.462828, 35.655537>,  <40.899261, 30.667477, 34.987286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.104618, 30.462828, 35.655537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.410099, 30.481344, 35.397972>,  <41.593388, 30.492455, 35.243435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.410099, 30.481344, 35.397972>,  <41.104618, 30.462828, 35.655537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.410099, 30.481344, 35.397972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617197, 0.240099, 0.749280,
		0.189284, -0.969644, 0.154795,
		0.763701, 0.046287, -0.643909,
		41.639210, 30.495232, 35.204800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.693752, 30.020193, 35.896782>,  <41.104618, 30.462828, 35.655537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.693752, 30.020193, 35.896782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.837608, 30.297516, 35.646988>,  <41.923920, 30.463909, 35.497112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.837608, 30.297516, 35.646988>,  <41.693752, 30.020193, 35.896782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.837608, 30.297516, 35.646988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707653, 0.233568, 0.666838,
		0.608185, -0.681741, -0.406622,
		0.359636, 0.693308, -0.624489,
		41.945499, 30.505508, 35.459641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.355270, 29.876434, 35.726246>,  <41.693752, 30.020193, 35.896782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.355270, 29.876434, 35.726246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.259377, 30.263197, 35.761154>,  <42.201839, 30.495255, 35.782097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.259377, 30.263197, 35.761154>,  <42.355270, 29.876434, 35.726246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.259377, 30.263197, 35.761154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692853, 0.107429, 0.713032,
		0.680062, 0.231401, -0.695680,
		-0.239732, 0.966909, 0.087269,
		42.187458, 30.553270, 35.787334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.889801, 30.300858, 35.559750>,  <42.355270, 29.876434, 35.726246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.889801, 30.300858, 35.559750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.653023, 30.455051, 35.842876>,  <42.510956, 30.547567, 36.012753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.653023, 30.455051, 35.842876>,  <42.889801, 30.300858, 35.559750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.653023, 30.455051, 35.842876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799811, 0.172495, 0.574933,
		0.099533, 0.906448, -0.410422,
		-0.591942, 0.385484, 0.707818,
		42.475441, 30.570696, 36.055222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.015469, 31.110849, 35.813137>,  <42.889801, 30.300858, 35.559750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.015469, 31.110849, 35.813137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.891430, 30.847017, 36.087009>,  <42.817005, 30.688717, 36.251335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.891430, 30.847017, 36.087009>,  <43.015469, 31.110849, 35.813137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.891430, 30.847017, 36.087009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853579, 0.123958, 0.506002,
		-0.418622, 0.741340, 0.524566,
		-0.310096, -0.659582, 0.684684,
		42.798401, 30.649143, 36.292416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.466541, 31.323286, 36.333527>,  <43.015469, 31.110849, 35.813137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.466541, 31.323286, 36.333527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.724792, 31.395252, 36.036667>,  <43.879745, 31.438431, 35.858551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.724792, 31.395252, 36.036667>,  <43.466541, 31.323286, 36.333527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.724792, 31.395252, 36.036667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763487, -0.172149, 0.622457,
		-0.015772, -0.968502, -0.248507,
		0.645631, 0.179914, -0.742154,
		43.918480, 31.449226, 35.814022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.151291, 30.926237, 36.493641>,  <43.466541, 31.323286, 36.333527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.151291, 30.926237, 36.493641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.169952, 31.240341, 36.246681>,  <44.181149, 31.428804, 36.098503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.169952, 31.240341, 36.246681>,  <44.151291, 30.926237, 36.493641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.169952, 31.240341, 36.246681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791384, 0.348092, 0.502537,
		0.609536, -0.512051, -0.605202,
		0.046658, 0.785262, -0.617404,
		44.183949, 31.475920, 36.061459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.755341, 30.936817, 36.095421>,  <44.151291, 30.926237, 36.493641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.755341, 30.936817, 36.095421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.639446, 31.316830, 36.141884>,  <44.569912, 31.544838, 36.169762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.639446, 31.316830, 36.141884>,  <44.755341, 30.936817, 36.095421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.639446, 31.316830, 36.141884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841052, 0.194792, 0.504666,
		0.456823, 0.243911, -0.855465,
		-0.289732, 0.950033, 0.116156,
		44.552528, 31.601839, 36.176731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.397091, 31.224264, 35.853619>,  <44.755341, 30.936817, 36.095421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.397091, 31.224264, 35.853619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.157814, 31.448074, 36.083084>,  <45.014248, 31.582361, 36.220764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.157814, 31.448074, 36.083084>,  <45.397091, 31.224264, 35.853619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.157814, 31.448074, 36.083084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800330, 0.453283, 0.392438,
		-0.040454, 0.693876, -0.718957,
		-0.598194, 0.559527, 0.573667,
		44.978355, 31.615932, 36.255184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.598900, 31.903547, 35.862446>,  <45.397091, 31.224264, 35.853619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.598900, 31.903547, 35.862446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.261150, 32.108101, 35.926346>,  <45.058502, 32.230831, 35.964687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.261150, 32.108101, 35.926346>,  <45.598900, 31.903547, 35.862446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.261150, 32.108101, 35.926346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502000, 0.859351, -0.097529,
		-0.187156, -0.002156, -0.982328,
		-0.844375, 0.511382, 0.159751,
		45.007839, 32.261517, 35.974270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.386616, 32.243141, 35.194679>,  <45.598900, 31.903547, 35.862446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.386616, 32.243141, 35.194679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.304520, 32.442341, 35.531696>,  <45.255260, 32.561859, 35.733906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.304520, 32.442341, 35.531696>,  <45.386616, 32.243141, 35.194679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.304520, 32.442341, 35.531696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532622, 0.779058, -0.330731,
		-0.821090, 0.380875, -0.425141,
		-0.205242, 0.497999, 0.842539,
		45.242947, 32.591740, 35.784458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.997673, 32.923306, 35.079361>,  <45.386616, 32.243141, 35.194679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.997673, 32.923306, 35.079361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.247623, 32.927719, 35.391621>,  <45.397594, 32.930367, 35.578976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.247623, 32.927719, 35.391621>,  <44.997673, 32.923306, 35.079361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.247623, 32.927719, 35.391621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619426, 0.601636, -0.504327,
		-0.475233, 0.798694, 0.369108,
		0.624872, 0.011038, 0.780649,
		45.435085, 32.931030, 35.625816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.990940, 33.645390, 35.341938>,  <44.997673, 32.923306, 35.079361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.990940, 33.645390, 35.341938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.319523, 33.457161, 35.470795>,  <45.516674, 33.344223, 35.548107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.319523, 33.457161, 35.470795>,  <44.990940, 33.645390, 35.341938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.319523, 33.457161, 35.470795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565596, 0.744460, -0.354797,
		-0.072862, 0.473650, 0.877694,
		0.821457, -0.470569, 0.322138,
		45.565960, 33.315990, 35.567436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.427753, 34.159668, 35.341278>,  <44.990940, 33.645390, 35.341938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.427753, 34.159668, 35.341278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.673096, 33.845837, 35.377575>,  <45.820301, 33.657539, 35.399353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.673096, 33.845837, 35.377575>,  <45.427753, 34.159668, 35.341278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.673096, 33.845837, 35.377575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761254, 0.556654, -0.332610,
		0.210448, 0.273084, 0.938689,
		0.613355, -0.784577, 0.090739,
		45.857101, 33.610462, 35.404797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.074928, 34.260227, 35.900913>,  <45.427753, 34.159668, 35.341278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.074928, 34.260227, 35.900913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.080898, 34.066814, 35.550835>,  <46.084480, 33.950768, 35.340786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.080898, 34.066814, 35.550835>,  <46.074928, 34.260227, 35.900913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.080898, 34.066814, 35.550835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709780, 0.621632, -0.331340,
		0.704265, -0.616256, 0.352476,
		0.014921, -0.483532, -0.875200,
		46.085373, 33.921757, 35.288277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.787922, 33.978649, 35.656372>,  <46.074928, 34.260227, 35.900913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.787922, 33.978649, 35.656372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.532703, 34.118195, 35.381802>,  <46.379570, 34.201923, 35.217060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.532703, 34.118195, 35.381802>,  <46.787922, 33.978649, 35.656372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.532703, 34.118195, 35.381802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658580, 0.709149, -0.251752,
		0.398953, -0.612699, -0.682229,
		-0.638051, 0.348866, -0.686429,
		46.341290, 34.222855, 35.175873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.963333, 33.918346, 34.864712>,  <46.787922, 33.978649, 35.656372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.963333, 33.918346, 34.864712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.785320, 34.232716, 35.036415>,  <46.678513, 34.421337, 35.139439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.785320, 34.232716, 35.036415>,  <46.963333, 33.918346, 34.864712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.785320, 34.232716, 35.036415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806650, 0.559996, -0.188998,
		-0.388924, 0.262154, -0.883184,
		-0.445033, 0.785926, 0.429263,
		46.651810, 34.468494, 35.165195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.279198, 34.522018, 34.515041>,  <46.963333, 33.918346, 34.864712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.279198, 34.522018, 34.515041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.196018, 34.600632, 34.898319>,  <47.146111, 34.647800, 35.128284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.196018, 34.600632, 34.898319>,  <47.279198, 34.522018, 34.515041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.196018, 34.600632, 34.898319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957898, 0.239178, 0.158827,
		-0.197964, 0.950878, -0.237995,
		-0.207949, 0.196533, 0.958192,
		47.133633, 34.659592, 35.185776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.495350, 35.149586, 34.635818>,  <47.279198, 34.522018, 34.515041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.495350, 35.149586, 34.635818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.557365, 34.911324, 34.951073>,  <47.594574, 34.768364, 35.140224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.557365, 34.911324, 34.951073>,  <47.495350, 35.149586, 34.635818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.557365, 34.911324, 34.951073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983993, 0.164065, -0.069573,
		-0.087863, 0.786305, 0.611560,
		0.155041, -0.595658, 0.788133,
		47.603878, 34.732628, 35.187511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.582153, 33.858036, 25.263098> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.261383, 33.979580, 25.057344>,  <35.068920, 34.052505, 24.933893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.261383, 33.979580, 25.057344>,  <35.582153, 33.858036, 25.263098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.261383, 33.979580, 25.057344> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577027, -0.170864, 0.798652,
		0.154787, 0.937271, 0.312353,
		-0.801924, 0.303857, -0.514383,
		35.020805, 34.070736, 24.903030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.223167, 34.336185, 25.589125>,  <35.582153, 33.858036, 25.263098>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.223167, 34.336185, 25.589125> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.920319, 34.180256, 25.379440>,  <34.738609, 34.086697, 25.253630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.920319, 34.180256, 25.379440>,  <35.223167, 34.336185, 25.589125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.920319, 34.180256, 25.379440> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508010, -0.153163, 0.847625,
		-0.410716, 0.908062, -0.082072,
		-0.757125, -0.389826, -0.524211,
		34.693180, 34.063309, 25.222178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.672623, 34.617134, 25.897984>,  <35.223167, 34.336185, 25.589125>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.672623, 34.617134, 25.897984> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.501575, 34.330982, 25.676939>,  <34.398945, 34.159290, 25.544313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.501575, 34.330982, 25.676939>,  <34.672623, 34.617134, 25.897984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.501575, 34.330982, 25.676939> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655513, -0.175544, 0.734497,
		-0.622449, 0.676329, -0.393873,
		-0.427620, -0.715376, -0.552610,
		34.373291, 34.116371, 25.511156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.050484, 34.743145, 25.820698>,  <34.672623, 34.617134, 25.897984>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.050484, 34.743145, 25.820698> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.090897, 34.345730, 25.800009>,  <34.115147, 34.107281, 25.787596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.090897, 34.345730, 25.800009>,  <34.050484, 34.743145, 25.820698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.090897, 34.345730, 25.800009> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640426, -0.104735, 0.760845,
		-0.761345, -0.043746, -0.646869,
		0.101034, -0.993537, -0.051723,
		34.121208, 34.047668, 25.784492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.656239, 34.524612, 26.319532>,  <34.050484, 34.743145, 25.820698>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.656239, 34.524612, 26.319532> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.786480, 34.166054, 26.199232>,  <33.864624, 33.950916, 26.127052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.786480, 34.166054, 26.199232>,  <33.656239, 34.524612, 26.319532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.786480, 34.166054, 26.199232> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337200, -0.407257, 0.848786,
		-0.883333, -0.174956, -0.434871,
		0.325605, -0.896399, -0.300749,
		33.884163, 33.897133, 26.109007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.091049, 33.992294, 26.322582>,  <33.656239, 34.524612, 26.319532>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.091049, 33.992294, 26.322582> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.444736, 33.819870, 26.394512>,  <33.656948, 33.716415, 26.437670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.444736, 33.819870, 26.394512>,  <33.091049, 33.992294, 26.322582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.444736, 33.819870, 26.394512> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400131, -0.500500, 0.767721,
		-0.240935, -0.750788, -0.615035,
		0.884220, -0.431065, 0.179825,
		33.710003, 33.690552, 26.448460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.942348, 33.249821, 26.428949>,  <33.091049, 33.992294, 26.322582>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.942348, 33.249821, 26.428949> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.274223, 33.358696, 26.623901>,  <33.473347, 33.424019, 26.740873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.274223, 33.358696, 26.623901>,  <32.942348, 33.249821, 26.428949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.274223, 33.358696, 26.623901> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284965, -0.544246, 0.789045,
		0.480021, -0.793544, -0.373989,
		0.829684, 0.272184, 0.487381,
		33.523129, 33.440350, 26.770115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.881298, 32.859268, 26.853542>,  <32.942348, 33.249821, 26.428949>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.881298, 32.859268, 26.853542> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.196312, 33.051533, 27.007816>,  <33.385319, 33.166893, 27.100380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.196312, 33.051533, 27.007816>,  <32.881298, 32.859268, 26.853542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.196312, 33.051533, 27.007816> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092610, -0.526427, 0.845161,
		0.609272, -0.701312, -0.370066,
		0.787535, 0.480662, 0.385686,
		33.432571, 33.195732, 27.123522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.420479, 32.305714, 27.120493>,  <32.881298, 32.859268, 26.853542>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.420479, 32.305714, 27.120493> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.486443, 32.653976, 27.305862>,  <33.526020, 32.862934, 27.417084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.486443, 32.653976, 27.305862>,  <33.420479, 32.305714, 27.120493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.486443, 32.653976, 27.305862> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054979, -0.461011, 0.885690,
		0.984776, -0.171534, -0.028155,
		0.164906, 0.870658, 0.463423,
		33.535915, 32.915173, 27.444889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.505177, 32.133713, 27.771376>,  <33.420479, 32.305714, 27.120493>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.505177, 32.133713, 27.771376> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.499676, 32.526028, 27.849222>,  <33.496376, 32.761417, 27.895931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.499676, 32.526028, 27.849222>,  <33.505177, 32.133713, 27.771376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.499676, 32.526028, 27.849222> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014802, -0.194814, 0.980728,
		0.999796, 0.010607, 0.017197,
		-0.013753, 0.980783, 0.194617,
		33.495548, 32.820263, 27.907608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.094551, 32.320255, 28.125124>,  <33.505177, 32.133713, 27.771376>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.094551, 32.320255, 28.125124> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.793488, 32.570961, 28.205793>,  <33.612850, 32.721386, 28.254194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.793488, 32.570961, 28.205793>,  <34.094551, 32.320255, 28.125124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.793488, 32.570961, 28.205793> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128821, -0.160200, 0.978643,
		0.645686, 0.762563, 0.039835,
		-0.752658, 0.626764, 0.201673,
		33.567692, 32.758991, 28.266294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.358383, 32.749401, 28.636293>,  <34.094551, 32.320255, 28.125124>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.358383, 32.749401, 28.636293> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.962551, 32.780586, 28.684721>,  <33.725052, 32.799297, 28.713778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.962551, 32.780586, 28.684721>,  <34.358383, 32.749401, 28.636293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.962551, 32.780586, 28.684721> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100607, -0.227188, 0.968640,
		0.103027, 0.970725, 0.216977,
		-0.989578, 0.077966, 0.121068,
		33.665676, 32.803978, 28.721041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.275333, 33.300472, 29.182041>,  <34.358383, 32.749401, 28.636293>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.275333, 33.300472, 29.182041> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.927307, 33.104080, 29.164476>,  <33.718491, 32.986244, 29.153938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.927307, 33.104080, 29.164476>,  <34.275333, 33.300472, 29.182041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.927307, 33.104080, 29.164476> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060549, -0.194851, 0.978962,
		-0.489209, 0.849099, 0.199261,
		-0.870062, -0.490982, -0.043911,
		33.666290, 32.956787, 29.151302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.918377, 33.536587, 29.761772>,  <34.275333, 33.300472, 29.182041>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.918377, 33.536587, 29.761772> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.760700, 33.178379, 29.679161>,  <33.666096, 32.963455, 29.629595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.760700, 33.178379, 29.679161>,  <33.918377, 33.536587, 29.761772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.760700, 33.178379, 29.679161> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083012, -0.189112, 0.978440,
		-0.915272, 0.402836, 0.000206,
		-0.394190, -0.895522, -0.206529,
		33.642445, 32.909721, 29.617203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.351170, 33.470028, 30.190165>,  <33.918377, 33.536587, 29.761772>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.351170, 33.470028, 30.190165> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.432339, 33.090919, 30.091730>,  <33.481041, 32.863457, 30.032669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.432339, 33.090919, 30.091730>,  <33.351170, 33.470028, 30.190165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.432339, 33.090919, 30.091730> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223567, -0.289523, 0.930696,
		-0.953331, -0.133844, -0.270641,
		0.202924, -0.947767, -0.246088,
		33.493217, 32.806591, 30.017904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.829220, 33.021336, 30.477840>,  <33.351170, 33.470028, 30.190165>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.829220, 33.021336, 30.477840> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.125187, 32.760620, 30.411278>,  <33.302769, 32.604191, 30.371340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.125187, 32.760620, 30.411278>,  <32.829220, 33.021336, 30.477840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.125187, 32.760620, 30.411278> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097969, -0.349141, 0.931935,
		-0.665527, -0.673252, -0.322191,
		0.739917, -0.651792, -0.166405,
		33.347160, 32.565083, 30.361357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.568401, 32.336807, 30.697220>,  <32.829220, 33.021336, 30.477840>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.568401, 32.336807, 30.697220> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.968273, 32.338894, 30.707081>,  <33.208199, 32.340145, 30.712997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.968273, 32.338894, 30.707081>,  <32.568401, 32.336807, 30.697220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.968273, 32.338894, 30.707081> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020095, -0.425157, 0.904897,
		0.015203, -0.905105, -0.424917,
		0.999682, 0.005219, 0.024652,
		33.268177, 32.340458, 30.714476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.700432, 31.856554, 31.163628>,  <32.568401, 32.336807, 30.697220>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.700432, 31.856554, 31.163628> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.080276, 31.980814, 31.146997>,  <33.308186, 32.055370, 31.137020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.080276, 31.980814, 31.146997>,  <32.700432, 31.856554, 31.163628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.080276, 31.980814, 31.146997> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147612, -0.326278, 0.933677,
		0.276480, -0.892771, -0.355694,
		0.949615, 0.310648, -0.041575,
		33.365162, 32.074009, 31.134525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.996964, 31.337620, 31.322908>,  <32.700432, 31.856554, 31.163628>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.996964, 31.337620, 31.322908> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.227528, 31.648829, 31.422855>,  <33.365868, 31.835554, 31.482822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.227528, 31.648829, 31.422855>,  <32.996964, 31.337620, 31.322908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.227528, 31.648829, 31.422855> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012349, -0.297445, 0.954659,
		0.817066, -0.553363, -0.161843,
		0.576412, 0.778021, 0.249865,
		33.400452, 31.882235, 31.497814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.418156, 31.005104, 31.795485>,  <32.996964, 31.337620, 31.322908>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.418156, 31.005104, 31.795485> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.491322, 31.395607, 31.841902>,  <33.535221, 31.629908, 31.869753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.491322, 31.395607, 31.841902>,  <33.418156, 31.005104, 31.795485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.491322, 31.395607, 31.841902> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161140, -0.146210, 0.976041,
		0.969833, -0.159835, -0.184058,
		0.182916, 0.976256, 0.116043,
		33.546196, 31.688484, 31.876715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.070763, 31.047482, 32.199467>,  <33.418156, 31.005104, 31.795485>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.070763, 31.047482, 32.199467> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.858604, 31.384058, 32.240761>,  <33.731308, 31.586004, 32.265537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.858604, 31.384058, 32.240761>,  <34.070763, 31.047482, 32.199467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.858604, 31.384058, 32.240761> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215873, 0.016292, 0.976286,
		0.819804, 0.540104, -0.190285,
		-0.530396, 0.841441, 0.103237,
		33.699486, 31.636490, 32.271732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.050934, 31.203930, 33.036438>,  <34.070763, 31.047482, 32.199467>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.050934, 31.203930, 33.036438> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.412960, 31.286791, 33.184998>,  <34.630177, 31.336508, 33.274132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.412960, 31.286791, 33.184998>,  <34.050934, 31.203930, 33.036438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.412960, 31.286791, 33.184998> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401127, -0.125800, -0.907343,
		-0.141237, 0.970186, -0.196952,
		0.905069, 0.207154, 0.371400,
		34.684483, 31.348936, 33.296417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.320213, 31.696480, 32.682598>,  <34.050934, 31.203930, 33.036438>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.320213, 31.696480, 32.682598> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.651894, 31.526199, 32.827488>,  <34.850903, 31.424032, 32.914421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.651894, 31.526199, 32.827488>,  <34.320213, 31.696480, 32.682598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.651894, 31.526199, 32.827488> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450049, 0.124148, -0.884332,
		0.331490, 0.896307, 0.294529,
		0.829199, -0.425700, 0.362228,
		34.900654, 31.398489, 32.936157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.946159, 32.216797, 32.537857>,  <34.320213, 31.696480, 32.682598>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.946159, 32.216797, 32.537857> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.102772, 31.852880, 32.592976>,  <35.196739, 31.634531, 32.626045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.102772, 31.852880, 32.592976>,  <34.946159, 32.216797, 32.537857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.102772, 31.852880, 32.592976> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566365, 0.120247, -0.815335,
		0.725215, 0.397268, 0.562353,
		0.391528, -0.909791, 0.137794,
		35.220230, 31.579943, 32.634315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.723869, 32.243572, 32.522762>,  <34.946159, 32.216797, 32.537857>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.723869, 32.243572, 32.522762> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.624187, 31.869394, 32.422485>,  <35.564381, 31.644888, 32.362320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.624187, 31.869394, 32.422485>,  <35.723869, 32.243572, 32.522762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.624187, 31.869394, 32.422485> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650677, 0.030002, -0.758761,
		0.717299, -0.352202, 0.601195,
		-0.249200, -0.935443, -0.250690,
		35.549427, 31.588762, 32.347279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.332840, 31.914984, 32.387978>,  <35.723869, 32.243572, 32.522762>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.332840, 31.914984, 32.387978> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.072090, 31.665514, 32.215427>,  <35.915638, 31.515831, 32.111897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.072090, 31.665514, 32.215427>,  <36.332840, 31.914984, 32.387978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.072090, 31.665514, 32.215427> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524500, 0.040019, -0.850470,
		0.547680, -0.780658, 0.301030,
		-0.651879, -0.623675, -0.431373,
		35.876526, 31.478411, 32.086014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.780529, 31.440346, 32.099178>,  <36.332840, 31.914984, 32.387978>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.780529, 31.440346, 32.099178> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.424965, 31.414597, 31.917768>,  <36.211624, 31.399147, 31.808922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.424965, 31.414597, 31.917768>,  <36.780529, 31.440346, 32.099178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.424965, 31.414597, 31.917768> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452499, 0.030568, -0.891241,
		0.071235, -0.997458, 0.001956,
		-0.888915, -0.064373, -0.453526,
		36.158291, 31.395285, 31.781710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.765503, 30.875656, 31.618101>,  <36.780529, 31.440346, 32.099178>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.765503, 30.875656, 31.618101> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.466190, 31.107185, 31.488461>,  <36.286602, 31.246103, 31.410677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.466190, 31.107185, 31.488461>,  <36.765503, 30.875656, 31.618101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.466190, 31.107185, 31.488461> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423372, 0.040557, -0.905047,
		-0.510718, -0.814444, -0.275406,
		-0.748280, 0.578823, -0.324100,
		36.241707, 31.280832, 31.391230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.685921, 30.754267, 30.878868>,  <36.765503, 30.875656, 31.618101>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.685921, 30.754267, 30.878868> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.469143, 31.085632, 30.935471>,  <36.339077, 31.284452, 30.969433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.469143, 31.085632, 30.935471>,  <36.685921, 30.754267, 30.878868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.469143, 31.085632, 30.935471> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262135, 0.326604, -0.908083,
		-0.798486, -0.455038, -0.394158,
		-0.541946, 0.828414, 0.141508,
		36.306561, 31.334156, 30.977922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.435619, 30.832811, 30.269291>,  <36.685921, 30.754267, 30.878868>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.435619, 30.832811, 30.269291> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.381260, 31.201277, 30.415161>,  <36.348644, 31.422356, 30.502684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.381260, 31.201277, 30.415161>,  <36.435619, 30.832811, 30.269291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.381260, 31.201277, 30.415161> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104891, 0.379402, -0.919267,
		-0.985154, -0.086679, -0.148183,
		-0.135902, 0.921163, 0.364678,
		36.340488, 31.477625, 30.524565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.032326, 31.177322, 29.730627>,  <36.435619, 30.832811, 30.269291>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.032326, 31.177322, 29.730627> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.171997, 31.468529, 29.966616>,  <36.255798, 31.643253, 30.108210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.171997, 31.468529, 29.966616>,  <36.032326, 31.177322, 29.730627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.171997, 31.468529, 29.966616> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130832, 0.585558, -0.800003,
		-0.927878, 0.356531, 0.109216,
		0.349178, 0.728016, 0.589972,
		36.276749, 31.686934, 30.143608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.699341, 31.840160, 29.637186>,  <36.032326, 31.177322, 29.730627>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.699341, 31.840160, 29.637186> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.074440, 31.904654, 29.760237>,  <36.299500, 31.943350, 29.834066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.074440, 31.904654, 29.760237>,  <35.699341, 31.840160, 29.637186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.074440, 31.904654, 29.760237> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223752, 0.396979, -0.890136,
		-0.265639, 0.903555, 0.336190,
		0.937748, 0.161232, 0.307626,
		36.355762, 31.953024, 29.852524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.860958, 32.559029, 29.518084>,  <35.699341, 31.840160, 29.637186>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.860958, 32.559029, 29.518084> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.206005, 32.356739, 29.522762>,  <36.413033, 32.235367, 29.525570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.206005, 32.356739, 29.522762>,  <35.860958, 32.559029, 29.518084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.206005, 32.356739, 29.522762> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316441, 0.521432, -0.792448,
		0.394659, 0.687281, 0.609827,
		0.862618, -0.505721, 0.011696,
		36.464790, 32.205021, 29.526272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.286903, 33.071239, 29.313854>,  <35.860958, 32.559029, 29.518084>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.286903, 33.071239, 29.313854> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.486462, 32.729652, 29.254732>,  <36.606197, 32.524700, 29.219259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.486462, 32.729652, 29.254732>,  <36.286903, 33.071239, 29.313854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.486462, 32.729652, 29.254732> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368489, 0.363373, -0.855673,
		0.784423, 0.372427, 0.495962,
		0.498895, -0.853966, -0.147803,
		36.636131, 32.473461, 29.210392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.912868, 33.295277, 29.250914>,  <36.286903, 33.071239, 29.313854>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.912868, 33.295277, 29.250914> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.893036, 32.936516, 29.075134>,  <36.881138, 32.721260, 28.969666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.893036, 32.936516, 29.075134>,  <36.912868, 33.295277, 29.250914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.893036, 32.936516, 29.075134> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387744, 0.388196, -0.836037,
		0.920433, -0.211844, 0.328521,
		-0.049579, -0.896898, -0.439450,
		36.878162, 32.667446, 28.943300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.576721, 33.195328, 28.902573>,  <36.912868, 33.295277, 29.250914>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.576721, 33.195328, 28.902573> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.326138, 32.931995, 28.735647>,  <37.175789, 32.773994, 28.635492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.326138, 32.931995, 28.735647>,  <37.576721, 33.195328, 28.902573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.326138, 32.931995, 28.735647> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311718, 0.279113, -0.908255,
		0.714412, -0.699066, 0.030363,
		-0.626456, -0.658333, -0.417313,
		37.138199, 32.734497, 28.610453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.944527, 32.945740, 28.368292>,  <37.576721, 33.195328, 28.902573>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.944527, 32.945740, 28.368292> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.556206, 32.883984, 28.294861>,  <37.323212, 32.846931, 28.250803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.556206, 32.883984, 28.294861>,  <37.944527, 32.945740, 28.368292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.556206, 32.883984, 28.294861> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098342, 0.441869, -0.891673,
		0.218782, -0.883694, -0.413786,
		-0.970806, -0.154390, -0.183578,
		37.264965, 32.837666, 28.239788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.017353, 32.655151, 27.724594>,  <37.944527, 32.945740, 28.368292>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.017353, 32.655151, 27.724594> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.643673, 32.792450, 27.763489>,  <37.419464, 32.874828, 27.786825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.643673, 32.792450, 27.763489>,  <38.017353, 32.655151, 27.724594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.643673, 32.792450, 27.763489> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058766, 0.416900, -0.907051,
		-0.351880, -0.841651, -0.409638,
		-0.934199, 0.343246, 0.097239,
		37.363415, 32.895424, 27.792660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.732716, 32.496239, 27.089331>,  <38.017353, 32.655151, 27.724594>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.732716, 32.496239, 27.089331> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.496326, 32.776543, 27.249172>,  <37.354492, 32.944725, 27.345078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.496326, 32.776543, 27.249172>,  <37.732716, 32.496239, 27.089331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.496326, 32.776543, 27.249172> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141716, 0.397469, -0.906606,
		-0.794144, -0.592412, -0.135584,
		-0.590975, 0.700762, 0.399602,
		37.319035, 32.986771, 27.369053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.121181, 32.520306, 26.740316>,  <37.732716, 32.496239, 27.089331>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.121181, 32.520306, 26.740316> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.140083, 32.873203, 26.927685>,  <37.151424, 33.084942, 27.040106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.140083, 32.873203, 26.927685>,  <37.121181, 32.520306, 26.740316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.140083, 32.873203, 26.927685> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095932, 0.470786, -0.877017,
		-0.994266, -0.003497, 0.106880,
		0.047250, 0.882241, 0.468421,
		37.154259, 33.137875, 27.068211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.643150, 32.907787, 26.378567> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.844154, 33.199780, 26.563871>,  <36.964756, 33.374973, 26.675055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.844154, 33.199780, 26.563871>,  <36.643150, 32.907787, 26.378567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.844154, 33.199780, 26.563871> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120885, 0.471245, -0.873679,
		-0.856076, 0.495038, 0.148564,
		0.502515, 0.729977, 0.463264,
		36.994907, 33.418774, 26.702850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.378681, 33.456398, 26.171310>,  <36.643150, 32.907787, 26.378567>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.378681, 33.456398, 26.171310> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.727409, 33.610806, 26.291918>,  <36.936646, 33.703449, 26.364283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.727409, 33.610806, 26.291918>,  <36.378681, 33.456398, 26.171310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.727409, 33.610806, 26.291918> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084074, 0.488507, -0.868500,
		-0.482550, 0.782529, 0.393438,
		0.871824, 0.386017, 0.301520,
		36.988956, 33.726612, 26.382374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.410820, 34.150459, 25.953354>,  <36.378681, 33.456398, 26.171310>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.410820, 34.150459, 25.953354> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.796913, 34.095222, 26.042126>,  <37.028568, 34.062080, 26.095388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.796913, 34.095222, 26.042126>,  <36.410820, 34.150459, 25.953354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.796913, 34.095222, 26.042126> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261380, 0.506307, -0.821787,
		0.001117, 0.851225, 0.524799,
		0.965235, -0.138090, 0.221927,
		37.086483, 34.053795, 26.108704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.726131, 34.792717, 25.868679>,  <36.410820, 34.150459, 25.953354>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.726131, 34.792717, 25.868679> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.991100, 34.498150, 25.813705>,  <37.150082, 34.321407, 25.780722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.991100, 34.498150, 25.813705>,  <36.726131, 34.792717, 25.868679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.991100, 34.498150, 25.813705> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272108, 0.407453, -0.871745,
		0.697968, 0.540064, 0.470290,
		0.662419, -0.736419, -0.137433,
		37.189827, 34.277225, 25.772476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.287601, 35.216724, 25.667963>,  <36.726131, 34.792717, 25.868679>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.287601, 35.216724, 25.667963> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.369743, 34.837612, 25.570351>,  <37.419029, 34.610146, 25.511784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.369743, 34.837612, 25.570351>,  <37.287601, 35.216724, 25.667963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.369743, 34.837612, 25.570351> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364014, 0.305420, -0.879893,
		0.908474, 0.091858, 0.407722,
		0.205351, -0.947777, -0.244029,
		37.431347, 34.553280, 25.497143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.884579, 35.297108, 25.371914>,  <37.287601, 35.216724, 25.667963>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.884579, 35.297108, 25.371914> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.745167, 34.945564, 25.241598>,  <37.661518, 34.734638, 25.163408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.745167, 34.945564, 25.241598>,  <37.884579, 35.297108, 25.371914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.745167, 34.945564, 25.241598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235362, 0.254383, -0.938027,
		0.907264, -0.403612, 0.118188,
		-0.348534, -0.878855, -0.325787,
		37.640606, 34.681908, 25.143862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.474388, 34.905567, 25.092241>,  <37.884579, 35.297108, 25.371914>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.474388, 34.905567, 25.092241> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.145500, 34.745228, 24.930614>,  <37.948166, 34.649025, 24.833637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.145500, 34.745228, 24.930614>,  <38.474388, 34.905567, 25.092241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.145500, 34.745228, 24.930614> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409833, 0.075668, -0.909016,
		0.394950, -0.913015, 0.102064,
		-0.822223, -0.400846, -0.404069,
		37.898834, 34.624973, 24.809393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.687782, 34.641014, 24.519625>,  <38.474388, 34.905567, 25.092241>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.687782, 34.641014, 24.519625> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.295715, 34.645107, 24.440453>,  <38.060474, 34.647564, 24.392950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.295715, 34.645107, 24.440453>,  <38.687782, 34.641014, 24.519625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.295715, 34.645107, 24.440453> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197902, -0.003615, -0.980215,
		-0.010774, -0.999941, 0.001513,
		-0.980163, 0.010261, -0.197930,
		38.001667, 34.648178, 24.381073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.593361, 34.151585, 23.873600>,  <38.687782, 34.641014, 24.519625>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.593361, 34.151585, 23.873600> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.288319, 34.409206, 23.897703>,  <38.105293, 34.563778, 23.912165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.288319, 34.409206, 23.897703>,  <38.593361, 34.151585, 23.873600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.288319, 34.409206, 23.897703> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058208, 0.161104, -0.985219,
		-0.644242, -0.747824, -0.160347,
		-0.762603, 0.644054, 0.060260,
		38.059536, 34.602421, 23.915781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.322853, 34.032269, 23.208761>,  <38.593361, 34.151585, 23.873600>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.322853, 34.032269, 23.208761> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.105717, 34.355206, 23.301298>,  <37.975433, 34.548969, 23.356819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.105717, 34.355206, 23.301298>,  <38.322853, 34.032269, 23.208761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.105717, 34.355206, 23.301298> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052398, 0.242365, -0.968769,
		-0.838199, -0.538010, -0.089262,
		-0.542841, 0.807344, 0.231341,
		37.942863, 34.597408, 23.370701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.679333, 34.101574, 22.797976>,  <38.322853, 34.032269, 23.208761>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.679333, 34.101574, 22.797976> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.777172, 34.470325, 22.918184>,  <37.835876, 34.691578, 22.990309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.777172, 34.470325, 22.918184>,  <37.679333, 34.101574, 22.797976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.777172, 34.470325, 22.918184> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164257, 0.344851, -0.924174,
		-0.955610, 0.176692, 0.235776,
		0.244602, 0.921877, 0.300520,
		37.850552, 34.746887, 23.008341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.363483, 34.480953, 22.232834>,  <37.679333, 34.101574, 22.797976>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.363483, 34.480953, 22.232834> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.568417, 34.751316, 22.444746>,  <37.691376, 34.913532, 22.571894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.568417, 34.751316, 22.444746>,  <37.363483, 34.480953, 22.232834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.568417, 34.751316, 22.444746> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019104, 0.607771, -0.793883,
		-0.858574, 0.416853, 0.298469,
		0.512333, 0.675905, 0.529780,
		37.722118, 34.954086, 22.603680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.085609, 35.086090, 21.988001>,  <37.363483, 34.480953, 22.232834>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.085609, 35.086090, 21.988001> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.403152, 35.218884, 22.191795>,  <37.593678, 35.298557, 22.314072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.403152, 35.218884, 22.191795>,  <37.085609, 35.086090, 21.988001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.403152, 35.218884, 22.191795> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195437, 0.654094, -0.730729,
		-0.575839, 0.679669, 0.454378,
		0.793860, 0.331981, 0.509486,
		37.641312, 35.318478, 22.344641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.136623, 35.894489, 22.107550>,  <37.085609, 35.086090, 21.988001>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.136623, 35.894489, 22.107550> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.504318, 35.737022, 22.105442>,  <37.724934, 35.642540, 22.104177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.504318, 35.737022, 22.105442>,  <37.136623, 35.894489, 22.107550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.504318, 35.737022, 22.105442> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295589, 0.698928, -0.651250,
		0.260062, 0.597094, 0.758845,
		0.919236, -0.393672, -0.005270,
		37.780090, 35.618919, 22.103861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.527546, 36.478672, 22.094667>,  <37.136623, 35.894489, 22.107550>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.527546, 36.478672, 22.094667> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.711948, 36.160789, 21.936728>,  <37.822590, 35.970058, 21.841965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.711948, 36.160789, 21.936728>,  <37.527546, 36.478672, 22.094667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.711948, 36.160789, 21.936728> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242990, 0.540996, -0.805158,
		0.853478, 0.275242, 0.442511,
		0.461011, -0.794711, -0.394847,
		37.850250, 35.922375, 21.818274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.273666, 36.681496, 22.016014>,  <37.527546, 36.478672, 22.094667>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.273666, 36.681496, 22.016014> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.220310, 36.361317, 21.782263>,  <38.188297, 36.169209, 21.642012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.220310, 36.361317, 21.782263>,  <38.273666, 36.681496, 22.016014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.220310, 36.361317, 21.782263> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431333, 0.483982, -0.761389,
		0.892277, -0.353626, 0.280697,
		-0.133395, -0.800443, -0.584377,
		38.180290, 36.121185, 21.606949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.910706, 36.654755, 21.596174>,  <38.273666, 36.681496, 22.016014>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.910706, 36.654755, 21.596174> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.638340, 36.454136, 21.382706>,  <38.474918, 36.333767, 21.254623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.638340, 36.454136, 21.382706>,  <38.910706, 36.654755, 21.596174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.638340, 36.454136, 21.382706> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431592, 0.313914, -0.845687,
		0.591677, -0.806171, 0.002713,
		-0.680917, -0.501544, -0.533672,
		38.434067, 36.303673, 21.222605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.357986, 36.351494, 21.017052>,  <38.910706, 36.654755, 21.596174>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.357986, 36.351494, 21.017052> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.979904, 36.328491, 20.888504>,  <38.753056, 36.314690, 20.811377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.979904, 36.328491, 20.888504>,  <39.357986, 36.351494, 21.017052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.979904, 36.328491, 20.888504> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304251, 0.201785, -0.930975,
		0.118383, -0.977740, -0.173232,
		-0.945207, -0.057505, -0.321367,
		38.696342, 36.311241, 20.792093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.422596, 35.999180, 20.386518>,  <39.357986, 36.351494, 21.017052>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.422596, 35.999180, 20.386518> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.066944, 36.182049, 20.378160>,  <38.853554, 36.291771, 20.373146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.066944, 36.182049, 20.378160>,  <39.422596, 35.999180, 20.386518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.066944, 36.182049, 20.378160> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118089, 0.185075, -0.975603,
		-0.442154, -0.869907, -0.218544,
		-0.889131, 0.457175, -0.020895,
		38.800205, 36.319202, 20.371893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.073929, 35.709576, 19.844559>,  <39.422596, 35.999180, 20.386518>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.073929, 35.709576, 19.844559> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.889278, 36.063221, 19.873512>,  <38.778488, 36.275410, 19.890884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.889278, 36.063221, 19.873512>,  <39.073929, 35.709576, 19.844559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.889278, 36.063221, 19.873512> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141233, 0.153808, -0.977955,
		-0.875759, -0.441226, -0.195869,
		-0.461626, 0.884117, 0.072383,
		38.750790, 36.328457, 19.895227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.362755, 35.795200, 19.378281>,  <39.073929, 35.709576, 19.844559>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.362755, 35.795200, 19.378281> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.501328, 36.160496, 19.464046>,  <38.584473, 36.379673, 19.515507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.501328, 36.160496, 19.464046>,  <38.362755, 35.795200, 19.378281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.501328, 36.160496, 19.464046> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030556, 0.239433, -0.970432,
		-0.937577, 0.329637, 0.110852,
		0.346432, 0.913242, 0.214415,
		38.605259, 36.434467, 19.528372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.845551, 36.183704, 19.059992>,  <38.362755, 35.795200, 19.378281>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.845551, 36.183704, 19.059992> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.155834, 36.433243, 19.098124>,  <38.342007, 36.582966, 19.121002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.155834, 36.433243, 19.098124>,  <37.845551, 36.183704, 19.059992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.155834, 36.433243, 19.098124> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199187, 0.385361, -0.901011,
		-0.598826, 0.679939, 0.423191,
		0.775714, 0.623843, 0.095329,
		38.388550, 36.620396, 19.126722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.638565, 36.895321, 18.896671>,  <37.845551, 36.183704, 19.059992>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.638565, 36.895321, 18.896671> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.035286, 36.938423, 18.869183>,  <38.273319, 36.964283, 18.852690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.035286, 36.938423, 18.869183>,  <37.638565, 36.895321, 18.896671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.035286, 36.938423, 18.869183> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110244, 0.449315, -0.886545,
		-0.064654, 0.886851, 0.457510,
		0.991799, 0.107756, -0.068720,
		38.332825, 36.970749, 18.848566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.160713, 37.417355, 18.762009>,  <37.638565, 36.895321, 18.896671>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.160713, 37.417355, 18.762009> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.972607, 37.755501, 18.660654>,  <37.859741, 37.958389, 18.599842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.972607, 37.755501, 18.660654>,  <38.160713, 37.417355, 18.762009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.972607, 37.755501, 18.660654> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741413, -0.222703, 0.633017,
		0.478700, 0.485553, 0.731495,
		-0.470270, 0.845365, -0.253387,
		37.831524, 38.009109, 18.584639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.000233, 37.793438, 19.374109>,  <38.160713, 37.417355, 18.762009>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.000233, 37.793438, 19.374109> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.754093, 37.862930, 19.066563>,  <37.606407, 37.904625, 18.882034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.754093, 37.862930, 19.066563>,  <38.000233, 37.793438, 19.374109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.754093, 37.862930, 19.066563> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787703, -0.171945, 0.591574,
		-0.029427, 0.969666, 0.242658,
		-0.615352, 0.173734, -0.768868,
		37.569489, 37.915051, 18.835903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.619869, 38.283810, 19.647215>,  <38.000233, 37.793438, 19.374109>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.619869, 38.283810, 19.647215> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.399609, 38.116829, 19.358072>,  <37.267452, 38.016640, 19.184586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.399609, 38.116829, 19.358072>,  <37.619869, 38.283810, 19.647215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.399609, 38.116829, 19.358072> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765415, -0.093013, 0.636780,
		-0.333058, 0.903927, -0.268304,
		-0.550647, -0.417449, -0.722859,
		37.234413, 37.991592, 19.141214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.003643, 38.579372, 19.686819>,  <37.619869, 38.283810, 19.647215>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.003643, 38.579372, 19.686819> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.918858, 38.237232, 19.497742>,  <36.867985, 38.031948, 19.384296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.918858, 38.237232, 19.497742>,  <37.003643, 38.579372, 19.686819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.918858, 38.237232, 19.497742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859470, -0.067067, 0.506768,
		-0.465168, 0.513683, -0.720936,
		-0.211967, -0.855355, -0.472692,
		36.855267, 37.980625, 19.355934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.230873, 38.630741, 19.648811>,  <37.003643, 38.579372, 19.686819>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.230873, 38.630741, 19.648811> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.352165, 38.253368, 19.595163>,  <36.424938, 38.026943, 19.562975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.352165, 38.253368, 19.595163>,  <36.230873, 38.630741, 19.648811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.352165, 38.253368, 19.595163> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725642, -0.319836, 0.609219,
		-0.617654, -0.087409, -0.781578,
		0.303228, -0.943432, -0.134120,
		36.443134, 37.970337, 19.554928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.592514, 38.212803, 19.686188>,  <36.230873, 38.630741, 19.648811>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.592514, 38.212803, 19.686188> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.898518, 37.959011, 19.730370>,  <36.082119, 37.806736, 19.756878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.898518, 37.959011, 19.730370>,  <35.592514, 38.212803, 19.686188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.898518, 37.959011, 19.730370> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464390, -0.424623, 0.777198,
		-0.446217, -0.645855, -0.619486,
		0.765005, -0.634482, 0.110454,
		36.128021, 37.768665, 19.763506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.284149, 37.549313, 19.711233>,  <35.592514, 38.212803, 19.686188>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.284149, 37.549313, 19.711233> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.650379, 37.504955, 19.865852>,  <35.870117, 37.478340, 19.958624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.650379, 37.504955, 19.865852>,  <35.284149, 37.549313, 19.711233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.650379, 37.504955, 19.865852> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373061, -0.593121, 0.713466,
		0.150149, -0.797440, -0.584419,
		0.915577, -0.110898, 0.386550,
		35.925053, 37.471687, 19.981817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.209488, 37.000641, 19.977663>,  <35.284149, 37.549313, 19.711233>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.209488, 37.000641, 19.977663> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.522301, 37.137444, 20.186069>,  <35.709988, 37.219524, 20.311113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.522301, 37.137444, 20.186069>,  <35.209488, 37.000641, 19.977663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.522301, 37.137444, 20.186069> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258916, -0.582143, 0.770761,
		0.566911, -0.737659, -0.366703,
		0.782032, 0.342007, 0.521016,
		35.756912, 37.240047, 20.342375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.473595, 36.393768, 20.211678>,  <35.209488, 37.000641, 19.977663>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.473595, 36.393768, 20.211678> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.611732, 36.689854, 20.442440>,  <35.694614, 36.867504, 20.580898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.611732, 36.689854, 20.442440>,  <35.473595, 36.393768, 20.211678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.611732, 36.689854, 20.442440> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173271, -0.553868, 0.814375,
		0.922341, -0.381203, -0.063019,
		0.345347, 0.740213, 0.576907,
		35.715336, 36.911919, 20.615513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.858765, 36.118504, 20.656641>,  <35.473595, 36.393768, 20.211678>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.858765, 36.118504, 20.656641> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.830776, 36.466984, 20.851009>,  <35.813984, 36.676071, 20.967630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.830776, 36.466984, 20.851009>,  <35.858765, 36.118504, 20.656641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.830776, 36.466984, 20.851009> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079936, -0.480652, 0.873261,
		0.994341, 0.099948, -0.036007,
		-0.069974, 0.871197, 0.485921,
		35.809784, 36.728344, 20.996786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.384869, 36.142036, 21.065285>,  <35.858765, 36.118504, 20.656641>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.384869, 36.142036, 21.065285> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.081821, 36.354763, 21.216644>,  <35.899994, 36.482399, 21.307461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.081821, 36.354763, 21.216644>,  <36.384869, 36.142036, 21.065285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.081821, 36.354763, 21.216644> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150260, -0.422061, 0.894028,
		0.635166, 0.734191, 0.239850,
		-0.757619, 0.531817, 0.378398,
		35.854534, 36.514309, 21.330164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.647057, 36.285412, 21.689949>,  <36.384869, 36.142036, 21.065285>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.647057, 36.285412, 21.689949> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.248711, 36.316025, 21.709513>,  <36.009701, 36.334393, 21.721251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.248711, 36.316025, 21.709513>,  <36.647057, 36.285412, 21.689949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.248711, 36.316025, 21.709513> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009981, -0.443034, 0.896449,
		0.090275, 0.893232, 0.440440,
		-0.995867, 0.076531, 0.048910,
		35.949951, 36.338985, 21.724186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.475449, 36.582817, 22.455654>,  <36.647057, 36.285412, 21.689949>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.475449, 36.582817, 22.455654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.120197, 36.455914, 22.322639>,  <35.907047, 36.379772, 22.242830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.120197, 36.455914, 22.322639>,  <36.475449, 36.582817, 22.455654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.120197, 36.455914, 22.322639> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098348, -0.575582, 0.811809,
		-0.448958, 0.753691, 0.479986,
		-0.888124, -0.317262, -0.332536,
		35.853760, 36.360733, 22.222879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.043404, 36.531757, 23.118870>,  <36.475449, 36.582817, 22.455654>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.043404, 36.531757, 23.118870> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.906586, 36.283241, 22.836876>,  <35.824497, 36.134132, 22.667681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.906586, 36.283241, 22.836876>,  <36.043404, 36.531757, 23.118870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.906586, 36.283241, 22.836876> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250428, -0.662832, 0.705648,
		-0.905700, 0.417909, 0.071127,
		-0.342042, -0.621293, -0.704983,
		35.803974, 36.096851, 22.625381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.244320, 36.416142, 23.281609>,  <36.043404, 36.531757, 23.118870>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.244320, 36.416142, 23.281609> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.382565, 36.123470, 23.046593>,  <35.465511, 35.947868, 22.905582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.382565, 36.123470, 23.046593>,  <35.244320, 36.416142, 23.281609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.382565, 36.123470, 23.046593> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352464, -0.681499, 0.641348,
		-0.869667, -0.014570, -0.493424,
		0.345613, -0.731673, -0.587542,
		35.486248, 35.903969, 22.870331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.695816, 35.866821, 23.361176>,  <35.244320, 36.416142, 23.281609>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.695816, 35.866821, 23.361176> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.025372, 35.704437, 23.202984>,  <35.223106, 35.607006, 23.108068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.025372, 35.704437, 23.202984>,  <34.695816, 35.866821, 23.361176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.025372, 35.704437, 23.202984> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053562, -0.750451, 0.658753,
		-0.564211, -0.521558, -0.640034,
		0.823891, -0.405957, -0.395477,
		35.272537, 35.582649, 23.084341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.454754, 35.193012, 23.212160>,  <34.695816, 35.866821, 23.361176>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.454754, 35.193012, 23.212160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.852581, 35.156570, 23.232309>,  <35.091278, 35.134705, 23.244398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.852581, 35.156570, 23.232309>,  <34.454754, 35.193012, 23.212160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.852581, 35.156570, 23.232309> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100705, -0.719378, 0.687280,
		-0.026378, -0.688618, -0.724644,
		0.994567, -0.091105, 0.050372,
		35.150951, 35.129238, 23.247421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.673584, 34.470730, 23.011435>,  <34.454754, 35.193012, 23.212160>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.673584, 34.470730, 23.011435> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.961826, 34.639935, 23.231176>,  <35.134769, 34.741459, 23.363022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.961826, 34.639935, 23.231176>,  <34.673584, 34.470730, 23.011435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.961826, 34.639935, 23.231176> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083196, -0.733847, 0.674201,
		0.688338, -0.531535, -0.493620,
		0.720603, 0.423011, 0.549356,
		35.178009, 34.766838, 23.395983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.018776, 33.897358, 23.266905>,  <34.673584, 34.470730, 23.011435>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.018776, 33.897358, 23.266905> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.117756, 34.188618, 23.522585>,  <35.177143, 34.363373, 23.675993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.117756, 34.188618, 23.522585>,  <35.018776, 33.897358, 23.266905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.117756, 34.188618, 23.522585> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097972, -0.637530, 0.764171,
		0.963935, -0.251716, -0.086418,
		0.247448, 0.728145, 0.639198,
		35.191990, 34.407063, 23.714344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.300938, 33.489651, 23.777557>,  <35.018776, 33.897358, 23.266905>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.300938, 33.489651, 23.777557> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.244888, 33.857189, 23.925114>,  <35.211258, 34.077713, 24.013647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.244888, 33.857189, 23.925114>,  <35.300938, 33.489651, 23.777557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.244888, 33.857189, 23.925114> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288014, -0.394281, 0.872692,
		0.947318, 0.016043, 0.319891,
		-0.140128, 0.918850, 0.368888,
		35.202850, 34.132843, 24.035780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.616344, 33.539742, 24.453266>,  <35.300938, 33.489651, 23.777557>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.616344, 33.539742, 24.453266> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.329380, 33.817520, 24.431112>,  <35.157200, 33.984188, 24.417820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.329380, 33.817520, 24.431112>,  <35.616344, 33.539742, 24.453266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.329380, 33.817520, 24.431112> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356384, -0.297538, 0.885698,
		0.598588, 0.655150, 0.460946,
		-0.717414, 0.694442, -0.055383,
		35.114155, 34.025852, 24.414497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<37.446560, 31.426039, 29.044771> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.205479, 31.737463, 29.114733>,  <37.060829, 31.924318, 29.156710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.205479, 31.737463, 29.114733>,  <37.446560, 31.426039, 29.044771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.205479, 31.737463, 29.114733> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088946, -0.152276, 0.984327,
		0.792994, 0.608813, 0.022527,
		-0.602702, 0.778562, 0.174905,
		37.024670, 31.971031, 29.167204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.659824, 31.811949, 29.613592>,  <37.446560, 31.426039, 29.044771>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.659824, 31.811949, 29.613592> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.279724, 31.935507, 29.597570>,  <37.051662, 32.009640, 29.587957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.279724, 31.935507, 29.597570>,  <37.659824, 31.811949, 29.613592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.279724, 31.935507, 29.597570> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086909, -0.139452, 0.986407,
		0.299110, 0.940817, 0.159361,
		-0.950253, 0.308894, -0.040054,
		36.994648, 32.028175, 29.585554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.561337, 32.015343, 30.267500>,  <37.659824, 31.811949, 29.613592>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.561337, 32.015343, 30.267500> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.178169, 32.009445, 30.152840>,  <36.948269, 32.005905, 30.084044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.178169, 32.009445, 30.152840>,  <37.561337, 32.015343, 30.267500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.178169, 32.009445, 30.152840> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283245, -0.113092, 0.952356,
		-0.046463, 0.993475, 0.104156,
		-0.957921, -0.014747, -0.286651,
		36.890793, 32.005020, 30.066845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.125206, 32.514889, 30.693892>,  <37.561337, 32.015343, 30.267500>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.125206, 32.514889, 30.693892> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.861492, 32.269627, 30.519819>,  <36.703262, 32.122471, 30.415375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.861492, 32.269627, 30.519819>,  <37.125206, 32.514889, 30.693892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.861492, 32.269627, 30.519819> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496189, -0.080061, 0.864515,
		-0.564920, 0.785897, -0.251456,
		-0.659289, -0.613152, -0.435181,
		36.663704, 32.085682, 30.389265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.379704, 32.712902, 30.864561>,  <37.125206, 32.514889, 30.693892>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.379704, 32.712902, 30.864561> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.382244, 32.322823, 30.776066>,  <36.383766, 32.088776, 30.722969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.382244, 32.322823, 30.776066>,  <36.379704, 32.712902, 30.864561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.382244, 32.322823, 30.776066> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541176, -0.189393, 0.819304,
		-0.840885, 0.114526, -0.528957,
		0.006349, -0.975200, -0.221237,
		36.384148, 32.030262, 30.709694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.727108, 32.484917, 31.221519>,  <36.379704, 32.712902, 30.864561>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.727108, 32.484917, 31.221519> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.893925, 32.134304, 31.125383>,  <35.994015, 31.923935, 31.067701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.893925, 32.134304, 31.125383>,  <35.727108, 32.484917, 31.221519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.893925, 32.134304, 31.125383> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538041, -0.451210, 0.711984,
		-0.732524, -0.167612, -0.659784,
		0.417039, -0.876536, -0.240340,
		36.019035, 31.871344, 31.053282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.210777, 32.001656, 31.069302>,  <35.727108, 32.484917, 31.221519>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.210777, 32.001656, 31.069302> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.539520, 31.799591, 31.174646>,  <35.736767, 31.678352, 31.237852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.539520, 31.799591, 31.174646>,  <35.210777, 32.001656, 31.069302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.539520, 31.799591, 31.174646> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503669, -0.428293, 0.750255,
		-0.266203, -0.749251, -0.606431,
		0.821859, -0.505161, 0.263362,
		35.786079, 31.648043, 31.253654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.919415, 31.332542, 31.229136>,  <35.210777, 32.001656, 31.069302>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.919415, 31.332542, 31.229136> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.276596, 31.372089, 31.404799>,  <35.490906, 31.395817, 31.510197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.276596, 31.372089, 31.404799>,  <34.919415, 31.332542, 31.229136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.276596, 31.372089, 31.404799> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381443, -0.351855, 0.854810,
		0.239032, -0.930819, -0.276478,
		0.892953, 0.098866, 0.439159,
		35.544483, 31.401749, 31.536547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.992329, 30.657169, 31.587626>,  <34.919415, 31.332542, 31.229136>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.992329, 30.657169, 31.587626> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.272144, 30.903505, 31.732613>,  <35.440033, 31.051308, 31.819605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.272144, 30.903505, 31.732613>,  <34.992329, 30.657169, 31.587626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.272144, 30.903505, 31.732613> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261474, -0.251469, 0.931877,
		0.665037, -0.746662, -0.014886,
		0.699541, 0.615841, 0.362469,
		35.482006, 31.088257, 31.841352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.249657, 30.261337, 32.129784>,  <34.992329, 30.657169, 31.587626>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.249657, 30.261337, 32.129784> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.337273, 30.644764, 32.202641>,  <35.389843, 30.874819, 32.246353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.337273, 30.644764, 32.202641>,  <35.249657, 30.261337, 32.129784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.337273, 30.644764, 32.202641> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285097, -0.115650, 0.951496,
		0.933135, -0.260343, 0.247953,
		0.219039, 0.958565, 0.182140,
		35.402985, 30.932333, 32.257282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.729813, 30.457949, 32.835175>,  <35.249657, 30.261337, 32.129784>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.729813, 30.457949, 32.835175> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.563164, 30.819113, 32.792881>,  <35.463173, 31.035810, 32.767506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.563164, 30.819113, 32.792881>,  <35.729813, 30.457949, 32.835175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.563164, 30.819113, 32.792881> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358922, -0.056516, 0.931655,
		0.835225, 0.426098, 0.347620,
		-0.416622, 0.902910, -0.105733,
		35.438175, 31.089985, 32.761162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.858116, 30.767611, 33.490150>,  <35.729813, 30.457949, 32.835175>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.858116, 30.767611, 33.490150> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.569706, 30.966616, 33.297234>,  <35.396660, 31.086018, 33.181484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.569706, 30.966616, 33.297234>,  <35.858116, 30.767611, 33.490150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.569706, 30.966616, 33.297234> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425953, 0.230743, 0.874827,
		0.546521, 0.836206, 0.045544,
		-0.721027, 0.497511, -0.482290,
		35.353397, 31.115870, 33.152546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.818275, 31.307510, 33.886436>,  <35.858116, 30.767611, 33.490150>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.818275, 31.307510, 33.886436> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.476067, 31.326948, 33.680244>,  <35.270741, 31.338612, 33.556530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.476067, 31.326948, 33.680244>,  <35.818275, 31.307510, 33.886436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.476067, 31.326948, 33.680244> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509116, 0.102216, 0.854607,
		0.094219, 0.993574, -0.062708,
		-0.855525, 0.048595, -0.515475,
		35.219410, 31.341526, 33.525600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.586540, 31.871914, 34.034855>,  <35.818275, 31.307510, 33.886436>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.586540, 31.871914, 34.034855> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.322285, 31.580050, 33.964249>,  <35.163731, 31.404932, 33.921886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.322285, 31.580050, 33.964249>,  <35.586540, 31.871914, 34.034855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.322285, 31.580050, 33.964249> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144200, -0.107414, 0.983701,
		-0.736727, 0.675322, -0.034255,
		-0.660636, -0.729659, -0.176516,
		35.124096, 31.361153, 33.911293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.274670, 31.846745, 34.211315>,  <35.586540, 31.871914, 34.034855>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.274670, 31.846745, 34.211315> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.666935, 31.873056, 34.137589>,  <36.902294, 31.888844, 34.093353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.666935, 31.873056, 34.137589>,  <36.274670, 31.846745, 34.211315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.666935, 31.873056, 34.137589> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073233, 0.750041, 0.657324,
		0.181481, -0.658112, 0.730721,
		0.980663, 0.065779, -0.184314,
		36.961136, 31.892790, 34.082294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.487904, 32.580177, 34.279385>,  <36.274670, 31.846745, 34.211315>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.487904, 32.580177, 34.279385> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.843300, 32.560627, 34.461895>,  <37.056538, 32.548897, 34.571404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.843300, 32.560627, 34.461895>,  <36.487904, 32.580177, 34.279385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.843300, 32.560627, 34.461895> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289507, 0.831161, -0.474719,
		-0.356039, 0.553880, 0.752631,
		0.888494, -0.048874, 0.456278,
		37.109848, 32.545963, 34.598778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.738163, 33.250446, 34.448929>,  <36.487904, 32.580177, 34.279385>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.738163, 33.250446, 34.448929> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.067139, 33.024876, 34.419060>,  <37.264526, 32.889534, 34.401138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.067139, 33.024876, 34.419060>,  <36.738163, 33.250446, 34.448929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.067139, 33.024876, 34.419060> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432046, 0.704644, -0.562862,
		0.370031, 0.430659, 0.823171,
		0.822444, -0.563924, -0.074675,
		37.313873, 32.855698, 34.396656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.165417, 33.764595, 34.445812>,  <36.738163, 33.250446, 34.448929>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.165417, 33.764595, 34.445812> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.370892, 33.448280, 34.312672>,  <37.494175, 33.258492, 34.232788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.370892, 33.448280, 34.312672>,  <37.165417, 33.764595, 34.445812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.370892, 33.448280, 34.312672> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469867, 0.583881, -0.662049,
		0.717881, 0.183690, 0.671494,
		0.513685, -0.790785, -0.332847,
		37.524998, 33.211044, 34.212818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.781975, 34.041668, 34.311363>,  <37.165417, 33.764595, 34.445812>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.781975, 34.041668, 34.311363> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.768291, 33.706150, 34.094013>,  <37.760082, 33.504841, 33.963604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.768291, 33.706150, 34.094013>,  <37.781975, 34.041668, 34.311363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.768291, 33.706150, 34.094013> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382754, 0.491244, -0.782418,
		0.923217, -0.234743, 0.304248,
		-0.034207, -0.838794, -0.543374,
		37.758030, 33.454514, 33.931000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.457829, 33.980652, 33.952766>,  <37.781975, 34.041668, 34.311363>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.457829, 33.980652, 33.952766> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.221466, 33.752544, 33.724514>,  <38.079647, 33.615681, 33.587563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.221466, 33.752544, 33.724514>,  <38.457829, 33.980652, 33.952766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.221466, 33.752544, 33.724514> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276178, 0.521591, -0.807260,
		0.757992, -0.634612, -0.150716,
		-0.590909, -0.570272, -0.570627,
		38.044193, 33.581463, 33.553326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.799744, 33.987450, 33.448551>,  <38.457829, 33.980652, 33.952766>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.799744, 33.987450, 33.448551> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.450916, 33.849731, 33.309437>,  <38.241619, 33.767101, 33.225967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.450916, 33.849731, 33.309437>,  <38.799744, 33.987450, 33.448551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.450916, 33.849731, 33.309437> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152286, 0.484464, -0.861455,
		0.465073, -0.804216, -0.370060,
		-0.872076, -0.344284, -0.347782,
		38.189297, 33.746445, 33.205101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.013241, 33.541519, 32.981915>,  <38.799744, 33.987450, 33.448551>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.013241, 33.541519, 32.981915> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.648594, 33.647640, 32.856327>,  <38.429806, 33.711311, 32.780975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.648594, 33.647640, 32.856327>,  <39.013241, 33.541519, 32.981915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.648594, 33.647640, 32.856327> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391036, 0.324307, -0.861345,
		-0.126692, -0.907987, -0.399385,
		-0.911614, 0.265299, -0.313969,
		38.375111, 33.727230, 32.762135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.933189, 33.238506, 32.241001>,  <39.013241, 33.541519, 32.981915>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.933189, 33.238506, 32.241001> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.641705, 33.511501, 32.263615>,  <38.466812, 33.675297, 32.277184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.641705, 33.511501, 32.263615>,  <38.933189, 33.238506, 32.241001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.641705, 33.511501, 32.263615> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231297, 0.322979, -0.917707,
		-0.644579, -0.655668, -0.393215,
		-0.728711, 0.682484, 0.056531,
		38.423092, 33.716248, 32.280575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.443451, 33.190395, 31.679869>,  <38.933189, 33.238506, 32.241001>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.443451, 33.190395, 31.679869> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.387581, 33.572628, 31.783676>,  <38.354061, 33.801968, 31.845961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.387581, 33.572628, 31.783676>,  <38.443451, 33.190395, 31.679869>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.387581, 33.572628, 31.783676> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002024, 0.261810, -0.965117,
		-0.990196, -0.135325, -0.034634,
		-0.139672, 0.955585, 0.259517,
		38.345680, 33.859303, 31.861532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.790421, 33.457382, 31.373892>,  <38.443451, 33.190395, 31.679869>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.790421, 33.457382, 31.373892> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.044380, 33.759136, 31.440584>,  <38.196758, 33.940189, 31.480600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.044380, 33.759136, 31.440584>,  <37.790421, 33.457382, 31.373892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.044380, 33.759136, 31.440584> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061081, 0.264143, -0.962547,
		-0.770174, 0.600940, 0.213784,
		0.634903, 0.754387, 0.166730,
		38.234852, 33.985451, 31.490602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.468987, 33.993484, 30.884089>,  <37.790421, 33.457382, 31.373892>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.468987, 33.993484, 30.884089> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.839027, 34.100487, 30.991884>,  <38.061050, 34.164688, 31.056562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.839027, 34.100487, 30.991884>,  <37.468987, 33.993484, 30.884089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.839027, 34.100487, 30.991884> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082692, 0.550754, -0.830561,
		-0.370602, 0.790640, 0.487384,
		0.925103, 0.267505, 0.269490,
		38.116558, 34.180737, 31.072731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.468357, 34.771992, 30.915882>,  <37.468987, 33.993484, 30.884089>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.468357, 34.771992, 30.915882> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.856285, 34.685970, 30.869923>,  <38.089043, 34.634357, 30.842346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.856285, 34.685970, 30.869923>,  <37.468357, 34.771992, 30.915882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.856285, 34.685970, 30.869923> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067324, 0.689103, -0.721529,
		0.234346, 0.692017, 0.682784,
		0.969819, -0.215055, -0.114899,
		38.147232, 34.621452, 30.835453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.759216, 35.423447, 30.813633>,  <37.468357, 34.771992, 30.915882>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.759216, 35.423447, 30.813633> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.059818, 35.190147, 30.690308>,  <38.240181, 35.050167, 30.616312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.059818, 35.190147, 30.690308>,  <37.759216, 35.423447, 30.813633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.059818, 35.190147, 30.690308> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235384, 0.673629, -0.700584,
		0.616306, 0.453921, 0.643524,
		0.751506, -0.583250, -0.308316,
		38.285271, 35.015171, 30.597813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.772072, 36.117157, 31.065151>,  <37.759216, 35.423447, 30.813633>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.772072, 36.117157, 31.065151> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.460514, 36.363369, 31.017067>,  <37.273579, 36.511097, 30.988216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.460514, 36.363369, 31.017067>,  <37.772072, 36.117157, 31.065151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.460514, 36.363369, 31.017067> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389804, -0.324984, 0.861648,
		0.491300, 0.717993, 0.493063,
		-0.778895, 0.615526, -0.120212,
		37.226845, 36.548027, 30.981003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.639046, 36.332520, 31.698441>,  <37.772072, 36.117157, 31.065151>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.639046, 36.332520, 31.698441> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.302734, 36.420696, 31.500658>,  <37.100948, 36.473602, 31.381989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.302734, 36.420696, 31.500658>,  <37.639046, 36.332520, 31.698441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.302734, 36.420696, 31.500658> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537216, -0.226755, 0.812392,
		0.066968, 0.948676, 0.309078,
		-0.840782, 0.220446, -0.494458,
		37.050499, 36.486832, 31.352320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.287659, 36.780556, 32.095581>,  <37.639046, 36.332520, 31.698441>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.287659, 36.780556, 32.095581> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.009945, 36.615978, 31.859383>,  <36.843319, 36.517231, 31.717663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.009945, 36.615978, 31.859383>,  <37.287659, 36.780556, 32.095581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.009945, 36.615978, 31.859383> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570085, -0.186404, 0.800160,
		-0.439293, 0.892170, -0.105141,
		-0.694280, -0.411444, -0.590499,
		36.801662, 36.492546, 31.682234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.627201, 37.108658, 32.342770>,  <37.287659, 36.780556, 32.095581>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.627201, 37.108658, 32.342770> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.551254, 36.776291, 32.133572>,  <36.505688, 36.576870, 32.008053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.551254, 36.776291, 32.133572>,  <36.627201, 37.108658, 32.342770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.551254, 36.776291, 32.133572> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737786, -0.230712, 0.634385,
		-0.647784, 0.506307, -0.569235,
		-0.189864, -0.830918, -0.522998,
		36.494293, 36.527016, 31.976673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.886852, 37.121273, 32.314644>,  <36.627201, 37.108658, 32.342770>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.886852, 37.121273, 32.314644> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.996929, 36.752258, 32.206425>,  <36.062973, 36.530849, 32.141495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.996929, 36.752258, 32.206425>,  <35.886852, 37.121273, 32.314644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.996929, 36.752258, 32.206425> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746674, -0.382358, 0.544316,
		-0.605598, 0.052222, -0.794055,
		0.275188, -0.922537, -0.270548,
		36.079487, 36.475498, 32.125259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.340122, 36.739716, 32.060463>,  <35.886852, 37.121273, 32.314644>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.340122, 36.739716, 32.060463> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.585915, 36.450867, 32.187561>,  <35.733391, 36.277557, 32.263821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.585915, 36.450867, 32.187561>,  <35.340122, 36.739716, 32.060463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.585915, 36.450867, 32.187561> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757046, -0.426362, 0.495072,
		-0.222026, -0.544758, -0.808667,
		0.614480, -0.722117, 0.317744,
		35.770260, 36.234230, 32.282883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.899204, 36.089466, 32.084812>,  <35.340122, 36.739716, 32.060463>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.899204, 36.089466, 32.084812> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.207623, 36.037434, 32.334152>,  <35.392673, 36.006214, 32.483757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.207623, 36.037434, 32.334152>,  <34.899204, 36.089466, 32.084812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.207623, 36.037434, 32.334152> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584790, -0.532064, 0.612314,
		0.252016, -0.836652, -0.486313,
		0.771044, -0.130078, 0.623355,
		35.438934, 35.998409, 32.521160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.743404, 35.475658, 32.368992>,  <34.899204, 36.089466, 32.084812>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.743404, 35.475658, 32.368992> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.030464, 35.615391, 32.609974>,  <35.202698, 35.699230, 32.754562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.030464, 35.615391, 32.609974>,  <34.743404, 35.475658, 32.368992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.030464, 35.615391, 32.609974> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439655, -0.443627, 0.780959,
		0.540080, -0.825324, -0.164781,
		0.717646, 0.349334, 0.602453,
		35.245758, 35.720192, 32.790710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.888969, 34.870052, 32.778793>,  <34.743404, 35.475658, 32.368992>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.888969, 34.870052, 32.778793> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.009872, 35.191376, 32.984058>,  <35.082413, 35.384171, 33.107220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.009872, 35.191376, 32.984058>,  <34.888969, 34.870052, 32.778793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.009872, 35.191376, 32.984058> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473155, -0.340909, 0.812346,
		0.827506, -0.488342, 0.277048,
		0.302254, 0.803308, 0.513165,
		35.100548, 35.432369, 33.138008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.048164, 34.592640, 33.376862>,  <34.888969, 34.870052, 32.778793>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.048164, 34.592640, 33.376862> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.009426, 34.980888, 33.464973>,  <34.986183, 35.213837, 33.517841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.009426, 34.980888, 33.464973>,  <35.048164, 34.592640, 33.376862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.009426, 34.980888, 33.464973> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489236, -0.239158, 0.838720,
		0.866758, -0.026542, 0.498022,
		-0.096845, 0.970617, 0.220278,
		34.980373, 35.272072, 33.531055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.256973, 34.644878, 34.030560>,  <35.048164, 34.592640, 33.376862>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.256973, 34.644878, 34.030560> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.017902, 34.956108, 33.953213>,  <34.874462, 35.142845, 33.906803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.017902, 34.956108, 33.953213>,  <35.256973, 34.644878, 34.030560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.017902, 34.956108, 33.953213> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521442, -0.194037, 0.830932,
		0.609004, 0.597456, 0.521689,
		-0.597673, 0.778072, -0.193369,
		34.838600, 35.189529, 33.895203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.242062, 34.889977, 34.669434>,  <35.256973, 34.644878, 34.030560>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.242062, 34.889977, 34.669434> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.935028, 35.078423, 34.495602>,  <34.750809, 35.191490, 34.391304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.935028, 35.078423, 34.495602>,  <35.242062, 34.889977, 34.669434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.935028, 35.078423, 34.495602> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568260, -0.186600, 0.801412,
		0.296466, 0.862107, 0.410949,
		-0.767586, 0.471117, -0.434581,
		34.704754, 35.219757, 34.365227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.466625, 39.027119, 28.539297> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.130371, 38.918755, 28.351704>,  <37.928619, 38.853737, 28.239147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.130371, 38.918755, 28.351704>,  <38.466625, 39.027119, 28.539297>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.130371, 38.918755, 28.351704> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461366, -0.095369, 0.882069,
		-0.283688, 0.957869, -0.044818,
		-0.840632, -0.270910, -0.468983,
		37.878181, 38.837482, 28.211008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.946758, 39.385063, 28.913633>,  <38.466625, 39.027119, 28.539297>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.946758, 39.385063, 28.913633> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.761738, 39.089302, 28.717943>,  <37.650726, 38.911846, 28.600529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.761738, 39.089302, 28.717943>,  <37.946758, 39.385063, 28.913633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.761738, 39.089302, 28.717943> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495715, -0.241807, 0.834144,
		-0.735062, 0.628346, -0.254684,
		-0.462547, -0.739398, -0.489224,
		37.622974, 38.867481, 28.571177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.265202, 39.326485, 29.293226>,  <37.946758, 39.385063, 28.913633>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.265202, 39.326485, 29.293226> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.325497, 38.997650, 29.073606>,  <37.361675, 38.800350, 28.941835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.325497, 38.997650, 29.073606>,  <37.265202, 39.326485, 29.293226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.325497, 38.997650, 29.073606> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423456, -0.555556, 0.715571,
		-0.893288, 0.124635, -0.431860,
		0.150738, -0.822085, -0.549049,
		37.370720, 38.751026, 28.908892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.623165, 38.893101, 29.179760>,  <37.265202, 39.326485, 29.293226>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.623165, 38.893101, 29.179760> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.937668, 38.649563, 29.137611>,  <37.126369, 38.503441, 29.112322>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.937668, 38.649563, 29.137611>,  <36.623165, 38.893101, 29.179760>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.937668, 38.649563, 29.137611> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394836, -0.626235, 0.672261,
		-0.475288, -0.486968, -0.732778,
		0.786261, -0.608844, -0.105370,
		37.173546, 38.466911, 29.106001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.484043, 38.230770, 29.465343>,  <36.623165, 38.893101, 29.179760>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.484043, 38.230770, 29.465343> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.872978, 38.150158, 29.418110>,  <37.106339, 38.101791, 29.389771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.872978, 38.150158, 29.418110>,  <36.484043, 38.230770, 29.465343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.872978, 38.150158, 29.418110> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072035, -0.739619, 0.669159,
		-0.222193, -0.642143, -0.733677,
		0.972338, -0.201533, -0.118082,
		37.164680, 38.089699, 29.382685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.617393, 37.487568, 29.271788>,  <36.484043, 38.230770, 29.465343>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.617393, 37.487568, 29.271788> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.960541, 37.624092, 29.425449>,  <37.166428, 37.706005, 29.517647>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.960541, 37.624092, 29.425449>,  <36.617393, 37.487568, 29.271788>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.960541, 37.624092, 29.425449> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027850, -0.777349, 0.628453,
		0.513120, -0.528429, -0.676366,
		0.857865, 0.341309, 0.384157,
		37.217899, 37.726486, 29.540697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.918610, 36.875793, 29.489723>,  <36.617393, 37.487568, 29.271788>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.918610, 36.875793, 29.489723> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.181099, 37.105862, 29.685091>,  <37.338593, 37.243904, 29.802311>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.181099, 37.105862, 29.685091>,  <36.918610, 36.875793, 29.489723>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.181099, 37.105862, 29.685091> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025693, -0.629874, 0.776272,
		0.754130, -0.521956, -0.398560,
		0.656223, 0.575170, 0.488417,
		37.377968, 37.278412, 29.831615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.446270, 36.410553, 29.649115>,  <36.918610, 36.875793, 29.489723>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.446270, 36.410553, 29.649115> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.412552, 36.716778, 29.904240>,  <37.392319, 36.900513, 30.057316>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.412552, 36.716778, 29.904240>,  <37.446270, 36.410553, 29.649115>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.412552, 36.716778, 29.904240> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074763, -0.643148, 0.762084,
		0.993632, 0.016558, 0.111452,
		-0.084299, 0.765563, 0.637814,
		37.387264, 36.946445, 30.095583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.513618, 36.038097, 30.263311>,  <37.446270, 36.410553, 29.649115>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.513618, 36.038097, 30.263311> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.395912, 36.393482, 30.404188>,  <37.325291, 36.606712, 30.488714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.395912, 36.393482, 30.404188>,  <37.513618, 36.038097, 30.263311>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.395912, 36.393482, 30.404188> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269600, -0.430707, 0.861282,
		0.916911, 0.158493, 0.366272,
		-0.294263, 0.888466, 0.352190,
		37.307632, 36.660023, 30.509846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.186932, 35.652740, 30.289459>,  <37.513618, 36.038097, 30.263311>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.186932, 35.652740, 30.289459> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.371040, 35.306240, 30.211723>,  <38.481506, 35.098339, 30.165081>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.371040, 35.306240, 30.211723>,  <38.186932, 35.652740, 30.289459>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.371040, 35.306240, 30.211723> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481429, 0.427466, -0.765179,
		0.745908, 0.258627, 0.613786,
		0.460269, -0.866247, -0.194340,
		38.509121, 35.046368, 30.153421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.920429, 35.825832, 30.200264>,  <38.186932, 35.652740, 30.289459>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.920429, 35.825832, 30.200264> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.852001, 35.483669, 30.004707>,  <38.810944, 35.278370, 29.887373>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.852001, 35.483669, 30.004707>,  <38.920429, 35.825832, 30.200264>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.852001, 35.483669, 30.004707> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405582, 0.391072, -0.826175,
		0.897908, -0.339619, 0.280037,
		-0.171070, -0.855407, -0.488890,
		38.800678, 35.227047, 29.858040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.605095, 35.660378, 29.831493>,  <38.920429, 35.825832, 30.200264>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.605095, 35.660378, 29.831493> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.311062, 35.460438, 29.648279>,  <39.134640, 35.340473, 29.538351>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.311062, 35.460438, 29.648279>,  <39.605095, 35.660378, 29.831493>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.311062, 35.460438, 29.648279> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391979, 0.237894, -0.888684,
		0.553172, -0.832801, 0.021057,
		-0.735087, -0.499848, -0.458037,
		39.090534, 35.310482, 29.510868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.912987, 35.097179, 29.450094>,  <39.605095, 35.660378, 29.831493>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.912987, 35.097179, 29.450094> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.560528, 35.135670, 29.264914>,  <39.349052, 35.158764, 29.153805>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.560528, 35.135670, 29.264914>,  <39.912987, 35.097179, 29.450094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.560528, 35.135670, 29.264914> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449830, -0.131166, -0.883430,
		-0.145727, -0.986680, 0.072294,
		-0.881145, 0.096220, -0.462953,
		39.296185, 35.164536, 29.126028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.964005, 34.784348, 28.842402>,  <39.912987, 35.097179, 29.450094>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.964005, 34.784348, 28.842402> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.632607, 34.991840, 28.758007>,  <39.433769, 35.116337, 28.707371>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.632607, 34.991840, 28.758007>,  <39.964005, 34.784348, 28.842402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.632607, 34.991840, 28.758007> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292543, 0.079645, -0.952930,
		-0.477509, -0.851220, -0.217736,
		-0.828495, 0.518730, -0.210988,
		39.384060, 35.147461, 28.694712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.740040, 34.457676, 28.225662>,  <39.964005, 34.784348, 28.842402>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.740040, 34.457676, 28.225662> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.587605, 34.827438, 28.232056>,  <39.496143, 35.049294, 28.235891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.587605, 34.827438, 28.232056>,  <39.740040, 34.457676, 28.225662>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.587605, 34.827438, 28.232056> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211394, 0.103949, -0.971858,
		-0.900048, -0.366982, -0.235026,
		-0.381085, 0.924402, 0.015982,
		39.473278, 35.104759, 28.236851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.270187, 34.516331, 27.621557>,  <39.740040, 34.457676, 28.225662>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.270187, 34.516331, 27.621557> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.362270, 34.895672, 27.708857>,  <39.417522, 35.123276, 27.761236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.362270, 34.895672, 27.708857>,  <39.270187, 34.516331, 27.621557>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.362270, 34.895672, 27.708857> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022623, 0.218997, -0.975463,
		-0.972878, 0.229499, 0.028961,
		0.230210, 0.948351, 0.218250,
		39.431332, 35.180176, 27.774332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.730801, 34.971481, 27.280706>,  <39.270187, 34.516331, 27.621557>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.730801, 34.971481, 27.280706> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.041649, 35.218136, 27.331045>,  <39.228157, 35.366131, 27.361248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.041649, 35.218136, 27.331045>,  <38.730801, 34.971481, 27.280706>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.041649, 35.218136, 27.331045> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000002, 0.199963, -0.979804,
		-0.629348, 0.761428, 0.155397,
		0.777123, 0.616638, 0.125845,
		39.274784, 35.403126, 27.368799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.687187, 35.534122, 26.779989>,  <38.730801, 34.971481, 27.280706>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.687187, 35.534122, 26.779989> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.077934, 35.528076, 26.865320>,  <39.312382, 35.524448, 26.916519>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.077934, 35.528076, 26.865320>,  <38.687187, 35.534122, 26.779989>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.077934, 35.528076, 26.865320> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210779, 0.236824, -0.948413,
		-0.036183, 0.971435, 0.234531,
		0.976864, -0.015118, 0.213327,
		39.370995, 35.523540, 26.929317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.963100, 36.126213, 26.660398>,  <38.687187, 35.534122, 26.779989>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.963100, 36.126213, 26.660398> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.306969, 35.922031, 26.652344>,  <39.513290, 35.799522, 26.647511>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.306969, 35.922031, 26.652344>,  <38.963100, 36.126213, 26.660398>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.306969, 35.922031, 26.652344> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203887, 0.378975, -0.902667,
		0.468403, 0.771889, 0.429868,
		0.859668, -0.510456, -0.020135,
		39.564869, 35.768894, 26.646303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.309021, 36.602058, 26.246008>,  <38.963100, 36.126213, 26.660398>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.309021, 36.602058, 26.246008> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.516331, 36.260006, 26.250784>,  <39.640717, 36.054775, 26.253651>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.516331, 36.260006, 26.250784>,  <39.309021, 36.602058, 26.246008>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.516331, 36.260006, 26.250784> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348684, 0.198537, -0.915971,
		0.780905, 0.478887, 0.401067,
		0.518273, -0.855132, 0.011942,
		39.671814, 36.003468, 26.254366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.010990, 36.761486, 26.229443>,  <39.309021, 36.602058, 26.246008>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.010990, 36.761486, 26.229443> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.972832, 36.392719, 26.079256>,  <39.949936, 36.171459, 25.989143>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.972832, 36.392719, 26.079256>,  <40.010990, 36.761486, 26.229443>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.972832, 36.392719, 26.079256> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491622, 0.284343, -0.823078,
		0.865568, -0.263104, 0.426109,
		-0.095394, -0.921914, -0.375466,
		39.944214, 36.116146, 25.966616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.653103, 36.643822, 25.820610>,  <40.010990, 36.761486, 26.229443>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.653103, 36.643822, 25.820610> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.404766, 36.363663, 25.679756>,  <40.255764, 36.195568, 25.595243>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.404766, 36.363663, 25.679756>,  <40.653103, 36.643822, 25.820610>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.404766, 36.363663, 25.679756> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389474, 0.114256, -0.913923,
		0.680343, -0.704549, 0.201852,
		-0.620841, -0.700397, -0.352136,
		40.218513, 36.153545, 25.574116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.057053, 36.344288, 25.306992>,  <40.653103, 36.643822, 25.820610>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.057053, 36.344288, 25.306992> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.675877, 36.243553, 25.239489>,  <40.447170, 36.183113, 25.198986>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.675877, 36.243553, 25.239489>,  <41.057053, 36.344288, 25.306992>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.675877, 36.243553, 25.239489> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158492, 0.060666, -0.985495,
		0.258418, -0.965868, -0.017898,
		-0.952943, -0.251833, -0.168759,
		40.389996, 36.168003, 25.188860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<32.827915, 37.569920, 23.935844> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.158272, 37.673489, 24.136187>,  <33.356487, 37.735630, 24.256392>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.158272, 37.673489, 24.136187>,  <32.827915, 37.569920, 23.935844>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.158272, 37.673489, 24.136187> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109688, -0.797561, 0.593182,
		0.553052, -0.544844, -0.630300,
		0.825894, 0.258925, 0.500855,
		33.406040, 37.751167, 24.286444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.228607, 36.948555, 23.920454>,  <32.827915, 37.569920, 23.935844>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.228607, 36.948555, 23.920454> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.319984, 37.192982, 24.223614>,  <33.374809, 37.339638, 24.405510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.319984, 37.192982, 24.223614>,  <33.228607, 36.948555, 23.920454>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.319984, 37.192982, 24.223614> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159989, -0.744338, 0.648356,
		0.960322, -0.269366, -0.072272,
		0.228440, 0.611067, 0.757899,
		33.388515, 37.376301, 24.450983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.542679, 36.504368, 24.420259>,  <33.228607, 36.948555, 23.920454>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.542679, 36.504368, 24.420259> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.456436, 36.834629, 24.628799>,  <33.404690, 37.032787, 24.753923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.456436, 36.834629, 24.628799>,  <33.542679, 36.504368, 24.420259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.456436, 36.834629, 24.628799> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286121, -0.563894, 0.774699,
		0.933621, 0.017863, 0.357818,
		-0.215610, 0.825654, 0.521352,
		33.391754, 37.082325, 24.785206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.692093, 36.309258, 25.021099>,  <33.542679, 36.504368, 24.420259>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.692093, 36.309258, 25.021099> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.460655, 36.629837, 25.081631>,  <33.321793, 36.822186, 25.117949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.460655, 36.629837, 25.081631>,  <33.692093, 36.309258, 25.021099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.460655, 36.629837, 25.081631> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457092, -0.472295, 0.753661,
		0.675494, 0.366896, 0.639606,
		-0.578597, 0.801452, 0.151327,
		33.287075, 36.870274, 25.127029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.798649, 36.469296, 25.682180>,  <33.692093, 36.309258, 25.021099>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.798649, 36.469296, 25.682180> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.439568, 36.606277, 25.571289>,  <33.224121, 36.688469, 25.504755>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.439568, 36.606277, 25.571289>,  <33.798649, 36.469296, 25.682180>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.439568, 36.606277, 25.571289> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423230, -0.495270, 0.758672,
		0.122510, 0.798393, 0.589543,
		-0.897701, 0.342457, -0.277228,
		33.170258, 36.709015, 25.488121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.569748, 36.594341, 26.381336>,  <33.798649, 36.469296, 25.682180>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.569748, 36.594341, 26.381336> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.243763, 36.606712, 26.149858>,  <33.048172, 36.614136, 26.010973>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.243763, 36.606712, 26.149858>,  <33.569748, 36.594341, 26.381336>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.243763, 36.606712, 26.149858> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556935, -0.317844, 0.767332,
		-0.160202, 0.947638, 0.276255,
		-0.814959, 0.030928, -0.578693,
		32.999275, 36.615990, 25.976252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.116989, 36.902679, 26.828814>,  <33.569748, 36.594341, 26.381336>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.116989, 36.902679, 26.828814> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.905037, 36.710808, 26.549061>,  <32.777866, 36.595684, 26.381210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.905037, 36.710808, 26.549061>,  <33.116989, 36.902679, 26.828814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.905037, 36.710808, 26.549061> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533022, -0.453060, 0.714579,
		-0.659633, 0.751426, -0.015615,
		-0.529879, -0.479683, -0.699380,
		32.746075, 36.566902, 26.339247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.385651, 37.005795, 27.008661>,  <33.116989, 36.902679, 26.828814>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.385651, 37.005795, 27.008661> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.377110, 36.674023, 26.785381>,  <32.371983, 36.474960, 26.651413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.377110, 36.674023, 26.785381>,  <32.385651, 37.005795, 27.008661>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.377110, 36.674023, 26.785381> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528686, -0.464507, 0.710439,
		-0.848549, 0.310285, -0.428588,
		-0.021356, -0.829431, -0.558200,
		32.370705, 36.425194, 26.617922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.689827, 36.765018, 27.072563>,  <32.385651, 37.005795, 27.008661>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.689827, 36.765018, 27.072563> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.886717, 36.452171, 26.919722>,  <32.004852, 36.264462, 26.828016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.886717, 36.452171, 26.919722>,  <31.689827, 36.765018, 27.072563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.886717, 36.452171, 26.919722> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611389, -0.623097, 0.487805,
		-0.619592, -0.006523, -0.784897,
		0.492249, -0.782117, -0.382078,
		32.034386, 36.217537, 26.805092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.182068, 36.236294, 26.987602>,  <31.689827, 36.765018, 27.072563>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.182068, 36.236294, 26.987602> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.534262, 36.049244, 27.018791>,  <31.745577, 35.937016, 27.037504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.534262, 36.049244, 27.018791>,  <31.182068, 36.236294, 26.987602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.534262, 36.049244, 27.018791> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411486, -0.672150, 0.615543,
		-0.235434, -0.574059, -0.784236,
		0.880483, -0.467622, 0.077970,
		31.798407, 35.908958, 27.042183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.045490, 35.500221, 27.074642>,  <31.182068, 36.236294, 26.987602>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.045490, 35.500221, 27.074642> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.425692, 35.498745, 27.198921>,  <31.653812, 35.497860, 27.273489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.425692, 35.498745, 27.198921>,  <31.045490, 35.500221, 27.074642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.425692, 35.498745, 27.198921> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173309, -0.836233, 0.520268,
		0.257898, -0.548362, -0.795479,
		0.950501, -0.003687, 0.310699,
		31.710842, 35.497639, 27.292131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.260162, 34.791500, 26.965584>,  <31.045490, 35.500221, 27.074642>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.260162, 34.791500, 26.965584> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.478809, 34.989319, 27.235882>,  <31.609997, 35.108009, 27.398062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.478809, 34.989319, 27.235882>,  <31.260162, 34.791500, 26.965584>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.478809, 34.989319, 27.235882> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188853, -0.713378, 0.674853,
		0.815810, -0.496502, -0.296546,
		0.546615, 0.494548, 0.675747,
		31.642794, 35.137684, 27.438606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.723215, 34.306343, 27.344351>,  <31.260162, 34.791500, 26.965584>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.723215, 34.306343, 27.344351> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.704645, 34.613693, 27.599678>,  <31.693502, 34.798103, 27.752874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.704645, 34.613693, 27.599678>,  <31.723215, 34.306343, 27.344351>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.704645, 34.613693, 27.599678> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154964, -0.636809, 0.755288,
		0.986829, -0.063852, 0.148634,
		-0.046424, 0.768373, 0.638316,
		31.690718, 34.844204, 27.791172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.298931, 34.187595, 27.864363>,  <31.723215, 34.306343, 27.344351>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.298931, 34.187595, 27.864363> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.026691, 34.432819, 28.024836>,  <31.863348, 34.579952, 28.121119>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.026691, 34.432819, 28.024836>,  <32.298931, 34.187595, 27.864363>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.026691, 34.432819, 28.024836> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090729, -0.613880, 0.784168,
		0.727015, 0.497306, 0.473429,
		-0.680600, 0.613056, 0.401180,
		31.822512, 34.616737, 28.145189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.044914, 34.000092, 28.163206>,  <32.298931, 34.187595, 27.864363>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.044914, 34.000092, 28.163206> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.157314, 33.627083, 28.072481>,  <33.224754, 33.403278, 28.018045>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.157314, 33.627083, 28.072481>,  <33.044914, 34.000092, 28.163206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.157314, 33.627083, 28.072481> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508747, 0.345135, -0.788707,
		0.813767, 0.106234, 0.571399,
		0.280998, -0.932521, -0.226813,
		33.241615, 33.347328, 28.004436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.794838, 34.070107, 28.017916>,  <33.044914, 34.000092, 28.163206>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.794838, 34.070107, 28.017916> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.684299, 33.726219, 27.846096>,  <33.617977, 33.519886, 27.743004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.684299, 33.726219, 27.846096>,  <33.794838, 34.070107, 28.017916>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.684299, 33.726219, 27.846096> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571665, 0.212237, -0.792562,
		0.772547, -0.464583, 0.432820,
		-0.276351, -0.859720, -0.429549,
		33.601395, 33.468304, 27.717232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.408516, 33.835510, 27.726681>,  <33.794838, 34.070107, 28.017916>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.408516, 33.835510, 27.726681> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.116634, 33.634953, 27.540720>,  <33.941505, 33.514618, 27.429144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.116634, 33.634953, 27.540720>,  <34.408516, 33.835510, 27.726681>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.116634, 33.634953, 27.540720> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413908, 0.217283, -0.884007,
		0.544253, -0.837491, 0.048979,
		-0.729705, -0.501396, -0.464901,
		33.897724, 33.484535, 27.401249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.747757, 33.428646, 27.211765>,  <34.408516, 33.835510, 27.726681>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.747757, 33.428646, 27.211765> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.365189, 33.432167, 27.095024>,  <34.135647, 33.434280, 27.024979>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.365189, 33.432167, 27.095024>,  <34.747757, 33.428646, 27.211765>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.365189, 33.432167, 27.095024> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286681, 0.218017, -0.932890,
		0.055415, -0.975905, -0.211040,
		-0.956422, 0.008805, -0.291855,
		34.078262, 33.434807, 27.007467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.834641, 33.075115, 26.617901>,  <34.747757, 33.428646, 27.211765>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.834641, 33.075115, 26.617901> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.488155, 33.268005, 26.565525>,  <34.280266, 33.383739, 26.534100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.488155, 33.268005, 26.565525>,  <34.834641, 33.075115, 26.617901>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.488155, 33.268005, 26.565525> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215412, 0.123928, -0.968628,
		-0.450866, -0.867240, -0.211224,
		-0.866209, 0.482221, -0.130939,
		34.228294, 33.412670, 26.526243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.578083, 32.829556, 26.028522>,  <34.834641, 33.075115, 26.617901>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.578083, 32.829556, 26.028522> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.372849, 33.172607, 26.042419>,  <34.249706, 33.378441, 26.050758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.372849, 33.172607, 26.042419>,  <34.578083, 32.829556, 26.028522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.372849, 33.172607, 26.042419> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116841, 0.109888, -0.987053,
		-0.850347, -0.502384, -0.156589,
		-0.513087, 0.857634, 0.034744,
		34.218922, 33.429897, 26.052843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.081505, 32.808708, 25.523397>,  <34.578083, 32.829556, 26.028522>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.081505, 32.808708, 25.523397> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.112164, 33.202785, 25.584742>,  <34.130558, 33.439232, 25.621548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.112164, 33.202785, 25.584742>,  <34.081505, 32.808708, 25.523397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.112164, 33.202785, 25.584742> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071001, 0.148028, -0.986431,
		-0.994527, 0.086496, -0.058604,
		0.076647, 0.985193, 0.153359,
		34.135159, 33.498344, 25.630749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.801342, 33.157734, 24.847733>,  <34.081505, 32.808708, 25.523397>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.801342, 33.157734, 24.847733> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.981346, 33.457012, 25.042749>,  <34.089348, 33.636578, 25.159760>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.981346, 33.457012, 25.042749>,  <33.801342, 33.157734, 24.847733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.981346, 33.457012, 25.042749> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404161, 0.316201, -0.858295,
		-0.796332, 0.583288, -0.160096,
		0.450010, 0.748192, 0.487544,
		34.116348, 33.681469, 25.189013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.758137, 33.668209, 24.439266>,  <33.801342, 33.157734, 24.847733>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.758137, 33.668209, 24.439266> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.053413, 33.790825, 24.679634>,  <34.230579, 33.864395, 24.823854>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.053413, 33.790825, 24.679634>,  <33.758137, 33.668209, 24.439266>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.053413, 33.790825, 24.679634> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457849, 0.426542, -0.780024,
		-0.495430, 0.850937, 0.174518,
		0.738190, 0.306544, 0.600922,
		34.274872, 33.882790, 24.859911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.939415, 34.305992, 24.234991>,  <33.758137, 33.668209, 24.439266>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.939415, 34.305992, 24.234991> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.274975, 34.230839, 24.439325>,  <34.476311, 34.185745, 24.561926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.274975, 34.230839, 24.439325>,  <33.939415, 34.305992, 24.234991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.274975, 34.230839, 24.439325> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537057, 0.438231, -0.720779,
		-0.088442, 0.879007, 0.468534,
		0.838897, -0.187883, 0.510835,
		34.526646, 34.174473, 24.592575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.281277, 34.988861, 24.236263>,  <33.939415, 34.305992, 24.234991>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.281277, 34.988861, 24.236263> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.558949, 34.715164, 24.325638>,  <34.725552, 34.550945, 24.379263>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.558949, 34.715164, 24.325638>,  <34.281277, 34.988861, 24.236263>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.558949, 34.715164, 24.325638> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570062, 0.333087, -0.751054,
		0.439482, 0.648738, 0.621284,
		0.694179, -0.684245, 0.223435,
		34.767200, 34.509892, 24.392668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.955311, 35.276073, 24.550524>,  <34.281277, 34.988861, 24.236263>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.955311, 35.276073, 24.550524> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.030556, 34.923038, 24.378174>,  <35.075703, 34.711216, 24.274763>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.030556, 34.923038, 24.378174>,  <34.955311, 35.276073, 24.550524>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.030556, 34.923038, 24.378174> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569040, 0.455510, -0.684620,
		0.800505, -0.116400, 0.587914,
		0.188111, -0.882588, -0.430874,
		35.086990, 34.658260, 24.248911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.643044, 35.351200, 24.433201>,  <34.955311, 35.276073, 24.550524>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.643044, 35.351200, 24.433201> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.504692, 35.054821, 24.202946>,  <35.421680, 34.876991, 24.064793>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.504692, 35.054821, 24.202946>,  <35.643044, 35.351200, 24.433201>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.504692, 35.054821, 24.202946> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496458, 0.376067, -0.782370,
		0.796177, -0.556384, 0.237779,
		-0.345878, -0.740952, -0.575637,
		35.400928, 34.832535, 24.030254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.217293, 35.173527, 24.028664>,  <35.643044, 35.351200, 24.433201>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.217293, 35.173527, 24.028664> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.904385, 35.040916, 23.817705>,  <35.716640, 34.961349, 23.691130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.904385, 35.040916, 23.817705>,  <36.217293, 35.173527, 24.028664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.904385, 35.040916, 23.817705> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391066, 0.397655, -0.830023,
		0.484895, -0.855548, -0.181424,
		-0.782269, -0.331526, -0.527396,
		35.669704, 34.941460, 23.659487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.767487, 34.702015, 24.036163>,  <36.217293, 35.173527, 24.028664>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.767487, 34.702015, 24.036163> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.149723, 34.669731, 24.149538>,  <37.379063, 34.650360, 24.217564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.149723, 34.669731, 24.149538>,  <36.767487, 34.702015, 24.036163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.149723, 34.669731, 24.149538> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293868, -0.333408, 0.895813,
		0.022199, -0.939322, -0.342318,
		0.955588, -0.080710, 0.283438,
		37.436401, 34.645519, 24.234570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.773773, 34.088257, 24.344805>,  <36.767487, 34.702015, 24.036163>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.773773, 34.088257, 24.344805> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.116055, 34.257343, 24.464193>,  <37.321423, 34.358795, 24.535826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.116055, 34.257343, 24.464193>,  <36.773773, 34.088257, 24.344805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.116055, 34.257343, 24.464193> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097883, -0.434150, 0.895507,
		0.508128, -0.795501, -0.330126,
		0.855701, 0.422719, 0.298470,
		37.372765, 34.384159, 24.553734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.084316, 33.605122, 24.763449>,  <36.773773, 34.088257, 24.344805>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.084316, 33.605122, 24.763449> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.289452, 33.930077, 24.874458>,  <37.412533, 34.125050, 24.941065>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.289452, 33.930077, 24.874458>,  <37.084316, 33.605122, 24.763449>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.289452, 33.930077, 24.874458> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171342, -0.413628, 0.894178,
		0.841212, -0.411018, -0.351321,
		0.512840, 0.812389, 0.277524,
		37.443302, 34.173794, 24.957716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.646404, 33.339905, 25.065525>,  <37.084316, 33.605122, 24.763449>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.646404, 33.339905, 25.065525> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.635681, 33.712582, 25.210432>,  <37.629246, 33.936188, 25.297377>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.635681, 33.712582, 25.210432>,  <37.646404, 33.339905, 25.065525>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.635681, 33.712582, 25.210432> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031451, -0.363005, 0.931256,
		0.999146, 0.013575, 0.039035,
		-0.026812, 0.931688, 0.362268,
		37.627636, 33.992088, 25.319113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.118370, 33.364307, 25.563051>,  <37.646404, 33.339905, 25.065525>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.118370, 33.364307, 25.563051> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.838490, 33.641216, 25.633682>,  <37.670563, 33.807362, 25.676062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.838490, 33.641216, 25.633682>,  <38.118370, 33.364307, 25.563051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.838490, 33.641216, 25.633682> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166340, -0.398219, 0.902082,
		0.694806, 0.601812, 0.393785,
		-0.699697, 0.692274, 0.176579,
		37.628582, 33.848900, 25.686657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.301498, 33.646389, 26.219038>,  <38.118370, 33.364307, 25.563051>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.301498, 33.646389, 26.219038> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.920219, 33.762154, 26.184031>,  <37.691452, 33.831612, 26.163027>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.920219, 33.762154, 26.184031>,  <38.301498, 33.646389, 26.219038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.920219, 33.762154, 26.184031> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154186, -0.216282, 0.964079,
		0.260083, 0.932451, 0.250782,
		-0.953196, 0.289408, -0.087519,
		37.634262, 33.848976, 26.157774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.139748, 34.081245, 26.821529>,  <38.301498, 33.646389, 26.219038>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.139748, 34.081245, 26.821529> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.786999, 33.965664, 26.672499>,  <37.575352, 33.896317, 26.583080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.786999, 33.965664, 26.672499>,  <38.139748, 34.081245, 26.821529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.786999, 33.965664, 26.672499> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287813, -0.295991, 0.910798,
		-0.373455, 0.910437, 0.177862,
		-0.881870, -0.288951, -0.372576,
		37.522438, 33.878979, 26.560726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.705250, 34.254070, 27.329250>,  <38.139748, 34.081245, 26.821529>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.705250, 34.254070, 27.329250> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.499355, 33.979908, 27.123236>,  <37.375816, 33.815411, 26.999626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.499355, 33.979908, 27.123236>,  <37.705250, 34.254070, 27.329250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.499355, 33.979908, 27.123236> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369498, -0.364730, 0.854660,
		-0.773637, 0.630232, -0.065514,
		-0.514739, -0.685404, -0.515039,
		37.344933, 33.774288, 26.968723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.084728, 34.319645, 27.601976>,  <37.705250, 34.254070, 27.329250>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.084728, 34.319645, 27.601976> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.125603, 33.958977, 27.433903>,  <37.150127, 33.742577, 27.333059>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.125603, 33.958977, 27.433903>,  <37.084728, 34.319645, 27.601976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.125603, 33.958977, 27.433903> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365645, -0.426870, 0.827095,
		-0.925128, 0.069123, -0.373309,
		0.102183, -0.901667, -0.420184,
		37.156258, 33.688477, 27.307848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.578503, 33.924328, 27.935314>,  <37.084728, 34.319645, 27.601976>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.578503, 33.924328, 27.935314> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.813042, 33.652592, 27.758816>,  <36.953766, 33.489552, 27.652916>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.813042, 33.652592, 27.758816>,  <36.578503, 33.924328, 27.935314>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.813042, 33.652592, 27.758816> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151943, -0.627273, 0.763833,
		-0.795684, -0.380825, -0.471019,
		0.586344, -0.679338, -0.441248,
		36.988945, 33.448792, 27.626442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.143898, 33.265167, 27.908194>,  <36.578503, 33.924328, 27.935314>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.143898, 33.265167, 27.908194> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.523769, 33.153564, 27.851244>,  <36.751690, 33.086601, 27.817074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.523769, 33.153564, 27.851244>,  <36.143898, 33.265167, 27.908194>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.523769, 33.153564, 27.851244> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079638, -0.654652, 0.751723,
		-0.302943, -0.702555, -0.643927,
		0.949675, -0.279010, -0.142372,
		36.808674, 33.069862, 27.808533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.216862, 32.519478, 27.685251>,  <36.143898, 33.265167, 27.908194>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.216862, 32.519478, 27.685251> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.546680, 32.624599, 27.885670>,  <36.744572, 32.687672, 28.005920>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.546680, 32.624599, 27.885670>,  <36.216862, 32.519478, 27.685251>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.546680, 32.624599, 27.885670> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217595, -0.670166, 0.709598,
		0.522274, -0.694125, -0.495400,
		0.824550, 0.262808, 0.501048,
		36.794044, 32.703442, 28.035984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.408459, 31.862318, 28.025061>,  <36.216862, 32.519478, 27.685251>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.408459, 31.862318, 28.025061> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.650444, 32.120914, 28.210993>,  <36.795635, 32.276073, 28.322552>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.650444, 32.120914, 28.210993>,  <36.408459, 31.862318, 28.025061>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.650444, 32.120914, 28.210993> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045385, -0.610819, 0.790468,
		0.794959, -0.457108, -0.398864,
		0.604963, 0.646492, 0.464830,
		36.831932, 32.314861, 28.350441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.758026, 31.467451, 28.466948>,  <36.408459, 31.862318, 28.025061>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.758026, 31.467451, 28.466948> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.830441, 31.834358, 28.608845>,  <36.873890, 32.054504, 28.693983>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.830441, 31.834358, 28.608845>,  <36.758026, 31.467451, 28.466948>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.830441, 31.834358, 28.608845> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027919, -0.365350, 0.930451,
		0.983080, -0.158543, -0.091751,
		0.181038, 0.917269, 0.354742,
		36.884750, 32.109539, 28.715267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<41.142353, 35.796715, 24.806711> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.778324, 35.962280, 24.798311>,  <40.559906, 36.061619, 24.793272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.778324, 35.962280, 24.798311>,  <41.142353, 35.796715, 24.806711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.778324, 35.962280, 24.798311> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071112, 0.106037, -0.991816,
		-0.408297, -0.904120, -0.125936,
		-0.910075, 0.413911, -0.020999,
		40.505302, 36.086452, 24.792011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.878529, 35.501736, 24.199333>,  <41.142353, 35.796715, 24.806711>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.878529, 35.501736, 24.199333> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.649090, 35.820713, 24.274242>,  <40.511429, 36.012100, 24.319189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.649090, 35.820713, 24.274242>,  <40.878529, 35.501736, 24.199333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.649090, 35.820713, 24.274242> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006519, 0.224172, -0.974528,
		-0.819113, -0.560205, -0.123386,
		-0.573595, 0.797444, 0.187274,
		40.477013, 36.059948, 24.330425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.389980, 35.526871, 23.542149>,  <40.878529, 35.501736, 24.199333>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.389980, 35.526871, 23.542149> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.417168, 35.887440, 23.713181>,  <40.433479, 36.103779, 23.815800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.417168, 35.887440, 23.713181>,  <40.389980, 35.526871, 23.542149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.417168, 35.887440, 23.713181> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020280, 0.427235, -0.903913,
		-0.997482, 0.070106, 0.010756,
		0.067965, 0.901418, 0.427581,
		40.437557, 36.157864, 23.841455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.964153, 36.001602, 23.127003>,  <40.389980, 35.526871, 23.542149>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.964153, 36.001602, 23.127003> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.229603, 36.225010, 23.326063>,  <40.388874, 36.359055, 23.445499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.229603, 36.225010, 23.326063>,  <39.964153, 36.001602, 23.127003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.229603, 36.225010, 23.326063> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035641, 0.640889, -0.766805,
		-0.747218, 0.526607, 0.405403,
		0.663623, 0.558521, 0.497653,
		40.428688, 36.392567, 23.475359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.672783, 36.692677, 23.050920>,  <39.964153, 36.001602, 23.127003>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.672783, 36.692677, 23.050920> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.047516, 36.773926, 23.164822>,  <40.272358, 36.822674, 23.233162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.047516, 36.773926, 23.164822>,  <39.672783, 36.692677, 23.050920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.047516, 36.773926, 23.164822> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050076, 0.727833, -0.683923,
		-0.346170, 0.654982, 0.671688,
		0.936834, 0.203118, 0.284753,
		40.328568, 36.834862, 23.250248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.648502, 37.456215, 23.135487>,  <39.672783, 36.692677, 23.050920>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.648502, 37.456215, 23.135487> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.027382, 37.341934, 23.077261>,  <40.254711, 37.273365, 23.042326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.027382, 37.341934, 23.077261>,  <39.648502, 37.456215, 23.135487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.027382, 37.341934, 23.077261> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091777, 0.676540, -0.730664,
		0.307233, 0.678724, 0.667039,
		0.947198, -0.285703, -0.145564,
		40.311543, 37.256222, 23.033592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.024632, 38.113014, 23.079382>,  <39.648502, 37.456215, 23.135487>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.024632, 38.113014, 23.079382> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.246384, 37.815441, 22.930132>,  <40.379433, 37.636898, 22.840582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.246384, 37.815441, 22.930132>,  <40.024632, 38.113014, 23.079382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.246384, 37.815441, 22.930132> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149861, 0.530226, -0.834507,
		0.818661, 0.406716, 0.405434,
		0.554379, -0.743937, -0.373125,
		40.412697, 37.592258, 22.818195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.576111, 38.517570, 22.733664>,  <40.024632, 38.113014, 23.079382>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.576111, 38.517570, 22.733664> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.567234, 38.149502, 22.577309>,  <40.561909, 37.928661, 22.483496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.567234, 38.149502, 22.577309>,  <40.576111, 38.517570, 22.733664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.567234, 38.149502, 22.577309> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144262, 0.383943, -0.912018,
		0.989290, -0.076630, 0.124225,
		-0.022193, -0.920171, -0.390886,
		40.560577, 37.873451, 22.460043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.107178, 38.534618, 22.140926>,  <40.576111, 38.517570, 22.733664>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.107178, 38.534618, 22.140926> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.874657, 38.219284, 22.060318>,  <40.735142, 38.030083, 22.011953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.874657, 38.219284, 22.060318>,  <41.107178, 38.534618, 22.140926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.874657, 38.219284, 22.060318> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087293, 0.306654, -0.947810,
		0.808990, -0.533375, -0.247075,
		-0.581305, -0.788337, -0.201520,
		40.700264, 37.982784, 21.999863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.286148, 38.308174, 21.484669>,  <41.107178, 38.534618, 22.140926>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.286148, 38.308174, 21.484669> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.917118, 38.162739, 21.536301>,  <40.695702, 38.075478, 21.567280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.917118, 38.162739, 21.536301>,  <41.286148, 38.308174, 21.484669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.917118, 38.162739, 21.536301> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253264, 0.318322, -0.913525,
		0.291048, -0.875489, -0.385758,
		-0.922577, -0.363578, 0.129083,
		40.640347, 38.053661, 21.575024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.280746, 37.906429, 20.931530>,  <41.286148, 38.308174, 21.484669>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.280746, 37.906429, 20.931530> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.900200, 37.956612, 21.044067>,  <40.671871, 37.986721, 21.111589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.900200, 37.956612, 21.044067>,  <41.280746, 37.906429, 20.931530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.900200, 37.956612, 21.044067> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233531, 0.301869, -0.924304,
		-0.200888, -0.945059, -0.257892,
		-0.951371, 0.125456, 0.281343,
		40.614788, 37.994247, 21.128469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.824715, 37.509483, 20.505798>,  <41.280746, 37.906429, 20.931530>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.824715, 37.509483, 20.505798> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.583080, 37.797386, 20.642639>,  <40.438099, 37.970127, 20.724745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.583080, 37.797386, 20.642639>,  <40.824715, 37.509483, 20.505798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.583080, 37.797386, 20.642639> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158106, 0.312506, -0.936666,
		-0.781078, -0.619915, -0.074983,
		-0.604086, 0.719754, 0.342104,
		40.401855, 38.013313, 20.745270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.321346, 37.314129, 20.129557>,  <40.824715, 37.509483, 20.505798>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.321346, 37.314129, 20.129557> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.329643, 37.693039, 20.257454>,  <40.334621, 37.920387, 20.334192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.329643, 37.693039, 20.257454>,  <40.321346, 37.314129, 20.129557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.329643, 37.693039, 20.257454> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063339, 0.320416, -0.945157,
		-0.997776, -0.000645, 0.066647,
		0.020745, 0.947277, 0.319744,
		40.335865, 37.977222, 20.353376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.670864, 37.598839, 19.896935>,  <40.321346, 37.314129, 20.129557>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.670864, 37.598839, 19.896935> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.971821, 37.858574, 19.941231>,  <40.152397, 38.014416, 19.967808>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.971821, 37.858574, 19.941231>,  <39.670864, 37.598839, 19.896935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.971821, 37.858574, 19.941231> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264612, 0.451899, -0.851920,
		-0.603225, 0.611678, 0.511829,
		0.752396, 0.649335, 0.110739,
		40.197540, 38.053375, 19.974453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.291222, 37.573185, 19.355627>,  <39.670864, 37.598839, 19.896935>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.291222, 37.573185, 19.355627> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.025799, 37.280064, 19.295370>,  <38.866543, 37.104191, 19.259216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.025799, 37.280064, 19.295370>,  <39.291222, 37.573185, 19.355627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.025799, 37.280064, 19.295370> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088155, -0.123368, 0.988438,
		-0.742911, 0.669168, 0.017262,
		-0.663560, -0.732799, -0.150642,
		38.826729, 37.060223, 19.250177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.842621, 37.642960, 19.945919>,  <39.291222, 37.573185, 19.355627>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.842621, 37.642960, 19.945919> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.760033, 37.284466, 19.788877>,  <38.710480, 37.069370, 19.694653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.760033, 37.284466, 19.788877>,  <38.842621, 37.642960, 19.945919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.760033, 37.284466, 19.788877> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265471, -0.334889, 0.904088,
		-0.941751, 0.290893, -0.168778,
		-0.206471, -0.896231, -0.392606,
		38.698090, 37.015598, 19.671095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.135208, 37.449215, 20.116882>,  <38.842621, 37.642960, 19.945919>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.135208, 37.449215, 20.116882> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.342537, 37.115074, 20.043629>,  <38.466934, 36.914589, 19.999678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.342537, 37.115074, 20.043629>,  <38.135208, 37.449215, 20.116882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.342537, 37.115074, 20.043629> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263134, -0.359538, 0.895261,
		-0.813698, -0.415845, -0.406164,
		0.518321, -0.835348, -0.183132,
		38.498032, 36.864471, 19.988689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.680531, 36.929455, 20.358442>,  <38.135208, 37.449215, 20.116882>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.680531, 36.929455, 20.358442> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.025669, 36.730118, 20.324604>,  <38.232750, 36.610516, 20.304302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.025669, 36.730118, 20.324604>,  <37.680531, 36.929455, 20.358442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.025669, 36.730118, 20.324604> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242653, -0.555176, 0.795550,
		-0.443423, -0.665907, -0.599954,
		0.862842, -0.498345, -0.084593,
		38.284523, 36.580616, 20.299227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.472073, 36.212788, 20.335175>,  <37.680531, 36.929455, 20.358442>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.472073, 36.212788, 20.335175> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.843601, 36.250999, 20.478373>,  <38.066521, 36.273926, 20.564291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.843601, 36.250999, 20.478373>,  <37.472073, 36.212788, 20.335175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.843601, 36.250999, 20.478373> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232610, -0.601721, 0.764084,
		0.288408, -0.792973, -0.536671,
		0.928824, 0.095533, 0.357994,
		38.122250, 36.279659, 20.585772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.605415, 35.541130, 20.660223>,  <37.472073, 36.212788, 20.335175>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.605415, 35.541130, 20.660223> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.880207, 35.783562, 20.820589>,  <38.045082, 35.929020, 20.916809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.880207, 35.783562, 20.820589>,  <37.605415, 35.541130, 20.660223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.880207, 35.783562, 20.820589> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050083, -0.589889, 0.805930,
		0.724951, -0.533577, -0.435594,
		0.686978, 0.606075, 0.400917,
		38.086300, 35.965385, 20.940865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.102867, 35.054867, 20.820181>,  <37.605415, 35.541130, 20.660223>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.102867, 35.054867, 20.820181> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.135441, 35.379372, 21.051773>,  <38.154984, 35.574074, 21.190729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.135441, 35.379372, 21.051773>,  <38.102867, 35.054867, 20.820181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.135441, 35.379372, 21.051773> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036025, -0.578135, 0.815146,
		0.996028, -0.087235, -0.017852,
		0.081431, 0.811265, 0.578981,
		38.159870, 35.622749, 21.225468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.418766, 34.775024, 21.363995>,  <38.102867, 35.054867, 20.820181>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.418766, 34.775024, 21.363995> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.293495, 35.122105, 21.518406>,  <38.218330, 35.330353, 21.611053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.293495, 35.122105, 21.518406>,  <38.418766, 34.775024, 21.363995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.293495, 35.122105, 21.518406> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049949, -0.420965, 0.905700,
		0.948379, 0.264366, 0.175178,
		-0.313181, 0.867697, 0.386030,
		38.199539, 35.382416, 21.634214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.917896, 35.016376, 21.947449>,  <38.418766, 34.775024, 21.363995>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.917896, 35.016376, 21.947449> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.578609, 35.215015, 22.021118>,  <38.375038, 35.334198, 22.065321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.578609, 35.215015, 22.021118>,  <38.917896, 35.016376, 21.947449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.578609, 35.215015, 22.021118> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016270, -0.323137, 0.946212,
		0.529398, 0.805590, 0.266011,
		-0.848218, 0.496595, 0.184175,
		38.324142, 35.363995, 22.076370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.947849, 35.313755, 22.634964>,  <38.917896, 35.016376, 21.947449>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.947849, 35.313755, 22.634964> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.555340, 35.331470, 22.559988>,  <38.319832, 35.342098, 22.515001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.555340, 35.331470, 22.559988>,  <38.947849, 35.313755, 22.634964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.555340, 35.331470, 22.559988> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191806, -0.313114, 0.930145,
		-0.017497, 0.948682, 0.315746,
		-0.981277, 0.044287, -0.187441,
		38.260956, 35.344757, 22.503756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.667446, 35.660286, 23.121244>,  <38.947849, 35.313755, 22.634964>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.667446, 35.660286, 23.121244> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.379356, 35.429058, 22.967827>,  <38.206501, 35.290321, 22.875776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.379356, 35.429058, 22.967827>,  <38.667446, 35.660286, 23.121244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.379356, 35.429058, 22.967827> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252348, -0.296692, 0.921029,
		-0.646218, 0.760135, 0.067809,
		-0.720224, -0.578074, -0.383546,
		38.163288, 35.255634, 22.852764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.105171, 35.943974, 23.453089>,  <38.667446, 35.660286, 23.121244>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.105171, 35.943974, 23.453089> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.013336, 35.578209, 23.319738>,  <37.958237, 35.358749, 23.239729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.013336, 35.578209, 23.319738>,  <38.105171, 35.943974, 23.453089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.013336, 35.578209, 23.319738> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332098, -0.248370, 0.909958,
		-0.914878, 0.319624, -0.246653,
		-0.229583, -0.914414, -0.333375,
		37.944462, 35.303886, 23.219727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.502686, 35.749432, 23.731709>,  <38.105171, 35.943974, 23.453089>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.502686, 35.749432, 23.731709> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.642212, 35.386719, 23.636982>,  <37.725925, 35.169090, 23.580147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.642212, 35.386719, 23.636982>,  <37.502686, 35.749432, 23.731709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.642212, 35.386719, 23.636982> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340289, -0.357982, 0.869513,
		-0.873231, -0.222712, -0.433436,
		0.348813, -0.906779, -0.236815,
		37.746857, 35.114685, 23.565937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.986290, 35.349609, 23.749870>,  <37.502686, 35.749432, 23.731709>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.986290, 35.349609, 23.749870> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.306660, 35.120583, 23.819935>,  <37.498882, 34.983166, 23.861973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.306660, 35.120583, 23.819935>,  <36.986290, 35.349609, 23.749870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.306660, 35.120583, 23.819935> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448732, -0.380296, 0.808711,
		-0.396442, -0.726310, -0.561522,
		0.800920, -0.572581, 0.175153,
		37.546936, 34.948811, 23.872482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.475552, 35.060211, 23.325008>,  <36.986290, 35.349609, 23.749870>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.475552, 35.060211, 23.325008> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.079243, 35.082878, 23.275753>,  <35.841457, 35.096478, 23.246201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.079243, 35.082878, 23.275753>,  <36.475552, 35.060211, 23.325008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.079243, 35.082878, 23.275753> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134306, 0.533264, -0.835219,
		0.018335, -0.844048, -0.535953,
		-0.990770, 0.056668, -0.123138,
		35.782013, 35.099880, 23.238811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.277943, 34.872932, 22.531981>,  <36.475552, 35.060211, 23.325008>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.277943, 34.872932, 22.531981> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.978394, 35.085445, 22.690439>,  <35.798664, 35.212952, 22.785515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.978394, 35.085445, 22.690439>,  <36.277943, 34.872932, 22.531981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.978394, 35.085445, 22.690439> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027677, 0.572170, -0.819668,
		-0.662138, -0.624789, -0.413778,
		-0.748870, 0.531281, 0.396148,
		35.753731, 35.244831, 22.809284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.771320, 34.965660, 22.028137>,  <36.277943, 34.872932, 22.531981>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.771320, 34.965660, 22.028137> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.683979, 35.251972, 22.293463>,  <35.631573, 35.423759, 22.452658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.683979, 35.251972, 22.293463>,  <35.771320, 34.965660, 22.028137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.683979, 35.251972, 22.293463> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126847, 0.653131, -0.746545,
		-0.967590, -0.247153, -0.051821,
		-0.218356, 0.715776, 0.663314,
		35.618473, 35.466705, 22.492456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.043377, 35.343090, 21.879313>,  <35.771320, 34.965660, 22.028137>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.043377, 35.343090, 21.879313> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.282146, 35.582485, 22.093040>,  <35.425407, 35.726124, 22.221277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.282146, 35.582485, 22.093040>,  <35.043377, 35.343090, 21.879313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.282146, 35.582485, 22.093040> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166941, 0.744060, -0.646920,
		-0.784739, 0.296961, 0.544057,
		0.596922, 0.598489, 0.534318,
		35.461224, 35.762032, 22.253336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.659538, 35.984318, 21.915956>,  <35.043377, 35.343090, 21.879313>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.659538, 35.984318, 21.915956> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.041103, 36.071163, 21.998825>,  <35.270042, 36.123268, 22.048546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.041103, 36.071163, 21.998825>,  <34.659538, 35.984318, 21.915956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.041103, 36.071163, 21.998825> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019509, 0.733760, -0.679129,
		-0.299461, 0.643786, 0.704176,
		0.953909, 0.217110, 0.207173,
		35.327274, 36.136295, 22.060976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.653744, 36.600300, 21.891836>,  <34.659538, 35.984318, 21.915956>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.653744, 36.600300, 21.891836> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.045242, 36.524342, 21.860849>,  <35.280140, 36.478767, 21.842258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.045242, 36.524342, 21.860849>,  <34.653744, 36.600300, 21.891836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.045242, 36.524342, 21.860849> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068766, 0.659711, -0.748367,
		0.193216, 0.727132, 0.658746,
		0.978743, -0.189896, -0.077465,
		35.338867, 36.467373, 21.837610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.995762, 37.326683, 21.934860>,  <34.653744, 36.600300, 21.891836>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.995762, 37.326683, 21.934860> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.258404, 37.091480, 21.745916>,  <35.415989, 36.950359, 21.632551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.258404, 37.091480, 21.745916>,  <34.995762, 37.326683, 21.934860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.258404, 37.091480, 21.745916> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166598, 0.723874, -0.669516,
		0.735606, 0.360913, 0.573259,
		0.656604, -0.588004, -0.472358,
		35.455383, 36.915077, 21.604208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.001553, 37.990829, 22.161457>,  <34.995762, 37.326683, 21.934860>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.001553, 37.990829, 22.161457> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.821938, 38.347927, 22.146589>,  <34.714169, 38.562183, 22.137669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.821938, 38.347927, 22.146589>,  <35.001553, 37.990829, 22.161457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.821938, 38.347927, 22.146589> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271312, -0.096596, 0.957632,
		0.851326, 0.440097, 0.285586,
		-0.449037, 0.892740, -0.037169,
		34.687225, 38.615749, 22.135439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.225735, 38.435093, 22.807686>,  <35.001553, 37.990829, 22.161457>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.225735, 38.435093, 22.807686> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.867477, 38.526089, 22.654812>,  <34.652523, 38.580688, 22.563087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.867477, 38.526089, 22.654812>,  <35.225735, 38.435093, 22.807686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.867477, 38.526089, 22.654812> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409968, -0.089073, 0.907740,
		0.172463, 0.969697, 0.173043,
		-0.895646, 0.227494, -0.382183,
		34.598782, 38.594337, 22.540157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.971813, 38.993916, 23.253014>,  <35.225735, 38.435093, 22.807686>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.971813, 38.993916, 23.253014> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.662102, 38.858719, 23.039000>,  <34.476276, 38.777603, 22.910591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.662102, 38.858719, 23.039000>,  <34.971813, 38.993916, 23.253014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.662102, 38.858719, 23.039000> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491439, -0.211550, 0.844828,
		-0.398727, 0.917067, -0.002302,
		-0.774276, -0.337987, -0.535033,
		34.429817, 38.757324, 22.878490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.466454, 39.342560, 23.616070>,  <34.971813, 38.993916, 23.253014>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.466454, 39.342560, 23.616070> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.285694, 39.043530, 23.421373>,  <34.177238, 38.864113, 23.304556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.285694, 39.043530, 23.421373>,  <34.466454, 39.342560, 23.616070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.285694, 39.043530, 23.421373> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336567, -0.362427, 0.869120,
		-0.826141, 0.556577, -0.087828,
		-0.451901, -0.747576, -0.486741,
		34.150124, 38.819256, 23.275351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.821526, 39.327122, 24.002668>,  <34.466454, 39.342560, 23.616070>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.821526, 39.327122, 24.002668> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.840828, 38.984100, 23.797817>,  <33.852409, 38.778286, 23.674908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.840828, 38.984100, 23.797817>,  <33.821526, 39.327122, 24.002668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.840828, 38.984100, 23.797817> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401178, -0.486191, 0.776321,
		-0.914728, 0.167989, -0.367495,
		0.048259, -0.857553, -0.512126,
		33.855305, 38.726833, 23.644180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.106308, 38.903881, 24.125017>,  <33.821526, 39.327122, 24.002668>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.106308, 38.903881, 24.125017> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.373940, 38.643497, 23.981583>,  <33.534519, 38.487267, 23.895521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.373940, 38.643497, 23.981583>,  <33.106308, 38.903881, 24.125017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.373940, 38.643497, 23.981583> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254294, -0.653893, 0.712571,
		-0.698337, -0.385576, -0.603040,
		0.669074, -0.650964, -0.358587,
		33.574661, 38.448208, 23.874006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.760403, 38.267567, 23.965057>,  <33.106308, 38.903881, 24.125017>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.760403, 38.267567, 23.965057> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.144329, 38.210381, 24.061657>,  <33.374683, 38.176067, 24.119617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.144329, 38.210381, 24.061657>,  <32.760403, 38.267567, 23.965057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.144329, 38.210381, 24.061657> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262462, -0.761973, 0.592040,
		0.099377, -0.631631, -0.768873,
		0.959811, -0.142965, 0.241501,
		33.432274, 38.167492, 24.134108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<38.323517, 41.324837, 21.482290> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.546581, 40.992870, 21.488743>,  <38.680420, 40.793690, 21.492615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.546581, 40.992870, 21.488743>,  <38.323517, 41.324837, 21.482290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.546581, 40.992870, 21.488743> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530326, -0.341267, 0.776075,
		-0.638569, -0.441341, -0.630435,
		0.557660, -0.829913, 0.016133,
		38.713879, 40.743896, 21.493584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.974854, 40.755272, 21.585697>,  <38.323517, 41.324837, 21.482290>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.974854, 40.755272, 21.585697> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.322578, 40.584072, 21.684574>,  <38.531216, 40.481350, 21.743900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.322578, 40.584072, 21.684574>,  <37.974854, 40.755272, 21.585697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.322578, 40.584072, 21.684574> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387601, -0.280018, 0.878269,
		-0.306685, -0.859303, -0.409319,
		0.869316, -0.428005, 0.247190,
		38.583374, 40.455673, 21.758732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.742508, 40.158100, 21.938059>,  <37.974854, 40.755272, 21.585697>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.742508, 40.158100, 21.938059> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.126469, 40.147820, 22.049719>,  <38.356846, 40.141651, 22.116714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.126469, 40.147820, 22.049719>,  <37.742508, 40.158100, 21.938059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.126469, 40.147820, 22.049719> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274625, -0.286128, 0.917994,
		0.056279, -0.957847, -0.281713,
		0.959903, -0.025702, 0.279152,
		38.414440, 40.140110, 22.133465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.949429, 39.506241, 22.335098>,  <37.742508, 40.158100, 21.938059>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.949429, 39.506241, 22.335098> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.185875, 39.804794, 22.457409>,  <38.327744, 39.983925, 22.530794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.185875, 39.804794, 22.457409>,  <37.949429, 39.506241, 22.335098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.185875, 39.804794, 22.457409> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074009, -0.327308, 0.942015,
		0.803184, -0.579470, -0.138238,
		0.591116, 0.746380, 0.305775,
		38.363209, 40.028709, 22.549141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.254433, 39.193291, 22.838577>,  <37.949429, 39.506241, 22.335098>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.254433, 39.193291, 22.838577> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.345722, 39.580853, 22.876797>,  <38.400497, 39.813389, 22.899729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.345722, 39.580853, 22.876797>,  <38.254433, 39.193291, 22.838577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.345722, 39.580853, 22.876797> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025922, -0.092056, 0.995416,
		0.973262, -0.229659, 0.004107,
		0.228228, 0.968908, 0.095548,
		38.414192, 39.871525, 22.905460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.934189, 39.251869, 23.127478>,  <38.254433, 39.193291, 22.838577>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.934189, 39.251869, 23.127478> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.731052, 39.584129, 23.218801>,  <38.609173, 39.783485, 23.273596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.731052, 39.584129, 23.218801>,  <38.934189, 39.251869, 23.127478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.731052, 39.584129, 23.218801> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075303, -0.221210, 0.972315,
		0.858156, 0.510969, 0.049789,
		-0.507837, 0.830648, 0.228310,
		38.578701, 39.833324, 23.287294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.131584, 39.426414, 23.862711>,  <38.934189, 39.251869, 23.127478>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.131584, 39.426414, 23.862711> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.821060, 39.677338, 23.837963>,  <38.634747, 39.827892, 23.823114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.821060, 39.677338, 23.837963>,  <39.131584, 39.426414, 23.862711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.821060, 39.677338, 23.837963> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077109, 0.002906, 0.997018,
		0.625621, 0.778762, 0.046116,
		-0.776307, 0.627312, -0.061868,
		38.588169, 39.865532, 23.819403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.238174, 40.021473, 24.364347>,  <39.131584, 39.426414, 23.862711>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.238174, 40.021473, 24.364347> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.844738, 40.025082, 24.292274>,  <38.608677, 40.027248, 24.249031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.844738, 40.025082, 24.292274>,  <39.238174, 40.021473, 24.364347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.844738, 40.025082, 24.292274> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180144, 0.005129, 0.983627,
		0.009797, 0.999946, -0.003420,
		-0.983592, 0.009021, -0.180184,
		38.549660, 40.027786, 24.238218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.962975, 40.355350, 24.929724>,  <39.238174, 40.021473, 24.364347>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.962975, 40.355350, 24.929724> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.636017, 40.184368, 24.775248>,  <38.439842, 40.081779, 24.682562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.636017, 40.184368, 24.775248>,  <38.962975, 40.355350, 24.929724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.636017, 40.184368, 24.775248> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317502, -0.225088, 0.921156,
		-0.480684, 0.875564, 0.048266,
		-0.817395, -0.427461, -0.386190,
		38.390797, 40.056129, 24.659391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.380959, 40.674816, 25.316856>,  <38.962975, 40.355350, 24.929724>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.380959, 40.674816, 25.316856> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.232685, 40.330574, 25.177164>,  <38.143723, 40.124031, 25.093349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.232685, 40.330574, 25.177164>,  <38.380959, 40.674816, 25.316856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.232685, 40.330574, 25.177164> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458669, -0.157339, 0.874567,
		-0.807601, 0.484365, -0.336409,
		-0.370680, -0.860601, -0.349231,
		38.121483, 40.072395, 25.072395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.684982, 40.543217, 25.596413>,  <38.380959, 40.674816, 25.316856>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.684982, 40.543217, 25.596413> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.813782, 40.182762, 25.480291>,  <37.891060, 39.966488, 25.410618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.813782, 40.182762, 25.480291>,  <37.684982, 40.543217, 25.596413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.813782, 40.182762, 25.480291> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417998, -0.410444, 0.810440,
		-0.849469, -0.139611, -0.508833,
		0.321994, -0.901135, -0.290303,
		37.910381, 39.912422, 25.393200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.133747, 40.086967, 25.694515>,  <37.684982, 40.543217, 25.596413>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.133747, 40.086967, 25.694515> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.470757, 39.871738, 25.684496>,  <37.672962, 39.742599, 25.678484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.470757, 39.871738, 25.684496>,  <37.133747, 40.086967, 25.694515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.470757, 39.871738, 25.684496> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320075, -0.537498, 0.780159,
		-0.433246, -0.649286, -0.625080,
		0.842526, -0.538074, -0.025049,
		37.723515, 39.710316, 25.676981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.537575, 40.245777, 25.359417>,  <37.133747, 40.086967, 25.694515>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.537575, 40.245777, 25.359417> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.209702, 40.464272, 25.428406>,  <36.012978, 40.595367, 25.469799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.209702, 40.464272, 25.428406>,  <36.537575, 40.245777, 25.359417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.209702, 40.464272, 25.428406> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176522, 0.527316, -0.831131,
		-0.544941, -0.650818, -0.528654,
		-0.819683, 0.546236, 0.172472,
		35.963799, 40.628143, 25.480148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.168556, 40.242931, 24.829416>,  <36.537575, 40.245777, 25.359417>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.168556, 40.242931, 24.829416> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.044640, 40.584103, 24.997482>,  <35.970287, 40.788807, 25.098322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.044640, 40.584103, 24.997482>,  <36.168556, 40.242931, 24.829416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.044640, 40.584103, 24.997482> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078954, 0.463458, -0.882595,
		-0.947520, -0.240248, -0.210919,
		-0.309794, 0.852929, 0.420167,
		35.951702, 40.839981, 25.123533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.623669, 40.494839, 24.402769>,  <36.168556, 40.242931, 24.829416>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.623669, 40.494839, 24.402769> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.745987, 40.812290, 24.613157>,  <35.819378, 41.002762, 24.739389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.745987, 40.812290, 24.613157>,  <35.623669, 40.494839, 24.402769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.745987, 40.812290, 24.613157> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004908, 0.551111, -0.834418,
		-0.952083, 0.257746, 0.164635,
		0.305800, 0.793627, 0.525968,
		35.837727, 41.050377, 24.770948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.185947, 41.105400, 24.195589>,  <35.623669, 40.494839, 24.402769>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.185947, 41.105400, 24.195589> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.523479, 41.235146, 24.366579>,  <35.725998, 41.312992, 24.469173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.523479, 41.235146, 24.366579>,  <35.185947, 41.105400, 24.195589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.523479, 41.235146, 24.366579> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159640, 0.608812, -0.777086,
		-0.512308, 0.723974, 0.461955,
		0.843834, 0.324361, 0.427475,
		35.776630, 41.332455, 24.494822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.186863, 41.889622, 24.166489>,  <35.185947, 41.105400, 24.195589>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.186863, 41.889622, 24.166489> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.564812, 41.777298, 24.233854>,  <35.791580, 41.709904, 24.274275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.564812, 41.777298, 24.233854>,  <35.186863, 41.889622, 24.166489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.564812, 41.777298, 24.233854> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284653, 0.450207, -0.846337,
		0.161840, 0.847619, 0.505321,
		0.944871, -0.280812, 0.168416,
		35.848274, 41.693054, 24.284380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.589672, 42.500988, 24.221586>,  <35.186863, 41.889622, 24.166489>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.589672, 42.500988, 24.221586> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.835236, 42.200977, 24.123137>,  <35.982574, 42.020973, 24.064068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.835236, 42.200977, 24.123137>,  <35.589672, 42.500988, 24.221586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.835236, 42.200977, 24.123137> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375329, 0.551644, -0.744861,
		0.694435, 0.364903, 0.620167,
		0.613913, -0.750023, -0.246122,
		36.019409, 41.975971, 24.049299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.100048, 42.881092, 23.837996>,  <35.589672, 42.500988, 24.221586>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.100048, 42.881092, 23.837996> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.212013, 42.504368, 23.763542>,  <36.279194, 42.278336, 23.718870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.212013, 42.504368, 23.763542>,  <36.100048, 42.881092, 23.837996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.212013, 42.504368, 23.763542> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338936, 0.278349, -0.898690,
		0.898203, 0.188471, 0.397127,
		0.279917, -0.941807, -0.186134,
		36.295990, 42.221825, 23.707703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.815239, 42.975418, 23.449717>,  <36.100048, 42.881092, 23.837996>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.815239, 42.975418, 23.449717> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.644115, 42.621811, 23.374371>,  <36.541439, 42.409645, 23.329163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.644115, 42.621811, 23.374371>,  <36.815239, 42.975418, 23.449717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.644115, 42.621811, 23.374371> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171226, 0.125361, -0.977224,
		0.887501, -0.450322, 0.097737,
		-0.427813, -0.884022, -0.188365,
		36.515770, 42.356606, 23.317862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.222141, 42.650223, 22.907917>,  <36.815239, 42.975418, 23.449717>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.222141, 42.650223, 22.907917> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.868290, 42.465420, 22.882669>,  <36.655979, 42.354538, 22.867521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.868290, 42.465420, 22.882669>,  <37.222141, 42.650223, 22.907917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.868290, 42.465420, 22.882669> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001018, 0.137271, -0.990533,
		0.466293, -0.876190, -0.121904,
		-0.884630, -0.462003, -0.063117,
		36.602901, 42.326820, 22.863735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.322144, 42.188126, 22.442598>,  <37.222141, 42.650223, 22.907917>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.322144, 42.188126, 22.442598> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.925713, 42.241428, 22.441999>,  <36.687855, 42.273411, 22.441641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.925713, 42.241428, 22.441999>,  <37.322144, 42.188126, 22.442598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.925713, 42.241428, 22.441999> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035379, 0.252270, -0.967010,
		-0.128484, -0.958438, -0.254734,
		-0.991081, 0.133258, -0.001496,
		36.628387, 42.281406, 22.441551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.166332, 41.784000, 21.994997>,  <37.322144, 42.188126, 22.442598>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.166332, 41.784000, 21.994997> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.858578, 42.037243, 22.028984>,  <36.673923, 42.189190, 22.049376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.858578, 42.037243, 22.028984>,  <37.166332, 41.784000, 21.994997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.858578, 42.037243, 22.028984> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036598, 0.176483, -0.983623,
		-0.637734, -0.753677, -0.158954,
		-0.769387, 0.633107, 0.084966,
		36.627762, 42.227177, 22.054474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.695843, 41.568485, 21.563543>,  <37.166332, 41.784000, 21.994997>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.695843, 41.568485, 21.563543> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.629082, 41.956123, 21.636206>,  <36.589024, 42.188705, 21.679804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.629082, 41.956123, 21.636206>,  <36.695843, 41.568485, 21.563543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.629082, 41.956123, 21.636206> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099179, 0.166805, -0.980989,
		-0.980973, -0.181745, 0.068274,
		-0.166901, 0.969095, 0.181657,
		36.579010, 42.246853, 21.690702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.232376, 41.645924, 21.026844>,  <36.695843, 41.568485, 21.563543>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.232376, 41.645924, 21.026844> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.365108, 42.002388, 21.150600>,  <36.444748, 42.216267, 21.224854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.365108, 42.002388, 21.150600>,  <36.232376, 41.645924, 21.026844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.365108, 42.002388, 21.150600> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049082, 0.343841, -0.937744,
		-0.942061, 0.295989, 0.157837,
		0.331833, 0.891159, 0.309391,
		36.464657, 42.269737, 21.243418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.265877, 41.141953, 20.472586>,  <36.232376, 41.645924, 21.026844>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.265877, 41.141953, 20.472586> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.956146, 41.044777, 20.238867>,  <35.770309, 40.986473, 20.098635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.956146, 41.044777, 20.238867>,  <36.265877, 41.141953, 20.472586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.956146, 41.044777, 20.238867> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258917, -0.720901, 0.642856,
		-0.577396, 0.649063, 0.495310,
		-0.774323, -0.242938, -0.584299,
		35.723850, 40.971897, 20.063578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.687870, 41.187145, 20.779051>,  <36.265877, 41.141953, 20.472586>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.687870, 41.187145, 20.779051> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.555508, 40.917023, 20.515396>,  <35.476089, 40.754948, 20.357203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.555508, 40.917023, 20.515396>,  <35.687870, 41.187145, 20.779051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.555508, 40.917023, 20.515396> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365825, -0.552066, 0.749264,
		-0.869870, 0.489063, -0.064364,
		-0.330904, -0.675308, -0.659137,
		35.456238, 40.714432, 20.317656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.096031, 40.975628, 21.102703>,  <35.687870, 41.187145, 20.779051>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.096031, 40.975628, 21.102703> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.183331, 40.723015, 20.805105>,  <35.235710, 40.571445, 20.626547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.183331, 40.723015, 20.805105>,  <35.096031, 40.975628, 21.102703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.183331, 40.723015, 20.805105> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375413, -0.758040, 0.533330,
		-0.900795, 0.162907, -0.402528,
		0.218250, -0.631535, -0.743996,
		35.248806, 40.533554, 20.581905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.435265, 40.659058, 20.928013>,  <35.096031, 40.975628, 21.102703>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.435265, 40.659058, 20.928013> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.735027, 40.422127, 20.809666>,  <34.914886, 40.279968, 20.738657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.735027, 40.422127, 20.809666>,  <34.435265, 40.659058, 20.928013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.735027, 40.422127, 20.809666> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341921, -0.728880, 0.593148,
		-0.566989, -0.343347, -0.748757,
		0.749409, -0.592324, -0.295869,
		34.959850, 40.244431, 20.720905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.145561, 40.042137, 20.795572>,  <34.435265, 40.659058, 20.928013>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.145561, 40.042137, 20.795572> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.529774, 39.953896, 20.863344>,  <34.760303, 39.900951, 20.904007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.529774, 39.953896, 20.863344>,  <34.145561, 40.042137, 20.795572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.529774, 39.953896, 20.863344> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276893, -0.700207, 0.658058,
		-0.026536, -0.679001, -0.733657,
		0.960534, -0.220607, 0.169430,
		34.817932, 39.887714, 20.914173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.192436, 39.245583, 20.673231>,  <34.145561, 40.042137, 20.795572>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.192436, 39.245583, 20.673231> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.498970, 39.363274, 20.901674>,  <34.682892, 39.433887, 21.038740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.498970, 39.363274, 20.901674>,  <34.192436, 39.245583, 20.673231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.498970, 39.363274, 20.901674> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201152, -0.734372, 0.648255,
		0.610140, -0.611659, -0.503590,
		0.766334, 0.294228, 0.571106,
		34.728870, 39.451542, 21.073006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.458729, 38.627556, 20.905466>,  <34.192436, 39.245583, 20.673231>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.458729, 38.627556, 20.905466> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.596748, 38.914555, 21.147505>,  <34.679558, 39.086754, 21.292728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.596748, 38.914555, 21.147505>,  <34.458729, 38.627556, 20.905466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.596748, 38.914555, 21.147505> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306530, -0.523197, 0.795176,
		0.887121, -0.459852, 0.039409,
		0.345044, 0.717497, 0.605097,
		34.700260, 39.129803, 21.329035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.855221, 38.260040, 21.452991>,  <34.458729, 38.627556, 20.905466>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.855221, 38.260040, 21.452991> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.758995, 38.625446, 21.584209>,  <34.701260, 38.844692, 21.662939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.758995, 38.625446, 21.584209>,  <34.855221, 38.260040, 21.452991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.758995, 38.625446, 21.584209> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340295, -0.395894, 0.852917,
		0.909026, 0.093550, 0.406104,
		-0.240564, 0.913519, 0.328043,
		34.686825, 38.899502, 21.682623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.549633, 37.847591, 21.450262>,  <34.855221, 38.260040, 21.452991>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.549633, 37.847591, 21.450262> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.673813, 37.488758, 21.324495>,  <35.748322, 37.273457, 21.249035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.673813, 37.488758, 21.324495>,  <35.549633, 37.847591, 21.450262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.673813, 37.488758, 21.324495> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323380, 0.410698, -0.852498,
		0.893894, 0.162981, 0.417601,
		0.310449, -0.897087, -0.314416,
		35.766949, 37.219631, 21.230171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.225063, 37.916607, 21.357679>,  <35.549633, 37.847591, 21.450262>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.225063, 37.916607, 21.357679> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.100479, 37.613766, 21.127972>,  <36.025726, 37.432060, 20.990147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.100479, 37.613766, 21.127972>,  <36.225063, 37.916607, 21.357679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.100479, 37.613766, 21.127972> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429148, 0.427120, -0.795865,
		0.847834, -0.494329, 0.191878,
		-0.311464, -0.757105, -0.574267,
		36.007038, 37.386635, 20.955692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.781006, 37.719753, 20.894514>,  <36.225063, 37.916607, 21.357679>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.781006, 37.719753, 20.894514> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.481323, 37.525703, 20.714140>,  <36.301514, 37.409275, 20.605915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.481323, 37.525703, 20.714140>,  <36.781006, 37.719753, 20.894514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.481323, 37.525703, 20.714140> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267059, 0.401770, -0.875934,
		0.606109, -0.776683, -0.171452,
		-0.749208, -0.485123, -0.450936,
		36.256561, 37.380165, 20.578859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.007507, 37.198311, 20.603586>,  <36.781006, 37.719753, 20.894514>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.007507, 37.198311, 20.603586> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.676746, 37.295238, 20.400600>,  <36.478291, 37.353394, 20.278809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.676746, 37.295238, 20.400600>,  <37.007507, 37.198311, 20.603586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.676746, 37.295238, 20.400600> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556177, 0.219048, -0.801676,
		-0.083100, -0.945145, -0.315902,
		-0.826898, 0.242317, -0.507465,
		36.428677, 37.367935, 20.248362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.055119, 36.913601, 19.984240>,  <37.007507, 37.198311, 20.603586>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.055119, 36.913601, 19.984240> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.773708, 37.187588, 19.908484>,  <36.604862, 37.351978, 19.863029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.773708, 37.187588, 19.908484>,  <37.055119, 36.913601, 19.984240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.773708, 37.187588, 19.908484> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474469, 0.254317, -0.842735,
		-0.529081, -0.682748, -0.503914,
		-0.703529, 0.684966, -0.189388,
		36.562649, 37.393078, 19.851667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.786869, 36.705719, 19.389372>,  <37.055119, 36.913601, 19.984240>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.786869, 36.705719, 19.389372> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.697170, 37.092003, 19.441710>,  <36.643353, 37.323772, 19.473112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.697170, 37.092003, 19.441710>,  <36.786869, 36.705719, 19.389372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.697170, 37.092003, 19.441710> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600328, 0.242652, -0.762054,
		-0.767672, -0.092337, -0.634155,
		-0.224245, 0.965709, 0.130845,
		36.629898, 37.381714, 19.480963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.838890, 36.864838, 18.694281>,  <36.786869, 36.705719, 19.389372>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.838890, 36.864838, 18.694281> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.824333, 37.213970, 18.888943>,  <36.815598, 37.423450, 19.005739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.824333, 37.213970, 18.888943>,  <36.838890, 36.864838, 18.694281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.824333, 37.213970, 18.888943> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580671, 0.414804, -0.700541,
		-0.813324, 0.257091, -0.521927,
		-0.036395, 0.872835, 0.486656,
		36.813416, 37.475822, 19.034939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.675919, 37.344093, 18.169292>,  <36.838890, 36.864838, 18.694281>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.675919, 37.344093, 18.169292> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.844837, 37.539028, 18.475016>,  <36.946190, 37.655991, 18.658449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.844837, 37.539028, 18.475016>,  <36.675919, 37.344093, 18.169292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.844837, 37.539028, 18.475016> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597911, 0.483983, -0.638955,
		-0.681299, 0.726817, -0.087000,
		0.422297, 0.487337, 0.764309,
		36.971527, 37.685230, 18.704308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.673561, 37.988331, 17.933203>,  <36.675919, 37.344093, 18.169292>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.673561, 37.988331, 17.933203> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.968380, 37.944012, 18.199883>,  <37.145271, 37.917419, 18.359890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.968380, 37.944012, 18.199883>,  <36.673561, 37.988331, 17.933203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.968380, 37.944012, 18.199883> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635659, 0.448726, -0.628158,
		-0.229565, 0.886774, 0.401162,
		0.737046, -0.110799, 0.666698,
		37.189495, 37.910770, 18.399893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<32.684048, 32.350967, 32.712540> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.032547, 32.154652, 32.715416>,  <33.241646, 32.036861, 32.717144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.032547, 32.154652, 32.715416>,  <32.684048, 32.350967, 32.712540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.032547, 32.154652, 32.715416> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202718, 0.346445, -0.915905,
		0.447020, 0.799441, 0.401331,
		0.871251, -0.490785, 0.007193,
		33.293922, 32.007416, 32.717575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.021091, 32.749947, 32.393803>,  <32.684048, 32.350967, 32.712540>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.021091, 32.749947, 32.393803> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.234379, 32.413425, 32.358284>,  <33.362350, 32.211514, 32.336975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.234379, 32.413425, 32.358284>,  <33.021091, 32.749947, 32.393803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.234379, 32.413425, 32.358284> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220918, 0.239795, -0.945354,
		0.816621, 0.484467, 0.313723,
		0.533222, -0.841303, -0.088794,
		33.394344, 32.161034, 32.331646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.739578, 32.874874, 32.256485>,  <33.021091, 32.749947, 32.393803>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.739578, 32.874874, 32.256485> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.668404, 32.507236, 32.115856>,  <33.625698, 32.286655, 32.031479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.668404, 32.507236, 32.115856>,  <33.739578, 32.874874, 32.256485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.668404, 32.507236, 32.115856> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433452, 0.247545, -0.866511,
		0.883436, -0.306573, 0.354337,
		-0.177934, -0.919094, -0.351575,
		33.615025, 32.231506, 32.010384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.240234, 32.837700, 31.798685>,  <33.739578, 32.874874, 32.256485>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.240234, 32.837700, 31.798685> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.981979, 32.548058, 31.701672>,  <33.827026, 32.374271, 31.643463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.981979, 32.548058, 31.701672>,  <34.240234, 32.837700, 31.798685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.981979, 32.548058, 31.701672> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181543, 0.162954, -0.969788,
		0.741755, -0.670157, 0.026248,
		-0.645633, -0.724110, -0.242534,
		33.788288, 32.330826, 31.628912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.573273, 32.412193, 31.254574>,  <34.240234, 32.837700, 31.798685>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.573273, 32.412193, 31.254574> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.186756, 32.321453, 31.205894>,  <33.954845, 32.267010, 31.176687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.186756, 32.321453, 31.205894>,  <34.573273, 32.412193, 31.254574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.186756, 32.321453, 31.205894> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124228, 0.003144, -0.992249,
		0.225478, -0.973924, 0.025144,
		-0.966296, -0.226853, -0.121698,
		33.896866, 32.253395, 31.169386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.579956, 32.081211, 30.723150>,  <34.573273, 32.412193, 31.254574>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.579956, 32.081211, 30.723150> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.189903, 32.169590, 30.730103>,  <33.955872, 32.222618, 30.734274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.189903, 32.169590, 30.730103>,  <34.579956, 32.081211, 30.723150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.189903, 32.169590, 30.730103> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003924, 0.095632, -0.995409,
		-0.221593, -0.970586, -0.094120,
		-0.975131, 0.220945, 0.017383,
		33.897366, 32.235874, 30.735317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.421368, 31.942696, 30.046907>,  <34.579956, 32.081211, 30.723150>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.421368, 31.942696, 30.046907> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.075623, 32.116825, 30.147594>,  <33.868176, 32.221302, 30.208008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.075623, 32.116825, 30.147594>,  <34.421368, 31.942696, 30.046907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.075623, 32.116825, 30.147594> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176761, 0.205601, -0.962540,
		-0.470773, -0.876481, -0.100765,
		-0.864366, 0.435326, 0.251719,
		33.816311, 32.247421, 30.223110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.870304, 31.682924, 29.569799>,  <34.421368, 31.942696, 30.046907>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.870304, 31.682924, 29.569799> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.741634, 32.027531, 29.726933>,  <33.664433, 32.234295, 29.821213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.741634, 32.027531, 29.726933>,  <33.870304, 31.682924, 29.569799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.741634, 32.027531, 29.726933> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396875, 0.254001, -0.882028,
		-0.859662, -0.439628, 0.260209,
		-0.321671, 0.861516, 0.392832,
		33.645134, 32.285984, 29.844782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.146923, 31.715481, 29.328894>,  <33.870304, 31.682924, 29.569799>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.146923, 31.715481, 29.328894> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.276623, 32.083107, 29.418499>,  <33.354443, 32.303680, 29.472263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.276623, 32.083107, 29.418499>,  <33.146923, 31.715481, 29.328894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.276623, 32.083107, 29.418499> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183331, 0.293373, -0.938255,
		-0.928036, 0.263161, 0.263620,
		0.324251, 0.919064, 0.224015,
		33.373898, 32.358826, 29.485704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.676270, 32.140820, 29.000763>,  <33.146923, 31.715481, 29.328894>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.676270, 32.140820, 29.000763> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.983746, 32.385426, 29.075773>,  <33.168232, 32.532188, 29.120779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.983746, 32.385426, 29.075773>,  <32.676270, 32.140820, 29.000763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.983746, 32.385426, 29.075773> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142292, 0.449324, -0.881965,
		-0.623596, 0.651272, 0.432403,
		0.768688, 0.611517, 0.187526,
		33.214352, 32.568882, 29.132030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.403526, 32.908539, 28.928677>,  <32.676270, 32.140820, 29.000763>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.403526, 32.908539, 28.928677> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.796772, 32.901711, 28.855795>,  <33.032719, 32.897614, 28.812065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.796772, 32.901711, 28.855795>,  <32.403526, 32.908539, 28.928677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.796772, 32.901711, 28.855795> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170864, 0.270934, -0.947312,
		0.065537, 0.962446, 0.263442,
		0.983112, -0.017071, -0.182204,
		33.091705, 32.896587, 28.801134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.556450, 33.545315, 28.481232>,  <32.403526, 32.908539, 28.928677>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.556450, 33.545315, 28.481232> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.855389, 33.290058, 28.407206>,  <33.034752, 33.136906, 28.362789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.855389, 33.290058, 28.407206>,  <32.556450, 33.545315, 28.481232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.855389, 33.290058, 28.407206> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041920, 0.323259, -0.945382,
		0.663111, 0.698770, 0.268337,
		0.747346, -0.638141, -0.185065,
		33.079594, 33.098618, 28.351686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.430733, 34.299042, 28.744749>,  <32.556450, 33.545315, 28.481232>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.430733, 34.299042, 28.744749> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.059052, 34.431458, 28.679037>,  <31.836042, 34.510906, 28.639610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.059052, 34.431458, 28.679037>,  <32.430733, 34.299042, 28.744749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.059052, 34.431458, 28.679037> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279814, -0.339842, 0.897893,
		0.241407, 0.880296, 0.408413,
		-0.929207, 0.331037, -0.164279,
		31.780289, 34.530769, 28.629753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.258892, 34.769207, 29.229280>,  <32.430733, 34.299042, 28.744749>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.258892, 34.769207, 29.229280> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.903418, 34.650337, 29.089605>,  <31.690134, 34.579014, 29.005800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.903418, 34.650337, 29.089605>,  <32.258892, 34.769207, 29.229280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.903418, 34.650337, 29.089605> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269068, -0.278657, 0.921929,
		-0.371278, 0.913256, 0.167677,
		-0.888682, -0.297175, -0.349187,
		31.636812, 34.561184, 28.984850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.719917, 35.131592, 29.637430>,  <32.258892, 34.769207, 29.229280>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.719917, 35.131592, 29.637430> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.597982, 34.788181, 29.472504>,  <31.524822, 34.582134, 29.373547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.597982, 34.788181, 29.472504>,  <31.719917, 35.131592, 29.637430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.597982, 34.788181, 29.472504> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444553, -0.254604, 0.858807,
		-0.842286, 0.445094, -0.304048,
		-0.304838, -0.858527, -0.412318,
		31.506531, 34.530624, 29.348808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.117056, 35.211315, 29.900896>,  <31.719917, 35.131592, 29.637430>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.117056, 35.211315, 29.900896> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.139668, 34.828430, 29.787367>,  <31.153234, 34.598701, 29.719250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.139668, 34.828430, 29.787367>,  <31.117056, 35.211315, 29.900896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.139668, 34.828430, 29.787367> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475864, -0.275741, 0.835177,
		-0.877700, 0.087847, -0.471089,
		0.056531, -0.957209, -0.283821,
		31.156628, 34.541267, 29.702221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.441381, 34.915436, 30.064093>,  <31.117056, 35.211315, 29.900896>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.441381, 34.915436, 30.064093> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.694302, 34.608536, 30.021172>,  <30.846054, 34.424397, 29.995419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.694302, 34.608536, 30.021172>,  <30.441381, 34.915436, 30.064093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.694302, 34.608536, 30.021172> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367265, -0.418815, 0.830488,
		-0.682136, -0.485710, -0.546603,
		0.632302, -0.767254, -0.107305,
		30.883993, 34.378361, 29.988979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.064165, 34.387714, 30.316723>,  <30.441381, 34.915436, 30.064093>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.064165, 34.387714, 30.316723> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.449566, 34.284088, 30.343695>,  <30.680807, 34.221912, 30.359877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.449566, 34.284088, 30.343695>,  <30.064165, 34.387714, 30.316723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.449566, 34.284088, 30.343695> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196069, -0.511455, 0.836642,
		-0.182257, -0.819329, -0.543583,
		0.963504, -0.259063, 0.067428,
		30.738617, 34.206367, 30.363924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.057962, 33.659157, 30.387194>,  <30.064165, 34.387714, 30.316723>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.057962, 33.659157, 30.387194> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.390593, 33.771702, 30.578743>,  <30.590170, 33.839230, 30.693672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.390593, 33.771702, 30.578743>,  <30.057962, 33.659157, 30.387194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.390593, 33.771702, 30.578743> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302317, -0.493977, 0.815225,
		0.465928, -0.822691, -0.325717,
		0.831574, 0.281366, 0.478871,
		30.640064, 33.856113, 30.722404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.182323, 33.163670, 30.888840>,  <30.057962, 33.659157, 30.387194>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.182323, 33.163670, 30.888840> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.434570, 33.449734, 31.009417>,  <30.585918, 33.621372, 31.081762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.434570, 33.449734, 31.009417>,  <30.182323, 33.163670, 30.888840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.434570, 33.449734, 31.009417> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329968, -0.104492, 0.938191,
		0.702457, -0.691104, 0.170086,
		0.630615, 0.715162, 0.301443,
		30.623755, 33.664284, 31.099850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.681072, 32.880188, 31.338839>,  <30.182323, 33.163670, 30.888840>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.681072, 32.880188, 31.338839> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.702610, 33.259567, 31.463764>,  <30.715532, 33.487194, 31.538719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.702610, 33.259567, 31.463764>,  <30.681072, 32.880188, 31.338839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.702610, 33.259567, 31.463764> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036517, -0.310688, 0.949810,
		0.997881, -0.062546, 0.017906,
		0.053844, 0.948452, 0.312314,
		30.718763, 33.544102, 31.557459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.201246, 32.824661, 31.842113>,  <30.681072, 32.880188, 31.338839>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.201246, 32.824661, 31.842113> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.987961, 33.158428, 31.897871>,  <30.859989, 33.358688, 31.931326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.987961, 33.158428, 31.897871>,  <31.201246, 32.824661, 31.842113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.987961, 33.158428, 31.897871> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072776, -0.209402, 0.975118,
		0.842845, 0.509801, 0.172382,
		-0.533213, 0.834418, 0.139392,
		30.827997, 33.408752, 31.939690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.547636, 33.178726, 32.372215>,  <31.201246, 32.824661, 31.842113>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.547636, 33.178726, 32.372215> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.167210, 33.302197, 32.366600>,  <30.938953, 33.376278, 32.363232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.167210, 33.302197, 32.366600>,  <31.547636, 33.178726, 32.372215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.167210, 33.302197, 32.366600> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079873, -0.201707, 0.976184,
		0.298490, 0.929535, 0.216491,
		-0.951065, 0.308673, -0.014038,
		30.881889, 33.394798, 32.362389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.591438, 33.741703, 32.896233>,  <31.547636, 33.178726, 32.372215>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.591438, 33.741703, 32.896233> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.200283, 33.667278, 32.858044>,  <30.965590, 33.622623, 32.835133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.200283, 33.667278, 32.858044>,  <31.591438, 33.741703, 32.896233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.200283, 33.667278, 32.858044> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130281, 0.184914, 0.974081,
		-0.163589, 0.964980, -0.205066,
		-0.977888, -0.186065, -0.095468,
		30.906916, 33.611458, 32.829403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.218204, 34.348423, 33.200157>,  <31.591438, 33.741703, 32.896233>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.218204, 34.348423, 33.200157> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.951712, 34.050220, 33.192631>,  <30.791817, 33.871300, 33.188114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.951712, 34.050220, 33.192631>,  <31.218204, 34.348423, 33.200157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.951712, 34.050220, 33.192631> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196680, 0.151312, 0.968722,
		-0.719343, 0.649093, -0.247435,
		-0.666230, -0.745509, -0.018818,
		30.751842, 33.826569, 33.186985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.906208, 34.499691, 33.765903>,  <31.218204, 34.348423, 33.200157>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.906208, 34.499691, 33.765903> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.793068, 34.120266, 33.709015>,  <30.725183, 33.892612, 33.674881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.793068, 34.120266, 33.709015>,  <30.906208, 34.499691, 33.765903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.793068, 34.120266, 33.709015> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262011, -0.066223, 0.962790,
		-0.922684, 0.309590, -0.229802,
		-0.282852, -0.948561, -0.142218,
		30.708212, 33.835697, 33.666351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.537903, 34.940517, 33.525627>,  <30.906208, 34.499691, 33.765903>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.537903, 34.940517, 33.525627> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.717886, 35.061352, 33.861790>,  <31.825876, 35.133850, 34.063488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.717886, 35.061352, 33.861790>,  <31.537903, 34.940517, 33.525627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.717886, 35.061352, 33.861790> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077017, 0.924421, -0.373516,
		-0.889723, 0.232792, 0.392685,
		0.449958, 0.302082, 0.840407,
		31.852873, 35.151978, 34.113911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.167133, 35.534031, 34.030766>,  <31.537903, 34.940517, 33.525627>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.167133, 35.534031, 34.030766> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.565710, 35.536762, 33.997169>,  <31.804857, 35.538399, 33.977013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.565710, 35.536762, 33.997169>,  <31.167133, 35.534031, 34.030766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.565710, 35.536762, 33.997169> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045612, 0.881764, -0.469481,
		0.070852, 0.471642, 0.878939,
		0.996444, 0.006827, -0.083987,
		31.864643, 35.538811, 33.971973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.449263, 36.183037, 34.233841>,  <31.167133, 35.534031, 34.030766>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.449263, 36.183037, 34.233841> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.735237, 36.032780, 33.997959>,  <31.906822, 35.942623, 33.856430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.735237, 36.032780, 33.997959>,  <31.449263, 36.183037, 34.233841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.735237, 36.032780, 33.997959> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201085, 0.918252, -0.341142,
		0.669650, 0.125314, 0.732029,
		0.714936, -0.375646, -0.589709,
		31.949718, 35.920086, 33.821045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.950193, 36.814281, 34.131721>,  <31.449263, 36.183037, 34.233841>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.950193, 36.814281, 34.131721> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.065334, 36.533730, 33.870888>,  <32.134418, 36.365398, 33.714390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.065334, 36.533730, 33.870888>,  <31.950193, 36.814281, 34.131721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.065334, 36.533730, 33.870888> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251596, 0.712369, -0.655156,
		0.924035, 0.024527, 0.381521,
		0.287853, -0.701376, -0.652083,
		32.151691, 36.323318, 33.675262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.548813, 36.984962, 33.936806>,  <31.950193, 36.814281, 34.131721>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.548813, 36.984962, 33.936806> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.401073, 36.754204, 33.645390>,  <32.312428, 36.615749, 33.470539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.401073, 36.754204, 33.645390>,  <32.548813, 36.984962, 33.936806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.401073, 36.754204, 33.645390> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249284, 0.693732, -0.675717,
		0.895230, -0.431191, -0.112421,
		-0.369353, -0.576897, -0.728538,
		32.290268, 36.581135, 33.426826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.989647, 37.088547, 33.459053>,  <32.548813, 36.984962, 33.936806>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.989647, 37.088547, 33.459053> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.690910, 36.910465, 33.261459>,  <32.511669, 36.803616, 33.142902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.690910, 36.910465, 33.261459>,  <32.989647, 37.088547, 33.459053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.690910, 36.910465, 33.261459> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267357, 0.479128, -0.836036,
		0.608890, -0.756456, -0.238803,
		-0.746842, -0.445209, -0.493980,
		32.466858, 36.776901, 33.113266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.251957, 36.639965, 32.923618>,  <32.989647, 37.088547, 33.459053>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.251957, 36.639965, 32.923618> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.887794, 36.771538, 32.823250>,  <32.669296, 36.850483, 32.763027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.887794, 36.771538, 32.823250>,  <33.251957, 36.639965, 32.923618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.887794, 36.771538, 32.823250> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376981, 0.409728, -0.830667,
		-0.170427, -0.850837, -0.497022,
		-0.910406, 0.328936, -0.250920,
		32.614674, 36.870220, 32.747974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.194515, 36.540073, 32.219368>,  <33.251957, 36.639965, 32.923618>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.194515, 36.540073, 32.219368> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.892475, 36.795078, 32.280563>,  <32.711250, 36.948082, 32.317280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.892475, 36.795078, 32.280563>,  <33.194515, 36.540073, 32.219368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.892475, 36.795078, 32.280563> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132081, 0.376500, -0.916953,
		-0.642167, -0.672184, -0.368498,
		-0.755100, 0.637509, 0.152993,
		32.665947, 36.986332, 32.326462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.945618, 36.662296, 31.622334>,  <33.194515, 36.540073, 32.219368>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.945618, 36.662296, 31.622334> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.795303, 36.977077, 31.818083>,  <32.705116, 37.165947, 31.935532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.795303, 36.977077, 31.818083>,  <32.945618, 36.662296, 31.622334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.795303, 36.977077, 31.818083> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142837, 0.570954, -0.808461,
		-0.915632, -0.233908, -0.326963,
		-0.375786, 0.786955, 0.489373,
		32.682568, 37.213165, 31.964895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.696136, 37.005135, 31.070665>,  <32.945618, 36.662296, 31.622334>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.696136, 37.005135, 31.070665> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.755779, 37.253983, 31.378101>,  <32.791565, 37.403290, 31.562563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.755779, 37.253983, 31.378101>,  <32.696136, 37.005135, 31.070665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.755779, 37.253983, 31.378101> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361120, 0.689331, -0.628024,
		-0.920521, 0.371198, -0.121875,
		0.149110, 0.622121, 0.768591,
		32.800510, 37.440620, 31.608679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.483532, 37.541210, 30.722700>,  <32.696136, 37.005135, 31.070665>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.483532, 37.541210, 30.722700> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.705177, 37.657249, 31.034803>,  <32.838165, 37.726875, 31.222065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.705177, 37.657249, 31.034803>,  <32.483532, 37.541210, 30.722700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.705177, 37.657249, 31.034803> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383354, 0.743077, -0.548522,
		-0.738919, 0.603057, 0.300534,
		0.554110, 0.290103, 0.780258,
		32.871410, 37.744282, 31.268881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.338535, 38.221382, 30.838844>,  <32.483532, 37.541210, 30.722700>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.338535, 38.221382, 30.838844> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.708134, 38.146877, 30.972431>,  <32.929893, 38.102173, 31.052584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.708134, 38.146877, 30.972431>,  <32.338535, 38.221382, 30.838844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.708134, 38.146877, 30.972431> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377200, 0.587445, -0.715980,
		-0.062825, 0.787536, 0.613057,
		0.923998, -0.186264, 0.333965,
		32.985332, 38.091000, 31.072620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.677338, 38.829700, 30.643314>,  <32.338535, 38.221382, 30.838844>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.677338, 38.829700, 30.643314> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.973896, 38.573097, 30.722109>,  <33.151829, 38.419136, 30.769384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.973896, 38.573097, 30.722109>,  <32.677338, 38.829700, 30.643314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.973896, 38.573097, 30.722109> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503343, 0.337452, -0.795470,
		0.443828, 0.688906, 0.573083,
		0.741392, -0.641509, 0.196985,
		33.196312, 38.380646, 30.781204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.299564, 39.295650, 30.661955>,  <32.677338, 38.829700, 30.643314>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.299564, 39.295650, 30.661955> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.430008, 38.924095, 30.591728>,  <33.508274, 38.701160, 30.549593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.430008, 38.924095, 30.591728>,  <33.299564, 39.295650, 30.661955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.430008, 38.924095, 30.591728> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390266, 0.301439, -0.869958,
		0.861016, 0.215179, 0.460814,
		0.326104, -0.928888, -0.175567,
		33.527840, 38.645428, 30.539059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.013210, 39.369938, 30.458206>,  <33.299564, 39.295650, 30.661955>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.013210, 39.369938, 30.458206> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.904594, 39.007946, 30.327194>,  <33.839424, 38.790749, 30.248587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.904594, 39.007946, 30.327194>,  <34.013210, 39.369938, 30.458206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.904594, 39.007946, 30.327194> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439647, 0.186097, -0.878680,
		0.856142, -0.382591, 0.347341,
		-0.271536, -0.904982, -0.327530,
		33.823135, 38.736450, 30.228935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.548939, 39.197567, 29.982988>,  <34.013210, 39.369938, 30.458206>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.548939, 39.197567, 29.982988> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.277153, 38.923035, 29.879236>,  <34.114082, 38.758316, 29.816984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.277153, 38.923035, 29.879236>,  <34.548939, 39.197567, 29.982988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.277153, 38.923035, 29.879236> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304243, 0.058137, -0.950819,
		0.667652, -0.724966, 0.169308,
		-0.679468, -0.686327, -0.259381,
		34.073311, 38.717136, 29.801422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.847923, 38.653755, 29.723974>,  <34.548939, 39.197567, 29.982988>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.847923, 38.653755, 29.723974> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.472603, 38.641338, 29.586208>,  <34.247410, 38.633888, 29.503550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.472603, 38.641338, 29.586208>,  <34.847923, 38.653755, 29.723974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.472603, 38.641338, 29.586208> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343681, 0.026676, -0.938708,
		0.038332, -0.999162, -0.014359,
		-0.938304, -0.031048, -0.344415,
		34.191113, 38.632027, 29.482883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.004433, 38.430412, 29.170128>,  <34.847923, 38.653755, 29.723974>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.004433, 38.430412, 29.170128> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.636032, 38.581276, 29.131142>,  <34.414989, 38.671795, 29.107750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.636032, 38.581276, 29.131142>,  <35.004433, 38.430412, 29.170128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.636032, 38.581276, 29.131142> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196483, 0.233726, -0.952243,
		-0.336371, -0.896170, -0.289368,
		-0.921004, 0.377163, -0.097463,
		34.359730, 38.694424, 29.101902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.758888, 38.045792, 28.712761>,  <35.004433, 38.430412, 29.170128>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.758888, 38.045792, 28.712761> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.565411, 38.395885, 28.713783>,  <34.449322, 38.605942, 28.714397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.565411, 38.395885, 28.713783>,  <34.758888, 38.045792, 28.712761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.565411, 38.395885, 28.713783> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213775, 0.120973, -0.969364,
		-0.848728, -0.468331, -0.245617,
		-0.483696, 0.875232, 0.002556,
		34.420303, 38.658455, 28.714550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.434162, 38.103664, 28.156244>,  <34.758888, 38.045792, 28.712761>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.434162, 38.103664, 28.156244> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.443260, 38.493027, 28.247427>,  <34.448719, 38.726643, 28.302137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.443260, 38.493027, 28.247427>,  <34.434162, 38.103664, 28.156244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.443260, 38.493027, 28.247427> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167571, 0.221080, -0.960752,
		-0.985598, 0.060047, -0.158086,
		0.022741, 0.973405, 0.227958,
		34.450081, 38.785049, 28.315815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.172134, 38.449612, 27.545013>,  <34.434162, 38.103664, 28.156244>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.172134, 38.449612, 27.545013> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.348515, 38.755116, 27.733578>,  <34.454342, 38.938419, 27.846716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.348515, 38.755116, 27.733578>,  <34.172134, 38.449612, 27.545013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.348515, 38.755116, 27.733578> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242178, 0.404501, -0.881889,
		-0.864240, 0.503036, -0.006601,
		0.440951, 0.763763, 0.471411,
		34.480801, 38.984245, 27.875000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.941677, 39.011883, 27.240152>,  <34.172134, 38.449612, 27.545013>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.941677, 39.011883, 27.240152> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.271507, 39.140068, 27.426651>,  <34.469406, 39.216980, 27.538549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.271507, 39.140068, 27.426651>,  <33.941677, 39.011883, 27.240152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.271507, 39.140068, 27.426651> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142150, 0.680317, -0.719000,
		-0.547610, 0.659144, 0.515416,
		0.824571, 0.320465, 0.466246,
		34.518879, 39.236206, 27.566525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.960316, 39.777550, 27.104452>,  <33.941677, 39.011883, 27.240152>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.960316, 39.777550, 27.104452> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.324009, 39.678806, 27.238535>,  <34.542225, 39.619560, 27.318985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.324009, 39.678806, 27.238535>,  <33.960316, 39.777550, 27.104452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.324009, 39.678806, 27.238535> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416290, 0.535186, -0.735037,
		0.002052, 0.807860, 0.589371,
		0.909230, -0.246857, 0.335206,
		34.596779, 39.604748, 27.339096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.375782, 40.476955, 27.133657>,  <33.960316, 39.777550, 27.104452>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.375782, 40.476955, 27.133657> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.621078, 40.162750, 27.100412>,  <34.768257, 39.974228, 27.080465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.621078, 40.162750, 27.100412>,  <34.375782, 40.476955, 27.133657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.621078, 40.162750, 27.100412> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549841, 0.500050, -0.669048,
		0.567104, 0.364591, 0.738557,
		0.613244, -0.785509, -0.083113,
		34.805050, 39.927097, 27.075478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.034531, 40.712852, 27.311760>,  <34.375782, 40.476955, 27.133657>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.034531, 40.712852, 27.311760> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.066540, 40.397701, 27.067514>,  <35.085747, 40.208611, 26.920967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.066540, 40.397701, 27.067514>,  <35.034531, 40.712852, 27.311760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.066540, 40.397701, 27.067514> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584809, 0.533184, -0.611321,
		0.807214, -0.308172, 0.503424,
		0.080025, -0.787874, -0.610615,
		35.090546, 40.161339, 26.884329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.606953, 40.808334, 27.097193>,  <35.034531, 40.712852, 27.311760>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.606953, 40.808334, 27.097193> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.484020, 40.533730, 26.833601>,  <35.410263, 40.368969, 26.675446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.484020, 40.533730, 26.833601>,  <35.606953, 40.808334, 27.097193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.484020, 40.533730, 26.833601> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645120, 0.358767, -0.674616,
		0.699551, -0.632449, 0.332622,
		-0.307326, -0.686509, -0.658981,
		35.391823, 40.327778, 26.635906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.161648, 40.596256, 26.746546>,  <35.606953, 40.808334, 27.097193>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.161648, 40.596256, 26.746546> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.861504, 40.491108, 26.503942>,  <35.681416, 40.428020, 26.358379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.861504, 40.491108, 26.503942>,  <36.161648, 40.596256, 26.746546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.861504, 40.491108, 26.503942> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489342, 0.395962, -0.777019,
		0.444408, -0.879838, -0.168484,
		-0.750364, -0.262868, -0.606510,
		35.636395, 40.412247, 26.321989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.539227, 40.283871, 26.125109>,  <36.161648, 40.596256, 26.746546>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.539227, 40.283871, 26.125109> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.169365, 40.406513, 26.034771>,  <35.947449, 40.480099, 25.980568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.169365, 40.406513, 26.034771>,  <36.539227, 40.283871, 26.125109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.169365, 40.406513, 26.034771> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350327, 0.452434, -0.820106,
		-0.149267, -0.837436, -0.525757,
		-0.924657, 0.306602, -0.225843,
		35.891968, 40.498493, 25.967018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.820435, 39.485386, 25.997841>,  <36.539227, 40.283871, 26.125109>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.820435, 39.485386, 25.997841> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.215771, 39.425167, 26.006933>,  <37.452972, 39.389038, 26.012388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.215771, 39.425167, 26.006933>,  <36.820435, 39.485386, 25.997841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.215771, 39.425167, 26.006933> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112258, -0.619703, 0.776767,
		-0.102851, -0.770263, -0.629378,
		0.988342, -0.150544, 0.022731,
		37.512272, 39.380005, 26.013752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.889732, 38.762344, 26.058540>,  <36.820435, 39.485386, 25.997841>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.889732, 38.762344, 26.058540> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.232746, 38.908600, 26.203285>,  <37.438553, 38.996353, 26.290133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.232746, 38.908600, 26.203285>,  <36.889732, 38.762344, 26.058540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.232746, 38.908600, 26.203285> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109044, -0.558242, 0.822481,
		0.502738, -0.744764, -0.438840,
		0.857534, 0.365640, 0.361862,
		37.490005, 39.018291, 26.311844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.231560, 38.239208, 26.253408>,  <36.889732, 38.762344, 26.058540>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.231560, 38.239208, 26.253408> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.396248, 38.527714, 26.476215>,  <37.495060, 38.700817, 26.609900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.396248, 38.527714, 26.476215>,  <37.231560, 38.239208, 26.253408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.396248, 38.527714, 26.476215> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035616, -0.623498, 0.781013,
		0.910614, -0.301721, -0.282396,
		0.411721, 0.721259, 0.557020,
		37.519764, 38.744091, 26.643322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.661716, 37.843399, 26.697601>,  <37.231560, 38.239208, 26.253408>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.661716, 37.843399, 26.697601> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.631271, 38.199104, 26.878012>,  <37.613003, 38.412525, 26.986258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.631271, 38.199104, 26.878012>,  <37.661716, 37.843399, 26.697601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.631271, 38.199104, 26.878012> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177638, -0.457195, 0.871446,
		0.981148, -0.013787, 0.192767,
		-0.076118, 0.889260, 0.451024,
		37.608437, 38.465881, 27.013319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.063122, 37.713570, 27.340462>,  <37.661716, 37.843399, 26.697601>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.063122, 37.713570, 27.340462> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.860863, 38.054974, 27.390800>,  <37.739506, 38.259815, 27.421003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.860863, 38.054974, 27.390800>,  <38.063122, 37.713570, 27.340462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.860863, 38.054974, 27.390800> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176328, -0.245031, 0.953346,
		0.844529, 0.459865, 0.274397,
		-0.505647, 0.853512, 0.125849,
		37.709167, 38.311028, 27.428555>
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
