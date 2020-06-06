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
	<24.005800, 35.082073, 34.850269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.310717, 34.827908, 34.899532>,  <24.493666, 34.675407, 34.929089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.310717, 34.827908, 34.899532>,  <24.005800, 35.082073, 34.850269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.310717, 34.827908, 34.899532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488907, 0.689986, 0.533750,
		-0.424129, -0.346659, 0.836626,
		0.762289, -0.635411, 0.123159,
		24.539404, 34.637283, 34.936481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.121614, 34.906151, 35.579136>,  <24.005800, 35.082073, 34.850269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.121614, 34.906151, 35.579136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.463120, 34.875229, 35.373180>,  <24.668022, 34.856674, 35.249607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.463120, 34.875229, 35.373180>,  <24.121614, 34.906151, 35.579136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.463120, 34.875229, 35.373180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489471, 0.456300, 0.743107,
		0.177497, -0.886462, 0.427411,
		0.853764, -0.077306, -0.514889,
		24.719248, 34.852036, 35.218712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.718369, 34.728954, 35.933029>,  <24.121614, 34.906151, 35.579136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.718369, 34.728954, 35.933029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.909048, 34.889462, 35.620174>,  <25.023457, 34.985767, 35.432461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.909048, 34.889462, 35.620174>,  <24.718369, 34.728954, 35.933029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.909048, 34.889462, 35.620174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646241, 0.443197, 0.621249,
		0.595929, -0.801598, -0.048045,
		0.476698, 0.401269, -0.782139,
		25.052057, 35.009842, 35.385532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.448662, 34.640583, 36.005608>,  <24.718369, 34.728954, 35.933029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.448662, 34.640583, 36.005608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.420622, 34.963688, 35.771477>,  <25.403797, 35.157551, 35.631001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.420622, 34.963688, 35.771477>,  <25.448662, 34.640583, 36.005608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.420622, 34.963688, 35.771477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692096, 0.461952, 0.554620,
		0.718393, -0.366221, -0.591433,
		-0.070100, 0.807764, -0.585324,
		25.399591, 35.206017, 35.595879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.152922, 34.912685, 35.789021>,  <25.448662, 34.640583, 36.005608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.152922, 34.912685, 35.789021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.870581, 35.192867, 35.831219>,  <25.701176, 35.360977, 35.856537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.870581, 35.192867, 35.831219>,  <26.152922, 34.912685, 35.789021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.870581, 35.192867, 35.831219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615061, 0.532172, 0.581801,
		0.351386, 0.475553, -0.806460,
		-0.705853, 0.700459, 0.105497,
		25.658825, 35.403004, 35.862869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.494587, 35.577076, 35.709690>,  <26.152922, 34.912685, 35.789021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.494587, 35.577076, 35.709690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.163679, 35.605991, 35.932545>,  <25.965134, 35.623341, 36.066257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.163679, 35.605991, 35.932545>,  <26.494587, 35.577076, 35.709690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.163679, 35.605991, 35.932545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463679, 0.647794, 0.604454,
		-0.317216, 0.758379, -0.569417,
		-0.827270, 0.072284, 0.557135,
		25.915499, 35.627678, 36.099686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.182442, 35.539444, 35.891518>,  <26.494587, 35.577076, 35.709690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.182442, 35.539444, 35.891518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.406307, 35.318897, 35.644043>,  <27.540627, 35.186569, 35.495560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.406307, 35.318897, 35.644043>,  <27.182442, 35.539444, 35.891518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.406307, 35.318897, 35.644043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774166, -0.614237, -0.152904,
		-0.295711, 0.564537, -0.770618,
		0.559662, -0.551371, -0.618682,
		27.574205, 35.153484, 35.458439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.902758, 35.456398, 35.131516>,  <27.182442, 35.539444, 35.891518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.902758, 35.456398, 35.131516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.129848, 35.145103, 35.238869>,  <27.266104, 34.958324, 35.303280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.129848, 35.145103, 35.238869>,  <26.902758, 35.456398, 35.131516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.129848, 35.145103, 35.238869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679740, -0.627070, -0.380443,
		0.464368, 0.033560, -0.885006,
		0.567728, -0.778240, 0.268379,
		27.300167, 34.911633, 35.319382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.887270, 35.072399, 34.580807>,  <26.902758, 35.456398, 35.131516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.887270, 35.072399, 34.580807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.023766, 34.799431, 34.839375>,  <27.105663, 34.635651, 34.994514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.023766, 34.799431, 34.839375>,  <26.887270, 35.072399, 34.580807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.023766, 34.799431, 34.839375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546100, -0.703661, -0.454573,
		0.765069, -0.197890, -0.612788,
		0.341239, -0.682423, 0.646417,
		27.126137, 34.594704, 35.033298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.824492, 34.406399, 34.159012>,  <26.887270, 35.072399, 34.580807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.824492, 34.406399, 34.159012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.912201, 34.279453, 34.528053>,  <26.964827, 34.203285, 34.749477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.912201, 34.279453, 34.528053>,  <26.824492, 34.406399, 34.159012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.912201, 34.279453, 34.528053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409698, -0.888158, -0.208143,
		0.885475, -0.332348, -0.324775,
		0.219275, -0.317365, 0.922604,
		26.977983, 34.184242, 34.804836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.026386, 33.666714, 34.070747>,  <26.824492, 34.406399, 34.159012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.026386, 33.666714, 34.070747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.961246, 33.697418, 34.464211>,  <26.922163, 33.715843, 34.700291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.961246, 33.697418, 34.464211>,  <27.026386, 33.666714, 34.070747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.961246, 33.697418, 34.464211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368093, -0.929716, 0.011617,
		0.915417, -0.360187, 0.179659,
		-0.162848, 0.076766, 0.983660,
		26.912392, 33.720448, 34.759308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.373209, 33.072315, 34.408176>,  <27.026386, 33.666714, 34.070747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.373209, 33.072315, 34.408176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.066303, 33.215401, 34.621098>,  <26.882160, 33.301250, 34.748852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.066303, 33.215401, 34.621098>,  <27.373209, 33.072315, 34.408176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.066303, 33.215401, 34.621098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394354, -0.917690, 0.048277,
		0.505759, -0.172875, 0.845176,
		-0.767264, 0.357715, 0.532304,
		26.836124, 33.322716, 34.780788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.357912, 32.607712, 34.923004>,  <27.373209, 33.072315, 34.408176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.357912, 32.607712, 34.923004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.993881, 32.772427, 34.941750>,  <26.775463, 32.871254, 34.952995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.993881, 32.772427, 34.941750>,  <27.357912, 32.607712, 34.923004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.993881, 32.772427, 34.941750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401495, -0.904030, 0.146737,
		0.102790, 0.114726, 0.988065,
		-0.910075, 0.411786, 0.046863,
		26.720860, 32.895962, 34.955807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.019268, 32.323097, 35.580372>,  <27.357912, 32.607712, 34.923004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.019268, 32.323097, 35.580372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.749800, 32.437962, 35.307987>,  <26.588120, 32.506882, 35.144558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.749800, 32.437962, 35.307987>,  <27.019268, 32.323097, 35.580372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.749800, 32.437962, 35.307987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580513, -0.775844, 0.247123,
		-0.457355, 0.561786, 0.689364,
		-0.673670, 0.287162, -0.680960,
		26.547699, 32.524109, 35.103699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.355240, 32.177711, 35.900120>,  <27.019268, 32.323097, 35.580372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.355240, 32.177711, 35.900120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.267941, 32.205303, 35.510738>,  <26.215561, 32.221859, 35.277111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.267941, 32.205303, 35.510738>,  <26.355240, 32.177711, 35.900120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.267941, 32.205303, 35.510738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367812, -0.929752, 0.016582,
		-0.903926, 0.361666, 0.228289,
		-0.218250, 0.068978, -0.973452,
		26.202465, 32.225998, 35.218704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.646292, 31.921410, 35.889389>,  <26.355240, 32.177711, 35.900120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.646292, 31.921410, 35.889389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.806990, 31.901630, 35.523621>,  <25.903408, 31.889763, 35.304161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.806990, 31.901630, 35.523621>,  <25.646292, 31.921410, 35.889389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.806990, 31.901630, 35.523621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233093, -0.971174, -0.049893,
		-0.885590, 0.233188, -0.401688,
		0.401743, -0.049446, -0.914417,
		25.927513, 31.886797, 35.249294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.155615, 31.687107, 35.487484>,  <25.646292, 31.921410, 35.889389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.155615, 31.687107, 35.487484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.501875, 31.599354, 35.307476>,  <25.709631, 31.546701, 35.199471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.501875, 31.599354, 35.307476>,  <25.155615, 31.687107, 35.487484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.501875, 31.599354, 35.307476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308846, -0.941464, -0.135129,
		-0.394032, 0.255961, -0.882736,
		0.865652, -0.219384, -0.450020,
		25.761570, 31.533539, 35.172470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.029791, 31.313900, 34.819710>,  <25.155615, 31.687107, 35.487484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.029791, 31.313900, 34.819710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.407825, 31.219255, 34.909889>,  <25.634645, 31.162468, 34.963997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.407825, 31.219255, 34.909889>,  <25.029791, 31.313900, 34.819710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.407825, 31.219255, 34.909889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209789, -0.968150, -0.136654,
		0.250606, 0.081852, -0.964623,
		0.945085, -0.236613, 0.225453,
		25.691351, 31.148272, 34.977524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.078876, 30.718721, 34.572437>,  <25.029791, 31.313900, 34.819710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.078876, 30.718721, 34.572437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.402838, 30.681688, 34.804123>,  <25.597214, 30.659468, 34.943134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.402838, 30.681688, 34.804123>,  <25.078876, 30.718721, 34.572437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.402838, 30.681688, 34.804123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156943, -0.985666, 0.061896,
		0.565180, -0.141033, -0.812823,
		0.809902, -0.092585, 0.579213,
		25.645807, 30.653913, 34.977886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.402996, 30.022184, 34.372086>,  <25.078876, 30.718721, 34.572437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.402996, 30.022184, 34.372086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.581005, 30.088570, 34.724087>,  <25.687811, 30.128401, 34.935287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.581005, 30.088570, 34.724087>,  <25.402996, 30.022184, 34.372086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.581005, 30.088570, 34.724087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163655, -0.951057, 0.262123,
		0.880438, -0.260668, -0.396082,
		0.445023, 0.165962, 0.880006,
		25.714512, 30.138359, 34.988091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.767355, 29.456629, 34.389103>,  <25.402996, 30.022184, 34.372086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.767355, 29.456629, 34.389103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.755789, 29.607330, 34.759449>,  <25.748848, 29.697750, 34.981655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.755789, 29.607330, 34.759449>,  <25.767355, 29.456629, 34.389103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.755789, 29.607330, 34.759449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269502, -0.894888, 0.355731,
		0.962566, -0.239235, 0.127412,
		-0.028916, 0.376752, 0.925863,
		25.747114, 29.720356, 35.037209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.164148, 29.017561, 34.814323>,  <25.767355, 29.456629, 34.389103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.164148, 29.017561, 34.814323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.928782, 29.206356, 35.076923>,  <25.787561, 29.319633, 35.234486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.928782, 29.206356, 35.076923>,  <26.164148, 29.017561, 34.814323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.928782, 29.206356, 35.076923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315548, -0.881606, 0.350999,
		0.744445, -0.000626, 0.667684,
		-0.588415, 0.471985, 0.656504,
		25.752256, 29.347952, 35.273876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.431269, 28.698629, 35.421986>,  <26.164148, 29.017561, 34.814323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.431269, 28.698629, 35.421986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.062803, 28.828005, 35.508564>,  <25.841724, 28.905630, 35.560509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.062803, 28.828005, 35.508564>,  <26.431269, 28.698629, 35.421986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.062803, 28.828005, 35.508564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174773, -0.840716, 0.512495,
		0.347727, 0.434263, 0.830964,
		-0.921163, 0.323438, 0.216442,
		25.786455, 28.925035, 35.573498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.309727, 28.652733, 36.235413>,  <26.431269, 28.698629, 35.421986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.309727, 28.652733, 36.235413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.952597, 28.640036, 36.055698>,  <25.738319, 28.632418, 35.947868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.952597, 28.640036, 36.055698>,  <26.309727, 28.652733, 36.235413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.952597, 28.640036, 36.055698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161061, -0.909054, 0.384291,
		-0.420623, 0.415467, 0.806513,
		-0.892824, -0.031744, -0.449285,
		25.684750, 28.630512, 35.920914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.898819, 28.438524, 36.775761>,  <26.309727, 28.652733, 36.235413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.898819, 28.438524, 36.775761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.684008, 28.371389, 36.445080>,  <25.555120, 28.331108, 36.246674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.684008, 28.371389, 36.445080>,  <25.898819, 28.438524, 36.775761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.684008, 28.371389, 36.445080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264196, -0.897239, 0.353784,
		-0.801124, 0.408403, 0.437501,
		-0.537029, -0.167839, -0.826698,
		25.522900, 28.321037, 36.197071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.246340, 28.155424, 36.960487>,  <25.898819, 28.438524, 36.775761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.246340, 28.155424, 36.960487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.378391, 28.025278, 36.606052>,  <25.457623, 27.947189, 36.393391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.378391, 28.025278, 36.606052>,  <25.246340, 28.155424, 36.960487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.378391, 28.025278, 36.606052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141425, -0.945169, 0.294371,
		-0.933281, 0.028134, -0.358044,
		0.330130, -0.325367, -0.886087,
		25.477430, 27.927668, 36.340225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.710526, 27.684959, 36.638439>,  <25.246340, 28.155424, 36.960487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.710526, 27.684959, 36.638439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.107958, 27.640049, 36.643917>,  <25.346418, 27.613104, 36.647202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.107958, 27.640049, 36.643917>,  <24.710526, 27.684959, 36.638439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.107958, 27.640049, 36.643917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086031, -0.671597, 0.735905,
		-0.073428, -0.732361, -0.676946,
		0.993583, -0.112275, 0.013692,
		25.406033, 27.606367, 36.648026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.772064, 26.955389, 36.559547>,  <24.710526, 27.684959, 36.638439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.772064, 26.955389, 36.559547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.072495, 27.154375, 36.733173>,  <25.252752, 27.273767, 36.837349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.072495, 27.154375, 36.733173>,  <24.772064, 26.955389, 36.559547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.072495, 27.154375, 36.733173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125603, -0.537785, 0.833673,
		0.648158, -0.680671, -0.341434,
		0.751076, 0.497467, 0.434064,
		25.297817, 27.303616, 36.863392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.388947, 26.591055, 36.661297>,  <24.772064, 26.955389, 36.559547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.388947, 26.591055, 36.661297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.361460, 26.872629, 36.944069>,  <25.344967, 27.041574, 37.113731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.361460, 26.872629, 36.944069>,  <25.388947, 26.591055, 36.661297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.361460, 26.872629, 36.944069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016931, -0.709326, 0.704677,
		0.997492, 0.036454, 0.060661,
		-0.068717, 0.703937, 0.706931,
		25.340845, 27.083811, 37.156147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.007505, 26.391821, 37.101315>,  <25.388947, 26.591055, 36.661297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.007505, 26.391821, 37.101315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.745480, 26.605726, 37.314823>,  <25.588264, 26.734070, 37.442928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.745480, 26.605726, 37.314823>,  <26.007505, 26.391821, 37.101315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.745480, 26.605726, 37.314823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191176, -0.566157, 0.801822,
		0.730987, 0.627290, 0.268636,
		-0.655065, 0.534765, 0.533776,
		25.548960, 26.766155, 37.474957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.360672, 26.386068, 37.645657>,  <26.007505, 26.391821, 37.101315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.360672, 26.386068, 37.645657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.973787, 26.444855, 37.728508>,  <25.741657, 26.480127, 37.778217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.973787, 26.444855, 37.728508>,  <26.360672, 26.386068, 37.645657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.973787, 26.444855, 37.728508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072188, -0.622828, 0.779022,
		0.243494, 0.768431, 0.591797,
		-0.967212, 0.146966, 0.207126,
		25.683624, 26.488945, 37.790646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.335247, 26.166647, 38.273045>,  <26.360672, 26.386068, 37.645657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.335247, 26.166647, 38.273045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.954634, 26.184843, 38.151379>,  <25.726265, 26.195761, 38.078381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.954634, 26.184843, 38.151379>,  <26.335247, 26.166647, 38.273045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.954634, 26.184843, 38.151379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268576, -0.604750, 0.749763,
		-0.149834, 0.795115, 0.587658,
		-0.951534, 0.045491, -0.304161,
		25.669174, 26.198490, 38.060131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.945694, 26.484804, 38.530499>,  <26.335247, 26.166647, 38.273045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.945694, 26.484804, 38.530499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.260584, 26.239536, 38.504269>,  <27.449518, 26.092377, 38.488533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.260584, 26.239536, 38.504269>,  <26.945694, 26.484804, 38.530499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.260584, 26.239536, 38.504269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461634, 0.656475, -0.596603,
		0.408863, 0.439392, 0.799854,
		0.787226, -0.613168, -0.065571,
		27.496752, 26.055586, 38.484596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.612572, 26.892021, 38.534916>,  <26.945694, 26.484804, 38.530499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.612572, 26.892021, 38.534916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.722008, 26.562466, 38.336376>,  <27.787668, 26.364733, 38.217255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.722008, 26.562466, 38.336376>,  <27.612572, 26.892021, 38.534916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.722008, 26.562466, 38.336376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378375, 0.566616, -0.731969,
		0.884297, 0.012453, 0.466758,
		0.273588, -0.823887, -0.496346,
		27.804085, 26.315300, 38.187473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.386511, 26.818827, 38.513840>,  <27.612572, 26.892021, 38.534916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.386511, 26.818827, 38.513840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.140924, 26.729210, 38.211090>,  <27.993572, 26.675440, 38.029442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.140924, 26.729210, 38.211090>,  <28.386511, 26.818827, 38.513840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.140924, 26.729210, 38.211090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393043, 0.744770, -0.539291,
		0.684518, -0.628588, -0.369203,
		-0.613964, -0.224042, -0.756871,
		27.956736, 26.661997, 37.984028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.799658, 26.714668, 37.874340>,  <28.386511, 26.818827, 38.513840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.799658, 26.714668, 37.874340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.436380, 26.840408, 37.763805>,  <28.218414, 26.915854, 37.697483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.436380, 26.840408, 37.763805>,  <28.799658, 26.714668, 37.874340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.436380, 26.840408, 37.763805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414694, 0.586458, -0.695770,
		-0.056655, -0.746492, -0.662979,
		-0.908196, 0.314352, -0.276340,
		28.163921, 26.934713, 37.680904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.802334, 26.694296, 37.098362>,  <28.799658, 26.714668, 37.874340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.802334, 26.694296, 37.098362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.518129, 26.949562, 37.216969>,  <28.347607, 27.102722, 37.288132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.518129, 26.949562, 37.216969>,  <28.802334, 26.694296, 37.098362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.518129, 26.949562, 37.216969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343876, 0.682516, -0.644920,
		-0.613943, -0.356257, -0.704383,
		-0.710510, 0.638164, 0.296517,
		28.304976, 27.141012, 37.305923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.537161, 26.965033, 36.424351>,  <28.802334, 26.694296, 37.098362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.537161, 26.965033, 36.424351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.412136, 27.218365, 36.707531>,  <28.337122, 27.370365, 36.877441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.412136, 27.218365, 36.707531>,  <28.537161, 26.965033, 36.424351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.412136, 27.218365, 36.707531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200373, 0.772483, -0.602596,
		-0.928524, -0.046493, -0.368349,
		-0.312560, 0.633332, 0.707953,
		28.318369, 27.408363, 36.919918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.042913, 27.320997, 36.123322>,  <28.537161, 26.965033, 36.424351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.042913, 27.320997, 36.123322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.173624, 27.545654, 36.427368>,  <28.252050, 27.680449, 36.609795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.173624, 27.545654, 36.427368>,  <28.042913, 27.320997, 36.123322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.173624, 27.545654, 36.427368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122245, 0.772394, -0.623268,
		-0.937163, 0.296588, 0.183741,
		0.326774, 0.561643, 0.760116,
		28.271656, 27.714148, 36.655403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.823622, 27.941759, 35.956974>,  <28.042913, 27.320997, 36.123322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.823622, 27.941759, 35.956974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.099941, 28.020658, 36.235222>,  <28.265734, 28.067999, 36.402172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.099941, 28.020658, 36.235222>,  <27.823622, 27.941759, 35.956974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.099941, 28.020658, 36.235222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108735, 0.922789, -0.369645,
		-0.714825, 0.330989, 0.616013,
		0.690798, 0.197249, 0.695623,
		28.307180, 28.079834, 36.443909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.609348, 28.573853, 36.266197>,  <27.823622, 27.941759, 35.956974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.609348, 28.573853, 36.266197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.995697, 28.522818, 36.356369>,  <28.227507, 28.492197, 36.410473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.995697, 28.522818, 36.356369>,  <27.609348, 28.573853, 36.266197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.995697, 28.522818, 36.356369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166711, 0.972270, -0.164009,
		-0.198251, 0.195993, 0.960356,
		0.965869, -0.127587, 0.225428,
		28.285458, 28.484541, 36.423996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.926825, 29.236609, 36.491680>,  <27.609348, 28.573853, 36.266197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.926825, 29.236609, 36.491680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.270020, 29.042059, 36.425594>,  <28.475937, 28.925329, 36.385944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.270020, 29.042059, 36.425594>,  <27.926825, 29.236609, 36.491680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.270020, 29.042059, 36.425594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456854, 0.869573, -0.187422,
		0.234821, 0.085328, 0.968286,
		0.857988, -0.486376, -0.165211,
		28.527416, 28.896147, 36.376030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.382904, 29.631872, 36.827934>,  <27.926825, 29.236609, 36.491680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.382904, 29.631872, 36.827934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.548611, 29.411835, 36.537891>,  <28.648035, 29.279812, 36.363865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.548611, 29.411835, 36.537891>,  <28.382904, 29.631872, 36.827934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.548611, 29.411835, 36.537891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419984, 0.822331, -0.383909,
		0.807463, -0.145491, 0.571696,
		0.414268, -0.550095, -0.725105,
		28.672892, 29.246807, 36.320358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.117941, 29.829947, 36.843746>,  <28.382904, 29.631872, 36.827934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.117941, 29.829947, 36.843746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.075993, 29.679008, 36.475700>,  <29.050823, 29.588446, 36.254871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.075993, 29.679008, 36.475700>,  <29.117941, 29.829947, 36.843746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.075993, 29.679008, 36.475700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578457, 0.729453, -0.365083,
		0.808944, -0.570534, 0.141779,
		-0.104870, -0.377345, -0.920116,
		29.044531, 29.565805, 36.199665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.661951, 30.041883, 36.539120>,  <29.117941, 29.829947, 36.843746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.661951, 30.041883, 36.539120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.460413, 29.924946, 36.213993>,  <29.339491, 29.854784, 36.018917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.460413, 29.924946, 36.213993>,  <29.661951, 30.041883, 36.539120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.460413, 29.924946, 36.213993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480408, 0.687194, -0.544952,
		0.717880, -0.665055, -0.205792,
		-0.503842, -0.292346, -0.812821,
		29.309259, 29.837242, 35.970146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.211405, 29.896679, 36.069939>,  <29.661951, 30.041883, 36.539120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.211405, 29.896679, 36.069939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.877665, 29.946035, 35.855038>,  <29.677422, 29.975649, 35.726097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.877665, 29.946035, 35.855038>,  <30.211405, 29.896679, 36.069939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.877665, 29.946035, 35.855038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411349, 0.788168, -0.457802,
		0.366953, -0.602963, -0.708365,
		-0.834349, 0.123393, -0.537249,
		29.627359, 29.983053, 35.693863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.433489, 30.272043, 35.535404>,  <30.211405, 29.896679, 36.069939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.433489, 30.272043, 35.535404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.041819, 30.349754, 35.511852>,  <29.806816, 30.396381, 35.497723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.041819, 30.349754, 35.511852>,  <30.433489, 30.272043, 35.535404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.041819, 30.349754, 35.511852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201401, 0.893305, -0.401800,
		-0.025466, -0.405292, -0.913833,
		-0.979178, 0.194279, -0.058878,
		29.748066, 30.408037, 35.494190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.319738, 30.585703, 34.856022>,  <30.433489, 30.272043, 35.535404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.319738, 30.585703, 34.856022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.989147, 30.681309, 35.059906>,  <29.790792, 30.738672, 35.182236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.989147, 30.681309, 35.059906>,  <30.319738, 30.585703, 34.856022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.989147, 30.681309, 35.059906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026170, 0.920730, -0.389321,
		-0.562358, -0.308427, -0.767220,
		-0.826480, 0.239016, 0.509708,
		29.741203, 30.753014, 35.212818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.943350, 30.985659, 34.335373>,  <30.319738, 30.585703, 34.856022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.943350, 30.985659, 34.335373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.804482, 31.088879, 34.696014>,  <29.721161, 31.150810, 34.912399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.804482, 31.088879, 34.696014>,  <29.943350, 30.985659, 34.335373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.804482, 31.088879, 34.696014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073800, 0.965933, -0.248046,
		-0.934894, -0.019575, -0.354386,
		-0.347169, 0.258050, 0.901601,
		29.700331, 31.166294, 34.966496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.560448, 31.510509, 34.156136>,  <29.943350, 30.985659, 34.335373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.560448, 31.510509, 34.156136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.612284, 31.550119, 34.550781>,  <29.643385, 31.573885, 34.787567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.612284, 31.550119, 34.550781>,  <29.560448, 31.510509, 34.156136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.612284, 31.550119, 34.550781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048519, 0.993176, -0.106058,
		-0.990380, 0.061614, 0.123901,
		0.129590, 0.099026, 0.986610,
		29.651161, 31.579826, 34.846764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.948986, 31.906937, 34.271091>,  <29.560448, 31.510509, 34.156136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.948986, 31.906937, 34.271091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.223524, 31.976177, 34.553642>,  <29.388247, 32.017723, 34.723171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.223524, 31.976177, 34.553642>,  <28.948986, 31.906937, 34.271091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.223524, 31.976177, 34.553642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090946, 0.984066, -0.152787,
		-0.721566, 0.040623, 0.691153,
		0.686346, 0.173103, 0.706374,
		29.429428, 32.028107, 34.765556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.694246, 32.450470, 34.544296>,  <28.948986, 31.906937, 34.271091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.694246, 32.450470, 34.544296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.064470, 32.484051, 34.691963>,  <29.286606, 32.504200, 34.780563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.064470, 32.484051, 34.691963>,  <28.694246, 32.450470, 34.544296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.064470, 32.484051, 34.691963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083924, 0.996341, -0.016176,
		-0.369177, -0.016011, 0.929221,
		0.925562, 0.083956, 0.369170,
		29.342138, 32.509239, 34.802715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.654375, 33.102867, 34.939312>,  <28.694246, 32.450470, 34.544296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.654375, 33.102867, 34.939312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.035177, 33.004063, 34.867008>,  <29.263659, 32.944782, 34.823624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.035177, 33.004063, 34.867008>,  <28.654375, 33.102867, 34.939312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.035177, 33.004063, 34.867008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191116, 0.940990, -0.279307,
		0.239087, 0.231355, 0.943034,
		0.952004, -0.247008, -0.180763,
		29.320778, 32.929962, 34.812778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.997913, 33.637474, 35.374538>,  <28.654375, 33.102867, 34.939312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.997913, 33.637474, 35.374538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.288887, 33.507149, 35.132984>,  <29.463470, 33.428951, 34.988052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.288887, 33.507149, 35.132984>,  <28.997913, 33.637474, 35.374538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.288887, 33.507149, 35.132984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074082, 0.912225, -0.402936,
		0.682167, 0.248372, 0.687720,
		0.727433, -0.325818, -0.603890,
		29.507116, 33.409405, 34.951817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.639830, 34.046738, 35.465450>,  <28.997913, 33.637474, 35.374538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.639830, 34.046738, 35.465450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.649826, 33.905132, 35.091488>,  <29.655825, 33.820171, 34.867111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.649826, 33.905132, 35.091488>,  <29.639830, 34.046738, 35.465450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.649826, 33.905132, 35.091488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066255, 0.932557, -0.354892,
		0.997490, 0.070811, -0.000150,
		0.024991, -0.354011, -0.934907,
		29.657324, 33.798927, 34.811016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.138256, 34.477737, 35.137653>,  <29.639830, 34.046738, 35.465450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.138256, 34.477737, 35.137653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.937134, 34.312866, 34.833733>,  <29.816462, 34.213943, 34.651379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.937134, 34.312866, 34.833733>,  <30.138256, 34.477737, 35.137653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.937134, 34.312866, 34.833733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041224, 0.889425, -0.455217,
		0.863415, -0.197565, -0.464201,
		-0.502808, -0.412178, -0.759799,
		29.786293, 34.189213, 34.605793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.517515, 34.707855, 34.517521>,  <30.138256, 34.477737, 35.137653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.517515, 34.707855, 34.517521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.147598, 34.623627, 34.390762>,  <29.925648, 34.573090, 34.314709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.147598, 34.623627, 34.390762>,  <30.517515, 34.707855, 34.517521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.147598, 34.623627, 34.390762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014282, 0.813083, -0.581973,
		0.380208, -0.542729, -0.748924,
		-0.924791, -0.210574, -0.316892,
		29.870161, 34.560455, 34.295696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.388889, 34.879219, 33.681232>,  <30.517515, 34.707855, 34.517521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.388889, 34.879219, 33.681232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.034660, 34.943443, 33.855579>,  <29.822123, 34.981979, 33.960190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.034660, 34.943443, 33.855579>,  <30.388889, 34.879219, 33.681232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.034660, 34.943443, 33.855579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072151, 0.879425, -0.470538,
		-0.458866, -0.448144, -0.767209,
		-0.885571, 0.160559, 0.435872,
		29.768990, 34.991611, 33.986340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.681759, 34.166439, 33.884083>,  <30.388889, 34.879219, 33.681232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.681759, 34.166439, 33.884083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.018097, 34.345863, 33.762909>,  <31.219900, 34.453518, 33.690205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.018097, 34.345863, 33.762909>,  <30.681759, 34.166439, 33.884083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.018097, 34.345863, 33.762909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449587, -0.267133, 0.852357,
		0.301414, -0.852895, -0.426286,
		0.840845, 0.448565, -0.302932,
		31.270351, 34.480434, 33.672028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.337528, 33.815487, 34.266121>,  <30.681759, 34.166439, 33.884083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.337528, 33.815487, 34.266121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.423391, 34.191185, 34.158981>,  <31.474909, 34.416603, 34.094700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.423391, 34.191185, 34.158981>,  <31.337528, 33.815487, 34.266121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.423391, 34.191185, 34.158981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455615, 0.146275, 0.878077,
		0.863908, -0.310521, -0.396535,
		0.214658, 0.939245, -0.267846,
		31.487789, 34.472958, 34.078629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.062057, 33.889908, 34.466583>,  <31.337528, 33.815487, 34.266121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.062057, 33.889908, 34.466583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.829618, 34.215416, 34.462723>,  <31.690153, 34.410721, 34.460407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.829618, 34.215416, 34.462723>,  <32.062057, 33.889908, 34.466583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.829618, 34.215416, 34.462723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202758, 0.156251, 0.966682,
		0.788169, 0.559784, -0.255797,
		-0.581102, 0.813774, -0.009652,
		31.655289, 34.459549, 34.459827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.381798, 34.390926, 34.807854>,  <32.062057, 33.889908, 34.466583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.381798, 34.390926, 34.807854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.986647, 34.449215, 34.829269>,  <31.749556, 34.484188, 34.842117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.986647, 34.449215, 34.829269>,  <32.381798, 34.390926, 34.807854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.986647, 34.449215, 34.829269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095359, 0.297464, 0.949959,
		0.122500, 0.943547, -0.307753,
		-0.987877, 0.145717, 0.053536,
		31.690283, 34.492931, 34.845329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.089382, 35.093258, 34.976906>,  <32.381798, 34.390926, 34.807854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.089382, 35.093258, 34.976906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.852682, 34.802406, 35.116108>,  <31.710661, 34.627895, 35.199631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.852682, 34.802406, 35.116108>,  <32.089382, 35.093258, 34.976906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.852682, 34.802406, 35.116108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196315, 0.288722, 0.937070,
		-0.781850, 0.622833, -0.028106,
		-0.591753, -0.727130, 0.348009,
		31.675156, 34.584267, 35.220512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.596767, 35.418968, 35.490738>,  <32.089382, 35.093258, 34.976906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.596767, 35.418968, 35.490738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.672361, 35.029072, 35.538334>,  <31.717718, 34.795132, 35.566891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.672361, 35.029072, 35.538334>,  <31.596767, 35.418968, 35.490738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.672361, 35.029072, 35.538334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214158, 0.159168, 0.963744,
		-0.958342, -0.156652, 0.238830,
		0.188987, -0.974744, 0.118990,
		31.729057, 34.736649, 35.574032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.149426, 35.181561, 36.017471>,  <31.596767, 35.418968, 35.490738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.149426, 35.181561, 36.017471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.458746, 34.928085, 36.009048>,  <31.644339, 34.776001, 36.003994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.458746, 34.928085, 36.009048>,  <31.149426, 35.181561, 36.017471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.458746, 34.928085, 36.009048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088110, -0.140289, 0.986182,
		-0.627886, -0.760761, -0.164320,
		0.773301, -0.633689, -0.021054,
		31.690737, 34.737980, 36.002731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.939011, 34.727699, 36.485229>,  <31.149426, 35.181561, 36.017471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.939011, 34.727699, 36.485229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.335457, 34.683903, 36.455021>,  <31.573324, 34.657623, 36.436897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.335457, 34.683903, 36.455021>,  <30.939011, 34.727699, 36.485229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.335457, 34.683903, 36.455021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056709, -0.165715, 0.984542,
		-0.120312, -0.980077, -0.158034,
		0.991115, -0.109490, -0.075517,
		31.632792, 34.651054, 36.432365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.058538, 34.167885, 36.910408>,  <30.939011, 34.727699, 36.485229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.058538, 34.167885, 36.910408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.428394, 34.316261, 36.875885>,  <31.650307, 34.405285, 36.855171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.428394, 34.316261, 36.875885>,  <31.058538, 34.167885, 36.910408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.428394, 34.316261, 36.875885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178743, -0.222549, 0.958396,
		0.336297, -0.901597, -0.272080,
		0.924638, 0.370938, -0.086311,
		31.705786, 34.427544, 36.849991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.604954, 33.698349, 37.246902>,  <31.058538, 34.167885, 36.910408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.604954, 33.698349, 37.246902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.766191, 34.063881, 37.227158>,  <31.862934, 34.283199, 37.215313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.766191, 34.063881, 37.227158>,  <31.604954, 33.698349, 37.246902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.766191, 34.063881, 37.227158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246376, -0.056418, 0.967531,
		0.881371, -0.402165, -0.247887,
		0.403093, 0.913827, -0.049359,
		31.887119, 34.338028, 37.212349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.232464, 33.603592, 37.499702>,  <31.604954, 33.698349, 37.246902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.232464, 33.603592, 37.499702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.176140, 33.997589, 37.539623>,  <32.142345, 34.233986, 37.563576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.176140, 33.997589, 37.539623>,  <32.232464, 33.603592, 37.499702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.176140, 33.997589, 37.539623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254872, -0.061344, 0.965027,
		0.956668, 0.161320, -0.242410,
		-0.140808, 0.984994, 0.099802,
		32.133896, 34.293087, 37.569565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.819588, 33.824615, 37.867786>,  <32.232464, 33.603592, 37.499702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.819588, 33.824615, 37.867786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.542439, 34.108734, 37.917439>,  <32.376148, 34.279205, 37.947227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.542439, 34.108734, 37.917439>,  <32.819588, 33.824615, 37.867786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.542439, 34.108734, 37.917439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102671, -0.073206, 0.992018,
		0.713712, 0.700088, -0.022204,
		-0.692874, 0.710294, 0.124127,
		32.334576, 34.321823, 37.954678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.112999, 34.275459, 38.357269>,  <32.819588, 33.824615, 37.867786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.112999, 34.275459, 38.357269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.723103, 34.362858, 38.375793>,  <32.489166, 34.415298, 38.386906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.723103, 34.362858, 38.375793>,  <33.112999, 34.275459, 38.357269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.723103, 34.362858, 38.375793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070796, 0.105610, 0.991884,
		0.211835, 0.970106, -0.118411,
		-0.974738, 0.218499, 0.046308,
		32.430679, 34.428406, 38.389687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.141716, 34.761810, 38.895615>,  <33.112999, 34.275459, 38.357269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.141716, 34.761810, 38.895615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.756550, 34.660976, 38.857166>,  <32.525448, 34.600475, 38.834099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.756550, 34.660976, 38.857166>,  <33.141716, 34.761810, 38.895615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.756550, 34.660976, 38.857166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146785, 0.190589, 0.970634,
		-0.226363, 0.948751, -0.220524,
		-0.962919, -0.252085, -0.096120,
		32.467674, 34.585350, 38.828331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.766754, 35.016716, 39.521690>,  <33.141716, 34.761810, 38.895615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.766754, 35.016716, 39.521690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.522865, 34.729561, 39.387310>,  <32.376530, 34.557266, 39.306683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.522865, 34.729561, 39.387310>,  <32.766754, 35.016716, 39.521690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.522865, 34.729561, 39.387310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205232, -0.266409, 0.941757,
		-0.765581, 0.643162, 0.015102,
		-0.609726, -0.717891, -0.335956,
		32.339947, 34.514194, 39.286522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.110729, 35.123001, 39.778091>,  <32.766754, 35.016716, 39.521690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.110729, 35.123001, 39.778091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.141083, 34.734818, 39.686485>,  <32.159294, 34.501907, 39.631523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.141083, 34.734818, 39.686485>,  <32.110729, 35.123001, 39.778091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.141083, 34.734818, 39.686485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295052, -0.241244, 0.924525,
		-0.952463, -0.002587, -0.304643,
		0.075885, -0.970461, -0.229013,
		32.163849, 34.443680, 39.617783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.539276, 34.874260, 40.074196>,  <32.110729, 35.123001, 39.778091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.539276, 34.874260, 40.074196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.809145, 34.582672, 40.027851>,  <31.971066, 34.407719, 40.000042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.809145, 34.582672, 40.027851>,  <31.539276, 34.874260, 40.074196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.809145, 34.582672, 40.027851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440958, -0.523942, 0.728725,
		-0.591925, -0.440557, -0.674933,
		0.674671, -0.728968, -0.115868,
		32.011547, 34.363983, 39.993092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.100098, 34.310570, 40.109394>,  <31.539276, 34.874260, 40.074196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.100098, 34.310570, 40.109394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.465672, 34.155422, 40.157196>,  <31.685017, 34.062336, 40.185879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.465672, 34.155422, 40.157196>,  <31.100098, 34.310570, 40.109394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.465672, 34.155422, 40.157196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330382, -0.539964, 0.774136,
		-0.235730, -0.746993, -0.621637,
		0.913936, -0.387865, 0.119507,
		31.739853, 34.039062, 40.193047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.053406, 33.541008, 40.088345>,  <31.100098, 34.310570, 40.109394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.053406, 33.541008, 40.088345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.396946, 33.617908, 40.278255>,  <31.603069, 33.664047, 40.392204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.396946, 33.617908, 40.278255>,  <31.053406, 33.541008, 40.088345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.396946, 33.617908, 40.278255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201375, -0.725536, 0.658063,
		0.470983, -0.660786, -0.584412,
		0.858850, 0.192250, 0.474780,
		31.654600, 33.675583, 40.420689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.378805, 32.913540, 40.130001>,  <31.053406, 33.541008, 40.088345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.378805, 32.913540, 40.130001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.523514, 33.131859, 40.432320>,  <31.610340, 33.262852, 40.613708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.523514, 33.131859, 40.432320>,  <31.378805, 32.913540, 40.130001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.523514, 33.131859, 40.432320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240997, -0.728396, 0.641373,
		0.900578, -0.414175, -0.131978,
		0.361773, 0.545800, 0.755793,
		31.632046, 33.295597, 40.659058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.875095, 32.591595, 40.534023>,  <31.378805, 32.913540, 40.130001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.875095, 32.591595, 40.534023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.727695, 32.867821, 40.782967>,  <31.639256, 33.033558, 40.932331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.727695, 32.867821, 40.782967>,  <31.875095, 32.591595, 40.534023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.727695, 32.867821, 40.782967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191680, -0.711526, 0.676010,
		0.909652, 0.129815, 0.394563,
		-0.368499, 0.690564, 0.622358,
		31.617146, 33.074989, 40.969673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.028275, 32.213898, 41.130318>,  <31.875095, 32.591595, 40.534023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.028275, 32.213898, 41.130318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.791653, 32.514519, 41.247093>,  <31.649679, 32.694893, 41.317158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.791653, 32.514519, 41.247093>,  <32.028275, 32.213898, 41.130318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.791653, 32.514519, 41.247093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357259, -0.568935, 0.740728,
		0.722790, 0.333886, 0.605057,
		-0.591557, 0.751553, 0.291937,
		31.614185, 32.739986, 41.334675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.053169, 32.262486, 41.881069>,  <32.028275, 32.213898, 41.130318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.053169, 32.262486, 41.881069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.734304, 32.494942, 41.815586>,  <31.542984, 32.634415, 41.776299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.734304, 32.494942, 41.815586>,  <32.053169, 32.262486, 41.881069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.734304, 32.494942, 41.815586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392440, -0.292691, 0.871965,
		0.458824, 0.759344, 0.461387,
		-0.797165, 0.581145, -0.163704,
		31.495155, 32.669285, 41.766476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.888731, 32.698158, 42.552006>,  <32.053169, 32.262486, 41.881069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.888731, 32.698158, 42.552006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.562531, 32.648338, 42.325928>,  <31.366810, 32.618446, 42.190281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.562531, 32.648338, 42.325928>,  <31.888731, 32.698158, 42.552006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.562531, 32.648338, 42.325928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536604, -0.203135, 0.819019,
		-0.216822, 0.971196, 0.098821,
		-0.815503, -0.124553, -0.565192,
		31.317881, 32.610973, 42.156368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.393053, 32.923351, 43.050327>,  <31.888731, 32.698158, 42.552006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.393053, 32.923351, 43.050327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.170397, 32.738426, 42.774235>,  <31.036802, 32.627472, 42.608582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.170397, 32.738426, 42.774235>,  <31.393053, 32.923351, 43.050327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.170397, 32.738426, 42.774235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576012, -0.383914, 0.721678,
		-0.598632, 0.799295, -0.052598,
		-0.556641, -0.462317, -0.690227,
		31.003405, 32.599731, 42.567165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.747669, 32.983414, 43.206753>,  <31.393053, 32.923351, 43.050327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.747669, 32.983414, 43.206753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.710815, 32.647614, 42.992558>,  <30.688704, 32.446133, 42.864040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.710815, 32.647614, 42.992558>,  <30.747669, 32.983414, 43.206753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.710815, 32.647614, 42.992558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572393, -0.395394, 0.718352,
		-0.814787, 0.372695, -0.444096,
		-0.092133, -0.839501, -0.535489,
		30.683176, 32.395763, 42.831909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.020067, 32.841900, 43.042088>,  <30.747669, 32.983414, 43.206753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.020067, 32.841900, 43.042088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.221277, 32.497337, 43.070187>,  <30.342003, 32.290600, 43.087048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.221277, 32.497337, 43.070187>,  <30.020067, 32.841900, 43.042088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.221277, 32.497337, 43.070187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709017, -0.364819, 0.603491,
		-0.494226, -0.353380, -0.794269,
		0.503026, -0.861411, 0.070250,
		30.372185, 32.238914, 43.091263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.468212, 32.329765, 43.131374>,  <30.020067, 32.841900, 43.042088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.468212, 32.329765, 43.131374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.792822, 32.104218, 43.192665>,  <29.987589, 31.968889, 43.229439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.792822, 32.104218, 43.192665>,  <29.468212, 32.329765, 43.131374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.792822, 32.104218, 43.192665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547740, -0.642787, 0.535543,
		-0.203482, -0.518536, -0.830491,
		0.811527, -0.563867, 0.153228,
		30.036280, 31.935057, 43.238632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.181952, 31.609766, 43.070625>,  <29.468212, 32.329765, 43.131374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.181952, 31.609766, 43.070625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.528421, 31.610792, 43.270519>,  <29.736303, 31.611408, 43.390457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.528421, 31.610792, 43.270519>,  <29.181952, 31.609766, 43.070625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.528421, 31.610792, 43.270519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359443, -0.691538, 0.626559,
		0.347196, -0.722336, -0.598069,
		0.866173, 0.002567, 0.499738,
		29.788273, 31.611563, 43.420441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.231585, 30.917757, 43.409939>,  <29.181952, 31.609766, 43.070625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.231585, 30.917757, 43.409939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.545076, 31.096697, 43.582283>,  <29.733171, 31.204062, 43.685692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.545076, 31.096697, 43.582283>,  <29.231585, 30.917757, 43.409939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.545076, 31.096697, 43.582283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112335, -0.580173, 0.806710,
		0.610857, -0.680645, -0.404446,
		0.783731, 0.447351, 0.430863,
		29.780195, 31.230902, 43.711540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.650135, 30.345835, 43.751629>,  <29.231585, 30.917757, 43.409939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.650135, 30.345835, 43.751629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.741762, 30.678165, 43.954510>,  <29.796738, 30.877563, 44.076241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.741762, 30.678165, 43.954510>,  <29.650135, 30.345835, 43.751629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.741762, 30.678165, 43.954510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047595, -0.529996, 0.846663,
		0.972246, -0.169802, -0.160947,
		0.229067, 0.830825, 0.507205,
		29.810482, 30.927414, 44.106670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.204849, 30.155863, 44.206429>,  <29.650135, 30.345835, 43.751629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.204849, 30.155863, 44.206429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.013828, 30.462788, 44.377625>,  <29.899216, 30.646942, 44.480343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.013828, 30.462788, 44.377625>,  <30.204849, 30.155863, 44.206429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.013828, 30.462788, 44.377625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129223, -0.420486, 0.898050,
		0.869048, 0.484173, 0.101651,
		-0.477554, 0.767312, 0.427988,
		29.870562, 30.692982, 44.506020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.679201, 30.443125, 44.716347>,  <30.204849, 30.155863, 44.206429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.679201, 30.443125, 44.716347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.310316, 30.558855, 44.818962>,  <30.088985, 30.628292, 44.880531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.310316, 30.558855, 44.818962>,  <30.679201, 30.443125, 44.716347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.310316, 30.558855, 44.818962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156342, -0.327811, 0.931717,
		0.353666, 0.899350, 0.257079,
		-0.922214, 0.289324, 0.256542,
		30.033651, 30.645653, 44.895924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.697104, 30.751596, 45.284615>,  <30.679201, 30.443125, 44.716347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.697104, 30.751596, 45.284615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.304760, 30.673727, 45.282795>,  <30.069355, 30.627007, 45.281704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.304760, 30.673727, 45.282795>,  <30.697104, 30.751596, 45.284615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.304760, 30.673727, 45.282795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063237, -0.340549, 0.938098,
		-0.184171, 0.919853, 0.346341,
		-0.980858, -0.194672, -0.004550,
		30.010502, 30.615326, 45.281429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.475914, 31.071310, 45.905308>,  <30.697104, 30.751596, 45.284615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.475914, 31.071310, 45.905308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.213177, 30.797155, 45.779575>,  <30.055534, 30.632662, 45.704136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.213177, 30.797155, 45.779575>,  <30.475914, 31.071310, 45.905308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.213177, 30.797155, 45.779575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031551, -0.441488, 0.896712,
		-0.753369, 0.579080, 0.311612,
		-0.656841, -0.685387, -0.314333,
		30.016125, 30.591539, 45.685276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.950449, 31.015629, 46.525875>,  <30.475914, 31.071310, 45.905308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.950449, 31.015629, 46.525875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.930437, 30.702885, 46.277298>,  <29.918430, 30.515238, 46.128151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.930437, 30.702885, 46.277298>,  <29.950449, 31.015629, 46.525875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.930437, 30.702885, 46.277298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289817, -0.584082, 0.758192,
		-0.955774, 0.218035, -0.197376,
		-0.050029, -0.781862, -0.621440,
		29.915428, 30.468327, 46.090866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.437195, 30.680502, 46.837196>,  <29.950449, 31.015629, 46.525875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.437195, 30.680502, 46.837196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.579758, 30.386448, 46.606525>,  <29.665295, 30.210016, 46.468124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.579758, 30.386448, 46.606525>,  <29.437195, 30.680502, 46.837196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.579758, 30.386448, 46.606525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005984, -0.615397, 0.788195,
		-0.934312, -0.284368, -0.214931,
		0.356405, -0.735134, -0.576674,
		29.686680, 30.165907, 46.433525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.036795, 30.007364, 46.879601>,  <29.437195, 30.680502, 46.837196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.036795, 30.007364, 46.879601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.393770, 29.891579, 46.741173>,  <29.607956, 29.822107, 46.658115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.393770, 29.891579, 46.741173>,  <29.036795, 30.007364, 46.879601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.393770, 29.891579, 46.741173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044594, -0.819890, 0.570782,
		-0.448961, -0.493955, -0.744609,
		0.892438, -0.289464, -0.346072,
		29.661501, 29.804739, 46.637352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.012711, 29.322523, 46.814106>,  <29.036795, 30.007364, 46.879601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.012711, 29.322523, 46.814106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.405731, 29.391184, 46.842739>,  <29.641544, 29.432381, 46.859921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.405731, 29.391184, 46.842739>,  <29.012711, 29.322523, 46.814106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.405731, 29.391184, 46.842739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090021, -0.775747, 0.624590,
		0.162743, -0.607249, -0.777665,
		0.982553, 0.171654, 0.071582,
		29.700497, 29.442680, 46.864212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.235008, 28.720699, 46.710815>,  <29.012711, 29.322523, 46.814106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.235008, 28.720699, 46.710815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.536913, 28.915409, 46.886719>,  <29.718056, 29.032236, 46.992260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.536913, 28.915409, 46.886719>,  <29.235008, 28.720699, 46.710815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.536913, 28.915409, 46.886719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132630, -0.769747, 0.624418,
		0.642451, -0.412963, -0.645537,
		0.754762, 0.486776, 0.439754,
		29.763342, 29.061441, 47.018646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.721207, 28.252144, 46.748180>,  <29.235008, 28.720699, 46.710815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.721207, 28.252144, 46.748180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.805433, 28.514864, 47.037807>,  <29.855970, 28.672497, 47.211582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.805433, 28.514864, 47.037807>,  <29.721207, 28.252144, 46.748180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.805433, 28.514864, 47.037807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245868, -0.752447, 0.611043,
		0.946156, 0.049359, -0.319927,
		0.210568, 0.656801, 0.724067,
		29.868603, 28.711905, 47.255028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.294157, 27.941511, 47.181419>,  <29.721207, 28.252144, 46.748180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.294157, 27.941511, 47.181419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.197035, 28.213583, 47.458084>,  <30.138762, 28.376827, 47.624084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.197035, 28.213583, 47.458084>,  <30.294157, 27.941511, 47.181419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.197035, 28.213583, 47.458084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189169, -0.666115, 0.721461,
		0.951452, 0.306015, 0.033067,
		-0.242804, 0.680180, 0.691665,
		30.124193, 28.417637, 47.665585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.823700, 27.942461, 47.613346>,  <30.294157, 27.941511, 47.181419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.823700, 27.942461, 47.613346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.500601, 28.074863, 47.808479>,  <30.306742, 28.154305, 47.925560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.500601, 28.074863, 47.808479>,  <30.823700, 27.942461, 47.613346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.500601, 28.074863, 47.808479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120280, -0.717555, 0.686037,
		0.577130, 0.612821, 0.539789,
		-0.807746, 0.331007, 0.487832,
		30.258276, 28.174166, 47.954830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.994696, 27.857826, 48.238911>,  <30.823700, 27.942461, 47.613346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.994696, 27.857826, 48.238911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.606091, 27.911707, 48.316902>,  <30.372927, 27.944035, 48.363697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.606091, 27.911707, 48.316902>,  <30.994696, 27.857826, 48.238911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.606091, 27.911707, 48.316902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010739, -0.796885, 0.604035,
		0.236740, 0.588922, 0.772738,
		-0.971514, 0.134701, 0.194979,
		30.314636, 27.952118, 48.375397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.978260, 27.817860, 48.910992>,  <30.994696, 27.857826, 48.238911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.978260, 27.817860, 48.910992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.605576, 27.752800, 48.781094>,  <30.381966, 27.713764, 48.703156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.605576, 27.752800, 48.781094>,  <30.978260, 27.817860, 48.910992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.605576, 27.752800, 48.781094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083579, -0.774117, 0.627501,
		-0.353456, 0.611791, 0.707659,
		-0.931710, -0.162648, -0.324749,
		30.326063, 27.704006, 48.683670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.640474, 27.746506, 49.561291>,  <30.978260, 27.817860, 48.910992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.640474, 27.746506, 49.561291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.349520, 27.627531, 49.313923>,  <30.174948, 27.556147, 49.165501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.349520, 27.627531, 49.313923>,  <30.640474, 27.746506, 49.561291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.349520, 27.627531, 49.313923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200403, -0.769829, 0.605972,
		-0.656313, 0.564709, 0.500357,
		-0.727387, -0.297434, -0.618418,
		30.131304, 27.538301, 49.128399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.924795, 27.769875, 49.888985>,  <30.640474, 27.746506, 49.561291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.924795, 27.769875, 49.888985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.959549, 27.483435, 49.611958>,  <29.980402, 27.311571, 49.445740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.959549, 27.483435, 49.611958>,  <29.924795, 27.769875, 49.888985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.959549, 27.483435, 49.611958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188060, -0.694486, 0.694494,
		-0.978307, 0.069903, -0.195011,
		0.086885, -0.716102, -0.692567,
		29.985615, 27.268604, 49.404186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.359245, 27.204006, 49.931679>,  <29.924795, 27.769875, 49.888985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.359245, 27.204006, 49.931679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.654135, 27.009741, 49.743793>,  <29.831068, 26.893181, 49.631062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.654135, 27.009741, 49.743793>,  <29.359245, 27.204006, 49.931679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.654135, 27.009741, 49.743793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131794, -0.785217, 0.605032,
		-0.662669, -0.384139, -0.642890,
		0.737225, -0.485665, -0.469712,
		29.875301, 26.864040, 49.602879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.099861, 26.548235, 49.799095>,  <29.359245, 27.204006, 49.931679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.099861, 26.548235, 49.799095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.496223, 26.557610, 49.852097>,  <29.734041, 26.563234, 49.883896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.496223, 26.557610, 49.852097>,  <29.099861, 26.548235, 49.799095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.496223, 26.557610, 49.852097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078240, -0.700787, 0.709067,
		0.109476, -0.712985, -0.692580,
		0.990905, 0.023439, 0.132503,
		29.793495, 26.564642, 49.891846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.102299, 25.921535, 50.033947>,  <29.099861, 26.548235, 49.799095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.102299, 25.921535, 50.033947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.451298, 26.079304, 50.149311>,  <29.660698, 26.173965, 50.218529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.451298, 26.079304, 50.149311>,  <29.102299, 25.921535, 50.033947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.451298, 26.079304, 50.149311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067138, -0.487880, 0.870325,
		0.483983, -0.778720, -0.399194,
		0.872498, 0.394421, 0.288407,
		29.713047, 26.197630, 50.235832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.503374, 25.316250, 50.206394>,  <29.102299, 25.921535, 50.033947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.503374, 25.316250, 50.206394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.609325, 25.665644, 50.369789>,  <29.672897, 25.875280, 50.467827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.609325, 25.665644, 50.369789>,  <29.503374, 25.316250, 50.206394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.609325, 25.665644, 50.369789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129687, -0.452040, 0.882520,
		0.955521, -0.180786, -0.233016,
		0.264880, 0.873485, 0.408488,
		29.688789, 25.927689, 50.492336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.182722, 25.233444, 50.474316>,  <29.503374, 25.316250, 50.206394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.182722, 25.233444, 50.474316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.988091, 25.530472, 50.658417>,  <29.871311, 25.708689, 50.768875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.988091, 25.530472, 50.658417>,  <30.182722, 25.233444, 50.474316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.988091, 25.530472, 50.658417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055343, -0.499565, 0.864507,
		0.871881, 0.446123, 0.201982,
		-0.486580, 0.742569, 0.460251,
		29.842117, 25.753242, 50.796494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.467745, 25.650616, 50.842411>,  <30.182722, 25.233444, 50.474316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.467745, 25.650616, 50.842411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.113197, 25.622787, 51.025501>,  <29.900469, 25.606091, 51.135353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.113197, 25.622787, 51.025501>,  <30.467745, 25.650616, 50.842411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.113197, 25.622787, 51.025501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428961, -0.495375, 0.755378,
		0.174192, 0.865889, 0.468928,
		-0.886369, -0.069571, 0.457723,
		29.847286, 25.601915, 51.162819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.950459, 25.938745, 50.311981>,  <30.467745, 25.650616, 50.842411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.950459, 25.938745, 50.311981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.993793, 25.547728, 50.384285>,  <31.019794, 25.313118, 50.427666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.993793, 25.547728, 50.384285>,  <30.950459, 25.938745, 50.311981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.993793, 25.547728, 50.384285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377249, -0.208654, -0.902301,
		0.919754, 0.029560, -0.391382,
		0.108336, -0.977543, 0.180759,
		31.026295, 25.254465, 50.438511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.007450, 25.803818, 49.711960>,  <30.950459, 25.938745, 50.311981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.007450, 25.803818, 49.711960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.928511, 25.478579, 49.931023>,  <30.881147, 25.283436, 50.062462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.928511, 25.478579, 49.931023>,  <31.007450, 25.803818, 49.711960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.928511, 25.478579, 49.931023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394731, -0.445451, -0.803592,
		0.897353, -0.374763, -0.233046,
		-0.197346, -0.813096, 0.547658,
		30.869307, 25.234650, 50.095322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.530218, 25.313879, 49.661793>,  <31.007450, 25.803818, 49.711960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.530218, 25.313879, 49.661793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.140232, 25.225246, 49.654362>,  <30.906240, 25.172068, 49.649902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.140232, 25.225246, 49.654362>,  <31.530218, 25.313879, 49.661793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.140232, 25.225246, 49.654362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052275, -0.147192, -0.987726,
		0.216128, -0.963969, 0.155090,
		-0.974964, -0.221582, -0.018579,
		30.847742, 25.158772, 49.648788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.390936, 24.718601, 49.388618>,  <31.530218, 25.313879, 49.661793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.390936, 24.718601, 49.388618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.101768, 24.974318, 49.283779>,  <30.928268, 25.127748, 49.220875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.101768, 24.974318, 49.283779>,  <31.390936, 24.718601, 49.388618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.101768, 24.974318, 49.283779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202350, -0.166814, -0.965002,
		-0.660640, -0.750651, -0.008768,
		-0.722917, 0.639293, -0.262098,
		30.884893, 25.166105, 49.205151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.985201, 24.456020, 48.769775>,  <31.390936, 24.718601, 49.388618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.985201, 24.456020, 48.769775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.936287, 24.852808, 48.782700>,  <30.906939, 25.090881, 48.790455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.936287, 24.852808, 48.782700>,  <30.985201, 24.456020, 48.769775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.936287, 24.852808, 48.782700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051813, 0.038892, -0.997899,
		-0.991142, -0.120354, -0.056153,
		-0.122285, 0.991969, 0.032312,
		30.899601, 25.150398, 48.792393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.504341, 24.549919, 48.222233>,  <30.985201, 24.456020, 48.769775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.504341, 24.549919, 48.222233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.655813, 24.911293, 48.302643>,  <30.746696, 25.128117, 48.350887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.655813, 24.911293, 48.302643>,  <30.504341, 24.549919, 48.222233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.655813, 24.911293, 48.302643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035823, 0.202727, -0.978580,
		-0.924834, 0.377769, 0.044405,
		0.378679, 0.903434, 0.201022,
		30.769417, 25.182323, 48.362949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.203844, 24.964441, 47.745518>,  <30.504341, 24.549919, 48.222233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.203844, 24.964441, 47.745518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.545685, 25.150856, 47.837135>,  <30.750790, 25.262705, 47.892105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.545685, 25.150856, 47.837135>,  <30.203844, 24.964441, 47.745518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.545685, 25.150856, 47.837135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148915, 0.202613, -0.967870,
		-0.497470, 0.861254, 0.103754,
		0.854604, 0.466036, 0.229048,
		30.802067, 25.290667, 47.905849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.155216, 25.496166, 47.342140>,  <30.203844, 24.964441, 47.745518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.155216, 25.496166, 47.342140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.541836, 25.468975, 47.441067>,  <30.773808, 25.452660, 47.500423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.541836, 25.468975, 47.441067>,  <30.155216, 25.496166, 47.342140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.541836, 25.468975, 47.441067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255778, 0.183733, -0.949115,
		0.019078, 0.980623, 0.194974,
		0.966547, -0.067977, 0.247316,
		30.831800, 25.448582, 47.515263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.487120, 26.060005, 47.017105>,  <30.155216, 25.496166, 47.342140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.487120, 26.060005, 47.017105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.801445, 25.816864, 47.062733>,  <30.990040, 25.670979, 47.090107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.801445, 25.816864, 47.062733>,  <30.487120, 26.060005, 47.017105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.801445, 25.816864, 47.062733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456267, 0.445279, -0.770420,
		0.417511, 0.657452, 0.627249,
		0.785815, -0.607852, 0.114065,
		31.037189, 25.634508, 47.096951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.071566, 26.518072, 46.909504>,  <30.487120, 26.060005, 47.017105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.071566, 26.518072, 46.909504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.240265, 26.156569, 46.880264>,  <31.341484, 25.939667, 46.862720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.240265, 26.156569, 46.880264>,  <31.071566, 26.518072, 46.909504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.240265, 26.156569, 46.880264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382398, 0.250388, -0.889425,
		0.822130, 0.347163, 0.451198,
		0.421750, -0.903761, -0.073097,
		31.366791, 25.885441, 46.858334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.759264, 26.548435, 46.895245>,  <31.071566, 26.518072, 46.909504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.759264, 26.548435, 46.895245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.682564, 26.202820, 46.709053>,  <31.636543, 25.995451, 46.597340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.682564, 26.202820, 46.709053>,  <31.759264, 26.548435, 46.895245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.682564, 26.202820, 46.709053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475246, 0.333223, -0.814312,
		0.858704, -0.377361, 0.346735,
		-0.191750, -0.864038, -0.465480,
		31.625038, 25.943609, 46.569408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.447342, 26.287535, 46.626812>,  <31.759264, 26.548435, 46.895245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.447342, 26.287535, 46.626812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.174236, 26.084045, 46.417038>,  <32.010372, 25.961952, 46.291176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.174236, 26.084045, 46.417038>,  <32.447342, 26.287535, 46.626812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.174236, 26.084045, 46.417038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475391, 0.235743, -0.847602,
		0.554825, -0.828026, 0.080885,
		-0.682768, -0.508723, -0.524432,
		31.969406, 25.931429, 46.259708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.832066, 25.895807, 46.172333>,  <32.447342, 26.287535, 46.626812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.832066, 25.895807, 46.172333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.464508, 25.907759, 46.014984>,  <32.243973, 25.914928, 45.920574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.464508, 25.907759, 46.014984>,  <32.832066, 25.895807, 46.172333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.464508, 25.907759, 46.014984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383898, 0.297373, -0.874181,
		0.090859, -0.954294, -0.284724,
		-0.918894, 0.029878, -0.393370,
		32.188839, 25.916721, 45.896973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.841988, 25.432722, 45.589901>,  <32.832066, 25.895807, 46.172333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.841988, 25.432722, 45.589901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.526352, 25.663908, 45.506676>,  <32.336971, 25.802620, 45.456741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.526352, 25.663908, 45.506676>,  <32.841988, 25.432722, 45.589901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.526352, 25.663908, 45.506676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349561, 0.143981, -0.925784,
		-0.505113, -0.803260, -0.315648,
		-0.789093, 0.577964, -0.208061,
		32.289623, 25.837297, 45.444256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.560963, 25.214272, 44.811039>,  <32.841988, 25.432722, 45.589901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.560963, 25.214272, 44.811039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.403679, 25.573233, 44.891098>,  <32.309311, 25.788609, 44.939133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.403679, 25.573233, 44.891098>,  <32.560963, 25.214272, 44.811039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.403679, 25.573233, 44.891098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259623, 0.317186, -0.912134,
		-0.882034, -0.306695, -0.357706,
		-0.393207, 0.897402, 0.200144,
		32.285717, 25.842453, 44.951141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.014229, 25.377560, 44.261971>,  <32.560963, 25.214272, 44.811039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.014229, 25.377560, 44.261971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.134678, 25.723394, 44.422874>,  <32.206947, 25.930895, 44.519417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.134678, 25.723394, 44.422874>,  <32.014229, 25.377560, 44.261971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.134678, 25.723394, 44.422874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031025, 0.412733, -0.910324,
		-0.953080, 0.286601, 0.097460,
		0.301124, 0.864588, 0.402259,
		32.225014, 25.982771, 44.543552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.567402, 25.858780, 44.007446>,  <32.014229, 25.377560, 44.261971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.567402, 25.858780, 44.007446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.861214, 26.089827, 44.149899>,  <32.037502, 26.228455, 44.235371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.861214, 26.089827, 44.149899>,  <31.567402, 25.858780, 44.007446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.861214, 26.089827, 44.149899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086540, 0.600270, -0.795101,
		-0.673036, 0.553205, 0.490903,
		0.734529, 0.577615, 0.356129,
		32.081573, 26.263111, 44.256737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.403816, 26.506319, 43.831642>,  <31.567402, 25.858780, 44.007446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.403816, 26.506319, 43.831642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.793335, 26.549858, 43.911510>,  <32.027046, 26.575981, 43.959431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.793335, 26.549858, 43.911510>,  <31.403816, 26.506319, 43.831642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.793335, 26.549858, 43.911510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063652, 0.712469, -0.698811,
		-0.218323, 0.693211, 0.686873,
		0.973799, 0.108846, 0.199673,
		32.085476, 26.582512, 43.971413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.564444, 27.221296, 43.932323>,  <31.403816, 26.506319, 43.831642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.564444, 27.221296, 43.932323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.900427, 27.036911, 43.817791>,  <32.102016, 26.926279, 43.749069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.900427, 27.036911, 43.817791>,  <31.564444, 27.221296, 43.932323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.900427, 27.036911, 43.817791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094612, 0.643973, -0.759175,
		0.534343, 0.610583, 0.584522,
		0.839956, -0.460963, -0.286334,
		32.152412, 26.898623, 43.731892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.994530, 27.758400, 43.671272>,  <31.564444, 27.221296, 43.932323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.994530, 27.758400, 43.671272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.166615, 27.426296, 43.529518>,  <32.269867, 27.227034, 43.444466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.166615, 27.426296, 43.529518>,  <31.994530, 27.758400, 43.671272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.166615, 27.426296, 43.529518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032958, 0.406755, -0.912943,
		0.902127, 0.381078, 0.202354,
		0.430211, -0.830259, -0.354385,
		32.295677, 27.177219, 43.423203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.630615, 28.025133, 43.339088>,  <31.994530, 27.758400, 43.671272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.630615, 28.025133, 43.339088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.558735, 27.651682, 43.215122>,  <32.515606, 27.427610, 43.140743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.558735, 27.651682, 43.215122>,  <32.630615, 28.025133, 43.339088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.558735, 27.651682, 43.215122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085451, 0.299038, -0.950408,
		0.980003, -0.197271, 0.026042,
		-0.179700, -0.933628, -0.309915,
		32.504826, 27.371593, 43.122147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.133045, 28.014467, 42.828075>,  <32.630615, 28.025133, 43.339088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.133045, 28.014467, 42.828075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.869617, 27.718197, 42.774891>,  <32.711559, 27.540434, 42.742981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.869617, 27.718197, 42.774891>,  <33.133045, 28.014467, 42.828075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.869617, 27.718197, 42.774891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000153, 0.176821, -0.984243,
		0.752518, -0.648175, -0.116563,
		-0.658572, -0.740678, -0.132962,
		32.672047, 27.495993, 42.735001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.410393, 27.705074, 42.208878>,  <33.133045, 28.014467, 42.828075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.410393, 27.705074, 42.208878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.032791, 27.579502, 42.249493>,  <32.806232, 27.504158, 42.273861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.032791, 27.579502, 42.249493>,  <33.410393, 27.705074, 42.208878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.032791, 27.579502, 42.249493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127158, 0.062175, -0.989932,
		0.304459, -0.947407, -0.098612,
		-0.944000, -0.313933, 0.101541,
		32.749592, 27.485323, 42.279953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.282581, 27.202101, 41.755795>,  <33.410393, 27.705074, 42.208878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.282581, 27.202101, 41.755795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.935566, 27.381306, 41.842205>,  <32.727356, 27.488829, 41.894051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.935566, 27.381306, 41.842205>,  <33.282581, 27.202101, 41.755795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.935566, 27.381306, 41.842205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026022, 0.392850, -0.919234,
		-0.496692, -0.803091, -0.329154,
		-0.867537, 0.448011, 0.216023,
		32.675304, 27.515709, 41.907013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.879612, 27.014198, 41.248684>,  <33.282581, 27.202101, 41.755795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.879612, 27.014198, 41.248684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.699623, 27.344627, 41.384407>,  <32.591629, 27.542885, 41.465843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.699623, 27.344627, 41.384407>,  <32.879612, 27.014198, 41.248684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.699623, 27.344627, 41.384407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068886, 0.346712, -0.935439,
		-0.890383, -0.444292, -0.099105,
		-0.449969, 0.826072, 0.339312,
		32.564632, 27.592449, 41.486202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.635365, 27.136381, 40.647316>,  <32.879612, 27.014198, 41.248684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.635365, 27.136381, 40.647316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.536495, 27.458529, 40.862827>,  <32.477173, 27.651817, 40.992134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.536495, 27.458529, 40.862827>,  <32.635365, 27.136381, 40.647316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.536495, 27.458529, 40.862827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262218, 0.479690, -0.837340,
		-0.932816, -0.348247, 0.092616,
		-0.247174, 0.805370, 0.538779,
		32.462341, 27.700140, 41.024460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.020283, 27.341251, 40.310650>,  <32.635365, 27.136381, 40.647316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.020283, 27.341251, 40.310650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.181469, 27.662569, 40.486076>,  <32.278179, 27.855360, 40.591331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.181469, 27.662569, 40.486076>,  <32.020283, 27.341251, 40.310650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.181469, 27.662569, 40.486076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047960, 0.497066, -0.866386,
		-0.913958, 0.328090, 0.238826,
		0.402965, 0.803295, 0.438562,
		32.302357, 27.903557, 40.617645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.746618, 27.933451, 39.944839>,  <32.020283, 27.341251, 40.310650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.746618, 27.933451, 39.944839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.032238, 28.106110, 40.165318>,  <32.203609, 28.209705, 40.297604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.032238, 28.106110, 40.165318>,  <31.746618, 27.933451, 39.944839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.032238, 28.106110, 40.165318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164319, 0.661990, -0.731279,
		-0.680540, 0.612740, 0.401765,
		0.714048, 0.431647, 0.551196,
		32.246452, 28.235603, 40.330677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.551428, 28.675974, 40.165981>,  <31.746618, 27.933451, 39.944839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.551428, 28.675974, 40.165981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.950031, 28.666262, 40.197937>,  <32.189194, 28.660435, 40.217110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.950031, 28.666262, 40.197937>,  <31.551428, 28.675974, 40.165981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.950031, 28.666262, 40.197937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076820, 0.641587, -0.763194,
		-0.032725, 0.766666, 0.641212,
		0.996508, -0.024282, 0.079891,
		32.248985, 28.658978, 40.221905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.727657, 29.352102, 40.069286>,  <31.551428, 28.675974, 40.165981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.727657, 29.352102, 40.069286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.068584, 29.155113, 39.998833>,  <32.273140, 29.036919, 39.956562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.068584, 29.155113, 39.998833>,  <31.727657, 29.352102, 40.069286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.068584, 29.155113, 39.998833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214051, 0.635711, -0.741656,
		0.477217, 0.594424, 0.647243,
		0.852318, -0.492474, -0.176135,
		32.324280, 29.007370, 39.945992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.206329, 29.809381, 40.219250>,  <31.727657, 29.352102, 40.069286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.206329, 29.809381, 40.219250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.406540, 29.542698, 39.998352>,  <32.526665, 29.382689, 39.865814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.406540, 29.542698, 39.998352>,  <32.206329, 29.809381, 40.219250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.406540, 29.542698, 39.998352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114232, 0.683185, -0.721255,
		0.858153, 0.297922, 0.418110,
		0.500525, -0.666708, -0.552245,
		32.556698, 29.342686, 39.832680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.663387, 30.233784, 39.955513>,  <32.206329, 29.809381, 40.219250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.663387, 30.233784, 39.955513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.667156, 29.915340, 39.713482>,  <32.669418, 29.724274, 39.568264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.667156, 29.915340, 39.713482>,  <32.663387, 30.233784, 39.955513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.667156, 29.915340, 39.713482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236818, 0.589670, -0.772144,
		0.971508, -0.136016, 0.194091,
		0.009425, -0.796109, -0.605080,
		32.669983, 29.676508, 39.531960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.244297, 30.232058, 39.537128>,  <32.663387, 30.233784, 39.955513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.244297, 30.232058, 39.537128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.977863, 30.024750, 39.322567>,  <32.818001, 29.900366, 39.193832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.977863, 30.024750, 39.322567>,  <33.244297, 30.232058, 39.537128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.977863, 30.024750, 39.322567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231394, 0.540089, -0.809173,
		0.709072, -0.663100, -0.239823,
		-0.666089, -0.518268, -0.536399,
		32.778038, 29.869268, 39.161648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.378738, 30.412086, 38.879597>,  <33.244297, 30.232058, 39.537128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.378738, 30.412086, 38.879597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.043797, 30.210361, 38.795208>,  <32.842831, 30.089327, 38.744576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.043797, 30.210361, 38.795208>,  <33.378738, 30.412086, 38.879597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.043797, 30.210361, 38.795208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158751, 0.593623, -0.788929,
		0.523099, -0.627124, -0.577133,
		-0.837356, -0.504309, -0.210967,
		32.792591, 30.059069, 38.731918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.521339, 30.064756, 38.300636>,  <33.378738, 30.412086, 38.879597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.521339, 30.064756, 38.300636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.133152, 30.151161, 38.343582>,  <32.900238, 30.203003, 38.369350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.133152, 30.151161, 38.343582>,  <33.521339, 30.064756, 38.300636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.133152, 30.151161, 38.343582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030900, 0.552751, -0.832774,
		-0.239235, -0.804864, -0.543102,
		-0.970470, 0.216011, 0.107368,
		32.842010, 30.215963, 38.375793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.401848, 30.302036, 37.626320>,  <33.521339, 30.064756, 38.300636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.401848, 30.302036, 37.626320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.073582, 30.394234, 37.835461>,  <32.876621, 30.449553, 37.960945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.073582, 30.394234, 37.835461>,  <33.401848, 30.302036, 37.626320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.073582, 30.394234, 37.835461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254884, 0.671288, -0.695993,
		-0.511406, -0.704447, -0.492157,
		-0.820669, 0.230492, 0.522853,
		32.827381, 30.463381, 37.992317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.902988, 30.198864, 37.132153>,  <33.401848, 30.302036, 37.626320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.902988, 30.198864, 37.132153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.766598, 30.449417, 37.412544>,  <32.684765, 30.599749, 37.580780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.766598, 30.449417, 37.412544>,  <32.902988, 30.198864, 37.132153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.766598, 30.449417, 37.412544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107593, 0.714767, -0.691037,
		-0.933894, -0.311049, -0.176325,
		-0.340977, 0.626384, 0.700983,
		32.664303, 30.637333, 37.622841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.338593, 30.536566, 36.795765>,  <32.902988, 30.198864, 37.132153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.338593, 30.536566, 36.795765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.425034, 30.761829, 37.114799>,  <32.476898, 30.896988, 37.306221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.425034, 30.761829, 37.114799>,  <32.338593, 30.536566, 36.795765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.425034, 30.761829, 37.114799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092934, 0.825048, -0.557368,
		-0.971938, 0.046323, 0.230629,
		0.216099, 0.563161, 0.797591,
		32.489864, 30.930779, 37.354076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.859390, 31.033262, 36.726231>,  <32.338593, 30.536566, 36.795765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.859390, 31.033262, 36.726231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.162899, 31.167637, 36.949448>,  <32.345005, 31.248262, 37.083378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.162899, 31.167637, 36.949448>,  <31.859390, 31.033262, 36.726231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.162899, 31.167637, 36.949448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053212, 0.821905, -0.567134,
		-0.649177, 0.460021, 0.605764,
		0.758774, 0.335936, 0.558040,
		32.390530, 31.268417, 37.116859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.690296, 31.740549, 36.928242>,  <31.859390, 31.033262, 36.726231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.690296, 31.740549, 36.928242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.084019, 31.670645, 36.918411>,  <32.320251, 31.628702, 36.912514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.084019, 31.670645, 36.918411>,  <31.690296, 31.740549, 36.928242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.084019, 31.670645, 36.918411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128350, 0.804461, -0.579973,
		0.121127, 0.567716, 0.814265,
		0.984304, -0.174761, -0.024576,
		32.379311, 31.618216, 36.911037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.034859, 32.375069, 36.769279>,  <31.690296, 31.740549, 36.928242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.034859, 32.375069, 36.769279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.374611, 32.169304, 36.722073>,  <32.578465, 32.045845, 36.693748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.374611, 32.169304, 36.722073>,  <32.034859, 32.375069, 36.769279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.374611, 32.169304, 36.722073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364371, 0.733324, -0.573995,
		0.381814, 0.444540, 0.810310,
		0.849383, -0.514413, -0.118016,
		32.629425, 32.014980, 36.686668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.488461, 32.947197, 36.526566>,  <32.034859, 32.375069, 36.769279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.488461, 32.947197, 36.526566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.697365, 32.610966, 36.469063>,  <32.822708, 32.409225, 36.434563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.697365, 32.610966, 36.469063>,  <32.488461, 32.947197, 36.526566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.697365, 32.610966, 36.469063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615421, 0.488196, -0.618806,
		0.590339, 0.234706, 0.772277,
		0.522261, -0.840582, -0.143758,
		32.854042, 32.358791, 36.425934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.213829, 33.062115, 36.572964>,  <32.488461, 32.947197, 36.526566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.213829, 33.062115, 36.572964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.172855, 32.737247, 36.343224>,  <33.148270, 32.542328, 36.205379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.172855, 32.737247, 36.343224>,  <33.213829, 33.062115, 36.572964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.172855, 32.737247, 36.343224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632107, 0.392682, -0.668014,
		0.768081, -0.431482, 0.473155,
		-0.102437, -0.812173, -0.574354,
		33.142124, 32.493595, 36.170918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.946636, 32.929276, 36.293510>,  <33.213829, 33.062115, 36.572964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.946636, 32.929276, 36.293510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.690796, 32.764347, 36.034004>,  <33.537292, 32.665390, 35.878300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.690796, 32.764347, 36.034004>,  <33.946636, 32.929276, 36.293510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.690796, 32.764347, 36.034004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456381, 0.475454, -0.752104,
		0.618570, -0.777131, -0.115924,
		-0.639600, -0.412323, -0.648769,
		33.498917, 32.640652, 35.839375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.644924, 32.683311, 36.495998>,  <33.946636, 32.929276, 36.293510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.644924, 32.683311, 36.495998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.038525, 32.739853, 36.539391>,  <35.274685, 32.773777, 36.565426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.038525, 32.739853, 36.539391>,  <34.644924, 32.683311, 36.495998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.038525, 32.739853, 36.539391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024662, -0.711008, 0.702752,
		0.176462, -0.688831, -0.703116,
		0.983999, 0.141349, 0.108478,
		35.333725, 32.782257, 36.571934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.888691, 32.016109, 36.525043>,  <34.644924, 32.683311, 36.495998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.888691, 32.016109, 36.525043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.158424, 32.261364, 36.689651>,  <35.320263, 32.408516, 36.788414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.158424, 32.261364, 36.689651>,  <34.888691, 32.016109, 36.525043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.158424, 32.261364, 36.689651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142791, -0.655037, 0.741982,
		0.724493, -0.441580, -0.529261,
		0.674330, 0.613135, 0.411516,
		35.360722, 32.445305, 36.813107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.469849, 31.670496, 36.535755>,  <34.888691, 32.016109, 36.525043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.469849, 31.670496, 36.535755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.535664, 31.939251, 36.824615>,  <35.575153, 32.100502, 36.997932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.535664, 31.939251, 36.824615>,  <35.469849, 31.670496, 36.535755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.535664, 31.939251, 36.824615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017888, -0.734037, 0.678874,
		0.986208, -0.098783, -0.132797,
		0.164539, 0.671886, 0.722147,
		35.585026, 32.140816, 37.041260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.995102, 31.357515, 36.901566>,  <35.469849, 31.670496, 36.535755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.995102, 31.357515, 36.901566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.866070, 31.641581, 37.151878>,  <35.788651, 31.812019, 37.302067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.866070, 31.641581, 37.151878>,  <35.995102, 31.357515, 36.901566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.866070, 31.641581, 37.151878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245086, -0.575914, 0.779907,
		0.914260, 0.404958, 0.011730,
		-0.322585, 0.710163, 0.625785,
		35.769295, 31.854630, 37.339615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.511700, 31.438662, 37.336136>,  <35.995102, 31.357515, 36.901566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.511700, 31.438662, 37.336136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.215237, 31.603020, 37.548492>,  <36.037357, 31.701635, 37.675907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.215237, 31.603020, 37.548492>,  <36.511700, 31.438662, 37.336136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.215237, 31.603020, 37.548492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252988, -0.561552, 0.787817,
		0.621835, 0.718208, 0.312248,
		-0.741160, 0.410897, 0.530891,
		35.992889, 31.726290, 37.707760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.854836, 31.625059, 37.995152>,  <36.511700, 31.438662, 37.336136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.854836, 31.625059, 37.995152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.463421, 31.593454, 38.071274>,  <36.228573, 31.574492, 38.116947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.463421, 31.593454, 38.071274>,  <36.854836, 31.625059, 37.995152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.463421, 31.593454, 38.071274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204651, -0.480360, 0.852861,
		0.024030, 0.873505, 0.486222,
		-0.978540, -0.079011, 0.190307,
		36.169857, 31.569752, 38.128365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.724079, 31.925369, 38.666855>,  <36.854836, 31.625059, 37.995152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.724079, 31.925369, 38.666855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.413601, 31.688896, 38.579193>,  <36.227314, 31.547012, 38.526596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.413601, 31.688896, 38.579193>,  <36.724079, 31.925369, 38.666855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.413601, 31.688896, 38.579193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136269, -0.496678, 0.857170,
		-0.615595, 0.635464, 0.466078,
		-0.776192, -0.591182, -0.219158,
		36.180744, 31.511541, 38.513447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.413479, 32.031734, 39.226887>,  <36.724079, 31.925369, 38.666855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.413479, 32.031734, 39.226887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.287071, 31.680758, 39.082535>,  <36.211227, 31.470173, 38.995926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.287071, 31.680758, 39.082535>,  <36.413479, 32.031734, 39.226887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.287071, 31.680758, 39.082535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065248, -0.399568, 0.914379,
		-0.946506, 0.265416, 0.183522,
		-0.316020, -0.877439, -0.360876,
		36.192265, 31.417526, 38.974274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.941212, 31.687544, 39.783112>,  <36.413479, 32.031734, 39.226887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.941212, 31.687544, 39.783112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.046673, 31.380516, 39.549419>,  <36.109947, 31.196299, 39.409206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.046673, 31.380516, 39.549419>,  <35.941212, 31.687544, 39.783112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.046673, 31.380516, 39.549419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280264, -0.518577, 0.807793,
		-0.923007, -0.376713, 0.078400,
		0.263650, -0.767571, -0.584229,
		36.125767, 31.150244, 39.374149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.424294, 31.129169, 39.953247>,  <35.941212, 31.687544, 39.783112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.424294, 31.129169, 39.953247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.760895, 31.005909, 39.775745>,  <35.962856, 30.931952, 39.669243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.760895, 31.005909, 39.775745>,  <35.424294, 31.129169, 39.953247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.760895, 31.005909, 39.775745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162592, -0.638851, 0.751953,
		-0.515210, -0.704920, -0.487490,
		0.841500, -0.308151, -0.443757,
		36.013344, 30.913464, 39.642616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.335632, 30.506292, 39.889961>,  <35.424294, 31.129169, 39.953247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.335632, 30.506292, 39.889961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.733303, 30.540787, 39.864113>,  <35.971905, 30.561483, 39.848602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.733303, 30.540787, 39.864113>,  <35.335632, 30.506292, 39.889961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.733303, 30.540787, 39.864113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107397, -0.743450, 0.660112,
		0.008883, -0.663208, -0.748382,
		0.994177, 0.086238, -0.064623,
		36.031555, 30.566658, 39.844727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.557854, 29.811924, 39.880013>,  <35.335632, 30.506292, 39.889961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.557854, 29.811924, 39.880013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.892746, 30.016739, 39.956818>,  <36.093681, 30.139627, 40.002899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.892746, 30.016739, 39.956818>,  <35.557854, 29.811924, 39.880013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.892746, 30.016739, 39.956818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305328, -0.728986, 0.612662,
		0.453680, -0.454310, -0.766666,
		0.837227, 0.512037, 0.192012,
		36.143913, 30.170349, 40.014420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.095661, 29.350695, 39.603645>,  <35.557854, 29.811924, 39.880013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.095661, 29.350695, 39.603645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.234169, 29.587740, 39.894550>,  <36.317272, 29.729967, 40.069092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.234169, 29.587740, 39.894550>,  <36.095661, 29.350695, 39.603645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.234169, 29.587740, 39.894550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209302, -0.804479, 0.555884,
		0.914489, -0.040270, -0.402602,
		0.346270, 0.592615, 0.727258,
		36.338051, 29.765524, 40.112728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.692814, 29.007114, 39.815151>,  <36.095661, 29.350695, 39.603645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.692814, 29.007114, 39.815151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.585999, 29.254490, 40.110779>,  <36.521912, 29.402916, 40.288155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.585999, 29.254490, 40.110779>,  <36.692814, 29.007114, 39.815151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.585999, 29.254490, 40.110779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243293, -0.698813, 0.672658,
		0.932470, 0.359434, 0.036145,
		-0.267035, 0.618439, 0.739070,
		36.505890, 29.440022, 40.332500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.200752, 28.791330, 40.306339>,  <36.692814, 29.007114, 39.815151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.200752, 28.791330, 40.306339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.934460, 29.018026, 40.500496>,  <36.774685, 29.154043, 40.616989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.934460, 29.018026, 40.500496>,  <37.200752, 28.791330, 40.306339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.934460, 29.018026, 40.500496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063408, -0.605174, 0.793564,
		0.743489, 0.559081, 0.366950,
		-0.665735, 0.566739, 0.485390,
		36.734737, 29.188047, 40.646114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.420895, 28.867529, 41.083927>,  <37.200752, 28.791330, 40.306339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.420895, 28.867529, 41.083927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.024540, 28.921417, 41.083527>,  <36.786728, 28.953751, 41.083286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.024540, 28.921417, 41.083527>,  <37.420895, 28.867529, 41.083927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.024540, 28.921417, 41.083527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103884, -0.759288, 0.642410,
		0.085784, 0.636657, 0.766360,
		-0.990883, 0.134721, -0.001004,
		36.727276, 28.961834, 41.083225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.303646, 28.601831, 41.656506>,  <37.420895, 28.867529, 41.083927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.303646, 28.601831, 41.656506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.945248, 28.619600, 41.479771>,  <36.730209, 28.630262, 41.373730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.945248, 28.619600, 41.479771>,  <37.303646, 28.601831, 41.656506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.945248, 28.619600, 41.479771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306184, -0.782452, 0.542236,
		-0.321630, 0.621124, 0.714674,
		-0.895994, 0.044422, -0.441838,
		36.676449, 28.632927, 41.347218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.845245, 28.679029, 42.270119>,  <37.303646, 28.601831, 41.656506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.845245, 28.679029, 42.270119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.678246, 28.528801, 41.939148>,  <36.578045, 28.438663, 41.740566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.678246, 28.528801, 41.939148>,  <36.845245, 28.679029, 42.270119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.678246, 28.528801, 41.939148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433153, -0.718215, 0.544560,
		-0.798792, 0.585759, 0.137178,
		-0.417504, -0.375571, -0.827428,
		36.552994, 28.416130, 41.690918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.308147, 28.484608, 42.644733>,  <36.845245, 28.679029, 42.270119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.308147, 28.484608, 42.644733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.216003, 28.332369, 42.286499>,  <36.160717, 28.241026, 42.071556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.216003, 28.332369, 42.286499>,  <36.308147, 28.484608, 42.644733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.216003, 28.332369, 42.286499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616523, -0.654977, 0.436925,
		-0.752883, 0.652802, -0.083765,
		-0.230361, -0.380597, -0.895589,
		36.146896, 28.218189, 42.017822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.525307, 28.634665, 42.359951>,  <36.308147, 28.484608, 42.644733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.525307, 28.634665, 42.359951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.699795, 28.299593, 42.228489>,  <35.804485, 28.098551, 42.149612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.699795, 28.299593, 42.228489>,  <35.525307, 28.634665, 42.359951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.699795, 28.299593, 42.228489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701645, -0.545310, 0.458619,
		-0.563393, 0.030543, -0.825624,
		0.436213, -0.837678, -0.328654,
		35.830658, 28.048290, 42.129894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.925274, 28.166277, 42.337826>,  <35.525307, 28.634665, 42.359951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.925274, 28.166277, 42.337826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.224316, 27.909473, 42.269810>,  <35.403740, 27.755392, 42.229000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.224316, 27.909473, 42.269810>,  <34.925274, 28.166277, 42.337826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.224316, 27.909473, 42.269810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521863, -0.726222, 0.447504,
		-0.410788, -0.245818, -0.877967,
		0.747604, -0.642008, -0.170040,
		35.448597, 27.716871, 42.218796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.679752, 27.477022, 42.095547>,  <34.925274, 28.166277, 42.337826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.679752, 27.477022, 42.095547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.043629, 27.421680, 42.252174>,  <35.261955, 27.388475, 42.346149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.043629, 27.421680, 42.252174>,  <34.679752, 27.477022, 42.095547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.043629, 27.421680, 42.252174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385759, -0.630699, 0.673357,
		0.153799, -0.763595, -0.627111,
		0.909690, -0.138352, 0.391565,
		35.316536, 27.380175, 42.369644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.831539, 26.655634, 42.110104>,  <34.679752, 27.477022, 42.095547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.831539, 26.655634, 42.110104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.040340, 26.854422, 42.387386>,  <35.165619, 26.973694, 42.553757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.040340, 26.854422, 42.387386>,  <34.831539, 26.655634, 42.110104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.040340, 26.854422, 42.387386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293547, -0.658403, 0.693062,
		0.800840, -0.565269, -0.197803,
		0.522001, 0.496967, 0.693208,
		35.196941, 27.003511, 42.595348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.238457, 26.160215, 42.514263>,  <34.831539, 26.655634, 42.110104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.238457, 26.160215, 42.514263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.204880, 26.471951, 42.762646>,  <35.184734, 26.658993, 42.911674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.204880, 26.471951, 42.762646>,  <35.238457, 26.160215, 42.514263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.204880, 26.471951, 42.762646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303502, -0.613541, 0.729008,
		0.949126, -0.127265, 0.288035,
		-0.083944, 0.779340, 0.620953,
		35.179695, 26.705753, 42.948933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.550667, 25.906031, 43.129456>,  <35.238457, 26.160215, 42.514263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.550667, 25.906031, 43.129456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.329002, 26.220837, 43.237907>,  <35.196003, 26.409719, 43.302979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.329002, 26.220837, 43.237907>,  <35.550667, 25.906031, 43.129456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.329002, 26.220837, 43.237907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221674, -0.453486, 0.863256,
		0.802351, 0.418279, 0.425765,
		-0.554160, 0.787016, 0.271133,
		35.162754, 26.456942, 43.319248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.832245, 26.012939, 43.827835>,  <35.550667, 25.906031, 43.129456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.832245, 26.012939, 43.827835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.464066, 26.163670, 43.786297>,  <35.243160, 26.254108, 43.761375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.464066, 26.163670, 43.786297>,  <35.832245, 26.012939, 43.827835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.464066, 26.163670, 43.786297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229717, -0.306553, 0.923718,
		0.316247, 0.874087, 0.368728,
		-0.920445, 0.376826, -0.103846,
		35.187931, 26.276718, 43.755142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.659840, 26.486883, 44.395218>,  <35.832245, 26.012939, 43.827835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.659840, 26.486883, 44.395218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.299225, 26.405821, 44.242298>,  <35.082855, 26.357183, 44.150547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.299225, 26.405821, 44.242298>,  <35.659840, 26.486883, 44.395218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.299225, 26.405821, 44.242298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326980, -0.259582, 0.908681,
		-0.283391, 0.944217, 0.167759,
		-0.901540, -0.202658, -0.382304,
		35.028763, 26.345024, 44.127605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.269321, 26.900211, 44.837620>,  <35.659840, 26.486883, 44.395218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.269321, 26.900211, 44.837620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.057644, 26.598259, 44.682648>,  <34.930637, 26.417088, 44.589664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.057644, 26.598259, 44.682648>,  <35.269321, 26.900211, 44.837620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.057644, 26.598259, 44.682648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269237, -0.283623, 0.920364,
		-0.804649, 0.591366, -0.053149,
		-0.529198, -0.754880, -0.387435,
		34.898884, 26.371796, 44.566418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.647198, 26.969557, 45.163425>,  <35.269321, 26.900211, 44.837620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.647198, 26.969557, 45.163425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.617260, 26.607420, 44.996212>,  <34.599297, 26.390137, 44.895885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.617260, 26.607420, 44.996212>,  <34.647198, 26.969557, 45.163425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.617260, 26.607420, 44.996212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171629, -0.401257, 0.899742,
		-0.982315, 0.139085, -0.125353,
		-0.074842, -0.905344, -0.418032,
		34.594807, 26.335817, 44.870804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.099579, 26.709146, 45.488728>,  <34.647198, 26.969557, 45.163425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.099579, 26.709146, 45.488728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.273720, 26.386259, 45.329292>,  <34.378204, 26.192528, 45.233631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.273720, 26.386259, 45.329292>,  <34.099579, 26.709146, 45.488728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.273720, 26.386259, 45.329292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226858, -0.526823, 0.819142,
		-0.871208, -0.266194, -0.412477,
		0.435353, -0.807216, -0.398584,
		34.404327, 26.144094, 45.209717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.608696, 26.194399, 45.517788>,  <34.099579, 26.709146, 45.488728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.608696, 26.194399, 45.517788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.967072, 26.016788, 45.522381>,  <34.182098, 25.910221, 45.525135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.967072, 26.016788, 45.522381>,  <33.608696, 26.194399, 45.517788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.967072, 26.016788, 45.522381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172680, -0.324380, 0.930032,
		-0.409237, -0.835234, -0.367300,
		0.895939, -0.444029, 0.011480,
		34.235855, 25.883581, 45.525826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.523811, 25.624187, 45.895329>,  <33.608696, 26.194399, 45.517788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.523811, 25.624187, 45.895329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.920959, 25.581749, 45.873589>,  <34.159248, 25.556286, 45.860542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.920959, 25.581749, 45.873589>,  <33.523811, 25.624187, 45.895329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.920959, 25.581749, 45.873589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003552, -0.429408, 0.903104,
		-0.119156, -0.896857, -0.425969,
		0.992869, -0.106097, -0.054352,
		34.218819, 25.549919, 45.857285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.680779, 24.867529, 46.033421>,  <33.523811, 25.624187, 45.895329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.680779, 24.867529, 46.033421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.973938, 25.121424, 46.131374>,  <34.149834, 25.273760, 46.190147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.973938, 25.121424, 46.131374>,  <33.680779, 24.867529, 46.033421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.973938, 25.121424, 46.131374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015871, -0.375799, 0.926565,
		0.680153, -0.675191, -0.285497,
		0.732898, 0.634738, 0.244885,
		34.193806, 25.311846, 46.204842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.981800, 24.410244, 46.487404>,  <33.680779, 24.867529, 46.033421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.981800, 24.410244, 46.487404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.149940, 24.768049, 46.548264>,  <34.250824, 24.982733, 46.584778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.149940, 24.768049, 46.548264>,  <33.981800, 24.410244, 46.487404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.149940, 24.768049, 46.548264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190783, -0.251066, 0.948982,
		0.887076, -0.369881, -0.276194,
		0.420353, 0.894513, 0.152147,
		34.276047, 25.036404, 46.593906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.616810, 24.357780, 46.774761>,  <33.981800, 24.410244, 46.487404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.616810, 24.357780, 46.774761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.506641, 24.716631, 46.912926>,  <34.440540, 24.931940, 46.995823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.506641, 24.716631, 46.912926>,  <34.616810, 24.357780, 46.774761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.506641, 24.716631, 46.912926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295545, -0.262884, 0.918447,
		0.914765, 0.355047, -0.192736,
		-0.275425, 0.897125, 0.345410,
		34.424015, 24.985769, 47.016548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.190678, 24.501427, 47.234859>,  <34.616810, 24.357780, 46.774761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.190678, 24.501427, 47.234859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.877899, 24.728367, 47.338146>,  <34.690231, 24.864531, 47.400120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.877899, 24.728367, 47.338146>,  <35.190678, 24.501427, 47.234859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.877899, 24.728367, 47.338146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127223, -0.260273, 0.957117,
		0.610226, 0.781264, 0.131339,
		-0.781945, 0.567348, 0.258220,
		34.643314, 24.898571, 47.415611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.295704, 24.824364, 47.864662>,  <35.190678, 24.501427, 47.234859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.295704, 24.824364, 47.864662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.898769, 24.854977, 47.903458>,  <34.660606, 24.873344, 47.926735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.898769, 24.854977, 47.903458>,  <35.295704, 24.824364, 47.864662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.898769, 24.854977, 47.903458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084406, -0.153252, 0.984576,
		0.090217, 0.985219, 0.145618,
		-0.992339, 0.076534, 0.096984,
		34.601067, 24.877937, 47.932552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.151268, 25.228209, 48.407089>,  <35.295704, 24.824364, 47.864662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.151268, 25.228209, 48.407089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.815022, 25.018427, 48.352951>,  <34.613274, 24.892557, 48.320469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.815022, 25.018427, 48.352951>,  <35.151268, 25.228209, 48.407089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.815022, 25.018427, 48.352951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147669, -0.018510, 0.988864,
		-0.521120, 0.851237, -0.061886,
		-0.840612, -0.524455, -0.135347,
		34.562840, 24.861090, 48.312347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.532253, 25.468122, 49.045471>,  <35.151268, 25.228209, 48.407089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.532253, 25.468122, 49.045471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.604713, 25.838852, 49.177032>,  <35.648190, 26.061291, 49.255970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.604713, 25.838852, 49.177032>,  <35.532253, 25.468122, 49.045471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.604713, 25.838852, 49.177032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188631, 0.295483, -0.936540,
		-0.965195, 0.231698, -0.121301,
		0.181152, 0.926825, 0.328905,
		35.659058, 26.116899, 49.275703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.242985, 25.989819, 48.564335>,  <35.532253, 25.468122, 49.045471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.242985, 25.989819, 48.564335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.530994, 26.177107, 48.769207>,  <35.703800, 26.289480, 48.892132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.530994, 26.177107, 48.769207>,  <35.242985, 25.989819, 48.564335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.530994, 26.177107, 48.769207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287758, 0.470175, -0.834345,
		-0.631473, 0.748135, 0.203804,
		0.720026, 0.468220, 0.512184,
		35.747002, 26.317574, 48.922863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.164127, 26.652857, 48.322430>,  <35.242985, 25.989819, 48.564335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.164127, 26.652857, 48.322430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.534752, 26.602781, 48.464310>,  <35.757126, 26.572737, 48.549438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.534752, 26.602781, 48.464310>,  <35.164127, 26.652857, 48.322430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.534752, 26.602781, 48.464310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370234, 0.470025, -0.801251,
		-0.066410, 0.873730, 0.481856,
		0.926561, -0.125189, 0.354699,
		35.812721, 26.565226, 48.570721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.444199, 27.317333, 48.120132>,  <35.164127, 26.652857, 48.322430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.444199, 27.317333, 48.120132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.751438, 27.075445, 48.204357>,  <35.935783, 26.930313, 48.254894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.751438, 27.075445, 48.204357>,  <35.444199, 27.317333, 48.120132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.751438, 27.075445, 48.204357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530121, 0.416089, -0.738811,
		0.359159, 0.679106, 0.640172,
		0.768099, -0.604720, 0.210566,
		35.981869, 26.894030, 48.267529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.985229, 27.714211, 48.371399>,  <35.444199, 27.317333, 48.120132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.985229, 27.714211, 48.371399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.141121, 27.384344, 48.207432>,  <36.234657, 27.186424, 48.109051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.141121, 27.384344, 48.207432>,  <35.985229, 27.714211, 48.371399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.141121, 27.384344, 48.207432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430151, 0.556586, -0.710762,
		0.814297, 0.100678, 0.571650,
		0.389731, -0.824667, -0.409920,
		36.258041, 27.136944, 48.084457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.693554, 27.850510, 48.265911>,  <35.985229, 27.714211, 48.371399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.693554, 27.850510, 48.265911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.582378, 27.553207, 48.022495>,  <36.515675, 27.374826, 47.876446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.582378, 27.553207, 48.022495>,  <36.693554, 27.850510, 48.265911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.582378, 27.553207, 48.022495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475132, 0.444211, -0.759557,
		0.834865, -0.500246, 0.229682,
		-0.277938, -0.743257, -0.608539,
		36.498997, 27.330231, 47.839935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.280415, 27.672747, 47.784588>,  <36.693554, 27.850510, 48.265911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.280415, 27.672747, 47.784588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.975952, 27.493738, 47.596817>,  <36.793274, 27.386333, 47.484154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.975952, 27.493738, 47.596817>,  <37.280415, 27.672747, 47.784588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.975952, 27.493738, 47.596817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332619, 0.352002, -0.874905,
		0.556779, -0.822082, -0.119074,
		-0.761158, -0.447522, -0.469427,
		36.747604, 27.359482, 47.455990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.584690, 27.239519, 47.248951>,  <37.280415, 27.672747, 47.784588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.584690, 27.239519, 47.248951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.206429, 27.325169, 47.151062>,  <36.979473, 27.376558, 47.092331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.206429, 27.325169, 47.151062>,  <37.584690, 27.239519, 47.248951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.206429, 27.325169, 47.151062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297482, 0.265778, -0.916988,
		-0.131310, -0.939953, -0.315033,
		-0.945654, 0.214126, -0.244720,
		36.922733, 27.389406, 47.077644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.566147, 26.990271, 46.641502>,  <37.584690, 27.239519, 47.248951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.566147, 26.990271, 46.641502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.252098, 27.238007, 46.640724>,  <37.063671, 27.386648, 46.640259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.252098, 27.238007, 46.640724>,  <37.566147, 26.990271, 46.641502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.252098, 27.238007, 46.640724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153455, 0.191484, -0.969425,
		-0.600032, -0.761414, -0.245378,
		-0.785120, 0.619341, -0.001946,
		37.016563, 27.423809, 46.640141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.082554, 26.808750, 45.972542>,  <37.566147, 26.990271, 46.641502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.082554, 26.808750, 45.972542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.001968, 27.176317, 46.108192>,  <36.953617, 27.396856, 46.189583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.001968, 27.176317, 46.108192>,  <37.082554, 26.808750, 45.972542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.001968, 27.176317, 46.108192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117647, 0.366420, -0.922982,
		-0.972406, -0.146046, -0.181927,
		-0.201460, 0.918916, 0.339127,
		36.941532, 27.451992, 46.209930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.521069, 27.021448, 45.613808>,  <37.082554, 26.808750, 45.972542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.521069, 27.021448, 45.613808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.699139, 27.351690, 45.752487>,  <36.805981, 27.549835, 45.835693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.699139, 27.351690, 45.752487>,  <36.521069, 27.021448, 45.613808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.699139, 27.351690, 45.752487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048491, 0.408836, -0.911318,
		-0.894131, 0.388881, 0.222037,
		0.445172, 0.825605, 0.346696,
		36.832691, 27.599371, 45.856495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.154709, 27.590902, 45.276653>,  <36.521069, 27.021448, 45.613808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.154709, 27.590902, 45.276653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.512081, 27.717009, 45.404640>,  <36.726505, 27.792673, 45.481434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.512081, 27.717009, 45.404640>,  <36.154709, 27.590902, 45.276653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.512081, 27.717009, 45.404640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161383, 0.439475, -0.883639,
		-0.419200, 0.841112, 0.341763,
		0.893435, 0.315267, 0.319969,
		36.780113, 27.811588, 45.500629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.103981, 28.312286, 45.070423>,  <36.154709, 27.590902, 45.276653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.103981, 28.312286, 45.070423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.487732, 28.223207, 45.139713>,  <36.717983, 28.169760, 45.181286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.487732, 28.223207, 45.139713>,  <36.103981, 28.312286, 45.070423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.487732, 28.223207, 45.139713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277977, 0.641058, -0.715383,
		0.048266, 0.734473, 0.676919,
		0.959374, -0.222697, 0.173225,
		36.775543, 28.156399, 45.191681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.491852, 28.887274, 45.114323>,  <36.103981, 28.312286, 45.070423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.491852, 28.887274, 45.114323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.797497, 28.636391, 45.054005>,  <36.980885, 28.485861, 45.017815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.797497, 28.636391, 45.054005>,  <36.491852, 28.887274, 45.114323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.797497, 28.636391, 45.054005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393047, 0.638034, -0.662138,
		0.511508, 0.446682, 0.734054,
		0.764116, -0.627206, -0.150792,
		37.026733, 28.448229, 45.008766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.070953, 29.272936, 45.096149>,  <36.491852, 28.887274, 45.114323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.070953, 29.272936, 45.096149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.222111, 28.950281, 44.914368>,  <37.312805, 28.756687, 44.805298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.222111, 28.950281, 44.914368>,  <37.070953, 29.272936, 45.096149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.222111, 28.950281, 44.914368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470300, 0.590052, -0.656245,
		0.797503, 0.034263, 0.602341,
		0.377897, -0.806638, -0.454454,
		37.335480, 28.708290, 44.778030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.748505, 29.586647, 45.002285>,  <37.070953, 29.272936, 45.096149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.748505, 29.586647, 45.002285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.670315, 29.268885, 44.772255>,  <37.623402, 29.078226, 44.634239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.670315, 29.268885, 44.772255>,  <37.748505, 29.586647, 45.002285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.670315, 29.268885, 44.772255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389123, 0.475424, -0.789022,
		0.900207, -0.378006, 0.216189,
		-0.195474, -0.794407, -0.575071,
		37.611671, 29.030563, 44.599735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.339485, 29.386305, 44.663956>,  <37.748505, 29.586647, 45.002285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.339485, 29.386305, 44.663956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.036358, 29.241169, 44.447044>,  <37.854481, 29.154087, 44.316898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.036358, 29.241169, 44.447044>,  <38.339485, 29.386305, 44.663956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.036358, 29.241169, 44.447044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292129, 0.554474, -0.779243,
		0.583419, -0.748936, -0.314192,
		-0.757814, -0.362841, -0.542277,
		37.809013, 29.132317, 44.284363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.628620, 29.178852, 44.019974>,  <38.339485, 29.386305, 44.663956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.628620, 29.178852, 44.019974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.241905, 29.269295, 43.972305>,  <38.009876, 29.323561, 43.943707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.241905, 29.269295, 43.972305>,  <38.628620, 29.178852, 44.019974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.241905, 29.269295, 43.972305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226896, 0.544631, -0.807400,
		-0.117657, -0.807622, -0.577844,
		-0.966786, 0.226106, -0.119167,
		37.951870, 29.337126, 43.936554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.518150, 29.312235, 43.219414>,  <38.628620, 29.178852, 44.019974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.518150, 29.312235, 43.219414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.198689, 29.473944, 43.397724>,  <38.007011, 29.570969, 43.504711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.198689, 29.473944, 43.397724>,  <38.518150, 29.312235, 43.219414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.198689, 29.473944, 43.397724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103687, 0.637232, -0.763665,
		-0.592794, -0.656123, -0.467009,
		-0.798651, 0.404273, 0.445779,
		37.959091, 29.595226, 43.531456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.067162, 29.228624, 42.758656>,  <38.518150, 29.312235, 43.219414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.067162, 29.228624, 42.758656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.968575, 29.530386, 43.002007>,  <37.909424, 29.711443, 43.148018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.968575, 29.530386, 43.002007>,  <38.067162, 29.228624, 42.758656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.968575, 29.530386, 43.002007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083260, 0.608943, -0.788832,
		-0.965568, -0.245076, -0.087274,
		-0.246468, 0.754404, 0.608381,
		37.894634, 29.756708, 43.184521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.325249, 29.441383, 42.545155>,  <38.067162, 29.228624, 42.758656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.325249, 29.441383, 42.545155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.508186, 29.742718, 42.734184>,  <37.617947, 29.923517, 42.847603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.508186, 29.742718, 42.734184>,  <37.325249, 29.441383, 42.545155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.508186, 29.742718, 42.734184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223433, 0.611698, -0.758883,
		-0.860766, 0.241478, 0.448074,
		0.457340, 0.753335, 0.472575,
		37.645390, 29.968718, 42.875957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.876312, 30.095463, 42.487129>,  <37.325249, 29.441383, 42.545155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.876312, 30.095463, 42.487129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.248970, 30.218700, 42.564198>,  <37.472565, 30.292643, 42.610439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.248970, 30.218700, 42.564198>,  <36.876312, 30.095463, 42.487129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.248970, 30.218700, 42.564198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057472, 0.648473, -0.759065,
		-0.358801, 0.696105, 0.621852,
		0.931643, 0.308093, 0.192666,
		37.528461, 30.311129, 42.621998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.847198, 30.680304, 42.140972>,  <36.876312, 30.095463, 42.487129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.847198, 30.680304, 42.140972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.238163, 30.693539, 42.224461>,  <37.472744, 30.701479, 42.274555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.238163, 30.693539, 42.224461>,  <36.847198, 30.680304, 42.140972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.238163, 30.693539, 42.224461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127313, 0.696135, -0.706533,
		-0.168678, 0.717149, 0.676200,
		0.977415, 0.033088, 0.208725,
		37.531387, 30.703465, 42.287079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.958233, 31.346815, 42.137089>,  <36.847198, 30.680304, 42.140972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.958233, 31.346815, 42.137089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.324596, 31.192139, 42.094025>,  <37.544415, 31.099333, 42.068188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.324596, 31.192139, 42.094025>,  <36.958233, 31.346815, 42.137089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.324596, 31.192139, 42.094025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208079, 0.686756, -0.696469,
		0.343252, 0.615497, 0.709465,
		0.915905, -0.386689, -0.107658,
		37.599369, 31.076132, 42.061726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.415783, 31.887924, 42.095341>,  <36.958233, 31.346815, 42.137089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.415783, 31.887924, 42.095341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.599178, 31.583307, 41.912109>,  <37.709217, 31.400537, 41.802170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.599178, 31.583307, 41.912109>,  <37.415783, 31.887924, 42.095341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.599178, 31.583307, 41.912109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314841, 0.621209, -0.717617,
		0.831059, 0.184801, 0.524585,
		0.458493, -0.761543, -0.458078,
		37.736725, 31.354845, 41.774685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.161797, 32.186241, 41.900490>,  <37.415783, 31.887924, 42.095341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.161797, 32.186241, 41.900490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.021458, 31.881777, 41.682297>,  <37.937256, 31.699099, 41.551380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.021458, 31.881777, 41.682297>,  <38.161797, 32.186241, 41.900490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.021458, 31.881777, 41.682297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341146, 0.438588, -0.831421,
		0.872083, -0.477786, 0.105791,
		-0.350842, -0.761158, -0.545480,
		37.916206, 31.653429, 41.518654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.721489, 31.991076, 41.448544>,  <38.161797, 32.186241, 41.900490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.721489, 31.991076, 41.448544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.420021, 31.796700, 41.271523>,  <38.239140, 31.680073, 41.165310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.420021, 31.796700, 41.271523>,  <38.721489, 31.991076, 41.448544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.420021, 31.796700, 41.271523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360471, 0.257420, -0.896546,
		0.549589, -0.835222, -0.018841,
		-0.753666, -0.485941, -0.442549,
		38.193920, 31.650917, 41.138760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.007725, 31.561131, 41.009628>,  <38.721489, 31.991076, 41.448544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.007725, 31.561131, 41.009628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.637196, 31.657907, 40.894123>,  <38.414879, 31.715973, 40.824821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.637196, 31.657907, 40.894123>,  <39.007725, 31.561131, 41.009628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.637196, 31.657907, 40.894123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363968, 0.377025, -0.851692,
		-0.097189, -0.894045, -0.437307,
		-0.926327, 0.241940, -0.288761,
		38.359299, 31.730490, 40.807495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.894348, 31.283598, 40.389160>,  <39.007725, 31.561131, 41.009628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.894348, 31.283598, 40.389160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.635643, 31.587566, 40.415127>,  <38.480419, 31.769947, 40.430706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.635643, 31.587566, 40.415127>,  <38.894348, 31.283598, 40.389160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.635643, 31.587566, 40.415127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360090, 0.379280, -0.852339,
		-0.672330, -0.527890, -0.518945,
		-0.646767, 0.759920, 0.064914,
		38.441612, 31.815542, 40.434601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.753502, 31.419369, 39.700367>,  <38.894348, 31.283598, 40.389160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.753502, 31.419369, 39.700367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.604725, 31.739487, 39.888489>,  <38.515457, 31.931559, 40.001362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.604725, 31.739487, 39.888489>,  <38.753502, 31.419369, 39.700367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.604725, 31.739487, 39.888489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302197, 0.583445, -0.753836,
		-0.877688, -0.138260, -0.458855,
		-0.371943, 0.800297, 0.470301,
		38.493141, 31.979576, 40.029579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.315891, 31.740427, 39.218403>,  <38.753502, 31.419369, 39.700367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.315891, 31.740427, 39.218403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.426533, 32.017757, 39.484573>,  <38.492916, 32.184155, 39.644276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.426533, 32.017757, 39.484573>,  <38.315891, 31.740427, 39.218403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.426533, 32.017757, 39.484573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157760, 0.650287, -0.743127,
		-0.947947, 0.310527, 0.070490,
		0.276600, 0.693325, 0.665427,
		38.509514, 32.225754, 39.684200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.958733, 32.435799, 39.128769>,  <38.315891, 31.740427, 39.218403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.958733, 32.435799, 39.128769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.316563, 32.502129, 39.294777>,  <38.531261, 32.541927, 39.394382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.316563, 32.502129, 39.294777>,  <37.958733, 32.435799, 39.128769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.316563, 32.502129, 39.294777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228551, 0.628273, -0.743665,
		-0.384065, 0.760115, 0.524136,
		0.894571, 0.165824, 0.415023,
		38.584934, 32.551876, 39.419285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.104736, 33.191158, 39.094494>,  <37.958733, 32.435799, 39.128769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.104736, 33.191158, 39.094494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.466557, 33.049854, 39.189983>,  <38.683651, 32.965073, 39.247276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.466557, 33.049854, 39.189983>,  <38.104736, 33.191158, 39.094494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.466557, 33.049854, 39.189983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419052, 0.633418, -0.650521,
		0.078589, 0.688470, 0.720995,
		0.904554, -0.353259, 0.238725,
		38.737923, 32.943878, 39.261600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.463005, 33.782219, 39.151649>,  <38.104736, 33.191158, 39.094494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.463005, 33.782219, 39.151649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.750763, 33.504715, 39.138000>,  <38.923416, 33.338211, 39.129810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.750763, 33.504715, 39.138000>,  <38.463005, 33.782219, 39.151649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.750763, 33.504715, 39.138000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589795, 0.636056, -0.497568,
		0.366895, 0.337826, 0.866754,
		0.719395, -0.693762, -0.034118,
		38.966583, 33.296585, 39.127766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.050274, 34.159317, 39.403900>,  <38.463005, 33.782219, 39.151649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.050274, 34.159317, 39.403900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.144527, 33.846069, 39.173698>,  <39.201080, 33.658123, 39.035576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.144527, 33.846069, 39.173698>,  <39.050274, 34.159317, 39.403900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.144527, 33.846069, 39.173698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604690, 0.581731, -0.544002,
		0.760806, -0.219815, 0.610619,
		0.235637, -0.783116, -0.575504,
		39.215218, 33.611134, 39.001049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.789425, 34.204700, 39.318466>,  <39.050274, 34.159317, 39.403900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.789425, 34.204700, 39.318466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.668709, 33.975716, 39.013519>,  <39.596279, 33.838326, 38.830551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.668709, 33.975716, 39.013519>,  <39.789425, 34.204700, 39.318466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.668709, 33.975716, 39.013519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654069, 0.457460, -0.602432,
		0.693624, -0.680451, 0.236372,
		-0.301794, -0.572465, -0.762367,
		39.578171, 33.803978, 38.784809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.383942, 34.223724, 38.832710>,  <39.789425, 34.204700, 39.318466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.383942, 34.223724, 38.832710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.109005, 34.034973, 38.611843>,  <39.944042, 33.921722, 38.479321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.109005, 34.034973, 38.611843>,  <40.383942, 34.223724, 38.832710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.109005, 34.034973, 38.611843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334759, 0.468852, -0.817383,
		0.644594, -0.746663, -0.164294,
		-0.687339, -0.471881, -0.552172,
		39.902802, 33.893410, 38.446190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.765732, 33.992779, 38.274586>,  <40.383942, 34.223724, 38.832710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.765732, 33.992779, 38.274586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.388874, 34.016426, 38.142601>,  <40.162762, 34.030613, 38.063412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.388874, 34.016426, 38.142601>,  <40.765732, 33.992779, 38.274586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.388874, 34.016426, 38.142601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318964, 0.460836, -0.828186,
		0.103098, -0.885514, -0.453029,
		-0.942142, 0.059116, -0.329958,
		40.106232, 34.034161, 38.043613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.791145, 33.764858, 37.536991>,  <40.765732, 33.992779, 38.274586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.791145, 33.764858, 37.536991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.449303, 33.965908, 37.589161>,  <40.244198, 34.086540, 37.620464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.449303, 33.965908, 37.589161>,  <40.791145, 33.764858, 37.536991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.449303, 33.965908, 37.589161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126563, 0.445208, -0.886437,
		-0.503612, -0.741051, -0.444093,
		-0.854609, 0.502626, 0.130423,
		40.192921, 34.116695, 37.628288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.685097, 33.864288, 36.828590>,  <40.791145, 33.764858, 37.536991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.685097, 33.864288, 36.828590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.543079, 34.128456, 37.093250>,  <40.457867, 34.286957, 37.252048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.543079, 34.128456, 37.093250>,  <40.685097, 33.864288, 36.828590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.543079, 34.128456, 37.093250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191489, 0.744133, -0.639998,
		-0.915027, -0.100529, -0.390665,
		-0.355046, 0.660424, 0.661652,
		40.436565, 34.326584, 37.291744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.306183, 34.180290, 36.369202>,  <40.685097, 33.864288, 36.828590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.306183, 34.180290, 36.369202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.377411, 34.437798, 36.666889>,  <40.420147, 34.592300, 36.845501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.377411, 34.437798, 36.666889>,  <40.306183, 34.180290, 36.369202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.377411, 34.437798, 36.666889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216087, 0.712263, -0.667824,
		-0.959999, 0.279733, -0.012279,
		0.178067, 0.643763, 0.744218,
		40.430832, 34.630928, 36.890156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.973400, 34.962399, 36.257599>,  <40.306183, 34.180290, 36.369202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.973400, 34.962399, 36.257599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.320942, 34.953522, 36.455425>,  <40.529469, 34.948196, 36.574120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.320942, 34.953522, 36.455425>,  <39.973400, 34.962399, 36.257599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.320942, 34.953522, 36.455425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413471, 0.581935, -0.700281,
		-0.272262, 0.812933, 0.514795,
		0.868858, -0.022193, 0.494563,
		40.581600, 34.946865, 36.603794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.255280, 35.630424, 36.585476>,  <39.973400, 34.962399, 36.257599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.255280, 35.630424, 36.585476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.568020, 35.398048, 36.494953>,  <40.755665, 35.258621, 36.440639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.568020, 35.398048, 36.494953>,  <40.255280, 35.630424, 36.585476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.568020, 35.398048, 36.494953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304017, 0.672151, -0.675120,
		0.544319, 0.459042, 0.702138,
		0.781851, -0.580942, -0.226308,
		40.802574, 35.223766, 36.427059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.859169, 35.984745, 36.555046>,  <40.255280, 35.630424, 36.585476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.859169, 35.984745, 36.555046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.890732, 35.682060, 36.295456>,  <40.909668, 35.500450, 36.139702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.890732, 35.682060, 36.295456>,  <40.859169, 35.984745, 36.555046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.890732, 35.682060, 36.295456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363915, 0.627938, -0.687939,
		0.928084, -0.181890, 0.324924,
		0.078903, -0.756710, -0.648971,
		40.914402, 35.455048, 36.100765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.504578, 35.927925, 36.330547>,  <40.859169, 35.984745, 36.555046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.504578, 35.927925, 36.330547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.268456, 35.779083, 36.044029>,  <41.126781, 35.689777, 35.872120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.268456, 35.779083, 36.044029>,  <41.504578, 35.927925, 36.330547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.268456, 35.779083, 36.044029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359378, 0.673437, -0.646011,
		0.722767, -0.638762, -0.263803,
		-0.590301, -0.372110, -0.716294,
		41.091366, 35.667450, 35.829140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.867477, 35.786198, 35.704201>,  <41.504578, 35.927925, 36.330547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.867477, 35.786198, 35.704201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.490807, 35.838974, 35.580372>,  <41.264805, 35.870640, 35.506073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.490807, 35.838974, 35.580372>,  <41.867477, 35.786198, 35.704201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.490807, 35.838974, 35.580372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320109, 0.634947, -0.703116,
		0.103797, -0.761207, -0.640149,
		-0.941677, 0.131937, -0.309575,
		41.208302, 35.878555, 35.487499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.106476, 35.153748, 36.060631>,  <41.867477, 35.786198, 35.704201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.106476, 35.153748, 36.060631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.362324, 34.850960, 36.114109>,  <42.515835, 34.669285, 36.146198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.362324, 34.850960, 36.114109>,  <42.106476, 35.153748, 36.060631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.362324, 34.850960, 36.114109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023335, 0.154729, 0.987681,
		-0.768336, -0.634862, 0.081304,
		0.639622, -0.756974, 0.133698,
		42.554211, 34.623867, 36.154217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.898525, 34.532650, 36.420971>,  <42.106476, 35.153748, 36.060631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.898525, 34.532650, 36.420971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.281609, 34.636902, 36.469753>,  <42.511459, 34.699451, 36.499023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.281609, 34.636902, 36.469753>,  <41.898525, 34.532650, 36.420971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.281609, 34.636902, 36.469753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126208, -0.000414, 0.992004,
		0.258596, -0.965439, 0.032497,
		0.957705, 0.260630, 0.121953,
		42.568920, 34.715092, 36.506340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.153561, 34.142830, 37.061615>,  <41.898525, 34.532650, 36.420971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.153561, 34.142830, 37.061615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.408440, 34.450321, 37.039562>,  <42.561367, 34.634815, 37.026329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.408440, 34.450321, 37.039562>,  <42.153561, 34.142830, 37.061615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.408440, 34.450321, 37.039562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086356, 0.142301, 0.986049,
		0.765848, -0.623546, 0.157058,
		0.637197, 0.768726, -0.055134,
		42.599598, 34.680939, 37.023022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.627834, 33.923740, 37.522381>,  <42.153561, 34.142830, 37.061615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.627834, 33.923740, 37.522381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.684467, 34.317924, 37.484818>,  <42.718449, 34.554436, 37.462280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.684467, 34.317924, 37.484818>,  <42.627834, 33.923740, 37.522381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.684467, 34.317924, 37.484818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079851, 0.083187, 0.993330,
		0.986701, -0.148139, -0.066912,
		0.141584, 0.985462, -0.093910,
		42.726944, 34.613564, 37.456646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.127480, 34.097897, 38.042179>,  <42.627834, 33.923740, 37.522381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.127480, 34.097897, 38.042179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.962662, 34.454807, 37.968365>,  <42.863770, 34.668953, 37.924076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.962662, 34.454807, 37.968365>,  <43.127480, 34.097897, 38.042179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.962662, 34.454807, 37.968365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103494, 0.155386, 0.982418,
		0.905266, 0.423900, 0.028319,
		-0.412046, 0.892280, -0.184537,
		42.839046, 34.722492, 37.913002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.388786, 34.555054, 38.416168>,  <43.127480, 34.097897, 38.042179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.388786, 34.555054, 38.416168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.058975, 34.765320, 38.332424>,  <42.861088, 34.891479, 38.282177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.058975, 34.765320, 38.332424>,  <43.388786, 34.555054, 38.416168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.058975, 34.765320, 38.332424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135469, 0.175850, 0.975051,
		0.549368, 0.832317, -0.073781,
		-0.824526, 0.525667, -0.209359,
		42.811619, 34.923019, 38.269615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.383236, 35.206703, 38.808884>,  <43.388786, 34.555054, 38.416168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.383236, 35.206703, 38.808884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.995171, 35.172817, 38.718014>,  <42.762333, 35.152485, 38.663490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.995171, 35.172817, 38.718014>,  <43.383236, 35.206703, 38.808884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.995171, 35.172817, 38.718014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242449, 0.347907, 0.905638,
		0.002312, 0.933694, -0.358066,
		-0.970161, -0.084719, -0.227177,
		42.704121, 35.147400, 38.649860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.000771, 35.758358, 39.188305>,  <43.383236, 35.206703, 38.808884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.000771, 35.758358, 39.188305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.744640, 35.458439, 39.121632>,  <42.590961, 35.278488, 39.081627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.744640, 35.458439, 39.121632>,  <43.000771, 35.758358, 39.188305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.744640, 35.458439, 39.121632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253163, 0.001138, 0.967423,
		-0.725182, 0.661666, -0.190550,
		-0.640327, -0.749798, -0.166684,
		42.552544, 35.233498, 39.071625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.312397, 35.943054, 39.592007>,  <43.000771, 35.758358, 39.188305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.312397, 35.943054, 39.592007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.280075, 35.554832, 39.501232>,  <42.260681, 35.321899, 39.446766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.280075, 35.554832, 39.501232>,  <42.312397, 35.943054, 39.592007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.280075, 35.554832, 39.501232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426811, -0.172062, 0.887822,
		-0.900724, 0.168598, -0.400339,
		-0.080802, -0.970551, -0.226940,
		42.255836, 35.263668, 39.433151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.588768, 35.674210, 39.713398>,  <42.312397, 35.943054, 39.592007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.588768, 35.674210, 39.713398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.831692, 35.356525, 39.721428>,  <41.977448, 35.165916, 39.726246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.831692, 35.356525, 39.721428>,  <41.588768, 35.674210, 39.713398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.831692, 35.356525, 39.721428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408497, -0.290498, 0.865298,
		-0.681399, -0.533702, -0.500856,
		0.607309, -0.794212, 0.020071,
		42.013885, 35.118263, 39.727448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.167774, 35.008297, 39.828358>,  <41.588768, 35.674210, 39.713398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.167774, 35.008297, 39.828358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.552391, 34.935005, 39.910202>,  <41.783161, 34.891029, 39.959309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.552391, 34.935005, 39.910202>,  <41.167774, 35.008297, 39.828358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.552391, 34.935005, 39.910202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244412, -0.230966, 0.941763,
		-0.125304, -0.955553, -0.266867,
		0.961541, -0.183232, 0.204608,
		41.840855, 34.880035, 39.971584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.089249, 34.407135, 40.211224>,  <41.167774, 35.008297, 39.828358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.089249, 34.407135, 40.211224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.451733, 34.551434, 40.299446>,  <41.669224, 34.638012, 40.352379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.451733, 34.551434, 40.299446>,  <41.089249, 34.407135, 40.211224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.451733, 34.551434, 40.299446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145250, -0.224288, 0.963638,
		0.397095, -0.905295, -0.150854,
		0.906211, 0.360744, 0.220558,
		41.723595, 34.659657, 40.365612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.507252, 33.902164, 40.639641>,  <41.089249, 34.407135, 40.211224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.507252, 33.902164, 40.639641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.719513, 34.232964, 40.713924>,  <41.846870, 34.431442, 40.758495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.719513, 34.232964, 40.713924>,  <41.507252, 33.902164, 40.639641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.719513, 34.232964, 40.713924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115440, -0.287578, 0.950774,
		0.839693, -0.483090, -0.248072,
		0.530650, 0.826996, 0.185709,
		41.878708, 34.481064, 40.769638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.992214, 33.636051, 41.095375>,  <41.507252, 33.902164, 40.639641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.992214, 33.636051, 41.095375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.979294, 34.032932, 41.143539>,  <41.971542, 34.271061, 41.172436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.979294, 34.032932, 41.143539>,  <41.992214, 33.636051, 41.095375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.979294, 34.032932, 41.143539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128626, -0.115341, 0.984963,
		0.991167, 0.047304, -0.123897,
		-0.032302, 0.992199, 0.120407,
		41.969604, 34.330593, 41.179661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.609596, 33.779026, 41.432293>,  <41.992214, 33.636051, 41.095375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.609596, 33.779026, 41.432293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.362595, 34.087540, 41.494011>,  <42.214394, 34.272648, 41.531044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.362595, 34.087540, 41.494011>,  <42.609596, 33.779026, 41.432293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.362595, 34.087540, 41.494011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048902, -0.158140, 0.986205,
		0.785045, 0.616533, 0.059934,
		-0.617506, 0.771284, 0.154297,
		42.177341, 34.318924, 41.540298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.955772, 34.231255, 41.998489>,  <42.609596, 33.779026, 41.432293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.955772, 34.231255, 41.998489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.569759, 34.332623, 41.971672>,  <42.338154, 34.393444, 41.955582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.569759, 34.332623, 41.971672>,  <42.955772, 34.231255, 41.998489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.569759, 34.332623, 41.971672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055348, 0.052992, 0.997060,
		0.256227, 0.965904, -0.037113,
		-0.965031, 0.253419, -0.067039,
		42.280251, 34.408649, 41.951561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.880680, 34.748039, 42.464016>,  <42.955772, 34.231255, 41.998489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.880680, 34.748039, 42.464016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.505070, 34.615360, 42.427765>,  <42.279705, 34.535751, 42.406013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.505070, 34.615360, 42.427765>,  <42.880680, 34.748039, 42.464016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.505070, 34.615360, 42.427765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118491, 0.064726, 0.990843,
		-0.322796, 0.941162, -0.100082,
		-0.939022, -0.331699, -0.090626,
		42.223362, 34.515850, 42.400578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.471737, 35.088802, 42.978001>,  <42.880680, 34.748039, 42.464016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.471737, 35.088802, 42.978001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.257130, 34.768845, 42.870438>,  <42.128365, 34.576870, 42.805901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.257130, 34.768845, 42.870438>,  <42.471737, 35.088802, 42.978001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.257130, 34.768845, 42.870438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362211, -0.069535, 0.929499,
		-0.762204, 0.596093, -0.252426,
		-0.536515, -0.799899, -0.268911,
		42.096176, 34.528873, 42.789764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.908188, 35.269424, 43.289021>,  <42.471737, 35.088802, 42.978001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.908188, 35.269424, 43.289021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.902878, 34.872597, 43.239037>,  <41.899693, 34.634499, 43.209045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.902878, 34.872597, 43.239037>,  <41.908188, 35.269424, 43.289021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.902878, 34.872597, 43.239037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189133, -0.120221, 0.974564,
		-0.981862, 0.036571, -0.186038,
		-0.013275, -0.992073, -0.124957,
		41.898895, 34.574974, 43.201550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.345978, 35.172176, 43.777729>,  <41.908188, 35.269424, 43.289021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.345978, 35.172176, 43.777729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.551220, 34.837704, 43.700249>,  <41.674366, 34.637020, 43.653763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.551220, 34.837704, 43.700249>,  <41.345978, 35.172176, 43.777729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.551220, 34.837704, 43.700249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070050, -0.184121, 0.980404,
		-0.855461, -0.516622, -0.035900,
		0.513108, -0.836183, -0.193698,
		41.705151, 34.586849, 43.642139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.973812, 34.675682, 44.109505>,  <41.345978, 35.172176, 43.777729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.973812, 34.675682, 44.109505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.335342, 34.509899, 44.066944>,  <41.552261, 34.410431, 44.041409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.335342, 34.509899, 44.066944>,  <40.973812, 34.675682, 44.109505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.335342, 34.509899, 44.066944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007392, -0.233504, 0.972328,
		-0.427831, -0.879604, -0.207984,
		0.903828, -0.414455, -0.106403,
		41.606491, 34.385563, 44.035023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.981781, 34.043262, 44.487404>,  <40.973812, 34.675682, 44.109505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.981781, 34.043262, 44.487404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.365566, 34.150906, 44.453907>,  <41.595837, 34.215492, 44.433807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.365566, 34.150906, 44.453907>,  <40.981781, 34.043262, 44.487404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.365566, 34.150906, 44.453907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142776, -0.207919, 0.967670,
		0.242994, -0.940400, -0.237913,
		0.959463, 0.269106, -0.083743,
		41.653404, 34.231636, 44.428783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.505383, 33.486385, 44.578785>,  <40.981781, 34.043262, 44.487404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.505383, 33.486385, 44.578785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.570042, 33.866978, 44.683517>,  <41.608837, 34.095333, 44.746357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.570042, 33.866978, 44.683517>,  <41.505383, 33.486385, 44.578785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.570042, 33.866978, 44.683517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132924, -0.241906, 0.961152,
		0.977856, -0.190167, 0.087372,
		0.161643, 0.951482, 0.261827,
		41.618534, 34.152424, 44.762066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.030903, 32.922306, 44.799358>,  <41.505383, 33.486385, 44.578785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.030903, 32.922306, 44.799358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.104759, 33.185154, 45.091690>,  <42.149071, 33.342861, 45.267090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.104759, 33.185154, 45.091690>,  <42.030903, 32.922306, 44.799358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.104759, 33.185154, 45.091690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341019, -0.654577, 0.674711,
		0.921746, -0.373802, 0.103230,
		0.184636, 0.657115, 0.730828,
		42.160149, 33.382290, 45.310940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.594559, 32.766819, 45.275799>,  <42.030903, 32.922306, 44.799358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.594559, 32.766819, 45.275799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.314480, 32.704323, 44.997139>,  <41.146431, 32.666824, 44.829945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.314480, 32.704323, 44.997139>,  <41.594559, 32.766819, 45.275799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.314480, 32.704323, 44.997139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704768, 0.004743, -0.709422,
		0.114145, -0.987708, 0.106792,
		-0.700195, -0.156240, -0.696646,
		41.104420, 32.657452, 44.788147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.740490, 32.150513, 44.846943>,  <41.594559, 32.766819, 45.275799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.740490, 32.150513, 44.846943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.507263, 32.409161, 44.650208>,  <41.367325, 32.564350, 44.532166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.507263, 32.409161, 44.650208>,  <41.740490, 32.150513, 44.846943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.507263, 32.409161, 44.650208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696488, 0.086178, -0.712375,
		-0.418251, -0.757926, -0.500613,
		-0.583069, 0.646622, -0.491842,
		41.332344, 32.603146, 44.502655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.425804, 31.960798, 44.162384>,  <41.740490, 32.150513, 44.846943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.425804, 31.960798, 44.162384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.533379, 32.341885, 44.218964>,  <41.597923, 32.570538, 44.252911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.533379, 32.341885, 44.218964>,  <41.425804, 31.960798, 44.162384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.533379, 32.341885, 44.218964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800271, -0.139309, -0.583232,
		-0.535949, 0.270048, -0.799896,
		0.268933, 0.952716, 0.141449,
		41.614059, 32.627701, 44.261398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.809425, 32.187195, 43.480747>,  <41.425804, 31.960798, 44.162384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.809425, 32.187195, 43.480747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.877331, 32.453907, 43.771015>,  <41.918072, 32.613934, 43.945175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.877331, 32.453907, 43.771015>,  <41.809425, 32.187195, 43.480747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.877331, 32.453907, 43.771015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941641, 0.107447, -0.319011,
		-0.290680, 0.737472, -0.609623,
		0.169759, 0.666776, 0.725666,
		41.928257, 32.653938, 43.988716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.653866, 31.463522, 43.624207>,  <41.809425, 32.187195, 43.480747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.653866, 31.463522, 43.624207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.507786, 31.479523, 43.252178>,  <41.420139, 31.489122, 43.028961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.507786, 31.479523, 43.252178>,  <41.653866, 31.463522, 43.624207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.507786, 31.479523, 43.252178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900414, -0.238523, -0.363816,
		-0.236390, -0.970313, 0.051104,
		-0.365205, 0.039988, -0.930068,
		41.398224, 31.491524, 42.973156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.233418, 30.889814, 43.687641>,  <41.653866, 31.463522, 43.624207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.233418, 30.889814, 43.687641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.876293, 30.786840, 43.539791>,  <41.662018, 30.725056, 43.451080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.876293, 30.786840, 43.539791>,  <42.233418, 30.889814, 43.687641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.876293, 30.786840, 43.539791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448464, 0.584772, 0.675960,
		0.042129, 0.769265, -0.637539,
		-0.892807, -0.257436, -0.369624,
		41.608452, 30.709610, 43.428905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.527897, 30.656235, 43.057869>,  <42.233418, 30.889814, 43.687641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.527897, 30.656235, 43.057869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.616501, 30.416780, 42.749954>,  <42.669662, 30.273108, 42.565205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.616501, 30.416780, 42.749954>,  <42.527897, 30.656235, 43.057869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.616501, 30.416780, 42.749954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349453, 0.785697, -0.510454,
		0.910393, -0.155933, 0.383235,
		0.221510, -0.598636, -0.769784,
		42.682953, 30.237190, 42.519020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.226971, 30.624691, 42.874367>,  <42.527897, 30.656235, 43.057869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.226971, 30.624691, 42.874367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.038246, 30.548241, 42.530075>,  <42.925011, 30.502371, 42.323498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.038246, 30.548241, 42.530075>,  <43.226971, 30.624691, 42.874367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.038246, 30.548241, 42.530075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429993, 0.802381, -0.413872,
		0.769738, -0.565381, -0.296392,
		-0.471815, -0.191126, -0.860733,
		42.896702, 30.490902, 42.271854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.673298, 30.676510, 42.362411>,  <43.226971, 30.624691, 42.874367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.673298, 30.676510, 42.362411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.324272, 30.739481, 42.177437>,  <43.114857, 30.777264, 42.066452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.324272, 30.739481, 42.177437>,  <43.673298, 30.676510, 42.362411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.324272, 30.739481, 42.177437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409466, 0.751949, -0.516633,
		0.266393, -0.640147, -0.720588,
		-0.872566, 0.157429, -0.462433,
		43.062504, 30.786709, 42.038708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.795326, 30.613573, 41.570625>,  <43.673298, 30.676510, 42.362411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.795326, 30.613573, 41.570625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.481552, 30.843502, 41.663788>,  <43.293289, 30.981459, 41.719685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.481552, 30.843502, 41.663788>,  <43.795326, 30.613573, 41.570625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.481552, 30.843502, 41.663788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370591, 0.735526, -0.567154,
		-0.497318, -0.358584, -0.789995,
		-0.784435, 0.574821, 0.232903,
		43.246223, 31.015947, 41.733658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.571487, 30.743170, 40.926605>,  <43.795326, 30.613573, 41.570625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.571487, 30.743170, 40.926605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.399097, 31.026957, 41.149643>,  <43.295662, 31.197227, 41.283466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.399097, 31.026957, 41.149643>,  <43.571487, 30.743170, 40.926605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.399097, 31.026957, 41.149643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296694, 0.694988, -0.654954,
		-0.852191, -0.116835, -0.510019,
		-0.430979, 0.709465, 0.557599,
		43.269802, 31.239796, 41.316921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.000984, 31.097816, 40.497154>,  <43.571487, 30.743170, 40.926605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.000984, 31.097816, 40.497154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.112408, 31.326591, 40.805775>,  <43.179260, 31.463856, 40.990948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.112408, 31.326591, 40.805775>,  <43.000984, 31.097816, 40.497154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.112408, 31.326591, 40.805775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295781, 0.713215, -0.635482,
		-0.913738, 0.405230, 0.029505,
		0.278560, 0.571938, 0.771552,
		43.195976, 31.498173, 41.037239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.703621, 31.765762, 40.378864>,  <43.000984, 31.097816, 40.497154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.703621, 31.765762, 40.378864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.997524, 31.838158, 40.640362>,  <43.173866, 31.881596, 40.797260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.997524, 31.838158, 40.640362>,  <42.703621, 31.765762, 40.378864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.997524, 31.838158, 40.640362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372061, 0.698315, -0.611496,
		-0.567191, 0.692531, 0.445752,
		0.734756, 0.180988, 0.653741,
		43.217953, 31.892454, 40.836483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.710869, 32.481434, 40.376892>,  <42.703621, 31.765762, 40.378864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.710869, 32.481434, 40.376892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.052849, 32.399029, 40.567310>,  <43.258038, 32.349586, 40.681561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.052849, 32.399029, 40.567310>,  <42.710869, 32.481434, 40.376892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.052849, 32.399029, 40.567310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465025, 0.711016, -0.527454,
		-0.229817, 0.672320, 0.703683,
		0.854948, -0.206012, 0.476050,
		43.309334, 32.337227, 40.710125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.052574, 33.121246, 40.724903>,  <42.710869, 32.481434, 40.376892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.052574, 33.121246, 40.724903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.347576, 32.854050, 40.685165>,  <43.524578, 32.693733, 40.661324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.347576, 32.854050, 40.685165>,  <43.052574, 33.121246, 40.724903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.347576, 32.854050, 40.685165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610961, 0.722626, -0.323323,
		0.287763, 0.177761, 0.941060,
		0.737509, -0.667991, -0.099339,
		43.568829, 32.653652, 40.655365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.699734, 33.470608, 40.905727>,  <43.052574, 33.121246, 40.724903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.699734, 33.470608, 40.905727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.811794, 33.155422, 40.686405>,  <43.879028, 32.966312, 40.554813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.811794, 33.155422, 40.686405>,  <43.699734, 33.470608, 40.905727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.811794, 33.155422, 40.686405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630884, 0.581629, -0.513511,
		0.723535, -0.202056, 0.660053,
		0.280148, -0.787960, -0.548303,
		43.895840, 32.919033, 40.521915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.337078, 33.544685, 40.793102>,  <43.699734, 33.470608, 40.905727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.337078, 33.544685, 40.793102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.210045, 33.296238, 40.506508>,  <44.133827, 33.147167, 40.334553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.210045, 33.296238, 40.506508>,  <44.337078, 33.544685, 40.793102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.210045, 33.296238, 40.506508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538591, 0.503730, -0.675409,
		0.780426, -0.600388, 0.174556,
		-0.317578, -0.621120, -0.716487,
		44.114773, 33.109901, 40.291561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.941429, 33.333950, 40.301254>,  <44.337078, 33.544685, 40.793102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.941429, 33.333950, 40.301254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.625397, 33.237476, 40.075829>,  <44.435776, 33.179592, 39.940575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.625397, 33.237476, 40.075829>,  <44.941429, 33.333950, 40.301254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.625397, 33.237476, 40.075829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425315, 0.446385, -0.787304,
		0.441423, -0.861734, -0.250120,
		-0.790096, -0.241154, -0.563553,
		44.388371, 33.165119, 39.906761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.246258, 33.126080, 39.744892>,  <44.941429, 33.333950, 40.301254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.246258, 33.126080, 39.744892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.866611, 33.218731, 39.659546>,  <44.638824, 33.274323, 39.608337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.866611, 33.218731, 39.659546>,  <45.246258, 33.126080, 39.744892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.866611, 33.218731, 39.659546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288712, 0.369357, -0.883301,
		-0.125786, -0.899958, -0.417436,
		-0.949117, 0.231625, -0.213369,
		44.581875, 33.288219, 39.595535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.248241, 33.163715, 38.983486>,  <45.246258, 33.126080, 39.744892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.248241, 33.163715, 38.983486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.892807, 33.328739, 39.063690>,  <44.679546, 33.427753, 39.111813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.892807, 33.328739, 39.063690>,  <45.248241, 33.163715, 38.983486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.892807, 33.328739, 39.063690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039051, 0.503568, -0.863072,
		-0.457036, -0.759088, -0.463577,
		-0.888591, 0.412558, 0.200505,
		44.626228, 33.452507, 39.123840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.737854, 33.031982, 38.384109>,  <45.248241, 33.163715, 38.983486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.737854, 33.031982, 38.384109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.640060, 33.352646, 38.602310>,  <44.581383, 33.545044, 38.733231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.640060, 33.352646, 38.602310>,  <44.737854, 33.031982, 38.384109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.640060, 33.352646, 38.602310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043422, 0.552955, -0.832079,
		-0.968680, -0.227120, -0.100381,
		-0.244488, 0.801659, 0.545498,
		44.566715, 33.593143, 38.765961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.161709, 33.508335, 37.994385>,  <44.737854, 33.031982, 38.384109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.161709, 33.508335, 37.994385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.337677, 33.732655, 38.274948>,  <44.443256, 33.867249, 38.443287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.337677, 33.732655, 38.274948>,  <44.161709, 33.508335, 37.994385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.337677, 33.732655, 38.274948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047991, 0.765246, -0.641946,
		-0.896754, 0.316066, 0.309734,
		0.439920, 0.560803, 0.701406,
		44.469654, 33.900894, 38.485371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.865356, 34.203732, 38.022293>,  <44.161709, 33.508335, 37.994385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.865356, 34.203732, 38.022293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.215443, 34.265583, 38.205635>,  <44.425495, 34.302696, 38.315639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.215443, 34.265583, 38.205635>,  <43.865356, 34.203732, 38.022293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.215443, 34.265583, 38.205635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212080, 0.728957, -0.650879,
		-0.434770, 0.666866, 0.605198,
		0.875213, 0.154632, 0.458357,
		44.478008, 34.311974, 38.343143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.908916, 34.878704, 38.011635>,  <43.865356, 34.203732, 38.022293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.908916, 34.878704, 38.011635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.283821, 34.748753, 38.062210>,  <44.508766, 34.670780, 38.092556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.283821, 34.748753, 38.062210>,  <43.908916, 34.878704, 38.011635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.283821, 34.748753, 38.062210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320900, 0.662295, -0.677044,
		0.136221, 0.675144, 0.725000,
		0.937266, -0.324880, 0.126435,
		44.565002, 34.651287, 38.100140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.374382, 35.495445, 38.103802>,  <43.908916, 34.878704, 38.011635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.374382, 35.495445, 38.103802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.619728, 35.192837, 38.013065>,  <44.766933, 35.011272, 37.958622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.619728, 35.192837, 38.013065>,  <44.374382, 35.495445, 38.103802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.619728, 35.192837, 38.013065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420973, 0.556170, -0.716558,
		0.668258, 0.344014, 0.659610,
		0.613361, -0.756524, -0.226845,
		44.803738, 34.965878, 37.945011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.961876, 35.873405, 37.800037>,  <44.374382, 35.495445, 38.103802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.961876, 35.873405, 37.800037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.041805, 35.497070, 37.690575>,  <45.089764, 35.271267, 37.624897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.041805, 35.497070, 37.690575>,  <44.961876, 35.873405, 37.800037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.041805, 35.497070, 37.690575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395202, 0.332957, -0.856128,
		0.896597, 0.062925, 0.438355,
		0.199825, -0.940840, -0.273660,
		45.101753, 35.214817, 37.608479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.675911, 35.911762, 37.422615>,  <44.961876, 35.873405, 37.800037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.675911, 35.911762, 37.422615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.532085, 35.551346, 37.325596>,  <45.445789, 35.335094, 37.267384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.532085, 35.551346, 37.325596>,  <45.675911, 35.911762, 37.422615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.532085, 35.551346, 37.325596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315279, 0.127337, -0.940417,
		0.878244, -0.414612, 0.238295,
		-0.359564, -0.901045, -0.242552,
		45.424217, 35.281033, 37.252831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.223518, 35.538448, 37.048683>,  <45.675911, 35.911762, 37.422615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.223518, 35.538448, 37.048683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.867920, 35.396416, 36.933029>,  <45.654560, 35.311195, 36.863636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.867920, 35.396416, 36.933029>,  <46.223518, 35.538448, 37.048683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.867920, 35.396416, 36.933029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167962, 0.334543, -0.927292,
		0.425993, -0.872924, -0.237768,
		-0.888999, -0.355084, -0.289131,
		45.601219, 35.289890, 36.846291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.387596, 35.237049, 36.496628>,  <46.223518, 35.538448, 37.048683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.387596, 35.237049, 36.496628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.993378, 35.282867, 36.446709>,  <45.756847, 35.310360, 36.416759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.993378, 35.282867, 36.446709>,  <46.387596, 35.237049, 36.496628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.993378, 35.282867, 36.446709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159024, 0.371802, -0.914590,
		-0.058367, -0.921218, -0.384645,
		-0.985548, 0.114550, -0.124794,
		45.697712, 35.317234, 36.409271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.312698, 34.851978, 35.973179>,  <46.387596, 35.237049, 36.496628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.312698, 34.851978, 35.973179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.002754, 35.102543, 36.007141>,  <45.816788, 35.252880, 36.027519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.002754, 35.102543, 36.007141>,  <46.312698, 34.851978, 35.973179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.002754, 35.102543, 36.007141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100468, 0.254641, -0.961803,
		-0.624102, -0.736729, -0.260244,
		-0.774857, 0.626409, 0.084904,
		45.770298, 35.290466, 36.032612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.790966, 34.507465, 35.595768>,  <46.312698, 34.851978, 35.973179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.790966, 34.507465, 35.595768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.171879, 34.477512, 35.714119>,  <47.400429, 34.459541, 35.785130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.171879, 34.477512, 35.714119>,  <46.790966, 34.507465, 35.595768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.171879, 34.477512, 35.714119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301645, 0.083229, -0.949781,
		0.046500, 0.993713, 0.101847,
		0.952286, -0.074887, 0.295878,
		47.457565, 34.455048, 35.802883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.136761, 35.131588, 35.460312>,  <46.790966, 34.507465, 35.595768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.136761, 35.131588, 35.460312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.379581, 34.814781, 35.434368>,  <47.525272, 34.624699, 35.418804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.379581, 34.814781, 35.434368>,  <47.136761, 35.131588, 35.460312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.379581, 34.814781, 35.434368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317021, 0.316206, -0.894154,
		0.728689, 0.522235, 0.443038,
		0.607050, -0.792012, -0.064856,
		47.561695, 34.577179, 35.414909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.605957, 35.426769, 34.959671>,  <47.136761, 35.131588, 35.460312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.605957, 35.426769, 34.959671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.732197, 35.047260, 34.965790>,  <47.807941, 34.819557, 34.969460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.732197, 35.047260, 34.965790>,  <47.605957, 35.426769, 34.959671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.732197, 35.047260, 34.965790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490549, 0.149338, -0.858522,
		0.812254, 0.278454, 0.512549,
		0.315602, -0.948768, 0.015295,
		47.826878, 34.762630, 34.970379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.378239, 32.112007, 45.028893> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.984921, 32.147564, 45.092426>,  <33.748928, 32.168900, 45.130547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.984921, 32.147564, 45.092426>,  <34.378239, 32.112007, 45.028893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.984921, 32.147564, 45.092426> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129731, 0.269824, -0.954130,
		-0.127673, -0.958798, -0.253785,
		-0.983295, 0.088893, 0.158835,
		33.689934, 32.174232, 45.140076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.028564, 31.633976, 44.556572>,  <34.378239, 32.112007, 45.028893>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.028564, 31.633976, 44.556572> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.773998, 31.924318, 44.660965>,  <33.621258, 32.098522, 44.723598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.773998, 31.924318, 44.660965>,  <34.028564, 31.633976, 44.556572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.773998, 31.924318, 44.660965> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151529, 0.214103, -0.964986,
		-0.756317, -0.653677, -0.026270,
		-0.636414, 0.725855, 0.260981,
		33.583073, 32.142075, 44.739258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.608807, 31.739866, 43.957134>,  <34.028564, 31.633976, 44.556572>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.608807, 31.739866, 43.957134> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.555393, 32.084976, 44.152191>,  <33.523346, 32.292042, 44.269226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.555393, 32.084976, 44.152191>,  <33.608807, 31.739866, 43.957134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.555393, 32.084976, 44.152191> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219555, 0.454063, -0.863494,
		-0.966418, -0.222372, 0.128792,
		-0.133537, 0.862773, 0.487638,
		33.515331, 32.343807, 44.298481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.013664, 32.176998, 43.565536>,  <33.608807, 31.739866, 43.957134>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.013664, 32.176998, 43.565536> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.243530, 32.426178, 43.777836>,  <33.381451, 32.575687, 43.905216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.243530, 32.426178, 43.777836>,  <33.013664, 32.176998, 43.565536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.243530, 32.426178, 43.777836> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021078, 0.637048, -0.770536,
		-0.818119, 0.453986, 0.352958,
		0.574663, 0.622951, 0.530749,
		33.415928, 32.613064, 43.937061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.677471, 32.765228, 43.635998>,  <33.013664, 32.176998, 43.565536>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.677471, 32.765228, 43.635998> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.057301, 32.884407, 43.675064>,  <33.285198, 32.955914, 43.698505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.057301, 32.884407, 43.675064>,  <32.677471, 32.765228, 43.635998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.057301, 32.884407, 43.675064> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191934, 0.798671, -0.570339,
		-0.247932, 0.522834, 0.815582,
		0.949574, 0.297943, 0.097666,
		33.342175, 32.973789, 43.704365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.554466, 33.373665, 43.310314>,  <32.677471, 32.765228, 43.635998>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.554466, 33.373665, 43.310314> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.947594, 33.380169, 43.383858>,  <33.183472, 33.384071, 43.427982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.947594, 33.380169, 43.383858>,  <32.554466, 33.373665, 43.310314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.947594, 33.380169, 43.383858> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120748, 0.696749, -0.707079,
		-0.139599, 0.717131, 0.682814,
		0.982818, 0.016259, 0.183858,
		33.242439, 33.385048, 43.439014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.758930, 34.103886, 43.363869>,  <32.554466, 33.373665, 43.310314>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.758930, 34.103886, 43.363869> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.079529, 33.887897, 43.261074>,  <33.271889, 33.758305, 43.199398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.079529, 33.887897, 43.261074>,  <32.758930, 34.103886, 43.363869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.079529, 33.887897, 43.261074> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222482, 0.668143, -0.709991,
		0.555075, 0.511879, 0.655646,
		0.801494, -0.539968, -0.256986,
		33.319977, 33.725906, 43.183979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.297050, 34.600197, 43.274433>,  <32.758930, 34.103886, 43.363869>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.297050, 34.600197, 43.274433> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.408119, 34.271347, 43.075634>,  <33.474762, 34.074036, 42.956356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.408119, 34.271347, 43.075634>,  <33.297050, 34.600197, 43.274433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.408119, 34.271347, 43.075634> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311568, 0.566442, -0.762934,
		0.908748, 0.057000, 0.413436,
		0.277675, -0.822128, -0.496993,
		33.491421, 34.024708, 42.926537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.883774, 34.833210, 43.026852>,  <33.297050, 34.600197, 43.274433>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.883774, 34.833210, 43.026852> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.769428, 34.530209, 42.792088>,  <33.700821, 34.348408, 42.651230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.769428, 34.530209, 42.792088>,  <33.883774, 34.833210, 43.026852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.769428, 34.530209, 42.792088> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391626, 0.466638, -0.793018,
		0.874590, -0.456550, 0.163261,
		-0.285868, -0.757503, -0.586914,
		33.683666, 34.302959, 42.616013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.491611, 34.785145, 42.492752>,  <33.883774, 34.833210, 43.026852>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.491611, 34.785145, 42.492752> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.206383, 34.566135, 42.317596>,  <34.035248, 34.434731, 42.212502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.206383, 34.566135, 42.317596>,  <34.491611, 34.785145, 42.492752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.206383, 34.566135, 42.317596> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208780, 0.430414, -0.878154,
		0.669287, -0.717607, -0.192602,
		-0.713068, -0.547526, -0.437892,
		33.992462, 34.401878, 42.186230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.787430, 34.334793, 42.006607>,  <34.491611, 34.785145, 42.492752>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.787430, 34.334793, 42.006607> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.408752, 34.410812, 41.902569>,  <34.181545, 34.456425, 41.840145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.408752, 34.410812, 41.902569>,  <34.787430, 34.334793, 42.006607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.408752, 34.410812, 41.902569> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295576, 0.191494, -0.935930,
		-0.128065, -0.962918, -0.237460,
		-0.946696, 0.190047, -0.260092,
		34.124744, 34.467827, 41.824543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.660843, 33.949947, 41.381916>,  <34.787430, 34.334793, 42.006607>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.660843, 33.949947, 41.381916> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.404564, 34.256077, 41.406528>,  <34.250797, 34.439754, 41.421295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.404564, 34.256077, 41.406528>,  <34.660843, 33.949947, 41.381916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.404564, 34.256077, 41.406528> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223318, 0.262432, -0.938754,
		-0.734599, -0.587716, -0.339050,
		-0.640698, 0.765323, 0.061535,
		34.212353, 34.485672, 41.424988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.161072, 33.970486, 40.800209>,  <34.660843, 33.949947, 41.381916>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.161072, 33.970486, 40.800209> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.160892, 34.351280, 40.922665>,  <34.160786, 34.579758, 40.996136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.160892, 34.351280, 40.922665>,  <34.161072, 33.970486, 40.800209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.160892, 34.351280, 40.922665> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076083, 0.305217, -0.949239,
		-0.997101, -0.023714, 0.072294,
		-0.000445, 0.951987, 0.306137,
		34.160759, 34.636875, 41.014507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.781296, 34.324642, 40.271564>,  <34.161072, 33.970486, 40.800209>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.781296, 34.324642, 40.271564> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.993916, 34.608395, 40.456711>,  <34.121487, 34.778645, 40.567799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.993916, 34.608395, 40.456711>,  <33.781296, 34.324642, 40.271564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.993916, 34.608395, 40.456711> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046077, 0.521431, -0.852049,
		-0.845775, 0.474231, 0.244479,
		0.531546, 0.709376, 0.462865,
		34.153381, 34.821209, 40.595570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.497578, 34.933834, 39.982182>,  <33.781296, 34.324642, 40.271564>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.497578, 34.933834, 39.982182> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.839157, 35.045837, 40.157623>,  <34.044106, 35.113037, 40.262886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.839157, 35.045837, 40.157623>,  <33.497578, 34.933834, 39.982182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.839157, 35.045837, 40.157623> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184368, 0.625394, -0.758215,
		-0.486604, 0.728340, 0.482429,
		0.853947, 0.280006, 0.438602,
		34.095341, 35.129841, 40.289204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.477970, 35.665215, 40.034161>,  <33.497578, 34.933834, 39.982182>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.477970, 35.665215, 40.034161> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.855247, 35.532581, 40.025814>,  <34.081615, 35.453003, 40.020805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.855247, 35.532581, 40.025814>,  <33.477970, 35.665215, 40.034161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.855247, 35.532581, 40.025814> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205087, 0.630503, -0.748602,
		0.261380, 0.701799, 0.662691,
		0.943196, -0.331579, -0.020871,
		34.138206, 35.433109, 40.019554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.785564, 36.335560, 39.778461>,  <33.477970, 35.665215, 40.034161>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.785564, 36.335560, 39.778461> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.046535, 36.034313, 39.744617>,  <34.203117, 35.853565, 39.724312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.046535, 36.034313, 39.744617>,  <33.785564, 36.335560, 39.778461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.046535, 36.034313, 39.744617> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394627, 0.432914, -0.810466,
		0.647003, 0.495379, 0.579644,
		0.652424, -0.753117, -0.084607,
		34.242264, 35.808376, 39.719234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.510300, 36.662903, 39.843681>,  <33.785564, 36.335560, 39.778461>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.510300, 36.662903, 39.843681> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.518127, 36.318459, 39.640465>,  <34.522823, 36.111794, 39.518536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.518127, 36.318459, 39.640465>,  <34.510300, 36.662903, 39.843681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.518127, 36.318459, 39.640465> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541947, 0.436150, -0.718378,
		0.840185, -0.261279, 0.475208,
		0.019565, -0.861108, -0.508046,
		34.523998, 36.060127, 39.488052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.244148, 36.678493, 39.488758>,  <34.510300, 36.662903, 39.843681>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.244148, 36.678493, 39.488758> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.048130, 36.375126, 39.316868>,  <34.930519, 36.193104, 39.213734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.048130, 36.375126, 39.316868>,  <35.244148, 36.678493, 39.488758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.048130, 36.375126, 39.316868> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451922, 0.200505, -0.869232,
		0.745403, -0.620161, 0.244489,
		-0.490043, -0.758418, -0.429722,
		34.901115, 36.147602, 39.187950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.792576, 36.342613, 39.030151>,  <35.244148, 36.678493, 39.488758>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.792576, 36.342613, 39.030151> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.409641, 36.295696, 38.924515>,  <35.179878, 36.267548, 38.861134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.409641, 36.295696, 38.924515>,  <35.792576, 36.342613, 39.030151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.409641, 36.295696, 38.924515> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257942, 0.065101, -0.963965,
		0.130262, -0.990961, -0.032068,
		-0.957339, -0.117296, -0.264091,
		35.122440, 36.260509, 38.845287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.991192, 35.920181, 38.542454>,  <35.792576, 36.342613, 39.030151>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.991192, 35.920181, 38.542454> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.615265, 36.040894, 38.478355>,  <35.389709, 36.113323, 38.439896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.615265, 36.040894, 38.478355>,  <35.991192, 35.920181, 38.542454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.615265, 36.040894, 38.478355> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197613, 0.097456, -0.975424,
		-0.278749, -0.948383, -0.151226,
		-0.939813, 0.301783, -0.160247,
		35.333321, 36.131428, 38.430283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.751225, 35.502739, 38.045521>,  <35.991192, 35.920181, 38.542454>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.751225, 35.502739, 38.045521> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.511528, 35.822369, 38.025970>,  <35.367710, 36.014149, 38.014240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.511528, 35.822369, 38.025970>,  <35.751225, 35.502739, 38.045521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.511528, 35.822369, 38.025970> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238125, 0.119613, -0.963841,
		-0.764337, -0.589209, -0.261957,
		-0.599237, 0.799078, -0.048880,
		35.331757, 36.062092, 38.011307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.542255, 35.221157, 38.088581>,  <35.751225, 35.502739, 38.045521>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.542255, 35.221157, 38.088581> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.868668, 35.408615, 38.223911>,  <37.064514, 35.521091, 38.305107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.868668, 35.408615, 38.223911>,  <36.542255, 35.221157, 38.088581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.868668, 35.408615, 38.223911> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121942, -0.432566, 0.893318,
		0.564998, -0.770231, -0.295840,
		0.816031, 0.468647, 0.338323,
		37.113476, 35.549210, 38.325409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.961670, 34.676666, 38.411312>,  <36.542255, 35.221157, 38.088581>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.961670, 34.676666, 38.411312> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.077435, 35.024464, 38.571426>,  <37.146893, 35.233143, 38.667496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.077435, 35.024464, 38.571426>,  <36.961670, 34.676666, 38.411312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.077435, 35.024464, 38.571426> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030559, -0.426363, 0.904036,
		0.956718, -0.249403, -0.149964,
		0.289408, 0.869490, 0.400287,
		37.164257, 35.285309, 38.691513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.617878, 34.538330, 38.865284>,  <36.961670, 34.676666, 38.411312>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.617878, 34.538330, 38.865284> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.458485, 34.889126, 38.972694>,  <37.362850, 35.099602, 39.037140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.458485, 34.889126, 38.972694>,  <37.617878, 34.538330, 38.865284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.458485, 34.889126, 38.972694> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110045, -0.244944, 0.963272,
		0.910552, 0.413394, 0.001097,
		-0.398480, 0.876988, 0.268526,
		37.338940, 35.152222, 39.053253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.998970, 34.856598, 39.305710>,  <37.617878, 34.538330, 38.865284>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.998970, 34.856598, 39.305710> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.649811, 35.032883, 39.389435>,  <37.440315, 35.138653, 39.439671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.649811, 35.032883, 39.389435>,  <37.998970, 34.856598, 39.305710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.649811, 35.032883, 39.389435> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096945, -0.263781, 0.959698,
		0.478167, 0.858014, 0.187530,
		-0.872902, 0.440717, 0.209312,
		37.387939, 35.165096, 39.452229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.174004, 35.071056, 39.937172>,  <37.998970, 34.856598, 39.305710>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.174004, 35.071056, 39.937172> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.775326, 35.093224, 39.913429>,  <37.536118, 35.106525, 39.899181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.775326, 35.093224, 39.913429>,  <38.174004, 35.071056, 39.937172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.775326, 35.093224, 39.913429> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072593, -0.280327, 0.957156,
		0.036405, 0.958303, 0.283424,
		-0.996697, 0.055420, -0.059361,
		37.476318, 35.109848, 39.895622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.962337, 35.403076, 40.512600>,  <38.174004, 35.071056, 39.937172>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.962337, 35.403076, 40.512600> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.622967, 35.227055, 40.394943>,  <37.419342, 35.121441, 40.324348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.622967, 35.227055, 40.394943>,  <37.962337, 35.403076, 40.512600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.622967, 35.227055, 40.394943> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036025, -0.506408, 0.861541,
		-0.528081, 0.741553, 0.413799,
		-0.848430, -0.440056, -0.294139,
		37.368439, 35.095039, 40.306702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.498943, 35.654076, 40.959782>,  <37.962337, 35.403076, 40.512600>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.498943, 35.654076, 40.959782> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.293186, 35.339748, 40.822441>,  <37.169731, 35.151150, 40.740036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.293186, 35.339748, 40.822441>,  <37.498943, 35.654076, 40.959782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.293186, 35.339748, 40.822441> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025368, -0.414149, 0.909855,
		-0.857181, 0.459311, 0.232969,
		-0.514390, -0.785821, -0.343349,
		37.138870, 35.104004, 40.719437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.017769, 35.552261, 41.438896>,  <37.498943, 35.654076, 40.959782>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.017769, 35.552261, 41.438896> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.033230, 35.190231, 41.269497>,  <37.042507, 34.973015, 41.167858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.033230, 35.190231, 41.269497>,  <37.017769, 35.552261, 41.438896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.033230, 35.190231, 41.269497> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223035, -0.420940, 0.879241,
		-0.974044, 0.060471, -0.218132,
		0.038652, -0.905071, -0.423502,
		37.044827, 34.918709, 41.142445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.402363, 35.170811, 41.664734>,  <37.017769, 35.552261, 41.438896>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.402363, 35.170811, 41.664734> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.648136, 34.894569, 41.512138>,  <36.795601, 34.728825, 41.420582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.648136, 34.894569, 41.512138>,  <36.402363, 35.170811, 41.664734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.648136, 34.894569, 41.512138> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170827, -0.588510, 0.790237,
		-0.770251, -0.420382, -0.479575,
		0.614437, -0.690605, -0.381488,
		36.832466, 34.687389, 41.397694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.062366, 34.542744, 41.683044>,  <36.402363, 35.170811, 41.664734>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.062366, 34.542744, 41.683044> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.443634, 34.423031, 41.665642>,  <36.672394, 34.351204, 41.655201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.443634, 34.423031, 41.665642>,  <36.062366, 34.542744, 41.683044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.443634, 34.423031, 41.665642> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168091, -0.643858, 0.746453,
		-0.251411, -0.704186, -0.664014,
		0.953172, -0.299282, -0.043505,
		36.729588, 34.333248, 41.652592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.889126, 33.898525, 41.904182>,  <36.062366, 34.542744, 41.683044>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.889126, 33.898525, 41.904182> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.287380, 33.934124, 41.915386>,  <36.526333, 33.955482, 41.922108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.287380, 33.934124, 41.915386>,  <35.889126, 33.898525, 41.904182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.287380, 33.934124, 41.915386> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026801, -0.560363, 0.827813,
		0.089363, -0.823452, -0.560304,
		0.995638, 0.088993, 0.028006,
		36.586071, 33.960823, 41.923786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.205399, 33.163315, 41.968346>,  <35.889126, 33.898525, 41.904182>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.205399, 33.163315, 41.968346> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.454662, 33.428284, 42.134655>,  <36.604221, 33.587265, 42.234440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.454662, 33.428284, 42.134655>,  <36.205399, 33.163315, 41.968346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.454662, 33.428284, 42.134655> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015720, -0.520899, 0.853474,
		0.781933, -0.538390, -0.314192,
		0.623164, 0.662420, 0.415772,
		36.641613, 33.627010, 42.259388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.761967, 32.828442, 42.219887>,  <36.205399, 33.163315, 41.968346>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.761967, 32.828442, 42.219887> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.755672, 33.155472, 42.450130>,  <36.751896, 33.351688, 42.588276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.755672, 33.155472, 42.450130>,  <36.761967, 32.828442, 42.219887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.755672, 33.155472, 42.450130> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075794, -0.573046, 0.816011,
		0.996999, 0.056466, -0.052952,
		-0.015733, 0.817576, 0.575606,
		36.750954, 33.400745, 42.622814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.243980, 32.607559, 42.760605>,  <36.761967, 32.828442, 42.219887>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.243980, 32.607559, 42.760605> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.019680, 32.908192, 42.899559>,  <36.885098, 33.088573, 42.982933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.019680, 32.908192, 42.899559>,  <37.243980, 32.607559, 42.760605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.019680, 32.908192, 42.899559> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042676, -0.445235, 0.894396,
		0.826883, 0.486710, 0.281742,
		-0.560753, 0.751585, 0.347386,
		36.851456, 33.133667, 43.003777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.584606, 32.869232, 43.345005>,  <37.243980, 32.607559, 42.760605>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.584606, 32.869232, 43.345005> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.205795, 32.990379, 43.387737>,  <36.978508, 33.063068, 43.413376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.205795, 32.990379, 43.387737>,  <37.584606, 32.869232, 43.345005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.205795, 32.990379, 43.387737> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053184, -0.475945, 0.877865,
		0.316727, 0.825678, 0.466840,
		-0.947025, 0.302872, 0.106832,
		36.921688, 33.081242, 43.419788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.548786, 32.987476, 44.101543>,  <37.584606, 32.869232, 43.345005>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.548786, 32.987476, 44.101543> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.164864, 32.978268, 43.989658>,  <36.934509, 32.972744, 43.922527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.164864, 32.978268, 43.989658>,  <37.548786, 32.987476, 44.101543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.164864, 32.978268, 43.989658> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251213, -0.373931, 0.892786,
		-0.125145, 0.927170, 0.353119,
		-0.959808, -0.023020, -0.279713,
		36.876923, 32.971363, 43.905743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.108315, 33.315243, 44.677113>,  <37.548786, 32.987476, 44.101543>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.108315, 33.315243, 44.677113> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.864918, 33.086666, 44.456863>,  <36.718880, 32.949520, 44.324715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.864918, 33.086666, 44.456863>,  <37.108315, 33.315243, 44.677113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.864918, 33.086666, 44.456863> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356293, -0.423257, 0.833011,
		-0.709075, 0.703066, 0.053948,
		-0.608496, -0.571446, -0.550619,
		36.682369, 32.915234, 44.291679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.496750, 33.352390, 45.072487>,  <37.108315, 33.315243, 44.677113>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.496750, 33.352390, 45.072487> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.471375, 33.031200, 44.835434>,  <36.456150, 32.838486, 44.693203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.471375, 33.031200, 44.835434>,  <36.496750, 33.352390, 45.072487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.471375, 33.031200, 44.835434> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501378, -0.487808, 0.714608,
		-0.862900, 0.342465, -0.371647,
		-0.063436, -0.802971, -0.592634,
		36.452343, 32.790310, 44.657642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.749485, 33.063084, 45.151085> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.964901, 32.762615, 44.998390>,  <36.094151, 32.582333, 44.906773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.964901, 32.762615, 44.998390>,  <35.749485, 33.063084, 45.151085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.964901, 32.762615, 44.998390> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548395, -0.656423, 0.518046,
		-0.639721, -0.069645, -0.765446,
		0.538536, -0.751171, -0.381735,
		36.126461, 32.537266, 44.883869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.266109, 32.547089, 44.976994>,  <35.749485, 33.063084, 45.151085>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.266109, 32.547089, 44.976994> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.618729, 32.364040, 45.023415>,  <35.830299, 32.254211, 45.051266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.618729, 32.364040, 45.023415>,  <35.266109, 32.547089, 44.976994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.618729, 32.364040, 45.023415> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419155, -0.645551, 0.638414,
		-0.217232, -0.611433, -0.760894,
		0.881543, -0.457617, 0.116051,
		35.883190, 32.226757, 45.058231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.159912, 31.856194, 44.966259>,  <35.266109, 32.547089, 44.976994>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.159912, 31.856194, 44.966259> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.523079, 31.843246, 45.133415>,  <35.740978, 31.835478, 45.233711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.523079, 31.843246, 45.133415>,  <35.159912, 31.856194, 44.966259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.523079, 31.843246, 45.133415> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348691, -0.611579, 0.710201,
		0.232588, -0.790521, -0.566550,
		0.907919, -0.032366, 0.417894,
		35.795456, 31.833536, 45.258785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.249756, 31.137726, 45.134258>,  <35.159912, 31.856194, 44.966259>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.249756, 31.137726, 45.134258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.512390, 31.353855, 45.344761>,  <35.669971, 31.483534, 45.471062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.512390, 31.353855, 45.344761>,  <35.249756, 31.137726, 45.134258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.512390, 31.353855, 45.344761> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024155, -0.682298, 0.730675,
		0.753865, -0.492462, -0.434935,
		0.656585, 0.540325, 0.526255,
		35.709366, 31.515953, 45.502636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.707436, 30.593729, 45.424068>,  <35.249756, 31.137726, 45.134258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.707436, 30.593729, 45.424068> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.761593, 30.915590, 45.655312>,  <35.794086, 31.108707, 45.794056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.761593, 30.915590, 45.655312>,  <35.707436, 30.593729, 45.424068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.761593, 30.915590, 45.655312> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107414, -0.568119, 0.815906,
		0.984953, -0.172561, 0.009514,
		0.135389, 0.804651, 0.578106,
		35.802208, 31.156986, 45.828743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.163185, 30.327360, 45.925274>,  <35.707436, 30.593729, 45.424068>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.163185, 30.327360, 45.925274> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.992554, 30.663654, 46.058659>,  <35.890175, 30.865431, 46.138691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.992554, 30.663654, 46.058659>,  <36.163185, 30.327360, 45.925274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.992554, 30.663654, 46.058659> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209298, -0.450443, 0.867926,
		0.879902, 0.300442, 0.368112,
		-0.426575, 0.840735, 0.333464,
		35.864582, 30.915874, 46.158699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.398273, 30.371777, 46.609985>,  <36.163185, 30.327360, 45.925274>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.398273, 30.371777, 46.609985> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.058067, 30.581200, 46.589962>,  <35.853943, 30.706854, 46.577950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.058067, 30.581200, 46.589962>,  <36.398273, 30.371777, 46.609985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.058067, 30.581200, 46.589962> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312978, -0.427337, 0.848191,
		0.422684, 0.737069, 0.527320,
		-0.850519, 0.523557, -0.050058,
		35.802910, 30.738266, 46.574944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.301373, 30.496141, 47.248688>,  <36.398273, 30.371777, 46.609985>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.301373, 30.496141, 47.248688> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.948608, 30.602346, 47.092876>,  <35.736950, 30.666069, 46.999390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.948608, 30.602346, 47.092876>,  <36.301373, 30.496141, 47.248688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.948608, 30.602346, 47.092876> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450438, -0.230884, 0.862437,
		0.139053, 0.936053, 0.323218,
		-0.881913, 0.265514, -0.389529,
		35.684036, 30.682001, 46.976017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.924866, 30.909061, 47.808140>,  <36.301373, 30.496141, 47.248688>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.924866, 30.909061, 47.808140> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.654152, 30.729845, 47.574486>,  <35.491722, 30.622314, 47.434292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.654152, 30.729845, 47.574486>,  <35.924866, 30.909061, 47.808140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.654152, 30.729845, 47.574486> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490797, -0.316802, 0.811637,
		-0.548704, 0.835999, -0.005490,
		-0.676789, -0.448043, -0.584136,
		35.451115, 30.595432, 47.399246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.201656, 31.094486, 48.089558>,  <35.924866, 30.909061, 47.808140>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.201656, 31.094486, 48.089558> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.145481, 30.763987, 47.871349>,  <35.111774, 30.565687, 47.740425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.145481, 30.763987, 47.871349>,  <35.201656, 31.094486, 48.089558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.145481, 30.763987, 47.871349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445063, -0.439490, 0.780235,
		-0.884418, 0.352366, -0.306011,
		-0.140439, -0.826248, -0.545518,
		35.103348, 30.516111, 47.707695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.664307, 30.836678, 48.390362>,  <35.201656, 31.094486, 48.089558>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.664307, 30.836678, 48.390362> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.774467, 30.514914, 48.179810>,  <34.840565, 30.321856, 48.053478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.774467, 30.514914, 48.179810>,  <34.664307, 30.836678, 48.390362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.774467, 30.514914, 48.179810> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544296, -0.581813, 0.604347,
		-0.792397, 0.120065, -0.598073,
		0.275406, -0.804411, -0.526378,
		34.857090, 30.273590, 48.021896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.110416, 30.432791, 48.303173>,  <34.664307, 30.836678, 48.390362>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.110416, 30.432791, 48.303173> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.412300, 30.172924, 48.266632>,  <34.593430, 30.017004, 48.244709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.412300, 30.172924, 48.266632>,  <34.110416, 30.432791, 48.303173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.412300, 30.172924, 48.266632> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462690, -0.625794, 0.627933,
		-0.465112, -0.431642, -0.772888,
		0.754711, -0.649667, -0.091348,
		34.638714, 29.978024, 48.239227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.834133, 29.771061, 48.490173>,  <34.110416, 30.432791, 48.303173>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.834133, 29.771061, 48.490173> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.226501, 29.695217, 48.507343>,  <34.461922, 29.649712, 48.517647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.226501, 29.695217, 48.507343>,  <33.834133, 29.771061, 48.490173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.226501, 29.695217, 48.507343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180310, -0.804795, 0.565502,
		-0.072679, -0.562453, -0.823629,
		0.980921, -0.189609, 0.042925,
		34.520779, 29.638334, 48.520222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.846828, 29.008238, 48.319839>,  <33.834133, 29.771061, 48.490173>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.846828, 29.008238, 48.319839> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.187531, 29.095943, 48.510181>,  <34.391953, 29.148567, 48.624386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.187531, 29.095943, 48.510181>,  <33.846828, 29.008238, 48.319839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.187531, 29.095943, 48.510181> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149057, -0.769279, 0.621282,
		0.502288, -0.600110, -0.622555,
		0.851756, 0.219266, 0.475850,
		34.443058, 29.161724, 48.652935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.023705, 28.394716, 48.476322>,  <33.846828, 29.008238, 48.319839>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.023705, 28.394716, 48.476322> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.258533, 28.606661, 48.721138>,  <34.399429, 28.733828, 48.868027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.258533, 28.606661, 48.721138>,  <34.023705, 28.394716, 48.476322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.258533, 28.606661, 48.721138> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178589, -0.822183, 0.540482,
		0.789589, -0.207999, -0.577309,
		0.587073, 0.529859, 0.612041,
		34.434654, 28.765619, 48.904751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.602295, 27.930624, 48.774673>,  <34.023705, 28.394716, 48.476322>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.602295, 27.930624, 48.774673> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.518982, 28.238066, 49.016621>,  <34.468994, 28.422531, 49.161789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.518982, 28.238066, 49.016621>,  <34.602295, 27.930624, 48.774673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.518982, 28.238066, 49.016621> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182987, -0.638136, 0.747863,
		0.960799, 0.045083, 0.273556,
		-0.208282, 0.768603, 0.604871,
		34.456497, 28.468647, 49.198082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.062645, 27.864901, 49.215942>,  <34.602295, 27.930624, 48.774673>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.062645, 27.864901, 49.215942> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.759644, 28.070871, 49.376461>,  <34.577843, 28.194454, 49.472775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.759644, 28.070871, 49.376461>,  <35.062645, 27.864901, 49.215942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.759644, 28.070871, 49.376461> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072903, -0.677584, 0.731824,
		0.648748, 0.525103, 0.550811,
		-0.757503, 0.514925, 0.401299,
		34.532394, 28.225349, 49.496849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.165169, 27.830473, 50.022240>,  <35.062645, 27.864901, 49.215942>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.165169, 27.830473, 50.022240> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.786610, 27.923779, 49.932865>,  <34.559475, 27.979761, 49.879242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.786610, 27.923779, 49.932865>,  <35.165169, 27.830473, 50.022240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.786610, 27.923779, 49.932865> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322983, -0.674451, 0.663926,
		0.004175, 0.700502, 0.713638,
		-0.946396, 0.233264, -0.223435,
		34.502689, 27.993757, 49.865833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.741310, 27.798885, 50.724049>,  <35.165169, 27.830473, 50.022240>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.741310, 27.798885, 50.724049> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.464180, 27.798088, 50.435604>,  <34.297901, 27.797609, 50.262539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.464180, 27.798088, 50.435604>,  <34.741310, 27.798885, 50.724049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.464180, 27.798088, 50.435604> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513849, -0.700223, 0.495628,
		-0.505923, 0.713922, 0.484105,
		-0.692821, -0.001993, -0.721107,
		34.256332, 27.797489, 50.219273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.146152, 27.895021, 51.085865>,  <34.741310, 27.798885, 50.724049>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.146152, 27.895021, 51.085865> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.005318, 27.751053, 50.740265>,  <33.920818, 27.664671, 50.532906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.005318, 27.751053, 50.740265>,  <34.146152, 27.895021, 51.085865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.005318, 27.751053, 50.740265> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622913, -0.598876, 0.503316,
		-0.698582, 0.715405, -0.013345,
		-0.352083, -0.359921, -0.863999,
		33.899693, 27.643076, 50.481064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.306000, 27.862537, 51.152969>,  <34.146152, 27.895021, 51.085865>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.306000, 27.862537, 51.152969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.454456, 27.616058, 50.875103>,  <33.543530, 27.468172, 50.708385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.454456, 27.616058, 50.875103>,  <33.306000, 27.862537, 51.152969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.454456, 27.616058, 50.875103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632676, -0.715386, 0.296555,
		-0.679686, 0.329430, -0.655364,
		0.371144, -0.616197, -0.694660,
		33.565800, 27.431200, 50.666706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.702400, 27.635973, 50.707355>,  <33.306000, 27.862537, 51.152969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.702400, 27.635973, 50.707355> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.001015, 27.369837, 50.708481>,  <33.180183, 27.210155, 50.709156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.001015, 27.369837, 50.708481>,  <32.702400, 27.635973, 50.707355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.001015, 27.369837, 50.708481> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644649, -0.722261, 0.250532,
		-0.164658, -0.188844, -0.968104,
		0.746535, -0.665340, 0.002812,
		33.224976, 27.170235, 50.709324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.003326, 27.468498, 50.589100>,  <32.702400, 27.635973, 50.707355>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.003326, 27.468498, 50.589100> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.742910, 27.204115, 50.439819>,  <31.586660, 27.045485, 50.350250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.742910, 27.204115, 50.439819>,  <32.003326, 27.468498, 50.589100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.742910, 27.204115, 50.439819> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634318, 0.743793, -0.210746,
		0.416882, 0.099526, -0.903495,
		-0.651039, -0.660959, -0.373205,
		31.547600, 27.005827, 50.327858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.424665, 27.813282, 51.060719>,  <32.003326, 27.468498, 50.589100>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.424665, 27.813282, 51.060719> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.149456, 27.523895, 51.083408>,  <30.984331, 27.350264, 51.097023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.149456, 27.523895, 51.083408>,  <31.424665, 27.813282, 51.060719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.149456, 27.523895, 51.083408> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649235, 0.578735, -0.493518,
		0.324218, -0.376378, -0.867884,
		-0.688024, -0.723468, 0.056722,
		30.943048, 27.306854, 51.100426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.008883, 28.248217, 51.527912>,  <31.424665, 27.813282, 51.060719>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.008883, 28.248217, 51.527912> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.681496, 28.472864, 51.479431>,  <30.485064, 28.607653, 51.450340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.681496, 28.472864, 51.479431>,  <31.008883, 28.248217, 51.527912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.681496, 28.472864, 51.479431> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192542, 0.069354, -0.978835,
		-0.541328, -0.824483, -0.164899,
		-0.818469, 0.561620, -0.121205,
		30.435955, 28.641350, 51.443069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.725504, 28.003103, 50.934547>,  <31.008883, 28.248217, 51.527912>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.725504, 28.003103, 50.934547> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.569767, 28.367157, 50.991215>,  <30.476324, 28.585588, 51.025215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.569767, 28.367157, 50.991215>,  <30.725504, 28.003103, 50.934547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.569767, 28.367157, 50.991215> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220548, 0.241448, -0.945019,
		-0.894299, -0.336691, -0.294734,
		-0.389343, 0.910133, 0.141670,
		30.452965, 28.640198, 51.033714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.281588, 28.143559, 50.364540>,  <30.725504, 28.003103, 50.934547>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.281588, 28.143559, 50.364540> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.378460, 28.497662, 50.523369>,  <30.436583, 28.710123, 50.618668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.378460, 28.497662, 50.523369>,  <30.281588, 28.143559, 50.364540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.378460, 28.497662, 50.523369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253709, 0.337235, -0.906589,
		-0.936473, 0.320298, -0.142926,
		0.242179, 0.885258, 0.397074,
		30.451115, 28.763239, 50.642490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.992800, 28.588173, 49.818939>,  <30.281588, 28.143559, 50.364540>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.992800, 28.588173, 49.818939> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.216158, 28.849678, 50.023209>,  <30.350174, 29.006582, 50.145771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.216158, 28.849678, 50.023209>,  <29.992800, 28.588173, 49.818939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.216158, 28.849678, 50.023209> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379602, 0.345988, -0.858018,
		-0.737627, 0.672966, -0.054972,
		0.558398, 0.653765, 0.510670,
		30.383677, 29.045807, 50.176411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.823011, 29.308126, 49.551483>,  <29.992800, 28.588173, 49.818939>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.823011, 29.308126, 49.551483> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.167364, 29.322647, 49.754486>,  <30.373976, 29.331360, 49.876286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.167364, 29.322647, 49.754486>,  <29.823011, 29.308126, 49.551483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.167364, 29.322647, 49.754486> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387990, 0.598433, -0.700958,
		-0.329154, 0.800350, 0.501096,
		0.860884, 0.036303, 0.507504,
		30.425629, 29.333538, 49.906738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.115799, 30.056530, 49.401081>,  <29.823011, 29.308126, 49.551483>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.115799, 30.056530, 49.401081> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.426525, 29.832932, 49.517067>,  <30.612961, 29.698772, 49.586658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.426525, 29.832932, 49.517067>,  <30.115799, 30.056530, 49.401081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.426525, 29.832932, 49.517067> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538616, 0.351228, -0.765854,
		0.326263, 0.751109, 0.573923,
		0.776817, -0.558994, 0.289967,
		30.659571, 29.665234, 49.604057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.683157, 30.631622, 49.480537>,  <30.115799, 30.056530, 49.401081>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.683157, 30.631622, 49.480537> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.844639, 30.266069, 49.463352>,  <30.941528, 30.046738, 49.453041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.844639, 30.266069, 49.463352>,  <30.683157, 30.631622, 49.480537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.844639, 30.266069, 49.463352> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646084, 0.318023, -0.693857,
		0.647765, 0.252356, 0.718830,
		0.403703, -0.913881, -0.042961,
		30.965750, 29.991905, 49.450462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.383625, 30.643343, 49.718555>,  <30.683157, 30.631622, 49.480537>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.383625, 30.643343, 49.718555> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.353600, 30.325188, 49.477982>,  <31.335585, 30.134295, 49.333637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.353600, 30.325188, 49.477982>,  <31.383625, 30.643343, 49.718555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.353600, 30.325188, 49.477982> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676865, 0.402268, -0.616470,
		0.732270, -0.453366, 0.508173,
		-0.075064, -0.795387, -0.601436,
		31.331079, 30.086571, 49.297550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.032814, 30.514828, 49.569622>,  <31.383625, 30.643343, 49.718555>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.032814, 30.514828, 49.569622> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.846498, 30.308865, 49.281757>,  <31.734711, 30.185287, 49.109039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.846498, 30.308865, 49.281757>,  <32.032814, 30.514828, 49.569622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.846498, 30.308865, 49.281757> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671173, 0.324439, -0.666533,
		0.576689, -0.793480, 0.194472,
		-0.465786, -0.514907, -0.719663,
		31.706762, 30.154392, 49.065857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.606205, 30.168808, 49.163631>,  <32.032814, 30.514828, 49.569622>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.606205, 30.168808, 49.163631> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.276115, 30.159437, 48.937904>,  <32.078060, 30.153814, 48.802467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.276115, 30.159437, 48.937904>,  <32.606205, 30.168808, 49.163631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.276115, 30.159437, 48.937904> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531452, 0.306067, -0.789862,
		0.191224, -0.951722, -0.240123,
		-0.825222, -0.023426, -0.564322,
		32.028549, 30.152409, 48.768608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.760056, 29.726595, 48.715759>,  <32.606205, 30.168808, 49.163631>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.760056, 29.726595, 48.715759> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.479309, 29.983301, 48.592133>,  <32.310860, 30.137325, 48.517956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.479309, 29.983301, 48.592133>,  <32.760056, 29.726595, 48.715759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.479309, 29.983301, 48.592133> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573877, 0.252426, -0.779067,
		-0.421961, -0.724168, -0.545463,
		-0.701865, 0.641765, -0.309069,
		32.268749, 30.175831, 48.499413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.703983, 29.549593, 47.926590>,  <32.760056, 29.726595, 48.715759>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.703983, 29.549593, 47.926590> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.521553, 29.902643, 47.972141>,  <32.412094, 30.114473, 47.999470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.521553, 29.902643, 47.972141>,  <32.703983, 29.549593, 47.926590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.521553, 29.902643, 47.972141> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442274, 0.335831, -0.831632,
		-0.772262, -0.328924, -0.543527,
		-0.456077, 0.882625, 0.113875,
		32.384731, 30.167431, 48.006306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.446823, 29.720245, 47.277466>,  <32.703983, 29.549593, 47.926590>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.446823, 29.720245, 47.277466> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.492821, 30.075180, 47.456085>,  <32.520420, 30.288141, 47.563255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.492821, 30.075180, 47.456085>,  <32.446823, 29.720245, 47.277466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.492821, 30.075180, 47.456085> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440872, 0.357242, -0.823414,
		-0.890173, 0.291562, -0.350120,
		0.114998, 0.887339, 0.446549,
		32.527321, 30.341381, 47.590050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.116333, 30.260971, 46.772636>,  <32.446823, 29.720245, 47.277466>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.116333, 30.260971, 46.772636> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.376125, 30.454754, 47.007065>,  <32.532001, 30.571024, 47.147720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.376125, 30.454754, 47.007065>,  <32.116333, 30.260971, 46.772636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.376125, 30.454754, 47.007065> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275666, 0.568304, -0.775267,
		-0.708647, 0.665081, 0.235555,
		0.649483, 0.484456, 0.586067,
		32.570969, 30.600090, 47.182884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.084637, 30.968220, 46.542896>,  <32.116333, 30.260971, 46.772636>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.084637, 30.968220, 46.542896> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.421059, 30.970758, 46.759262>,  <32.622913, 30.972282, 46.889080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.421059, 30.970758, 46.759262>,  <32.084637, 30.968220, 46.542896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.421059, 30.970758, 46.759262> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453592, 0.536571, -0.711580,
		-0.294754, 0.843831, 0.448406,
		0.841055, 0.006348, 0.540912,
		32.673374, 30.972662, 46.921535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.248848, 31.616133, 46.518139>,  <32.084637, 30.968220, 46.542896>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.248848, 31.616133, 46.518139> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.574829, 31.403311, 46.610023>,  <32.770420, 31.275618, 46.665154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.574829, 31.403311, 46.610023>,  <32.248848, 31.616133, 46.518139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.574829, 31.403311, 46.610023> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499709, 0.444421, -0.743492,
		0.293491, 0.720700, 0.628056,
		0.814956, -0.532054, 0.229707,
		32.819317, 31.243694, 46.678936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.712330, 32.153908, 46.755867>,  <32.248848, 31.616133, 46.518139>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.712330, 32.153908, 46.755867> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.939442, 31.845768, 46.639812>,  <33.075710, 31.660883, 46.570179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.939442, 31.845768, 46.639812>,  <32.712330, 32.153908, 46.755867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.939442, 31.845768, 46.639812> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404422, 0.568038, -0.716782,
		0.716986, 0.289636, 0.634068,
		0.567780, -0.770353, -0.290140,
		33.109776, 31.614662, 46.552769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.353237, 32.465919, 46.697971>,  <32.712330, 32.153908, 46.755867>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.353237, 32.465919, 46.697971> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.372601, 32.125374, 46.489033>,  <33.384220, 31.921047, 46.363670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.372601, 32.125374, 46.489033>,  <33.353237, 32.465919, 46.697971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.372601, 32.125374, 46.489033> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342515, 0.505397, -0.791996,
		0.938264, -0.140570, 0.316069,
		0.048409, -0.851360, -0.522343,
		33.387123, 31.869967, 46.332329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.931118, 32.558163, 46.358452>,  <33.353237, 32.465919, 46.697971>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.931118, 32.558163, 46.358452> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.729637, 32.273449, 46.162640>,  <33.608749, 32.102619, 46.045151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.729637, 32.273449, 46.162640>,  <33.931118, 32.558163, 46.358452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.729637, 32.273449, 46.162640> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171594, 0.472938, -0.864225,
		0.846662, -0.519314, -0.116083,
		-0.503705, -0.711788, -0.489530,
		33.578526, 32.059914, 46.015781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.365807, 32.244221, 45.735035>,  <33.931118, 32.558163, 46.358452>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.365807, 32.244221, 45.735035> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.982048, 32.160030, 45.659920>,  <33.751793, 32.109516, 45.614849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.982048, 32.160030, 45.659920>,  <34.365807, 32.244221, 45.735035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.982048, 32.160030, 45.659920> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129745, 0.261865, -0.956344,
		0.250448, -0.941877, -0.223926,
		-0.959397, -0.210461, -0.187787,
		33.694229, 32.096889, 45.603584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.913872, 34.476635, 44.397408> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.520443, 34.404587, 44.392685>,  <42.284386, 34.361359, 44.389851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.520443, 34.404587, 44.392685>,  <42.913872, 34.476635, 44.397408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.520443, 34.404587, 44.392685> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059466, -0.261561, -0.963354,
		0.170430, -0.948232, 0.267975,
		-0.983574, -0.180119, -0.011809,
		42.225372, 34.350552, 44.389141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.806671, 33.932728, 43.960938>,  <42.913872, 34.476635, 44.397408>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.806671, 33.932728, 43.960938> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.441723, 34.094353, 43.987217>,  <42.222755, 34.191326, 44.002983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.441723, 34.094353, 43.987217>,  <42.806671, 33.932728, 43.960938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.441723, 34.094353, 43.987217> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129738, -0.133184, -0.982563,
		-0.388267, -0.904984, 0.173935,
		-0.912369, 0.404062, 0.065699,
		42.168011, 34.215572, 44.006927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.407421, 33.505039, 43.528698>,  <42.806671, 33.932728, 43.960938>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.407421, 33.505039, 43.528698> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.175751, 33.830803, 43.543056>,  <42.036747, 34.026260, 43.551674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.175751, 33.830803, 43.543056>,  <42.407421, 33.505039, 43.528698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.175751, 33.830803, 43.543056> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123486, -0.044120, -0.991365,
		-0.805793, -0.578611, 0.126122,
		-0.579179, 0.814409, 0.035899,
		42.001995, 34.075127, 43.553825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.903831, 33.297752, 43.031647>,  <42.407421, 33.505039, 43.528698>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.903831, 33.297752, 43.031647> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.897362, 33.692646, 43.095028>,  <41.893482, 33.929581, 43.133057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.897362, 33.692646, 43.095028>,  <41.903831, 33.297752, 43.031647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.897362, 33.692646, 43.095028> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210818, 0.151545, -0.965707,
		-0.977391, -0.049020, 0.205677,
		-0.016170, 0.987234, 0.158454,
		41.892509, 33.988815, 43.142563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.289810, 33.559959, 42.762486>,  <41.903831, 33.297752, 43.031647>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.289810, 33.559959, 42.762486> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.566628, 33.847904, 42.741032>,  <41.732719, 34.020672, 42.728161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.566628, 33.847904, 42.741032>,  <41.289810, 33.559959, 42.762486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.566628, 33.847904, 42.741032> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297534, 0.216768, -0.929777,
		-0.657685, 0.659403, 0.364195,
		0.692044, 0.719861, -0.053630,
		41.774242, 34.063862, 42.724941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.069874, 33.974911, 42.186848>,  <41.289810, 33.559959, 42.762486>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.069874, 33.974911, 42.186848> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.415203, 34.159996, 42.267422>,  <41.622398, 34.271046, 42.315765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.415203, 34.159996, 42.267422>,  <41.069874, 33.974911, 42.186848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.415203, 34.159996, 42.267422> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056523, 0.307983, -0.949712,
		-0.501484, 0.831289, 0.239733,
		0.863319, 0.462715, 0.201436,
		41.674198, 34.298809, 42.327854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.030090, 34.785702, 42.016979>,  <41.069874, 33.974911, 42.186848>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.030090, 34.785702, 42.016979> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.419910, 34.701740, 41.985489>,  <41.653801, 34.651363, 41.966595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.419910, 34.701740, 41.985489>,  <41.030090, 34.785702, 42.016979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.419910, 34.701740, 41.985489> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019124, 0.272058, -0.962091,
		0.223364, 0.939109, 0.261119,
		0.974548, -0.209902, -0.078728,
		41.712276, 34.638771, 41.961872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.383324, 35.353416, 41.681515>,  <41.030090, 34.785702, 42.016979>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.383324, 35.353416, 41.681515> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.638435, 35.048622, 41.636589>,  <41.791500, 34.865746, 41.609634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.638435, 35.048622, 41.636589>,  <41.383324, 35.353416, 41.681515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.638435, 35.048622, 41.636589> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207069, 0.310081, -0.927886,
		0.741866, 0.568526, 0.355547,
		0.637776, -0.761989, -0.112314,
		41.829769, 34.820026, 41.602894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.878368, 35.603909, 41.412411>,  <41.383324, 35.353416, 41.681515>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.878368, 35.603909, 41.412411> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.933704, 35.216084, 41.331604>,  <41.966908, 34.983387, 41.283119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.933704, 35.216084, 41.331604>,  <41.878368, 35.603909, 41.412411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.933704, 35.216084, 41.331604> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161326, 0.223315, -0.961303,
		0.977156, 0.100399, 0.187310,
		0.138343, -0.969562, -0.202017,
		41.975208, 34.925217, 41.271000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.554337, 35.533226, 41.096550>,  <41.878368, 35.603909, 41.412411>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.554337, 35.533226, 41.096550> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.335976, 35.216534, 40.986893>,  <42.204960, 35.026520, 40.921097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.335976, 35.216534, 40.986893>,  <42.554337, 35.533226, 41.096550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.335976, 35.216534, 40.986893> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290610, 0.127963, -0.948246,
		0.785834, -0.597320, 0.160228,
		-0.545904, -0.791728, -0.274145,
		42.172203, 34.979015, 40.904648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.905136, 35.201817, 40.606277>,  <42.554337, 35.533226, 41.096550>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.905136, 35.201817, 40.606277> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.548851, 35.032581, 40.539783>,  <42.335079, 34.931042, 40.499886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.548851, 35.032581, 40.539783>,  <42.905136, 35.201817, 40.606277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.548851, 35.032581, 40.539783> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213922, -0.067465, -0.974518,
		0.401089, -0.903575, 0.150599,
		-0.890711, -0.423085, -0.166235,
		42.281639, 34.905655, 40.489914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.101582, 34.596359, 40.234070>,  <42.905136, 35.201817, 40.606277>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.101582, 34.596359, 40.234070> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.717506, 34.683853, 40.164570>,  <42.487061, 34.736347, 40.122868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.717506, 34.683853, 40.164570>,  <43.101582, 34.596359, 40.234070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.717506, 34.683853, 40.164570> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178724, 0.002990, -0.983895,
		-0.214691, -0.975780, -0.041963,
		-0.960190, 0.218733, -0.173754,
		42.429451, 34.749474, 40.112442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.838318, 34.112122, 39.667183>,  <43.101582, 34.596359, 40.234070>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.838318, 34.112122, 39.667183> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.581879, 34.416119, 39.709892>,  <42.428017, 34.598518, 39.735519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.581879, 34.416119, 39.709892>,  <42.838318, 34.112122, 39.667183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.581879, 34.416119, 39.709892> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228040, -0.055795, -0.972052,
		-0.732798, -0.647529, 0.209079,
		-0.641097, 0.759995, 0.106775,
		42.389549, 34.644115, 39.741924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.314678, 34.023315, 39.087460>,  <42.838318, 34.112122, 39.667183>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.314678, 34.023315, 39.087460> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.278236, 34.409218, 39.186207>,  <42.256371, 34.640759, 39.245453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.278236, 34.409218, 39.186207>,  <42.314678, 34.023315, 39.087460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.278236, 34.409218, 39.186207> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136210, 0.233493, -0.962771,
		-0.986482, -0.121337, 0.110138,
		-0.091103, 0.964758, 0.246864,
		42.250904, 34.698647, 39.260265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.805779, 34.330276, 38.638332>,  <42.314678, 34.023315, 39.087460>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.805779, 34.330276, 38.638332> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.015842, 34.631344, 38.797176>,  <42.141880, 34.811985, 38.892483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.015842, 34.631344, 38.797176>,  <41.805779, 34.330276, 38.638332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.015842, 34.631344, 38.797176> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111723, 0.401625, -0.908964,
		-0.843636, 0.521721, 0.126828,
		0.525162, 0.752666, 0.397114,
		42.173389, 34.857143, 38.916309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.495163, 34.961140, 38.340351>,  <41.805779, 34.330276, 38.638332>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.495163, 34.961140, 38.340351> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.876678, 35.018871, 38.445770>,  <42.105587, 35.053513, 38.509022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.876678, 35.018871, 38.445770>,  <41.495163, 34.961140, 38.340351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.876678, 35.018871, 38.445770> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217825, 0.272067, -0.937300,
		-0.206987, 0.951392, 0.228055,
		0.953787, 0.144333, 0.263552,
		42.162815, 35.062172, 38.524837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.764008, 35.625435, 38.037670>,  <41.495163, 34.961140, 38.340351>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.764008, 35.625435, 38.037670> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.087696, 35.401814, 38.109913>,  <42.281910, 35.267639, 38.153259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.087696, 35.401814, 38.109913>,  <41.764008, 35.625435, 38.037670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.087696, 35.401814, 38.109913> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339342, 0.193831, -0.920476,
		0.479588, 0.806158, 0.346562,
		0.809224, -0.559052, 0.180604,
		42.330463, 35.234097, 38.164093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.335430, 35.968555, 37.654938>,  <41.764008, 35.625435, 38.037670>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.335430, 35.968555, 37.654938> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.488945, 35.605965, 37.725368>,  <42.581055, 35.388409, 37.767628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.488945, 35.605965, 37.725368>,  <42.335430, 35.968555, 37.654938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.488945, 35.605965, 37.725368> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182346, -0.112532, -0.976774,
		0.905239, 0.406981, 0.122104,
		0.383788, -0.906478, 0.176080,
		42.604080, 35.334023, 37.778191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.863808, 35.946487, 37.272331>,  <42.335430, 35.968555, 37.654938>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.863808, 35.946487, 37.272331> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.820332, 35.553757, 37.334568>,  <42.794247, 35.318119, 37.371910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.820332, 35.553757, 37.334568>,  <42.863808, 35.946487, 37.272331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.820332, 35.553757, 37.334568> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278173, -0.180302, -0.943457,
		0.954362, -0.059264, 0.292714,
		-0.108690, -0.981824, 0.155588,
		42.787724, 35.259209, 37.381245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.333252, 35.695454, 36.821423>,  <42.863808, 35.946487, 37.272331>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.333252, 35.695454, 36.821423> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.137691, 35.354408, 36.895199>,  <43.020355, 35.149780, 36.939465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.137691, 35.354408, 36.895199>,  <43.333252, 35.695454, 36.821423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.137691, 35.354408, 36.895199> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246476, -0.337833, -0.908360,
		0.836793, -0.398641, 0.375318,
		-0.488904, -0.852616, 0.184441,
		42.991020, 35.098625, 36.950531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.765488, 35.155277, 36.728085>,  <43.333252, 35.695454, 36.821423>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.765488, 35.155277, 36.728085> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.387020, 35.044647, 36.660824>,  <43.159939, 34.978268, 36.620468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.387020, 35.044647, 36.660824>,  <43.765488, 35.155277, 36.728085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.387020, 35.044647, 36.660824> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279736, -0.437373, -0.854665,
		0.162838, -0.855693, 0.491197,
		-0.946167, -0.276577, -0.168147,
		43.103168, 34.961674, 36.610378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.714050, 34.413891, 36.494350>,  <43.765488, 35.155277, 36.728085>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.714050, 34.413891, 36.494350> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.395947, 34.599762, 36.338589>,  <43.205086, 34.711285, 36.245132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.395947, 34.599762, 36.338589>,  <43.714050, 34.413891, 36.494350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.395947, 34.599762, 36.338589> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093928, -0.540109, -0.836337,
		-0.598951, -0.701680, 0.385879,
		-0.795258, 0.464680, -0.389407,
		43.157368, 34.739166, 36.221767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.515968, 34.671944, 36.440201>,  <43.714050, 34.413891, 36.494350>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.515968, 34.671944, 36.440201> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.841320, 34.867355, 36.566536>,  <45.036530, 34.984604, 36.642338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.841320, 34.867355, 36.566536>,  <44.515968, 34.671944, 36.440201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.841320, 34.867355, 36.566536> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116839, -0.394672, 0.911363,
		0.569884, -0.778183, -0.263937,
		0.813376, 0.488533, 0.315840,
		45.085335, 35.013916, 36.661289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.778271, 34.224667, 36.872185>,  <44.515968, 34.671944, 36.440201>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.778271, 34.224667, 36.872185> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.008236, 34.531841, 36.985142>,  <45.146217, 34.716145, 37.052917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.008236, 34.531841, 36.985142>,  <44.778271, 34.224667, 36.872185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.008236, 34.531841, 36.985142> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158282, -0.234229, 0.959210,
		0.802757, -0.596162, -0.013111,
		0.574915, 0.767937, 0.282391,
		45.180710, 34.762222, 37.069859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.383385, 34.048183, 37.167557>,  <44.778271, 34.224667, 36.872185>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.383385, 34.048183, 37.167557> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.274979, 34.402252, 37.318825>,  <45.209934, 34.614693, 37.409584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.274979, 34.402252, 37.318825>,  <45.383385, 34.048183, 37.167557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.274979, 34.402252, 37.318825> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049487, -0.405167, 0.912902,
		0.961302, 0.228698, 0.153612,
		-0.271017, 0.885176, 0.378170,
		45.193672, 34.667805, 37.432278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.707359, 34.124901, 37.717991>,  <45.383385, 34.048183, 37.167557>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.707359, 34.124901, 37.717991> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.421886, 34.395077, 37.792217>,  <45.250603, 34.557182, 37.836754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.421886, 34.395077, 37.792217>,  <45.707359, 34.124901, 37.717991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.421886, 34.395077, 37.792217> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074904, -0.336989, 0.938524,
		0.696455, 0.655907, 0.291096,
		-0.713681, 0.675444, 0.185567,
		45.207783, 34.597710, 37.847889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.829926, 34.526962, 38.369484>,  <45.707359, 34.124901, 37.717991>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.829926, 34.526962, 38.369484> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.439156, 34.546448, 38.286308>,  <45.204693, 34.558140, 38.236404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.439156, 34.546448, 38.286308>,  <45.829926, 34.526962, 38.369484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.439156, 34.546448, 38.286308> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207935, -0.439164, 0.874013,
		-0.048740, 0.897085, 0.439161,
		-0.976928, 0.048717, -0.207940,
		45.146076, 34.561062, 38.223927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.489704, 34.747845, 38.973305>,  <45.829926, 34.526962, 38.369484>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.489704, 34.747845, 38.973305> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.188267, 34.594925, 38.759411>,  <45.007404, 34.503174, 38.631073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.188267, 34.594925, 38.759411>,  <45.489704, 34.747845, 38.973305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.188267, 34.594925, 38.759411> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268587, -0.563401, 0.781307,
		-0.599966, 0.732411, 0.321893,
		-0.753592, -0.382301, -0.534738,
		44.962189, 34.480236, 38.598991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.966633, 34.668537, 39.463970>,  <45.489704, 34.747845, 38.973305>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.966633, 34.668537, 39.463970> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.830761, 34.419857, 39.181664>,  <44.749237, 34.270649, 39.012280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.830761, 34.419857, 39.181664>,  <44.966633, 34.668537, 39.463970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.830761, 34.419857, 39.181664> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481755, -0.529471, 0.698264,
		-0.807794, 0.577192, -0.119657,
		-0.339677, -0.621699, -0.705769,
		44.728859, 34.233349, 38.969933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.207432, 34.580948, 39.579243>,  <44.966633, 34.668537, 39.463970>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.207432, 34.580948, 39.579243> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.314880, 34.286518, 39.330715>,  <44.379349, 34.109859, 39.181599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.314880, 34.286518, 39.330715>,  <44.207432, 34.580948, 39.579243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.314880, 34.286518, 39.330715> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383975, -0.673386, 0.631755,
		-0.883405, 0.068865, -0.463523,
		0.268624, -0.736076, -0.621315,
		44.395466, 34.065697, 39.144321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.626682, 34.140396, 39.461830>,  <44.207432, 34.580948, 39.579243>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.626682, 34.140396, 39.461830> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.940105, 33.917114, 39.352692>,  <44.128159, 33.783146, 39.287209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.940105, 33.917114, 39.352692>,  <43.626682, 34.140396, 39.461830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.940105, 33.917114, 39.352692> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324215, -0.741947, 0.586855,
		-0.530021, -0.371375, -0.762337,
		0.783557, -0.558207, -0.272842,
		44.175171, 33.749653, 39.270840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.397503, 33.537903, 39.216763>,  <43.626682, 34.140396, 39.461830>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.397503, 33.537903, 39.216763> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.761566, 33.454685, 39.360058>,  <43.980003, 33.404755, 39.446033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.761566, 33.454685, 39.360058>,  <43.397503, 33.537903, 39.216763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.761566, 33.454685, 39.360058> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385455, -0.742138, 0.548321,
		0.151788, -0.637143, -0.755652,
		0.910156, -0.208041, 0.358238,
		44.034615, 33.392273, 39.467529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.555370, 32.796288, 39.064075>,  <43.397503, 33.537903, 39.216763>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.555370, 32.796288, 39.064075> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.784096, 32.925186, 39.365852>,  <43.921329, 33.002525, 39.546917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.784096, 32.925186, 39.365852>,  <43.555370, 32.796288, 39.064075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.784096, 32.925186, 39.365852> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238939, -0.814335, 0.528930,
		0.784818, -0.482715, -0.388648,
		0.571812, 0.322251, 0.754443,
		43.955639, 33.021862, 39.592186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.877083, 32.177662, 39.420734>,  <43.555370, 32.796288, 39.064075>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.877083, 32.177662, 39.420734> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.005775, 32.435516, 39.698132>,  <44.082993, 32.590229, 39.864571>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.005775, 32.435516, 39.698132>,  <43.877083, 32.177662, 39.420734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.005775, 32.435516, 39.698132> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137952, -0.692710, 0.707899,
		0.936728, -0.323422, -0.133938,
		0.321731, 0.644632, 0.693498,
		44.102295, 32.628906, 39.906181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.192944, 31.798208, 39.867668>,  <43.877083, 32.177662, 39.420734>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.192944, 31.798208, 39.867668> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.136570, 32.134151, 40.077343>,  <44.102745, 32.335716, 40.203148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.136570, 32.134151, 40.077343>,  <44.192944, 31.798208, 39.867668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.136570, 32.134151, 40.077343> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209490, -0.542784, 0.813326,
		0.967600, 0.004816, 0.252441,
		-0.140938, 0.839859, 0.524189,
		44.094288, 32.386108, 40.234600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.493011, 31.734800, 40.474266>,  <44.192944, 31.798208, 39.867668>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.493011, 31.734800, 40.474266> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.209351, 32.012375, 40.524147>,  <44.039154, 32.178921, 40.554077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.209351, 32.012375, 40.524147>,  <44.493011, 31.734800, 40.474266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.209351, 32.012375, 40.524147> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357939, -0.506731, 0.784285,
		0.607438, 0.511542, 0.607737,
		-0.709154, 0.693937, 0.124707,
		43.996605, 32.220554, 40.561558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.469860, 31.893217, 41.200745>,  <44.493011, 31.734800, 40.474266>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.469860, 31.893217, 41.200745> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.127102, 32.028793, 41.045387>,  <43.921448, 32.110138, 40.952171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.127102, 32.028793, 41.045387>,  <44.469860, 31.893217, 41.200745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.127102, 32.028793, 41.045387> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512874, -0.484723, 0.708522,
		0.051885, 0.806326, 0.589191,
		-0.856895, 0.338943, -0.388393,
		43.870033, 32.130478, 40.928867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.062077, 32.157860, 41.745594>,  <44.469860, 31.893217, 41.200745>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.062077, 32.157860, 41.745594> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.804340, 32.079651, 41.449867>,  <43.649696, 32.032726, 41.272430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.804340, 32.079651, 41.449867>,  <44.062077, 32.157860, 41.745594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.804340, 32.079651, 41.449867> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633573, -0.404910, 0.659267,
		-0.428259, 0.893207, 0.137024,
		-0.644344, -0.195522, -0.739318,
		43.611038, 32.020996, 41.228073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.413189, 32.286263, 42.001041>,  <44.062077, 32.157860, 41.745594>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.413189, 32.286263, 42.001041> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.339680, 32.039665, 41.694794>,  <43.295574, 31.891708, 41.511047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.339680, 32.039665, 41.694794>,  <43.413189, 32.286263, 42.001041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.339680, 32.039665, 41.694794> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615542, -0.535087, 0.578611,
		-0.766378, 0.577602, -0.281140,
		-0.183772, -0.616489, -0.765617,
		43.284550, 31.854719, 41.465107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.716892, 32.189541, 42.042538>,  <43.413189, 32.286263, 42.001041>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.716892, 32.189541, 42.042538> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.884094, 31.900639, 41.822128>,  <42.984417, 31.727299, 41.689884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.884094, 31.900639, 41.822128>,  <42.716892, 32.189541, 42.042538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.884094, 31.900639, 41.822128> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586569, -0.677750, 0.443387,
		-0.693692, 0.137875, -0.706953,
		0.418005, -0.722251, -0.551022,
		43.009495, 31.683964, 41.656822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.140266, 31.705847, 41.823967>,  <42.716892, 32.189541, 42.042538>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.140266, 31.705847, 41.823967> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.483047, 31.501965, 41.793423>,  <42.688717, 31.379635, 41.775097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.483047, 31.501965, 41.793423>,  <42.140266, 31.705847, 41.823967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.483047, 31.501965, 41.793423> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352591, -0.687846, 0.634466,
		-0.375913, -0.516785, -0.769170,
		0.856953, -0.509706, -0.076356,
		42.740135, 31.349052, 41.770515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.911320, 31.093840, 41.507717>,  <42.140266, 31.705847, 41.823967>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.911320, 31.093840, 41.507717> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.263149, 31.001070, 41.673882>,  <42.474247, 30.945408, 41.773582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.263149, 31.001070, 41.673882>,  <41.911320, 31.093840, 41.507717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.263149, 31.001070, 41.673882> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423153, -0.780473, 0.460221,
		0.217484, -0.580580, -0.784619,
		0.879569, -0.231923, 0.415415,
		42.527020, 30.931494, 41.798508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.311302, 34.476543, 42.929356> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.088123, 34.226109, 42.711472>,  <36.954216, 34.075848, 42.580742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.088123, 34.226109, 42.711472>,  <37.311302, 34.476543, 42.929356>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.088123, 34.226109, 42.711472> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261940, 0.489959, -0.831461,
		0.787457, -0.606589, -0.109371,
		-0.557942, -0.626091, -0.544711,
		36.920742, 34.038280, 42.548058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.782883, 34.202087, 42.321491>,  <37.311302, 34.476543, 42.929356>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.782883, 34.202087, 42.321491> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.412369, 34.136166, 42.185936>,  <37.190060, 34.096611, 42.104603>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.412369, 34.136166, 42.185936>,  <37.782883, 34.202087, 42.321491>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.412369, 34.136166, 42.185936> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278399, 0.306787, -0.910152,
		0.253962, -0.937401, -0.238290,
		-0.926281, -0.164805, -0.338884,
		37.134483, 34.086723, 42.084270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.997379, 33.969025, 41.666115>,  <37.782883, 34.202087, 42.321491>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.997379, 33.969025, 41.666115> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.614738, 34.085068, 41.655190>,  <37.385155, 34.154694, 41.648636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.614738, 34.085068, 41.655190>,  <37.997379, 33.969025, 41.666115>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.614738, 34.085068, 41.655190> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145898, 0.395731, -0.906703,
		-0.252237, -0.871340, -0.420885,
		-0.956604, 0.290110, -0.027309,
		37.327759, 34.172100, 41.646996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.675529, 33.716507, 41.001331>,  <37.997379, 33.969025, 41.666115>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.675529, 33.716507, 41.001331> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.434269, 34.014149, 41.116238>,  <37.289513, 34.192734, 41.185181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.434269, 34.014149, 41.116238>,  <37.675529, 33.716507, 41.001331>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.434269, 34.014149, 41.116238> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154315, 0.244484, -0.957295,
		-0.782557, -0.621723, -0.032635,
		-0.603151, 0.744102, 0.287264,
		37.253323, 34.237381, 41.202415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.171928, 33.764809, 40.471916>,  <37.675529, 33.716507, 41.001331>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.171928, 33.764809, 40.471916> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.120941, 34.106396, 40.673706>,  <37.090351, 34.311348, 40.794781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.120941, 34.106396, 40.673706>,  <37.171928, 33.764809, 40.471916>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.120941, 34.106396, 40.673706> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128195, 0.490173, -0.862146,
		-0.983524, -0.174563, 0.046995,
		-0.127464, 0.853966, 0.504475,
		37.082703, 34.362587, 40.825050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.579975, 34.076801, 40.214455>,  <37.171928, 33.764809, 40.471916>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.579975, 34.076801, 40.214455> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.774151, 34.385098, 40.379528>,  <36.890656, 34.570076, 40.478573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.774151, 34.385098, 40.379528>,  <36.579975, 34.076801, 40.214455>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.774151, 34.385098, 40.379528> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144636, 0.536330, -0.831523,
		-0.862224, 0.343963, 0.371831,
		0.485438, 0.770740, 0.412687,
		36.919781, 34.616318, 40.503334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.268768, 34.605026, 39.858013>,  <36.579975, 34.076801, 40.214455>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.268768, 34.605026, 39.858013> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.600090, 34.762787, 40.017193>,  <36.798882, 34.857445, 40.112701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.600090, 34.762787, 40.017193>,  <36.268768, 34.605026, 39.858013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.600090, 34.762787, 40.017193> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043713, 0.662605, -0.747692,
		-0.558574, 0.636711, 0.531597,
		0.828302, 0.394403, 0.397946,
		36.848579, 34.881107, 40.136578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.195293, 35.351261, 39.901180>,  <36.268768, 34.605026, 39.858013>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.195293, 35.351261, 39.901180> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.580673, 35.247780, 39.873341>,  <36.811901, 35.185692, 39.856636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.580673, 35.247780, 39.873341>,  <36.195293, 35.351261, 39.901180>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.580673, 35.247780, 39.873341> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125129, 0.664252, -0.736962,
		0.236883, 0.701315, 0.672342,
		0.963447, -0.258703, -0.069595,
		36.869709, 35.170170, 39.852463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.384785, 35.948948, 39.622944>,  <36.195293, 35.351261, 39.901180>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.384785, 35.948948, 39.622944> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.701065, 35.708389, 39.577141>,  <36.890835, 35.564053, 39.549660>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.701065, 35.708389, 39.577141>,  <36.384785, 35.948948, 39.622944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.701065, 35.708389, 39.577141> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283528, 0.525503, -0.802159,
		0.542590, 0.601802, 0.586029,
		0.790701, -0.601399, -0.114505,
		36.938274, 35.527969, 39.542789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.973553, 36.294231, 39.521168>,  <36.384785, 35.948948, 39.622944>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.973553, 36.294231, 39.521168> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.062607, 35.936325, 39.366337>,  <37.116039, 35.721581, 39.273438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.062607, 35.936325, 39.366337>,  <36.973553, 36.294231, 39.521168>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.062607, 35.936325, 39.366337> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311367, 0.441509, -0.841499,
		0.923841, 0.066827, 0.376897,
		0.222638, -0.894765, -0.387077,
		37.129398, 35.667896, 39.250214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.586464, 36.403770, 39.205849>,  <36.973553, 36.294231, 39.521168>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.586464, 36.403770, 39.205849> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.448620, 36.058037, 39.059334>,  <37.365913, 35.850597, 38.971424>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.448620, 36.058037, 39.059334>,  <37.586464, 36.403770, 39.205849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.448620, 36.058037, 39.059334> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250456, 0.291392, -0.923235,
		0.904720, -0.409891, 0.116064,
		-0.344605, -0.864339, -0.366288,
		37.345238, 35.798737, 38.949448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.203640, 36.184299, 38.820152>,  <37.586464, 36.403770, 39.205849>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.203640, 36.184299, 38.820152> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.872131, 36.009800, 38.679970>,  <37.673225, 35.905102, 38.595860>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.872131, 36.009800, 38.679970>,  <38.203640, 36.184299, 38.820152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.872131, 36.009800, 38.679970> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267059, 0.241998, -0.932800,
		0.491744, -0.866673, -0.084057,
		-0.828775, -0.436250, -0.350453,
		37.623497, 35.878925, 38.574833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.432735, 35.725906, 38.329678>,  <38.203640, 36.184299, 38.820152>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.432735, 35.725906, 38.329678> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.056362, 35.824306, 38.236622>,  <37.830536, 35.883347, 38.180790>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.056362, 35.824306, 38.236622>,  <38.432735, 35.725906, 38.329678>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.056362, 35.824306, 38.236622> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294961, 0.258236, -0.919952,
		-0.166237, -0.934236, -0.315545,
		-0.940938, 0.246004, -0.232635,
		37.774082, 35.898106, 38.166832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.932159, 35.355053, 38.077301>,  <38.432735, 35.725906, 38.329678>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.932159, 35.355053, 38.077301> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.853321, 35.327503, 38.468487>,  <38.806019, 35.310974, 38.703197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.853321, 35.327503, 38.468487>,  <38.932159, 35.355053, 38.077301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.853321, 35.327503, 38.468487> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096738, 0.994028, 0.050505,
		-0.975599, -0.084651, -0.202583,
		-0.197098, -0.068870, 0.977962,
		38.794193, 35.306843, 38.761875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.744072, 35.180317, 37.978115>,  <38.932159, 35.355053, 38.077301>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.744072, 35.180317, 37.978115> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.915131, 34.929665, 37.717518>,  <40.017765, 34.779274, 37.561161>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.915131, 34.929665, 37.717518>,  <39.744072, 35.180317, 37.978115>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.915131, 34.929665, 37.717518> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501960, -0.764012, 0.405365,
		-0.751766, 0.153671, -0.641274,
		0.427649, -0.626635, -0.651495,
		40.043427, 34.741673, 37.522068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.200474, 34.860752, 37.505428>,  <39.744072, 35.180317, 37.978115>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.200474, 34.860752, 37.505428> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.523575, 34.641636, 37.592571>,  <39.717434, 34.510166, 37.644859>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.523575, 34.641636, 37.592571>,  <39.200474, 34.860752, 37.505428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.523575, 34.641636, 37.592571> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557153, -0.588591, 0.585783,
		-0.192652, -0.594550, -0.780637,
		0.807754, -0.547787, 0.217862,
		39.765900, 34.477299, 37.657928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.953663, 34.123745, 37.513798>,  <39.200474, 34.860752, 37.505428>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.953663, 34.123745, 37.513798> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.308727, 34.105839, 37.697121>,  <39.521767, 34.095097, 37.807114>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.308727, 34.105839, 37.697121>,  <38.953663, 34.123745, 37.513798>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.308727, 34.105839, 37.697121> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332602, -0.750650, 0.570877,
		0.318476, -0.659182, -0.681214,
		0.887665, -0.044763, 0.458309,
		39.575027, 34.092411, 37.834614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.048435, 33.424023, 37.626545>,  <38.953663, 34.123745, 37.513798>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.048435, 33.424023, 37.626545> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.317326, 33.569874, 37.884277>,  <39.478661, 33.657383, 38.038918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.317326, 33.569874, 37.884277>,  <39.048435, 33.424023, 37.626545>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.317326, 33.569874, 37.884277> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280024, -0.680429, 0.677203,
		0.685343, -0.635662, -0.355300,
		0.672229, 0.364623, 0.644328,
		39.518993, 33.679260, 38.077576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.242165, 32.897045, 37.949867>,  <39.048435, 33.424023, 37.626545>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.242165, 32.897045, 37.949867> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.377827, 33.172707, 38.206005>,  <39.459225, 33.338104, 38.359688>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.377827, 33.172707, 38.206005>,  <39.242165, 32.897045, 37.949867>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.377827, 33.172707, 38.206005> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342629, -0.543445, 0.766337,
		0.876115, -0.479310, 0.051810,
		0.339157, 0.689151, 0.640346,
		39.479572, 33.379452, 38.398109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.797539, 32.641445, 38.367523>,  <39.242165, 32.897045, 37.949867>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.797539, 32.641445, 38.367523> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.607426, 32.931221, 38.567242>,  <39.493359, 33.105087, 38.687073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.607426, 32.931221, 38.567242>,  <39.797539, 32.641445, 38.367523>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.607426, 32.931221, 38.567242> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350179, -0.676357, 0.648009,
		0.807146, 0.133142, 0.575143,
		-0.475279, 0.724440, 0.499295,
		39.464844, 33.148552, 38.717030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.889812, 32.417885, 39.030949>,  <39.797539, 32.641445, 38.367523>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.889812, 32.417885, 39.030949> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.599354, 32.690918, 39.063911>,  <39.425079, 32.854736, 39.083691>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.599354, 32.690918, 39.063911>,  <39.889812, 32.417885, 39.030949>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.599354, 32.690918, 39.063911> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451089, -0.563445, 0.692133,
		0.518871, 0.465417, 0.717049,
		-0.726149, 0.682581, 0.082410,
		39.381508, 32.895691, 39.088634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.864819, 32.566696, 39.749203>,  <39.889812, 32.417885, 39.030949>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.864819, 32.566696, 39.749203> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.516918, 32.683464, 39.590046>,  <39.308178, 32.753525, 39.494553>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.516918, 32.683464, 39.590046>,  <39.864819, 32.566696, 39.749203>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.516918, 32.683464, 39.590046> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488870, -0.399565, 0.775470,
		0.067393, 0.868982, 0.490233,
		-0.869750, 0.291922, -0.397891,
		39.255993, 32.771042, 39.470680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.519924, 32.919537, 40.248192>,  <39.864819, 32.566696, 39.749203>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.519924, 32.919537, 40.248192> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.239697, 32.810867, 39.984257>,  <39.071560, 32.745667, 39.825893>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.239697, 32.810867, 39.984257>,  <39.519924, 32.919537, 40.248192>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.239697, 32.810867, 39.984257> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584113, -0.312826, 0.748967,
		-0.409891, 0.910128, 0.060468,
		-0.700572, -0.271675, -0.659842,
		39.029526, 32.729366, 39.786304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.891571, 33.103153, 40.546261>,  <39.519924, 32.919537, 40.248192>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.891571, 33.103153, 40.546261> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.779716, 32.826710, 40.279678>,  <38.712605, 32.660843, 40.119728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.779716, 32.826710, 40.279678>,  <38.891571, 33.103153, 40.546261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.779716, 32.826710, 40.279678> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574271, -0.435892, 0.692973,
		-0.769426, 0.576509, -0.274994,
		-0.279638, -0.691112, -0.666459,
		38.695824, 32.619377, 40.079742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.219395, 33.159084, 40.514866>,  <38.891571, 33.103153, 40.546261>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.219395, 33.159084, 40.514866> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.308163, 32.784981, 40.404560>,  <38.361423, 32.560520, 40.338375>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.308163, 32.784981, 40.404560>,  <38.219395, 33.159084, 40.514866>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.308163, 32.784981, 40.404560> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546518, -0.353527, 0.759168,
		-0.807508, -0.017763, -0.589589,
		0.221921, -0.935256, -0.275768,
		38.374741, 32.504406, 40.321831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.516266, 32.747070, 40.693481>,  <38.219395, 33.159084, 40.514866>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.516266, 32.747070, 40.693481> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.789036, 32.474148, 40.588085>,  <37.952698, 32.310394, 40.524845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.789036, 32.474148, 40.588085>,  <37.516266, 32.747070, 40.693481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.789036, 32.474148, 40.588085> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490883, -0.694003, 0.526681,
		-0.542226, -0.229813, -0.808194,
		0.681928, -0.682308, -0.263495,
		37.993614, 32.269455, 40.509037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.164398, 32.145935, 40.478542>,  <37.516266, 32.747070, 40.693481>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.164398, 32.145935, 40.478542> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.526886, 32.019554, 40.590923>,  <37.744381, 31.943726, 40.658352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.526886, 32.019554, 40.590923>,  <37.164398, 32.145935, 40.478542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.526886, 32.019554, 40.590923> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422591, -0.655989, 0.625376,
		-0.013283, -0.685459, -0.727990,
		0.906223, -0.315949, 0.280956,
		37.798752, 31.924768, 40.675209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.093391, 31.368212, 40.564365>,  <37.164398, 32.145935, 40.478542>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.093391, 31.368212, 40.564365> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.434715, 31.453800, 40.754555>,  <37.639511, 31.505154, 40.868668>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.434715, 31.453800, 40.754555>,  <37.093391, 31.368212, 40.564365>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.434715, 31.453800, 40.754555> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185233, -0.728026, 0.660051,
		0.487391, -0.651302, -0.581597,
		0.853311, 0.213972, 0.475475,
		37.690708, 31.517992, 40.897198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.255291, 30.694223, 40.309956>,  <37.093391, 31.368212, 40.564365>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.255291, 30.694223, 40.309956> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.909836, 30.519482, 40.209332>,  <36.702564, 30.414637, 40.148956>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.909836, 30.519482, 40.209332>,  <37.255291, 30.694223, 40.309956>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.909836, 30.519482, 40.209332> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115163, 0.656804, -0.745216,
		0.490780, -0.614626, -0.617551,
		-0.863639, -0.436856, -0.251564,
		36.650745, 30.388424, 40.133862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.334427, 30.657141, 39.596165>,  <37.255291, 30.694223, 40.309956>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.334427, 30.657141, 39.596165> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.945545, 30.638390, 39.687920>,  <36.712215, 30.627138, 39.742973>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.945545, 30.638390, 39.687920>,  <37.334427, 30.657141, 39.596165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.945545, 30.638390, 39.687920> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223229, 0.481029, -0.847809,
		-0.070597, -0.875450, -0.478124,
		-0.972206, -0.046878, 0.229385,
		36.653885, 30.624327, 39.756737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.075413, 30.391586, 38.938686>,  <37.334427, 30.657141, 39.596165>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.075413, 30.391586, 38.938686> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.773312, 30.522221, 39.165993>,  <36.592049, 30.600601, 39.302376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.773312, 30.522221, 39.165993>,  <37.075413, 30.391586, 38.938686>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.773312, 30.522221, 39.165993> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497284, 0.279271, -0.821411,
		-0.426962, -0.902967, -0.048516,
		-0.755256, 0.326585, 0.568269,
		36.546734, 30.620195, 39.336475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.518059, 30.158155, 38.617550>,  <37.075413, 30.391586, 38.938686>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.518059, 30.158155, 38.617550> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.378242, 30.455206, 38.846050>,  <36.294353, 30.633436, 38.983150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.378242, 30.455206, 38.846050>,  <36.518059, 30.158155, 38.617550>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.378242, 30.455206, 38.846050> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595528, 0.294593, -0.747370,
		-0.723301, -0.601434, 0.339281,
		-0.349544, 0.742625, 0.571251,
		36.273380, 30.677994, 39.017426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.831791, 30.260746, 38.384731>,  <36.518059, 30.158155, 38.617550>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.831791, 30.260746, 38.384731> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.918938, 30.603642, 38.571354>,  <35.971226, 30.809380, 38.683327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.918938, 30.603642, 38.571354>,  <35.831791, 30.260746, 38.384731>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.918938, 30.603642, 38.571354> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532734, 0.504993, -0.679099,
		-0.817759, -0.100599, 0.566701,
		0.217863, 0.857241, 0.466556,
		35.984295, 30.860813, 38.711319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.204269, 30.694433, 38.367874>,  <35.831791, 30.260746, 38.384731>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.204269, 30.694433, 38.367874> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.520283, 30.938065, 38.395802>,  <35.709888, 31.084244, 38.412560>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.520283, 30.938065, 38.395802>,  <35.204269, 30.694433, 38.367874>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.520283, 30.938065, 38.395802> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376293, 0.571664, -0.729112,
		-0.484002, 0.549747, 0.680824,
		0.790029, 0.609080, 0.069821,
		35.757290, 31.120789, 38.416748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.872837, 31.363247, 38.283802>,  <35.204269, 30.694433, 38.367874>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.872837, 31.363247, 38.283802> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.264629, 31.433468, 38.244202>,  <35.499706, 31.475599, 38.220444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.264629, 31.433468, 38.244202>,  <34.872837, 31.363247, 38.283802>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.264629, 31.433468, 38.244202> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194640, 0.696513, -0.690641,
		-0.052289, 0.695738, 0.716390,
		0.979480, 0.175551, -0.098998,
		35.558472, 31.486134, 38.214500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.934929, 32.108448, 38.375401>,  <34.872837, 31.363247, 38.283802>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.934929, 32.108448, 38.375401> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.252522, 31.981907, 38.167744>,  <35.443077, 31.905981, 38.043148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.252522, 31.981907, 38.167744>,  <34.934929, 32.108448, 38.375401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.252522, 31.981907, 38.167744> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193217, 0.678347, -0.708881,
		0.576415, 0.663149, 0.477472,
		0.793985, -0.316354, -0.519141,
		35.490719, 31.887001, 38.012001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.315193, 32.693405, 38.206722>,  <34.934929, 32.108448, 38.375401>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.315193, 32.693405, 38.206722> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.453751, 32.433918, 37.935673>,  <35.536884, 32.278225, 37.773041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.453751, 32.433918, 37.935673>,  <35.315193, 32.693405, 38.206722>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.453751, 32.433918, 37.935673> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014509, 0.725966, -0.687577,
		0.937978, 0.228339, 0.260880,
		0.346391, -0.648718, -0.677627,
		35.557667, 32.239304, 37.732384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.771282, 33.106144, 37.892040>,  <35.315193, 32.693405, 38.206722>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.771282, 33.106144, 37.892040> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.708996, 32.815819, 37.624027>,  <35.671623, 32.641624, 37.463219>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.708996, 32.815819, 37.624027>,  <35.771282, 33.106144, 37.892040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.708996, 32.815819, 37.624027> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066044, 0.684437, -0.726075,
		0.985591, -0.068813, -0.154516,
		-0.155720, -0.725817, -0.670030,
		35.662281, 32.598072, 37.423019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.202644, 33.249851, 37.360516>,  <35.771282, 33.106144, 37.892040>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.202644, 33.249851, 37.360516> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.912868, 33.010662, 37.223335>,  <35.739002, 32.867149, 37.141026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.912868, 33.010662, 37.223335>,  <36.202644, 33.249851, 37.360516>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.912868, 33.010662, 37.223335> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236784, 0.683100, -0.690875,
		0.647394, -0.419292, -0.636455,
		-0.724440, -0.597971, -0.342953,
		35.695538, 32.831272, 37.120449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.369209, 32.917633, 36.611629>,  <36.202644, 33.249851, 37.360516>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.369209, 32.917633, 36.611629> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.982807, 32.982529, 36.692139>,  <35.750965, 33.021465, 36.740444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.982807, 32.982529, 36.692139>,  <36.369209, 32.917633, 36.611629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.982807, 32.982529, 36.692139> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020318, 0.728510, -0.684734,
		-0.257719, -0.665547, -0.700449,
		-0.966006, 0.162237, 0.201273,
		35.693005, 33.031200, 36.752522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.450066, 26.869923, 42.230053> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.151684, 27.136318, 42.228783>,  <35.972652, 27.296156, 42.228020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.151684, 27.136318, 42.228783>,  <36.450066, 26.869923, 42.230053>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.151684, 27.136318, 42.228783> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420941, 0.467784, -0.777166,
		-0.516099, -0.581067, -0.629288,
		-0.745957, 0.665987, -0.003172,
		35.927898, 27.336115, 42.227833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.366058, 27.046736, 41.433578>,  <36.450066, 26.869923, 42.230053>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.366058, 27.046736, 41.433578> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.206429, 27.330740, 41.665657>,  <36.110649, 27.501143, 41.804905>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.206429, 27.330740, 41.665657>,  <36.366058, 27.046736, 41.433578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.206429, 27.330740, 41.665657> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352051, 0.702915, -0.618037,
		-0.846641, -0.042384, -0.530474,
		-0.399074, 0.710009, 0.580195,
		36.086708, 27.543743, 41.839714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.186348, 27.558498, 40.938927>,  <36.366058, 27.046736, 41.433578>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.186348, 27.558498, 40.938927> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.135143, 27.781027, 41.267345>,  <36.104420, 27.914543, 41.464397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.135143, 27.781027, 41.267345>,  <36.186348, 27.558498, 40.938927>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.135143, 27.781027, 41.267345> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297190, 0.811334, -0.503404,
		-0.946198, 0.179563, -0.269197,
		-0.128016, 0.556322, 0.821047,
		36.096737, 27.947924, 41.513660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.812305, 28.040710, 40.671124>,  <36.186348, 27.558498, 40.938927>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.812305, 28.040710, 40.671124> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.008926, 28.154896, 41.000214>,  <36.126900, 28.223406, 41.197670>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.008926, 28.154896, 41.000214>,  <35.812305, 28.040710, 40.671124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.008926, 28.154896, 41.000214> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071461, 0.928339, -0.364802,
		-0.867909, 0.238114, 0.435932,
		0.491557, 0.285462, 0.822729,
		36.156395, 28.240534, 41.247032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.495968, 28.579273, 40.784290>,  <35.812305, 28.040710, 40.671124>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.495968, 28.579273, 40.784290> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.844143, 28.612240, 40.978424>,  <36.053047, 28.632019, 41.094902>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.844143, 28.612240, 40.978424>,  <35.495968, 28.579273, 40.784290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.844143, 28.612240, 40.978424> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073074, 0.953333, -0.292944,
		-0.486825, 0.290454, 0.823795,
		0.870437, 0.082414, 0.485331,
		36.105274, 28.636965, 41.124023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.471485, 29.217901, 41.206745>,  <35.495968, 28.579273, 40.784290>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.471485, 29.217901, 41.206745> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.860470, 29.142708, 41.151634>,  <36.093861, 29.097591, 41.118568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.860470, 29.142708, 41.151634>,  <35.471485, 29.217901, 41.206745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.860470, 29.142708, 41.151634> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152317, 0.960039, -0.234786,
		0.176409, 0.207334, 0.962233,
		0.972460, -0.187983, -0.137779,
		36.152206, 29.086313, 41.110302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.727997, 29.875082, 41.207638>,  <35.471485, 29.217901, 41.206745>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.727997, 29.875082, 41.207638> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.061295, 29.697487, 41.075829>,  <36.261272, 29.590929, 40.996742>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.061295, 29.697487, 41.075829>,  <35.727997, 29.875082, 41.207638>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.061295, 29.697487, 41.075829> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160938, 0.764928, -0.623686,
		0.528970, 0.466648, 0.708823,
		0.833240, -0.443988, -0.329523,
		36.311268, 29.564291, 40.976971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.316402, 30.318916, 41.285278>,  <35.727997, 29.875082, 41.207638>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.316402, 30.318916, 41.285278> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.381931, 30.062443, 40.985401>,  <36.421249, 29.908558, 40.805473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.381931, 30.062443, 40.985401>,  <36.316402, 30.318916, 41.285278>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.381931, 30.062443, 40.985401> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093001, 0.766616, -0.635336,
		0.982096, 0.034362, 0.185221,
		0.163825, -0.641186, -0.749694,
		36.431080, 29.870087, 40.760494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.896759, 30.574547, 40.971363>,  <36.316402, 30.318916, 41.285278>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.896759, 30.574547, 40.971363> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.739189, 30.328524, 40.698151>,  <36.644650, 30.180910, 40.534225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.739189, 30.328524, 40.698151>,  <36.896759, 30.574547, 40.971363>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.739189, 30.328524, 40.698151> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042389, 0.754480, -0.654954,
		0.918167, -0.229047, -0.323277,
		-0.393921, -0.615059, -0.683028,
		36.621014, 30.144007, 40.493240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.626617, 30.527220, 40.880131>,  <36.896759, 30.574547, 40.971363>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.626617, 30.527220, 40.880131> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.735851, 30.861540, 41.070652>,  <37.801392, 31.062132, 41.184963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.735851, 30.861540, 41.070652>,  <37.626617, 30.527220, 40.880131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.735851, 30.861540, 41.070652> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001483, -0.495484, 0.868616,
		0.961989, -0.236498, -0.136548,
		0.273083, 0.835802, 0.476299,
		37.817776, 31.112280, 41.213543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.352863, 30.350245, 41.251312>,  <37.626617, 30.527220, 40.880131>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.352863, 30.350245, 41.251312> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.169926, 30.667372, 41.412449>,  <38.060162, 30.857647, 41.509129>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.169926, 30.667372, 41.412449>,  <38.352863, 30.350245, 41.251312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.169926, 30.667372, 41.412449> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011077, -0.447875, 0.894028,
		0.889221, 0.413340, 0.196051,
		-0.457344, 0.792817, 0.402838,
		38.032722, 30.905216, 41.533302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.781586, 30.703249, 41.771832>,  <38.352863, 30.350245, 41.251312>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.781586, 30.703249, 41.771832> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.401638, 30.781113, 41.869698>,  <38.173672, 30.827831, 41.928417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.401638, 30.781113, 41.869698>,  <38.781586, 30.703249, 41.771832>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.401638, 30.781113, 41.869698> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173243, -0.323746, 0.930148,
		0.260271, 0.925903, 0.273792,
		-0.949866, 0.194658, 0.244668,
		38.116676, 30.839510, 41.943096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.794300, 30.697670, 42.459938>,  <38.781586, 30.703249, 41.771832>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.794300, 30.697670, 42.459938> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.398300, 30.709923, 42.404865>,  <38.160698, 30.717274, 42.371822>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.398300, 30.709923, 42.404865>,  <38.794300, 30.697670, 42.459938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.398300, 30.709923, 42.404865> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139262, -0.366972, 0.919749,
		-0.022349, 0.929728, 0.367569,
		-0.990003, 0.030632, -0.137677,
		38.101299, 30.719112, 42.363564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.483006, 30.911921, 43.161457>,  <38.794300, 30.697670, 42.459938>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.483006, 30.911921, 43.161457> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.192768, 30.722340, 42.961906>,  <38.018623, 30.608591, 42.842175>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.192768, 30.722340, 42.961906>,  <38.483006, 30.911921, 43.161457>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.192768, 30.722340, 42.961906> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236258, -0.509329, 0.827506,
		-0.646292, 0.718299, 0.257592,
		-0.725596, -0.473952, -0.498879,
		37.975090, 30.580154, 42.812244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.949051, 30.974625, 43.619202>,  <38.483006, 30.911921, 43.161457>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.949051, 30.974625, 43.619202> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.885132, 30.657148, 43.384418>,  <37.846783, 30.466661, 43.243549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.885132, 30.657148, 43.384418>,  <37.949051, 30.974625, 43.619202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.885132, 30.657148, 43.384418> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270446, -0.536649, 0.799292,
		-0.949381, 0.286463, -0.128896,
		-0.159795, -0.793692, -0.586957,
		37.837193, 30.419041, 43.208332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.453880, 30.670027, 43.985298>,  <37.949051, 30.974625, 43.619202>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.453880, 30.670027, 43.985298> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.570293, 30.372454, 43.744678>,  <37.640141, 30.193909, 43.600307>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.570293, 30.372454, 43.744678>,  <37.453880, 30.670027, 43.985298>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.570293, 30.372454, 43.744678> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308616, -0.668156, 0.676996,
		-0.905568, -0.011383, -0.424048,
		0.291036, -0.743934, -0.601548,
		37.657604, 30.149273, 43.564213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.927559, 30.148577, 43.999214>,  <37.453880, 30.670027, 43.985298>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.927559, 30.148577, 43.999214> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.249573, 29.965443, 43.848320>,  <37.442780, 29.855562, 43.757782>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.249573, 29.965443, 43.848320>,  <36.927559, 30.148577, 43.999214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.249573, 29.965443, 43.848320> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247852, -0.837324, 0.487297,
		-0.538971, -0.298791, -0.787549,
		0.805034, -0.457835, -0.377238,
		37.491081, 29.828093, 43.735149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.677101, 29.530684, 43.718922>,  <36.927559, 30.148577, 43.999214>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.677101, 29.530684, 43.718922> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.065868, 29.458197, 43.778980>,  <37.299129, 29.414703, 43.815014>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.065868, 29.458197, 43.778980>,  <36.677101, 29.530684, 43.718922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.065868, 29.458197, 43.778980> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235299, -0.759807, 0.606076,
		0.004249, -0.624382, -0.781107,
		0.971914, -0.181219, 0.150145,
		37.357441, 29.403831, 43.824024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.703751, 28.825270, 43.694969>,  <36.677101, 29.530684, 43.718922>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.703751, 28.825270, 43.694969> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.053482, 28.905838, 43.871590>,  <37.263321, 28.954180, 43.977562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.053482, 28.905838, 43.871590>,  <36.703751, 28.825270, 43.694969>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.053482, 28.905838, 43.871590> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118310, -0.793905, 0.596421,
		0.470686, -0.573710, -0.670306,
		0.874332, 0.201423, 0.441556,
		37.315781, 28.966265, 44.004055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.151356, 28.221895, 43.639748>,  <36.703751, 28.825270, 43.694969>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.151356, 28.221895, 43.639748> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.269379, 28.430521, 43.959976>,  <37.340195, 28.555696, 44.152111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.269379, 28.430521, 43.959976>,  <37.151356, 28.221895, 43.639748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.269379, 28.430521, 43.959976> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141026, -0.804922, 0.576379,
		0.945014, -0.282968, -0.163946,
		0.295060, 0.521565, 0.800568,
		37.357899, 28.586990, 44.200146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.560085, 27.653185, 44.096165>,  <37.151356, 28.221895, 43.639748>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.560085, 27.653185, 44.096165> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.507938, 27.989080, 44.307007>,  <37.476650, 28.190619, 44.433514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.507938, 27.989080, 44.307007>,  <37.560085, 27.653185, 44.096165>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.507938, 27.989080, 44.307007> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061090, -0.537438, 0.841088,
		0.989581, 0.077453, 0.121366,
		-0.130371, 0.839739, 0.527107,
		37.468826, 28.241001, 44.465137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.064667, 27.662264, 44.712273>,  <37.560085, 27.653185, 44.096165>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.064667, 27.662264, 44.712273> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.741905, 27.883474, 44.795280>,  <37.548248, 28.016201, 44.845085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.741905, 27.883474, 44.795280>,  <38.064667, 27.662264, 44.712273>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.741905, 27.883474, 44.795280> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179050, -0.563799, 0.806271,
		0.562889, 0.613428, 0.553951,
		-0.806906, 0.553026, 0.207522,
		37.499832, 28.049381, 44.857536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.095665, 27.913403, 45.427292>,  <38.064667, 27.662264, 44.712273>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.095665, 27.913403, 45.427292> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.706417, 27.973942, 45.357868>,  <37.472866, 28.010265, 45.316212>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.706417, 27.973942, 45.357868>,  <38.095665, 27.913403, 45.427292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.706417, 27.973942, 45.357868> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206128, -0.236432, 0.949532,
		0.102675, 0.959788, 0.261275,
		-0.973123, 0.151350, -0.173564,
		37.414478, 28.019346, 45.305798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<28.776035, 31.027136, 45.006321> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.164661, 30.932428, 45.005859>,  <29.397837, 30.875603, 45.005585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.164661, 30.932428, 45.005859>,  <28.776035, 31.027136, 45.006321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.164661, 30.932428, 45.005859> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136134, 0.562574, -0.815462,
		0.193724, 0.792118, 0.578810,
		0.971565, -0.236771, -0.001150,
		29.456131, 30.861397, 45.005516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.279644, 31.704256, 45.030224>,  <28.776035, 31.027136, 45.006321>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.279644, 31.704256, 45.030224> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.449577, 31.392124, 44.846657>,  <29.551537, 31.204845, 44.736519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.449577, 31.392124, 44.846657>,  <29.279644, 31.704256, 45.030224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.449577, 31.392124, 44.846657> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293415, 0.598262, -0.745647,
		0.856402, 0.182124, 0.483123,
		0.424834, -0.780329, -0.458915,
		29.577028, 31.158026, 44.708981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.941145, 32.055153, 44.712368>,  <29.279644, 31.704256, 45.030224>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.941145, 32.055153, 44.712368> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.906136, 31.700914, 44.529911>,  <29.885130, 31.488371, 44.420437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.906136, 31.700914, 44.529911>,  <29.941145, 32.055153, 44.712368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.906136, 31.700914, 44.529911> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319185, 0.408824, -0.854976,
		0.943642, -0.220422, 0.246888,
		-0.087522, -0.885594, -0.456139,
		29.879879, 31.435236, 44.393070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.544054, 31.856718, 44.542454>,  <29.941145, 32.055153, 44.712368>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.544054, 31.856718, 44.542454> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.286032, 31.690424, 44.285995>,  <30.131218, 31.590649, 44.132122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.286032, 31.690424, 44.285995>,  <30.544054, 31.856718, 44.542454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.286032, 31.690424, 44.285995> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595925, 0.251501, -0.762640,
		0.478305, -0.874021, 0.085515,
		-0.645056, -0.415735, -0.641145,
		30.092514, 31.565704, 44.093651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.956413, 31.522951, 44.054207>,  <30.544054, 31.856718, 44.542454>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.956413, 31.522951, 44.054207> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.614399, 31.550592, 43.848629>,  <30.409191, 31.567177, 43.725285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.614399, 31.550592, 43.848629>,  <30.956413, 31.522951, 44.054207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.614399, 31.550592, 43.848629> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507061, 0.319037, -0.800690,
		0.108636, -0.945220, -0.307828,
		-0.855036, 0.069104, -0.513943,
		30.357887, 31.571323, 43.694447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.045261, 31.189917, 43.379200>,  <30.956413, 31.522951, 44.054207>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.045261, 31.189917, 43.379200> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.735664, 31.441477, 43.349762>,  <30.549906, 31.592413, 43.332100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.735664, 31.441477, 43.349762>,  <31.045261, 31.189917, 43.379200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.735664, 31.441477, 43.349762> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303975, 0.267087, -0.914474,
		-0.555456, -0.730170, -0.397894,
		-0.773994, 0.628901, -0.073599,
		30.503466, 31.630148, 43.327682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.730162, 31.035381, 42.687645>,  <31.045261, 31.189917, 43.379200>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.730162, 31.035381, 42.687645> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.633308, 31.402670, 42.813015>,  <30.575195, 31.623043, 42.888237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.633308, 31.402670, 42.813015>,  <30.730162, 31.035381, 42.687645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.633308, 31.402670, 42.813015> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339377, 0.382787, -0.859242,
		-0.908952, -0.101682, -0.404310,
		-0.242134, 0.918224, 0.313427,
		30.560669, 31.678137, 42.907043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.439310, 31.324476, 42.142387>,  <30.730162, 31.035381, 42.687645>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.439310, 31.324476, 42.142387> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.545794, 31.644388, 42.357601>,  <30.609684, 31.836336, 42.486729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.545794, 31.644388, 42.357601>,  <30.439310, 31.324476, 42.142387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.545794, 31.644388, 42.357601> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354813, 0.437680, -0.826162,
		-0.896237, 0.410834, -0.167258,
		0.266210, 0.799782, 0.538034,
		30.625656, 31.884323, 42.519012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.390013, 31.845728, 41.648876>,  <30.439310, 31.324476, 42.142387>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.390013, 31.845728, 41.648876> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.563021, 32.065845, 41.934563>,  <30.666824, 32.197914, 42.105976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.563021, 32.065845, 41.934563>,  <30.390013, 31.845728, 41.648876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.563021, 32.065845, 41.934563> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270230, 0.676608, -0.684965,
		-0.860176, 0.489263, 0.143939,
		0.432518, 0.550294, 0.714216,
		30.692776, 32.230934, 42.148827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.241325, 32.520401, 41.525303>,  <30.390013, 31.845728, 41.648876>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.241325, 32.520401, 41.525303> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.583019, 32.543373, 41.731983>,  <30.788036, 32.557156, 41.855991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.583019, 32.543373, 41.731983>,  <30.241325, 32.520401, 41.525303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.583019, 32.543373, 41.731983> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356634, 0.658436, -0.662778,
		-0.378278, 0.750443, 0.541979,
		0.854236, 0.057426, 0.516705,
		30.839291, 32.560600, 41.886993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.381859, 33.294445, 41.531895>,  <30.241325, 32.520401, 41.525303>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.381859, 33.294445, 41.531895> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.726036, 33.113701, 41.626095>,  <30.932543, 33.005257, 41.682617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.726036, 33.113701, 41.626095>,  <30.381859, 33.294445, 41.531895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.726036, 33.113701, 41.626095> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495343, 0.633410, -0.594497,
		0.119457, 0.628186, 0.768838,
		0.860445, -0.451856, 0.235502,
		30.984169, 32.978146, 41.696747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.851288, 33.786098, 41.651501>,  <30.381859, 33.294445, 41.531895>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.851288, 33.786098, 41.651501> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.087244, 33.473503, 41.570206>,  <31.228819, 33.285946, 41.521427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.087244, 33.473503, 41.570206>,  <30.851288, 33.786098, 41.651501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.087244, 33.473503, 41.570206> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584210, 0.586800, -0.560682,
		0.557427, 0.212006, 0.802700,
		0.589893, -0.781485, -0.203242,
		31.264212, 33.239056, 41.509232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.508709, 34.050251, 41.728291>,  <30.851288, 33.786098, 41.651501>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.508709, 34.050251, 41.728291> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.547815, 33.730854, 41.490688>,  <31.571280, 33.539215, 41.348125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.547815, 33.730854, 41.490688>,  <31.508709, 34.050251, 41.728291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.547815, 33.730854, 41.490688> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586141, 0.528565, -0.614050,
		0.804289, -0.288140, 0.519707,
		0.097767, -0.798495, -0.594010,
		31.577145, 33.491306, 41.312485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.140076, 34.014332, 41.579803>,  <31.508709, 34.050251, 41.728291>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.140076, 34.014332, 41.579803> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.981342, 33.801632, 41.280533>,  <31.886103, 33.674011, 41.100971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.981342, 33.801632, 41.280533>,  <32.140076, 34.014332, 41.579803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.981342, 33.801632, 41.280533> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509818, 0.550131, -0.661394,
		0.763290, -0.643896, 0.052785,
		-0.396830, -0.531746, -0.748179,
		31.862293, 33.642109, 41.056080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.873821, 33.879173, 41.832352>,  <32.140076, 34.014332, 41.579803>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.873821, 33.879173, 41.832352> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.221989, 34.047451, 41.934631>,  <33.430889, 34.148418, 41.995998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.221989, 34.047451, 41.934631>,  <32.873821, 33.879173, 41.832352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.221989, 34.047451, 41.934631> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014079, -0.540458, 0.841253,
		0.492105, -0.728645, -0.476350,
		0.870422, 0.420691, 0.255704,
		33.483116, 34.173660, 42.011341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.405910, 33.262104, 41.831116>,  <32.873821, 33.879173, 41.832352>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.405910, 33.262104, 41.831116> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.512001, 33.551643, 42.085896>,  <33.575653, 33.725365, 42.238762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.512001, 33.551643, 42.085896>,  <33.405910, 33.262104, 41.831116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.512001, 33.551643, 42.085896> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132813, -0.626882, 0.767711,
		0.954996, -0.288211, -0.070128,
		0.265224, 0.723846, 0.636947,
		33.591568, 33.768799, 42.276981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.006893, 33.036457, 42.251255>,  <33.405910, 33.262104, 41.831116>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.006893, 33.036457, 42.251255> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.811932, 33.317020, 42.459282>,  <33.694954, 33.485359, 42.584099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.811932, 33.317020, 42.459282>,  <34.006893, 33.036457, 42.251255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.811932, 33.317020, 42.459282> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012510, -0.601149, 0.799039,
		0.873088, 0.382948, 0.301775,
		-0.487402, 0.701407, 0.520065,
		33.665710, 33.527443, 42.615303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.336494, 33.067398, 42.879948>,  <34.006893, 33.036457, 42.251255>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.336494, 33.067398, 42.879948> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.010876, 33.274006, 42.986183>,  <33.815506, 33.397972, 43.049923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.010876, 33.274006, 42.986183>,  <34.336494, 33.067398, 42.879948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.010876, 33.274006, 42.986183> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068364, -0.539313, 0.839325,
		0.576764, 0.665092, 0.474337,
		-0.814045, 0.516520, 0.265588,
		33.766663, 33.428963, 43.065861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.539070, 33.318577, 43.436039>,  <34.336494, 33.067398, 42.879948>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.539070, 33.318577, 43.436039> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.139935, 33.331837, 43.458698>,  <33.900452, 33.339794, 43.472294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.139935, 33.331837, 43.458698>,  <34.539070, 33.318577, 43.436039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.139935, 33.331837, 43.458698> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030159, -0.535000, 0.844314,
		0.058295, 0.844202, 0.532847,
		-0.997844, 0.033149, 0.056648,
		33.840580, 33.341782, 43.475693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.430122, 33.565090, 44.098839>,  <34.539070, 33.318577, 43.436039>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.430122, 33.565090, 44.098839> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.093342, 33.391243, 43.970951>,  <33.891273, 33.286934, 43.894218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.093342, 33.391243, 43.970951>,  <34.430122, 33.565090, 44.098839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.093342, 33.391243, 43.970951> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003158, -0.596529, 0.802585,
		-0.539537, 0.674731, 0.503624,
		-0.841956, -0.434615, -0.319719,
		33.840755, 33.260857, 43.875034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.016327, 33.454121, 44.708084>,  <34.430122, 33.565090, 44.098839>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.016327, 33.454121, 44.708084> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.840046, 33.187832, 44.467220>,  <33.734276, 33.028057, 44.322701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.840046, 33.187832, 44.467220>,  <34.016327, 33.454121, 44.708084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.840046, 33.187832, 44.467220> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307158, -0.518486, 0.798014,
		-0.843467, 0.536644, 0.024015,
		-0.440701, -0.665722, -0.602160,
		33.707836, 32.988113, 44.286572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.371082, 33.455620, 44.955021>,  <34.016327, 33.454121, 44.708084>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.371082, 33.455620, 44.955021> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.416546, 33.112282, 44.754890>,  <33.443825, 32.906281, 44.634811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.416546, 33.112282, 44.754890>,  <33.371082, 33.455620, 44.955021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.416546, 33.112282, 44.754890> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282200, -0.510742, 0.812100,
		-0.952599, 0.048892, -0.300274,
		0.113657, -0.858343, -0.500330,
		33.450642, 32.854778, 44.604790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.759087, 33.089172, 45.107536>,  <33.371082, 33.455620, 44.955021>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.759087, 33.089172, 45.107536> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.023731, 32.814968, 44.985985>,  <33.182518, 32.650444, 44.913055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.023731, 32.814968, 44.985985>,  <32.759087, 33.089172, 45.107536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.023731, 32.814968, 44.985985> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112485, -0.491402, 0.863638,
		-0.741360, -0.537213, -0.402228,
		0.661613, -0.685511, -0.303878,
		33.222214, 32.609314, 44.894821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.473381, 32.499187, 45.254257>,  <32.759087, 33.089172, 45.107536>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.473381, 32.499187, 45.254257> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.860676, 32.399975, 45.241604>,  <33.093052, 32.340446, 45.234013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.860676, 32.399975, 45.241604>,  <32.473381, 32.499187, 45.254257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.860676, 32.399975, 45.241604> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123592, -0.584727, 0.801760,
		-0.217361, -0.772382, -0.596808,
		0.968235, -0.248032, -0.031637,
		33.151146, 32.325565, 45.232113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.469368, 31.825754, 45.347504>,  <32.473381, 32.499187, 45.254257>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.469368, 31.825754, 45.347504> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.846584, 31.931448, 45.428349>,  <33.072914, 31.994864, 45.476856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.846584, 31.931448, 45.428349>,  <32.469368, 31.825754, 45.347504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.846584, 31.931448, 45.428349> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021337, -0.654341, 0.755899,
		0.331986, -0.708532, -0.622709,
		0.943043, 0.264234, 0.202114,
		33.129498, 32.010719, 45.488983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.801140, 31.225336, 45.496868>,  <32.469368, 31.825754, 45.347504>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.801140, 31.225336, 45.496868> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.088448, 31.474264, 45.621323>,  <33.260834, 31.623621, 45.695995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.088448, 31.474264, 45.621323>,  <32.801140, 31.225336, 45.496868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.088448, 31.474264, 45.621323> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186071, -0.602714, 0.775959,
		0.670424, -0.499453, -0.548706,
		0.718269, 0.622320, 0.311140,
		33.303928, 31.660959, 45.714664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.492516, 30.780012, 45.615864>,  <32.801140, 31.225336, 45.496868>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.492516, 30.780012, 45.615864> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.477600, 31.117365, 45.830273>,  <33.468651, 31.319777, 45.958916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.477600, 31.117365, 45.830273>,  <33.492516, 30.780012, 45.615864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.477600, 31.117365, 45.830273> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106100, -0.530019, 0.841322,
		0.993656, 0.088244, -0.069719,
		-0.037289, 0.843382, 0.536019,
		33.466412, 31.370378, 45.991077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.934113, 30.607481, 46.177578>,  <33.492516, 30.780012, 45.615864>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.934113, 30.607481, 46.177578> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.679371, 30.895264, 46.288429>,  <33.526527, 31.067934, 46.354939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.679371, 30.895264, 46.288429>,  <33.934113, 30.607481, 46.177578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.679371, 30.895264, 46.288429> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177439, -0.486569, 0.855433,
		0.750289, 0.495613, 0.437533,
		-0.636853, 0.719457, 0.277126,
		33.488316, 31.111101, 46.371567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.495552, 30.787077, 46.424026>,  <33.934113, 30.607481, 46.177578>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.495552, 30.787077, 46.424026> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.859211, 30.739796, 46.583767>,  <35.077404, 30.711426, 46.679611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.859211, 30.739796, 46.583767>,  <34.495552, 30.787077, 46.424026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.859211, 30.739796, 46.583767> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392158, 0.565844, -0.725281,
		-0.140240, 0.815995, 0.560789,
		0.909145, -0.118204, 0.399353,
		35.131954, 30.704334, 46.703571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.765064, 31.422871, 46.326847>,  <34.495552, 30.787077, 46.424026>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.765064, 31.422871, 46.326847> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.086716, 31.218689, 46.448711>,  <35.279705, 31.096180, 46.521832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.086716, 31.218689, 46.448711>,  <34.765064, 31.422871, 46.326847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.086716, 31.218689, 46.448711> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526487, 0.373556, -0.763720,
		0.276036, 0.774527, 0.569133,
		0.804124, -0.510455, 0.304663,
		35.327953, 31.065552, 46.540112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.252312, 31.968517, 46.548309>,  <34.765064, 31.422871, 46.326847>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.252312, 31.968517, 46.548309> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.444317, 31.636488, 46.434772>,  <35.559521, 31.437269, 46.366650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.444317, 31.636488, 46.434772>,  <35.252312, 31.968517, 46.548309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.444317, 31.636488, 46.434772> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462759, 0.514461, -0.721930,
		0.745280, 0.215186, 0.631072,
		0.480011, -0.830075, -0.283839,
		35.588322, 31.387465, 46.349621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.921806, 32.277695, 46.482792>,  <35.252312, 31.968517, 46.548309>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.921806, 32.277695, 46.482792> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.913578, 31.935114, 46.276463>,  <35.908642, 31.729567, 46.152664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.913578, 31.935114, 46.276463>,  <35.921806, 32.277695, 46.482792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.913578, 31.935114, 46.276463> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505958, 0.436070, -0.744211,
		0.862313, -0.276290, 0.424359,
		-0.020568, -0.856450, -0.515819,
		35.907406, 31.678179, 46.121716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.603123, 32.075382, 46.300880>,  <35.921806, 32.277695, 46.482792>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.603123, 32.075382, 46.300880> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.338120, 31.900808, 46.057373>,  <36.179115, 31.796064, 45.911266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.338120, 31.900808, 46.057373>,  <36.603123, 32.075382, 46.300880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.338120, 31.900808, 46.057373> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496384, 0.352846, -0.793160,
		0.560967, -0.827661, -0.017124,
		-0.662509, -0.436437, -0.608773,
		36.139366, 31.769878, 45.874741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.998848, 31.732313, 45.775295>,  <36.603123, 32.075382, 46.300880>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.998848, 31.732313, 45.775295> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.630383, 31.759848, 45.622078>,  <36.409302, 31.776369, 45.530148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.630383, 31.759848, 45.622078>,  <36.998848, 31.732313, 45.775295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.630383, 31.759848, 45.622078> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388716, 0.210657, -0.896952,
		0.018945, -0.975133, -0.220808,
		-0.921163, 0.068839, -0.383041,
		36.354034, 31.780499, 45.507164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.045944, 31.414955, 45.146355>,  <36.998848, 31.732313, 45.775295>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.045944, 31.414955, 45.146355> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.743309, 31.676512, 45.145287>,  <36.561729, 31.833447, 45.144646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.743309, 31.676512, 45.145287>,  <37.045944, 31.414955, 45.146355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.743309, 31.676512, 45.145287> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328810, 0.376910, -0.865923,
		-0.565213, -0.656021, -0.500170,
		-0.756583, 0.653892, -0.002671,
		36.516335, 31.872679, 45.144485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.987957, 31.594078, 44.498516>,  <37.045944, 31.414955, 45.146355>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.987957, 31.594078, 44.498516> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.723530, 31.866194, 44.625134>,  <36.564873, 32.029465, 44.701103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.723530, 31.866194, 44.625134>,  <36.987957, 31.594078, 44.498516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.723530, 31.866194, 44.625134> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061700, 0.469730, -0.880651,
		-0.747788, -0.562637, -0.352496,
		-0.661065, 0.680289, 0.316544,
		36.525211, 32.070282, 44.720097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.463734, 31.721525, 44.030117>,  <36.987957, 31.594078, 44.498516>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.463734, 31.721525, 44.030117> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.435757, 32.064686, 44.233730>,  <36.418972, 32.270580, 44.355900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.435757, 32.064686, 44.233730>,  <36.463734, 31.721525, 44.030117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.435757, 32.064686, 44.233730> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114944, 0.499954, -0.858390,
		-0.990907, -0.118545, 0.063645,
		-0.069938, 0.857901, 0.509034,
		36.414776, 32.322056, 44.386440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.918221, 32.110668, 43.660923>,  <36.463734, 31.721525, 44.030117>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.918221, 32.110668, 43.660923> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.144917, 32.384792, 43.843857>,  <36.280933, 32.549267, 43.953617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.144917, 32.384792, 43.843857>,  <35.918221, 32.110668, 43.660923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.144917, 32.384792, 43.843857> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133958, 0.471056, -0.871872,
		-0.812936, 0.555386, 0.175162,
		0.566737, 0.685312, 0.457337,
		36.314938, 32.590385, 43.981056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.662910, 32.748642, 43.482552>,  <35.918221, 32.110668, 43.660923>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.662910, 32.748642, 43.482552> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.022259, 32.844757, 43.629623>,  <36.237869, 32.902428, 43.717865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.022259, 32.844757, 43.629623>,  <35.662910, 32.748642, 43.482552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.022259, 32.844757, 43.629623> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118838, 0.672897, -0.730128,
		-0.422854, 0.699621, 0.575956,
		0.898372, 0.240292, 0.367679,
		36.291771, 32.916843, 43.739925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.720612, 33.532394, 43.688347>,  <35.662910, 32.748642, 43.482552>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.720612, 33.532394, 43.688347> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.083206, 33.383060, 43.609440>,  <36.300762, 33.293461, 43.562096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.083206, 33.383060, 43.609440>,  <35.720612, 33.532394, 43.688347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.083206, 33.383060, 43.609440> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169008, 0.748927, -0.640738,
		0.386943, 0.547479, 0.741985,
		0.906483, -0.373330, -0.197263,
		36.355152, 33.271061, 43.550262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.106403, 34.155758, 43.473064>,  <35.720612, 33.532394, 43.688347>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.106403, 34.155758, 43.473064> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.352528, 33.870216, 43.339314>,  <36.500202, 33.698891, 43.259064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.352528, 33.870216, 43.339314>,  <36.106403, 34.155758, 43.473064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.352528, 33.870216, 43.339314> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371924, 0.636898, -0.675303,
		0.695030, 0.291159, 0.657388,
		0.615310, -0.713854, -0.334374,
		36.537121, 33.656059, 43.239002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.716339, 34.453529, 43.331795>,  <36.106403, 34.155758, 43.473064>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.716339, 34.453529, 43.331795> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.713787, 34.130844, 43.095432>,  <36.712257, 33.937233, 42.953613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.713787, 34.130844, 43.095432>,  <36.716339, 34.453529, 43.331795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.713787, 34.130844, 43.095432> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374650, 0.545949, -0.749384,
		0.927144, -0.226164, 0.298753,
		-0.006380, -0.806715, -0.590906,
		36.711872, 33.888828, 42.918159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<24.859253, 28.278717, 35.075432> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.021523, 28.281855, 35.441025>,  <25.118885, 28.283737, 35.660381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.021523, 28.281855, 35.441025>,  <24.859253, 28.278717, 35.075432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.021523, 28.281855, 35.441025> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096936, 0.993954, -0.051554,
		-0.908863, 0.109513, 0.402461,
		0.405673, 0.007843, 0.913984,
		25.143225, 28.284208, 35.715221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.457933, 28.744373, 35.483963>,  <24.859253, 28.278717, 35.075432>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.457933, 28.744373, 35.483963> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.835335, 28.704554, 35.610386>,  <25.061775, 28.680662, 35.686241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.835335, 28.704554, 35.610386>,  <24.457933, 28.744373, 35.483963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.835335, 28.704554, 35.610386> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124612, 0.990387, -0.060044,
		-0.307045, 0.096037, 0.946837,
		0.943502, -0.099551, 0.316061,
		25.118385, 28.674688, 35.705204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.608992, 29.325109, 35.921677>,  <24.457933, 28.744373, 35.483963>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.608992, 29.325109, 35.921677> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.975752, 29.209944, 35.811115>,  <25.195808, 29.140844, 35.744778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.975752, 29.209944, 35.811115>,  <24.608992, 29.325109, 35.921677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.975752, 29.209944, 35.811115> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256016, 0.955570, -0.146086,
		0.306182, 0.063183, 0.949874,
		0.916902, -0.287912, -0.276402,
		25.250822, 29.123569, 35.728195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.059875, 29.762770, 36.273571>,  <24.608992, 29.325109, 35.921677>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.059875, 29.762770, 36.273571> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.271080, 29.635229, 35.958729>,  <25.397804, 29.558704, 35.769825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.271080, 29.635229, 35.958729>,  <25.059875, 29.762770, 36.273571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.271080, 29.635229, 35.958729> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230024, 0.945891, -0.228864,
		0.817490, -0.060210, 0.572787,
		0.528014, -0.318849, -0.787106,
		25.429483, 29.539574, 35.722595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.712917, 30.088541, 36.309113>,  <25.059875, 29.762770, 36.273571>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.712917, 30.088541, 36.309113> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.719261, 29.966873, 35.928120>,  <25.723066, 29.893871, 35.699524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.719261, 29.966873, 35.928120>,  <25.712917, 30.088541, 36.309113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.719261, 29.966873, 35.928120> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483245, 0.836291, -0.259020,
		0.875342, -0.456176, 0.160250,
		0.015857, -0.304171, -0.952486,
		25.724018, 29.875622, 35.642372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.261024, 30.381504, 36.098301>,  <25.712917, 30.088541, 36.309113>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.261024, 30.381504, 36.098301> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.075977, 30.308060, 35.751366>,  <25.964949, 30.263992, 35.543205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.075977, 30.308060, 35.751366>,  <26.261024, 30.381504, 36.098301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.075977, 30.308060, 35.751366> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393984, 0.833828, -0.386662,
		0.794205, -0.520593, -0.313403,
		-0.462618, -0.183613, -0.867336,
		25.937191, 30.252975, 35.491165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.729008, 30.589714, 35.684193>,  <26.261024, 30.381504, 36.098301>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.729008, 30.589714, 35.684193> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.404247, 30.595097, 35.450737>,  <26.209391, 30.598326, 35.310661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.404247, 30.595097, 35.450737>,  <26.729008, 30.589714, 35.684193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.404247, 30.595097, 35.450737> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282535, 0.883913, -0.372655,
		0.510876, -0.467458, -0.721449,
		-0.811899, 0.013455, -0.583643,
		26.160677, 30.599133, 35.275642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.976274, 30.813387, 34.982033>,  <26.729008, 30.589714, 35.684193>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.976274, 30.813387, 34.982033> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.589911, 30.905567, 35.029213>,  <26.358091, 30.960875, 35.057522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.589911, 30.905567, 35.029213>,  <26.976274, 30.813387, 34.982033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.589911, 30.905567, 35.029213> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186401, 0.935270, -0.300873,
		-0.179649, -0.268631, -0.946342,
		-0.965909, 0.230451, 0.117947,
		26.300138, 30.974703, 35.064598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.773378, 31.235649, 34.370331>,  <26.976274, 30.813387, 34.982033>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.773378, 31.235649, 34.370331> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.471817, 31.316151, 34.620491>,  <26.290880, 31.364452, 34.770588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.471817, 31.316151, 34.620491>,  <26.773378, 31.235649, 34.370331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.471817, 31.316151, 34.620491> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075037, 0.972073, -0.222357,
		-0.652688, -0.120707, -0.747950,
		-0.753902, 0.201254, 0.625403,
		26.245646, 31.376526, 34.808113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.460102, 31.786541, 34.016479>,  <26.773378, 31.235649, 34.370331>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.460102, 31.786541, 34.016479> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.314116, 31.811745, 34.388035>,  <26.226522, 31.826868, 34.610966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.314116, 31.811745, 34.388035>,  <26.460102, 31.786541, 34.016479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.314116, 31.811745, 34.388035> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021803, 0.998012, -0.059134,
		-0.930765, -0.001329, -0.365617,
		-0.364968, 0.063011, 0.928885,
		26.204624, 31.830648, 34.666702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.964582, 32.304695, 33.925850>,  <26.460102, 31.786541, 34.016479>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.964582, 32.304695, 33.925850> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.029982, 32.293282, 34.320301>,  <26.069221, 32.286434, 34.556973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.029982, 32.293282, 34.320301>,  <25.964582, 32.304695, 33.925850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.029982, 32.293282, 34.320301> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059238, 0.998062, 0.019053,
		-0.984763, 0.055302, 0.164871,
		0.163498, -0.028529, 0.986131,
		26.079031, 32.284721, 34.616142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.619810, 32.905174, 34.191833>,  <25.964582, 32.304695, 33.925850>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.619810, 32.905174, 34.191833> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.899420, 32.785896, 34.451817>,  <26.067184, 32.714329, 34.607807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.899420, 32.785896, 34.451817>,  <25.619810, 32.905174, 34.191833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.899420, 32.785896, 34.451817> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246602, 0.953674, 0.172317,
		-0.671234, 0.039828, 0.740175,
		0.699023, -0.298193, 0.649960,
		26.109127, 32.696438, 34.646805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.625082, 33.460960, 34.791481>,  <25.619810, 32.905174, 34.191833>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.625082, 33.460960, 34.791481> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.973019, 33.272881, 34.851200>,  <26.181782, 33.160034, 34.887032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.973019, 33.272881, 34.851200>,  <25.625082, 33.460960, 34.791481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.973019, 33.272881, 34.851200> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447438, 0.879395, 0.162674,
		-0.207776, -0.074701, 0.975320,
		0.869844, -0.470195, 0.149293,
		26.233973, 33.131821, 34.895988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.830666, 33.694561, 35.476852>,  <25.625082, 33.460960, 34.791481>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.830666, 33.694561, 35.476852> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.142406, 33.569588, 35.259598>,  <26.329451, 33.494602, 35.129246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.142406, 33.569588, 35.259598>,  <25.830666, 33.694561, 35.476852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.142406, 33.569588, 35.259598> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461321, 0.872697, 0.159944,
		0.424023, -0.375213, 0.824269,
		0.779351, -0.312433, -0.543137,
		26.376211, 33.475857, 35.096657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.355185, 33.968102, 35.925838>,  <25.830666, 33.694561, 35.476852>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.355185, 33.968102, 35.925838> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.512955, 33.886570, 35.567425>,  <26.607616, 33.837650, 35.352375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.512955, 33.886570, 35.567425>,  <26.355185, 33.968102, 35.925838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.512955, 33.886570, 35.567425> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631341, 0.768625, 0.103066,
		0.667710, -0.606357, 0.431850,
		0.394425, -0.203827, -0.896037,
		26.631283, 33.825420, 35.298615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.019381, 33.810406, 36.019012>,  <26.355185, 33.968102, 35.925838>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.019381, 33.810406, 36.019012> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.995754, 33.921272, 35.635410>,  <26.981579, 33.987793, 35.405251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.995754, 33.921272, 35.635410>,  <27.019381, 33.810406, 36.019012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.995754, 33.921272, 35.635410> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607607, 0.772209, 0.185760,
		0.792039, -0.571725, -0.214020,
		-0.059065, 0.277169, -0.959004,
		26.978035, 34.004421, 35.347710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.712294, 33.730019, 35.825008>,  <27.019381, 33.810406, 36.019012>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.712294, 33.730019, 35.825008> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.510944, 33.985386, 35.592102>,  <27.390135, 34.138607, 35.452358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.510944, 33.985386, 35.592102>,  <27.712294, 33.730019, 35.825008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.510944, 33.985386, 35.592102> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744999, 0.662029, 0.081814,
		0.437711, -0.392608, -0.808869,
		-0.503374, 0.638417, -0.582270,
		27.359932, 34.176910, 35.417419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.240942, 33.969944, 35.235493>,  <27.712294, 33.730019, 35.825008>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.240942, 33.969944, 35.235493> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.962234, 34.255772, 35.260475>,  <27.795010, 34.427269, 35.275467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.962234, 34.255772, 35.260475>,  <28.240942, 33.969944, 35.235493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.962234, 34.255772, 35.260475> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716825, 0.690519, 0.096674,
		0.025952, 0.112131, -0.993355,
		-0.696770, 0.714570, 0.062458,
		27.753204, 34.470142, 35.279213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.447220, 34.503460, 34.720104>,  <28.240942, 33.969944, 35.235493>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.447220, 34.503460, 34.720104> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.195169, 34.699631, 34.960911>,  <28.043940, 34.817333, 35.105396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.195169, 34.699631, 34.960911>,  <28.447220, 34.503460, 34.720104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.195169, 34.699631, 34.960911> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611083, 0.791549, -0.005209,
		-0.479081, 0.364601, -0.798466,
		-0.630126, 0.490424, 0.602018,
		28.006132, 34.846760, 35.141518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.673815, 34.742664, 34.170795>,  <28.447220, 34.503460, 34.720104>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.673815, 34.742664, 34.170795> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.052822, 34.745651, 34.042953>,  <29.280228, 34.747444, 33.966248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.052822, 34.745651, 34.042953>,  <28.673815, 34.742664, 34.170795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.052822, 34.745651, 34.042953> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105533, -0.950995, 0.290640,
		-0.301776, -0.309116, -0.901875,
		0.947520, 0.007470, -0.319609,
		29.337078, 34.747890, 33.947071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.740358, 34.133015, 33.849590>,  <28.673815, 34.742664, 34.170795>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.740358, 34.133015, 33.849590> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.108549, 34.255390, 33.946854>,  <29.329464, 34.328815, 34.005211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.108549, 34.255390, 33.946854>,  <28.740358, 34.133015, 33.849590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.108549, 34.255390, 33.946854> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197176, -0.900779, 0.386936,
		0.337409, -0.308221, -0.889469,
		0.920477, 0.305937, 0.243157,
		29.384691, 34.347172, 34.019802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.179651, 33.649075, 33.598488>,  <28.740358, 34.133015, 33.849590>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.179651, 33.649075, 33.598488> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.379156, 33.810432, 33.905346>,  <29.498859, 33.907249, 34.089458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.379156, 33.810432, 33.905346>,  <29.179651, 33.649075, 33.598488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.379156, 33.810432, 33.905346> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058797, -0.898798, 0.434402,
		0.864743, -0.171557, -0.472004,
		0.498760, 0.403399, 0.767142,
		29.528784, 33.931454, 34.135490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.789026, 33.187153, 33.659863>,  <29.179651, 33.649075, 33.598488>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.789026, 33.187153, 33.659863> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.741247, 33.388184, 34.002357>,  <29.712580, 33.508804, 34.207855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.741247, 33.388184, 34.002357>,  <29.789026, 33.187153, 33.659863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.741247, 33.388184, 34.002357> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276746, -0.811378, 0.514856,
		0.953491, 0.298458, -0.042172,
		-0.119446, 0.502581, 0.856239,
		29.705414, 33.538960, 34.259228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.383984, 33.000721, 34.081276>,  <29.789026, 33.187153, 33.659863>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.383984, 33.000721, 34.081276> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.098127, 33.113087, 34.337517>,  <29.926613, 33.180508, 34.491261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.098127, 33.113087, 34.337517>,  <30.383984, 33.000721, 34.081276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.098127, 33.113087, 34.337517> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186914, -0.805823, 0.561883,
		0.674055, 0.521283, 0.523368,
		-0.714642, 0.280915, 0.640604,
		29.883736, 33.197361, 34.529697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.616982, 33.037712, 34.769527>,  <30.383984, 33.000721, 34.081276>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.616982, 33.037712, 34.769527> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.225636, 32.955189, 34.763405>,  <29.990828, 32.905674, 34.759731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.225636, 32.955189, 34.763405>,  <30.616982, 33.037712, 34.769527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.225636, 32.955189, 34.763405> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169022, -0.839817, 0.515887,
		-0.119287, 0.502139, 0.856520,
		-0.978367, -0.206309, -0.015306,
		29.932125, 32.893295, 34.758812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.607904, 32.568443, 35.233646>,  <30.616982, 33.037712, 34.769527>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.607904, 32.568443, 35.233646> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.227625, 32.547138, 35.111443>,  <29.999456, 32.534355, 35.038120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.227625, 32.547138, 35.111443>,  <30.607904, 32.568443, 35.233646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.227625, 32.547138, 35.111443> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077062, -0.913668, 0.399089,
		-0.300390, 0.402956, 0.864519,
		-0.950698, -0.053261, -0.305510,
		29.942415, 32.531158, 35.019791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.300100, 32.184242, 35.738029>,  <30.607904, 32.568443, 35.233646>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.300100, 32.184242, 35.738029> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.049601, 32.136406, 35.429871>,  <29.899302, 32.107704, 35.244976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.049601, 32.136406, 35.429871>,  <30.300100, 32.184242, 35.738029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.049601, 32.136406, 35.429871> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070884, -0.975338, 0.209023,
		-0.776393, 0.185509, 0.602329,
		-0.626250, -0.119588, -0.770396,
		29.861725, 32.100529, 35.198753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.016378, 31.697010, 36.123760>,  <30.300100, 32.184242, 35.738029>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.016378, 31.697010, 36.123760> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.890608, 31.670256, 35.744991>,  <29.815145, 31.654203, 35.517731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.890608, 31.670256, 35.744991>,  <30.016378, 31.697010, 36.123760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.890608, 31.670256, 35.744991> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224889, -0.963870, 0.142760,
		-0.922258, 0.257840, 0.288026,
		-0.314428, -0.066887, -0.946922,
		29.796280, 31.650190, 35.460915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.338053, 31.434793, 36.178741>,  <30.016378, 31.697010, 36.123760>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.338053, 31.434793, 36.178741> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.449305, 31.351627, 35.803635>,  <29.516056, 31.301727, 35.578571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.449305, 31.351627, 35.803635>,  <29.338053, 31.434793, 36.178741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.449305, 31.351627, 35.803635> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226544, -0.962950, 0.146307,
		-0.933446, 0.171754, -0.314927,
		0.278131, -0.207915, -0.937771,
		29.532743, 31.289253, 35.522305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.789007, 31.106487, 35.952908>,  <29.338053, 31.434793, 36.178741>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.789007, 31.106487, 35.952908> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.095892, 30.993031, 35.722801>,  <29.280022, 30.924955, 35.584736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.095892, 30.993031, 35.722801>,  <28.789007, 31.106487, 35.952908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.095892, 30.993031, 35.722801> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298593, -0.951733, 0.071043,
		-0.567653, 0.117266, -0.814873,
		0.767210, -0.283644, -0.575269,
		29.326056, 30.907938, 35.550220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.496126, 30.722061, 35.457104>,  <28.789007, 31.106487, 35.952908>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.496126, 30.722061, 35.457104> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.881741, 30.621710, 35.492195>,  <29.113110, 30.561499, 35.513252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.881741, 30.621710, 35.492195>,  <28.496126, 30.722061, 35.457104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.881741, 30.621710, 35.492195> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250024, -0.968016, -0.020794,
		0.090143, -0.001889, -0.995927,
		0.964034, -0.250880, 0.087732,
		29.170952, 30.546446, 35.518517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.557432, 30.131971, 35.056667>,  <28.496126, 30.722061, 35.457104>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.557432, 30.131971, 35.056667> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.905338, 30.099478, 35.251362>,  <29.114082, 30.079981, 35.368179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.905338, 30.099478, 35.251362>,  <28.557432, 30.131971, 35.056667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.905338, 30.099478, 35.251362> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214067, -0.950827, 0.223837,
		0.444614, -0.298879, -0.844387,
		0.869766, -0.081234, 0.486732,
		29.166267, 30.075108, 35.397381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.836336, 29.425068, 34.827118>,  <28.557432, 30.131971, 35.056667>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.836336, 29.425068, 34.827118> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.968481, 29.568777, 35.176239>,  <29.047768, 29.655003, 35.385712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.968481, 29.568777, 35.176239>,  <28.836336, 29.425068, 34.827118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.968481, 29.568777, 35.176239> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277359, -0.846941, 0.453611,
		0.902182, -0.391936, -0.180151,
		0.330363, 0.359273, 0.872802,
		29.067591, 29.676559, 35.438080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.023487, 28.918957, 35.132431>,  <28.836336, 29.425068, 34.827118>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.023487, 28.918957, 35.132431> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.045835, 29.143187, 35.462917>,  <29.059244, 29.277725, 35.661209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.045835, 29.143187, 35.462917>,  <29.023487, 28.918957, 35.132431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.045835, 29.143187, 35.462917> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238248, -0.796120, 0.556265,
		0.969596, -0.227922, 0.089077,
		0.055870, 0.560575, 0.826217,
		29.062597, 29.311359, 35.710781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.537304, 28.685019, 35.402523>,  <29.023487, 28.918957, 35.132431>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.537304, 28.685019, 35.402523> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.282377, 28.830429, 35.674309>,  <29.129421, 28.917675, 35.837379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.282377, 28.830429, 35.674309>,  <29.537304, 28.685019, 35.402523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.282377, 28.830429, 35.674309> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063828, -0.903610, 0.423575,
		0.767955, 0.226582, 0.599088,
		-0.637316, 0.363525, 0.679469,
		29.091183, 28.939486, 35.878151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.566767, 28.265167, 36.016228>,  <29.537304, 28.685019, 35.402523>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.566767, 28.265167, 36.016228> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.235741, 28.466402, 36.115860>,  <29.037125, 28.587143, 36.175640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.235741, 28.466402, 36.115860>,  <29.566767, 28.265167, 36.016228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.235741, 28.466402, 36.115860> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283495, -0.757493, 0.588077,
		0.484529, 0.416060, 0.769497,
		-0.827564, 0.503089, 0.249076,
		28.987471, 28.617329, 36.190582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.474283, 28.365429, 36.815403>,  <29.566767, 28.265167, 36.016228>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.474283, 28.365429, 36.815403> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.110720, 28.394781, 36.651207>,  <28.892582, 28.412394, 36.552689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.110720, 28.394781, 36.651207>,  <29.474283, 28.365429, 36.815403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.110720, 28.394781, 36.651207> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356335, -0.647987, 0.673155,
		-0.216595, 0.758108, 0.615109,
		-0.908907, 0.073383, -0.410491,
		28.838047, 28.416796, 36.528061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.123281, 28.407146, 37.387466>,  <29.474283, 28.365429, 36.815403>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.123281, 28.407146, 37.387466> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.853781, 28.314945, 37.106632>,  <28.692081, 28.259624, 36.938129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.853781, 28.314945, 37.106632>,  <29.123281, 28.407146, 37.387466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.853781, 28.314945, 37.106632> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428767, -0.651874, 0.625476,
		-0.601847, 0.722447, 0.340369,
		-0.673750, -0.230502, -0.702089,
		28.651655, 28.245794, 36.896004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.570028, 28.284266, 37.787209>,  <29.123281, 28.407146, 37.387466>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.570028, 28.284266, 37.787209> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.458084, 28.142099, 37.430477>,  <28.390917, 28.056801, 37.216438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.458084, 28.142099, 37.430477>,  <28.570028, 28.284266, 37.787209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.458084, 28.142099, 37.430477> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465908, -0.761944, 0.449856,
		-0.839409, 0.541407, 0.047649,
		-0.279861, -0.355414, -0.891829,
		28.374126, 28.035475, 37.162930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.861494, 28.215919, 37.821861>,  <28.570028, 28.284266, 37.787209>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.861494, 28.215919, 37.821861> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.995579, 27.965183, 37.540520>,  <28.076029, 27.814741, 37.371716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.995579, 27.965183, 37.540520>,  <27.861494, 28.215919, 37.821861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.995579, 27.965183, 37.540520> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517551, -0.746332, 0.418484,
		-0.787257, 0.223740, -0.574601,
		0.335211, -0.626840, -0.703353,
		28.096142, 27.777132, 37.329514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.282751, 27.862648, 37.529140>,  <27.861494, 28.215919, 37.821861>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.282751, 27.862648, 37.529140> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.614576, 27.646465, 37.472954>,  <27.813671, 27.516756, 37.439243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.614576, 27.646465, 37.472954>,  <27.282751, 27.862648, 37.529140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.614576, 27.646465, 37.472954> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449733, -0.795732, 0.405649,
		-0.331008, -0.273340, -0.903172,
		0.829562, -0.540459, -0.140464,
		27.863445, 27.484327, 37.430813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.044916, 27.282463, 37.211597>,  <27.282751, 27.862648, 37.529140>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.044916, 27.282463, 37.211597> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.386793, 27.193115, 37.399048>,  <27.591919, 27.139507, 37.511517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.386793, 27.193115, 37.399048>,  <27.044916, 27.282463, 37.211597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.386793, 27.193115, 37.399048> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412918, -0.839624, 0.352887,
		0.314648, -0.495114, -0.809851,
		0.854690, -0.223368, 0.468627,
		27.643200, 27.126104, 37.539635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.857010, 28.369347, 45.933086> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.513237, 28.204893, 45.811535>,  <37.306973, 28.106220, 45.738602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.513237, 28.204893, 45.811535>,  <37.857010, 28.369347, 45.933086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.513237, 28.204893, 45.811535> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300736, -0.074124, 0.950823,
		-0.413442, 0.908556, -0.059939,
		-0.859432, -0.411135, -0.303881,
		37.255405, 28.081553, 45.720371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.424152, 28.628616, 46.396030>,  <37.857010, 28.369347, 45.933086>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.424152, 28.628616, 46.396030> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.242069, 28.318626, 46.220669>,  <37.132820, 28.132631, 46.115452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.242069, 28.318626, 46.220669>,  <37.424152, 28.628616, 46.396030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.242069, 28.318626, 46.220669> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388380, -0.270247, 0.880981,
		-0.801217, 0.571295, -0.177967,
		-0.455206, -0.774976, -0.438406,
		37.105507, 28.086134, 46.089146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.622047, 28.667723, 46.583549>,  <37.424152, 28.628616, 46.396030>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.622047, 28.667723, 46.583549> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.743610, 28.303207, 46.472416>,  <36.816547, 28.084497, 46.405735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.743610, 28.303207, 46.472416>,  <36.622047, 28.667723, 46.583549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.743610, 28.303207, 46.472416> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330991, -0.374459, 0.866156,
		-0.893357, -0.171268, -0.415428,
		0.303905, -0.911289, -0.277837,
		36.834782, 28.029821, 46.389065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.971294, 28.245274, 46.682854>,  <36.622047, 28.667723, 46.583549>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.971294, 28.245274, 46.682854> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.302032, 28.020826, 46.667538>,  <36.500477, 27.886158, 46.658348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.302032, 28.020826, 46.667538>,  <35.971294, 28.245274, 46.682854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.302032, 28.020826, 46.667538> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351959, -0.569330, 0.742959,
		-0.438688, -0.600839, -0.668241,
		0.826848, -0.561121, -0.038287,
		36.550087, 27.852489, 46.656052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.626328, 27.515371, 46.780685>,  <35.971294, 28.245274, 46.682854>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.626328, 27.515371, 46.780685> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.018269, 27.464836, 46.842548>,  <36.253433, 27.434515, 46.879665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.018269, 27.464836, 46.842548>,  <35.626328, 27.515371, 46.780685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.018269, 27.464836, 46.842548> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197008, -0.484755, 0.852174,
		-0.032689, -0.865478, -0.499880,
		0.979856, -0.126337, 0.154660,
		36.312225, 27.426935, 46.888947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.691704, 26.815163, 46.949936>,  <35.626328, 27.515371, 46.780685>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.691704, 26.815163, 46.949936> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.019520, 26.987375, 47.101196>,  <36.216209, 27.090702, 47.191952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.019520, 26.987375, 47.101196>,  <35.691704, 26.815163, 46.949936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.019520, 26.987375, 47.101196> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127782, -0.505993, 0.853020,
		0.558592, -0.747405, -0.359668,
		0.819540, 0.430531, 0.378149,
		36.265381, 27.116535, 47.214642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.161621, 26.255648, 47.061756>,  <35.691704, 26.815163, 46.949936>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.161621, 26.255648, 47.061756> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.256317, 26.562157, 47.300678>,  <36.313137, 26.746061, 47.444031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.256317, 26.562157, 47.300678>,  <36.161621, 26.255648, 47.061756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.256317, 26.562157, 47.300678> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022503, -0.610297, 0.791853,
		0.971312, -0.200907, -0.127240,
		0.236743, 0.766273, 0.597309,
		36.327339, 26.792038, 47.479870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.654133, 25.991440, 47.696575>,  <36.161621, 26.255648, 47.061756>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.654133, 25.991440, 47.696575> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.515427, 26.348297, 47.812389>,  <36.432201, 26.562412, 47.881878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.515427, 26.348297, 47.812389>,  <36.654133, 25.991440, 47.696575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.515427, 26.348297, 47.812389> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024158, -0.317086, 0.948089,
		0.937640, 0.321771, 0.131508,
		-0.346767, 0.892143, 0.289539,
		36.411396, 26.615940, 47.899250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.978119, 26.088148, 48.400013>,  <36.654133, 25.991440, 47.696575>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.978119, 26.088148, 48.400013> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.681786, 26.356543, 48.387749>,  <36.503986, 26.517580, 48.380390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.681786, 26.356543, 48.387749>,  <36.978119, 26.088148, 48.400013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.681786, 26.356543, 48.387749> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216695, -0.195547, 0.956454,
		0.635773, 0.715219, 0.290267,
		-0.740835, 0.670987, -0.030661,
		36.459534, 26.557838, 48.378551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.008553, 26.519516, 49.001404>,  <36.978119, 26.088148, 48.400013>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.008553, 26.519516, 49.001404> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.630821, 26.550356, 48.873463>,  <36.404182, 26.568861, 48.796700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.630821, 26.550356, 48.873463>,  <37.008553, 26.519516, 49.001404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.630821, 26.550356, 48.873463> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325701, -0.356665, 0.875619,
		-0.046568, 0.931045, 0.361920,
		-0.944325, 0.077101, -0.319851,
		36.347523, 26.573486, 48.777508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.681961, 27.013088, 49.475620>,  <37.008553, 26.519516, 49.001404>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.681961, 27.013088, 49.475620> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.417927, 26.769522, 49.299664>,  <36.259506, 26.623381, 49.194088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.417927, 26.769522, 49.299664>,  <36.681961, 27.013088, 49.475620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.417927, 26.769522, 49.299664> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382973, -0.230991, 0.894413,
		-0.646236, 0.758856, -0.080725,
		-0.660084, -0.608918, -0.439896,
		36.219902, 26.586847, 49.167694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.082306, 27.120016, 49.913837>,  <36.681961, 27.013088, 49.475620>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.082306, 27.120016, 49.913837> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.975422, 26.803488, 49.693871>,  <35.911289, 26.613571, 49.561890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.975422, 26.803488, 49.693871>,  <36.082306, 27.120016, 49.913837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.975422, 26.803488, 49.693871> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526612, -0.357999, 0.771049,
		-0.807018, 0.495625, -0.321058,
		-0.267213, -0.791323, -0.549914,
		35.895260, 26.566092, 49.528896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.389488, 26.999151, 50.006691>,  <36.082306, 27.120016, 49.913837>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.389488, 26.999151, 50.006691> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.549488, 26.641644, 49.925522>,  <35.645489, 26.427139, 49.876820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.549488, 26.641644, 49.925522>,  <35.389488, 26.999151, 50.006691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.549488, 26.641644, 49.925522> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298644, -0.336425, 0.893101,
		-0.866494, -0.296639, -0.401489,
		0.400000, -0.893769, -0.202921,
		35.669487, 26.373512, 49.864647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.812828, 26.536161, 50.107635>,  <35.389488, 26.999151, 50.006691>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.812828, 26.536161, 50.107635> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.175362, 26.376978, 50.164471>,  <35.392883, 26.281467, 50.198570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.175362, 26.376978, 50.164471>,  <34.812828, 26.536161, 50.107635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.175362, 26.376978, 50.164471> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326769, -0.446863, 0.832788,
		-0.267920, -0.801214, -0.535047,
		0.906334, -0.397957, 0.142089,
		35.447262, 26.257591, 50.207096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.098667, 26.320847, 50.264713>,  <34.812828, 26.536161, 50.107635>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.098667, 26.320847, 50.264713> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.807659, 26.570999, 50.377571>,  <33.633053, 26.721090, 50.445286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.807659, 26.570999, 50.377571>,  <34.098667, 26.320847, 50.264713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.807659, 26.570999, 50.377571> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441121, 0.741352, -0.505776,
		-0.525472, -0.243503, -0.815221,
		-0.727524, 0.625382, 0.282146,
		33.589401, 26.758614, 50.462215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.843716, 26.674313, 49.626072>,  <34.098667, 26.320847, 50.264713>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.843716, 26.674313, 49.626072> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.761593, 26.909929, 49.938705>,  <33.712318, 27.051300, 50.126286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.761593, 26.909929, 49.938705>,  <33.843716, 26.674313, 49.626072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.761593, 26.909929, 49.938705> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425058, 0.773015, -0.470928,
		-0.881576, 0.235536, -0.409081,
		-0.205305, 0.589042, 0.781588,
		33.700001, 27.086641, 50.173183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.652519, 27.237473, 49.300877>,  <33.843716, 26.674313, 49.626072>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.652519, 27.237473, 49.300877> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.732487, 27.349586, 49.676422>,  <33.780468, 27.416855, 49.901749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.732487, 27.349586, 49.676422>,  <33.652519, 27.237473, 49.300877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.732487, 27.349586, 49.676422> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400945, 0.850911, -0.339401,
		-0.894023, 0.444286, 0.057733,
		0.199917, 0.280284, 0.938868,
		33.792461, 27.433672, 49.958084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.280804, 27.889601, 49.351700>,  <33.652519, 27.237473, 49.300877>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.280804, 27.889601, 49.351700> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.577267, 27.862984, 49.618912>,  <33.755142, 27.847013, 49.779240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.577267, 27.862984, 49.618912>,  <33.280804, 27.889601, 49.351700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.577267, 27.862984, 49.618912> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371074, 0.869855, -0.325047,
		-0.559457, 0.488798, 0.669391,
		0.741155, -0.066544, 0.668027,
		33.799614, 27.843021, 49.819321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.310860, 28.506758, 49.787468>,  <33.280804, 27.889601, 49.351700>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.310860, 28.506758, 49.787468> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.674557, 28.341419, 49.807171>,  <33.892773, 28.242216, 49.818993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.674557, 28.341419, 49.807171>,  <33.310860, 28.506758, 49.787468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.674557, 28.341419, 49.807171> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414104, 0.886085, -0.208260,
		0.042436, 0.209757, 0.976832,
		0.909240, -0.413348, 0.049259,
		33.947330, 28.217415, 49.821949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.681496, 29.005442, 50.100639>,  <33.310860, 28.506758, 49.787468>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.681496, 29.005442, 50.100639> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.951382, 28.773190, 49.918377>,  <34.113316, 28.633839, 49.809017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.951382, 28.773190, 49.918377>,  <33.681496, 29.005442, 50.100639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.951382, 28.773190, 49.918377> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366909, 0.799538, -0.475518,
		0.640415, 0.153655, 0.752501,
		0.674719, -0.580629, -0.455659,
		34.153797, 28.599001, 49.781681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.247406, 29.430317, 50.037872>,  <33.681496, 29.005442, 50.100639>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.247406, 29.430317, 50.037872> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.323002, 29.132015, 49.782330>,  <34.368359, 28.953033, 49.629005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.323002, 29.132015, 49.782330>,  <34.247406, 29.430317, 50.037872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.323002, 29.132015, 49.782330> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332852, 0.660713, -0.672806,
		0.923846, -0.085489, 0.373095,
		0.188991, -0.745754, -0.638852,
		34.379700, 28.908289, 49.590675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.980881, 29.506495, 49.809761>,  <34.247406, 29.430317, 50.037872>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.980881, 29.506495, 49.809761> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.810913, 29.281580, 49.525993>,  <34.708931, 29.146631, 49.355732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.810913, 29.281580, 49.525993>,  <34.980881, 29.506495, 49.809761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.810913, 29.281580, 49.525993> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349246, 0.621182, -0.701541,
		0.835146, -0.545861, -0.067577,
		-0.424922, -0.562289, -0.709417,
		34.683437, 29.112894, 49.313168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.492393, 29.411100, 49.320496>,  <34.980881, 29.506495, 49.809761>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.492393, 29.411100, 49.320496> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.154156, 29.337349, 49.120106>,  <34.951214, 29.293098, 48.999870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.154156, 29.337349, 49.120106>,  <35.492393, 29.411100, 49.320496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.154156, 29.337349, 49.120106> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329314, 0.558440, -0.761379,
		0.420144, -0.808795, -0.411496,
		-0.845595, -0.184377, -0.500973,
		34.900478, 29.282036, 48.969814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.690556, 29.191170, 48.664192>,  <35.492393, 29.411100, 49.320496>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.690556, 29.191170, 48.664192> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.330666, 29.361429, 48.625595>,  <35.114731, 29.463585, 48.602436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.330666, 29.361429, 48.625595>,  <35.690556, 29.191170, 48.664192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.330666, 29.361429, 48.625595> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260902, 0.347304, -0.900728,
		-0.349883, -0.835585, -0.423532,
		-0.899729, 0.425650, -0.096490,
		35.060745, 29.489124, 48.596649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.683083, 29.250021, 48.002319>,  <35.690556, 29.191170, 48.664192>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.683083, 29.250021, 48.002319> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.365547, 29.481541, 48.076954>,  <35.175026, 29.620453, 48.121735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.365547, 29.481541, 48.076954>,  <35.683083, 29.250021, 48.002319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.365547, 29.481541, 48.076954> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138524, 0.470856, -0.871267,
		-0.592143, -0.665798, -0.453961,
		-0.793838, 0.578799, 0.186585,
		35.127396, 29.655180, 48.132931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.382431, 29.291248, 47.349865>,  <35.683083, 29.250021, 48.002319>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.382431, 29.291248, 47.349865> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.248512, 29.587736, 47.582592>,  <35.168163, 29.765629, 47.722229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.248512, 29.587736, 47.582592>,  <35.382431, 29.291248, 47.349865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.248512, 29.587736, 47.582592> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184309, 0.657031, -0.730986,
		-0.924091, -0.137495, -0.356582,
		-0.334792, 0.741219, 0.581815,
		35.148075, 29.810102, 47.757137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.955486, 29.546827, 46.872536>,  <35.382431, 29.291248, 47.349865>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.955486, 29.546827, 46.872536> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.015598, 29.837172, 47.141026>,  <35.051666, 30.011377, 47.302120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.015598, 29.837172, 47.141026>,  <34.955486, 29.546827, 46.872536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.015598, 29.837172, 47.141026> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307711, 0.610870, -0.729487,
		-0.939537, 0.316172, -0.131553,
		0.150282, 0.725860, 0.671224,
		35.060684, 30.054930, 47.342392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.493576, 30.136206, 46.748638>,  <34.955486, 29.546827, 46.872536>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.493576, 30.136206, 46.748638> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.823349, 30.272350, 46.929512>,  <35.021214, 30.354036, 47.038036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.823349, 30.272350, 46.929512>,  <34.493576, 30.136206, 46.748638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.823349, 30.272350, 46.929512> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146505, 0.643386, -0.751393,
		-0.546672, 0.685718, 0.480563,
		0.824431, 0.340361, 0.452182,
		35.070679, 30.374458, 47.065166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.940113, 30.676731, 46.900719>,  <34.493576, 30.136206, 46.748638>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.940113, 30.676731, 46.900719> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.591362, 30.854744, 46.818970>,  <33.382111, 30.961552, 46.769920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.591362, 30.854744, 46.818970>,  <33.940113, 30.676731, 46.900719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.591362, 30.854744, 46.818970> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337299, -0.243157, 0.909453,
		0.355041, 0.861870, 0.362113,
		-0.871880, 0.445034, -0.204377,
		33.329800, 30.988255, 46.757656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.843300, 31.047588, 47.499298>,  <33.940113, 30.676731, 46.900719>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.843300, 31.047588, 47.499298> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.479961, 31.025591, 47.333466>,  <33.261959, 31.012392, 47.233967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.479961, 31.025591, 47.333466>,  <33.843300, 31.047588, 47.499298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.479961, 31.025591, 47.333466> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405262, -0.129075, 0.905043,
		-0.103284, 0.990109, 0.094959,
		-0.908348, -0.054993, -0.414585,
		33.207458, 31.009092, 47.209091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.288467, 31.337973, 47.955257>,  <33.843300, 31.047588, 47.499298>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.288467, 31.337973, 47.955257> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.067028, 31.107023, 47.715199>,  <32.934166, 30.968452, 47.571163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.067028, 31.107023, 47.715199>,  <33.288467, 31.337973, 47.955257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.067028, 31.107023, 47.715199> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432921, -0.416096, 0.799653,
		-0.711416, 0.702498, -0.019610,
		-0.553594, -0.577375, -0.600143,
		32.900951, 30.933811, 47.535156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.681751, 31.433594, 48.194599>,  <33.288467, 31.337973, 47.955257>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.681751, 31.433594, 48.194599> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.647583, 31.089773, 47.993053>,  <32.627083, 30.883482, 47.872128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.647583, 31.089773, 47.993053>,  <32.681751, 31.433594, 48.194599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.647583, 31.089773, 47.993053> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296082, -0.460967, 0.836567,
		-0.951335, 0.220646, -0.215121,
		-0.085421, -0.859549, -0.503863,
		32.621956, 30.831909, 47.841896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.866856, 31.334263, 48.189178>,  <32.681751, 31.433594, 48.194599>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.866856, 31.334263, 48.189178> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.027721, 30.974957, 48.118324>,  <32.124241, 30.759373, 48.075813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.027721, 30.974957, 48.118324>,  <31.866856, 31.334263, 48.189178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.027721, 30.974957, 48.118324> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697866, -0.425985, 0.575777,
		-0.592659, -0.107941, -0.798188,
		0.402167, -0.898268, -0.177135,
		32.148373, 30.705477, 48.065182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.321722, 30.992224, 47.854145>,  <31.866856, 31.334263, 48.189178>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.321722, 30.992224, 47.854145> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.576199, 30.755796, 48.052498>,  <31.728884, 30.613939, 48.171509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.576199, 30.755796, 48.052498>,  <31.321722, 30.992224, 47.854145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.576199, 30.755796, 48.052498> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761369, -0.376986, 0.527446,
		-0.124817, -0.713105, -0.689857,
		0.636190, -0.591070, 0.495882,
		31.767056, 30.578476, 48.201263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.009758, 30.286161, 47.943218>,  <31.321722, 30.992224, 47.854145>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.009758, 30.286161, 47.943218> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.301342, 30.253452, 48.215080>,  <31.476292, 30.233828, 48.378197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.301342, 30.253452, 48.215080>,  <31.009758, 30.286161, 47.943218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.301342, 30.253452, 48.215080> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616748, -0.509279, 0.600215,
		0.297053, -0.856708, -0.421677,
		0.728959, -0.081773, 0.679655,
		31.520029, 30.228920, 48.418976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.667786, 29.824680, 47.490059>,  <31.009758, 30.286161, 47.943218>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.667786, 29.824680, 47.490059> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.431541, 29.549849, 47.320778>,  <30.289795, 29.384949, 47.219208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.431541, 29.549849, 47.320778>,  <30.667786, 29.824680, 47.490059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.431541, 29.549849, 47.320778> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072233, 0.567353, -0.820300,
		0.803719, -0.453907, -0.384713,
		-0.590608, -0.687080, -0.423205,
		30.254358, 29.343725, 47.193817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.970102, 29.632925, 46.915524>,  <30.667786, 29.824680, 47.490059>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.970102, 29.632925, 46.915524> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.574270, 29.576385, 46.904579>,  <30.336771, 29.542461, 46.898014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.574270, 29.576385, 46.904579>,  <30.970102, 29.632925, 46.915524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.574270, 29.576385, 46.904579> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050698, 0.519992, -0.852666,
		0.134750, -0.842395, -0.521740,
		-0.989582, -0.141347, -0.027361,
		30.277395, 29.533981, 46.896370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.807903, 29.496490, 46.190044>,  <30.970102, 29.632925, 46.915524>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.807903, 29.496490, 46.190044> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.446066, 29.581095, 46.338085>,  <30.228964, 29.631857, 46.426910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.446066, 29.581095, 46.338085>,  <30.807903, 29.496490, 46.190044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.446066, 29.581095, 46.338085> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276341, 0.370097, -0.886941,
		-0.324572, -0.904594, -0.276338,
		-0.904593, 0.211513, 0.370099,
		30.174688, 29.644548, 46.449116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.327002, 29.289446, 45.654156>,  <30.807903, 29.496490, 46.190044>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.327002, 29.289446, 45.654156> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.109407, 29.535614, 45.882309>,  <29.978851, 29.683315, 46.019199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.109407, 29.535614, 45.882309>,  <30.327002, 29.289446, 45.654156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.109407, 29.535614, 45.882309> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294418, 0.496552, -0.816550,
		-0.785745, -0.612125, -0.088927,
		-0.543987, 0.615418, 0.570384,
		29.946211, 29.720240, 46.053425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.732727, 29.380997, 45.381142>,  <30.327002, 29.289446, 45.654156>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.732727, 29.380997, 45.381142> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.787226, 29.717487, 45.590435>,  <29.819925, 29.919382, 45.716011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.787226, 29.717487, 45.590435>,  <29.732727, 29.380997, 45.381142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.787226, 29.717487, 45.590435> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374907, 0.532662, -0.758760,
		-0.916996, -0.092787, 0.387954,
		0.136245, 0.841226, 0.523235,
		29.828098, 29.969856, 45.747406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.023209, 29.794685, 45.367554>,  <29.732727, 29.380997, 45.381142>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.023209, 29.794685, 45.367554> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.336491, 30.033260, 45.437813>,  <29.524460, 30.176405, 45.479969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.336491, 30.033260, 45.437813>,  <29.023209, 29.794685, 45.367554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.336491, 30.033260, 45.437813> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402783, 0.701913, -0.587438,
		-0.473661, 0.389336, 0.789977,
		0.783206, 0.596435, 0.175652,
		29.571453, 30.212191, 45.490509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.725040, 30.350735, 45.278988>,  <29.023209, 29.794685, 45.367554>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.725040, 30.350735, 45.278988> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.112610, 30.449003, 45.267426>,  <29.345152, 30.507965, 45.260487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.112610, 30.449003, 45.267426>,  <28.725040, 30.350735, 45.278988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.112610, 30.449003, 45.267426> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205428, 0.734036, -0.647295,
		-0.137803, 0.633117, 0.761691,
		0.968922, 0.245672, -0.028907,
		29.403286, 30.522705, 45.258755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<33.342377, 24.404764, 48.188709> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.715614, 24.539747, 48.238445>,  <33.939556, 24.620737, 48.268288>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.715614, 24.539747, 48.238445>,  <33.342377, 24.404764, 48.188709>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.715614, 24.539747, 48.238445> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092379, 0.559033, -0.823983,
		-0.347568, 0.757367, 0.552803,
		0.933093, 0.337457, 0.124337,
		33.995541, 24.640984, 48.275745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.328659, 25.029545, 47.908813>,  <33.342377, 24.404764, 48.188709>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.328659, 25.029545, 47.908813> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.723629, 24.966343, 47.906998>,  <33.960613, 24.928421, 47.905907>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.723629, 24.966343, 47.906998>,  <33.328659, 25.029545, 47.908813>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.723629, 24.966343, 47.906998> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073728, 0.485804, -0.870953,
		0.139822, 0.859668, 0.491346,
		0.987428, -0.158005, -0.004544,
		34.019859, 24.918941, 47.905636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.611195, 25.620399, 47.745888>,  <33.328659, 25.029545, 47.908813>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.611195, 25.620399, 47.745888> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.913376, 25.380285, 47.640862>,  <34.094685, 25.236216, 47.577847>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.913376, 25.380285, 47.640862>,  <33.611195, 25.620399, 47.745888>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.913376, 25.380285, 47.640862> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226080, 0.614958, -0.755456,
		0.614958, 0.511353, 0.600287,
		0.755456, -0.600287, -0.262567,
		34.140015, 25.200199, 47.562092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.097889, 26.113642, 47.522449>,  <33.611195, 25.620399, 47.745888>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.097889, 26.113642, 47.522449> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.184074, 25.758394, 47.360058>,  <34.235786, 25.545246, 47.262623>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.184074, 25.758394, 47.360058>,  <34.097889, 26.113642, 47.522449>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.184074, 25.758394, 47.360058> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138953, 0.439397, -0.887481,
		0.966575, 0.134809, 0.218081,
		0.215464, -0.888120, -0.405978,
		34.248714, 25.491959, 47.238266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.564484, 26.291018, 47.013809>,  <34.097889, 26.113642, 47.522449>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.564484, 26.291018, 47.013809> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.533211, 25.905798, 46.910717>,  <34.514446, 25.674665, 46.848862>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.533211, 25.905798, 46.910717>,  <34.564484, 26.291018, 47.013809>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.533211, 25.905798, 46.910717> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061444, 0.253375, -0.965415,
		0.995044, -0.091318, 0.039363,
		-0.078186, -0.963048, -0.257730,
		34.509754, 25.616884, 46.833397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.109623, 26.162310, 46.577652>,  <34.564484, 26.291018, 47.013809>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.109623, 26.162310, 46.577652> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.841583, 25.890152, 46.458969>,  <34.680759, 25.726856, 46.387760>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.841583, 25.890152, 46.458969>,  <35.109623, 26.162310, 46.577652>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.841583, 25.890152, 46.458969> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193151, 0.226118, -0.954758,
		0.716704, -0.697088, -0.020102,
		-0.670096, -0.680396, -0.296703,
		34.640553, 25.686033, 46.369957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.415833, 25.662254, 46.123539>,  <35.109623, 26.162310, 46.577652>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.415833, 25.662254, 46.123539> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.029114, 25.633766, 46.025364>,  <34.797085, 25.616673, 45.966457>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.029114, 25.633766, 46.025364>,  <35.415833, 25.662254, 46.123539>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.029114, 25.633766, 46.025364> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222918, 0.234654, -0.946174,
		0.124979, -0.969467, -0.210985,
		-0.966793, -0.071220, -0.245439,
		34.739075, 25.612400, 45.951733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.394619, 25.328514, 45.471123>,  <35.415833, 25.662254, 46.123539>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.394619, 25.328514, 45.471123> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.021935, 25.473143, 45.484882>,  <34.798325, 25.559919, 45.493137>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.021935, 25.473143, 45.484882>,  <35.394619, 25.328514, 45.471123>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.021935, 25.473143, 45.484882> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058963, 0.244022, -0.967975,
		-0.358385, -0.899844, -0.248678,
		-0.931710, 0.361571, 0.034396,
		34.742420, 25.581614, 45.495201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.080914, 25.105093, 44.872810>,  <35.394619, 25.328514, 45.471123>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.080914, 25.105093, 44.872810> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.874908, 25.432974, 44.973087>,  <34.751305, 25.629702, 45.033253>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.874908, 25.432974, 44.973087>,  <35.080914, 25.105093, 44.872810>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.874908, 25.432974, 44.973087> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005743, 0.295758, -0.955246,
		-0.857162, -0.490526, -0.157028,
		-0.515015, 0.819702, 0.250695,
		34.720406, 25.678885, 45.048294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.498131, 25.087915, 44.371811>,  <35.080914, 25.105093, 44.872810>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.498131, 25.087915, 44.371811> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.556339, 25.458178, 44.511517>,  <34.591263, 25.680336, 44.595341>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.556339, 25.458178, 44.511517>,  <34.498131, 25.087915, 44.371811>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.556339, 25.458178, 44.511517> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065546, 0.361264, -0.930157,
		-0.987182, 0.112463, 0.113243,
		0.145519, 0.925657, 0.349262,
		34.599995, 25.735874, 44.616295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.097775, 25.515305, 43.986961>,  <34.498131, 25.087915, 44.371811>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.097775, 25.515305, 43.986961> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.346813, 25.774830, 44.161964>,  <34.496235, 25.930546, 44.266968>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.346813, 25.774830, 44.161964>,  <34.097775, 25.515305, 43.986961>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.346813, 25.774830, 44.161964> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014316, 0.568435, -0.822604,
		-0.782411, 0.505888, 0.363195,
		0.622598, 0.648814, 0.437508,
		34.533592, 25.969475, 44.293217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.834671, 26.155704, 43.767258>,  <34.097775, 25.515305, 43.986961>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.834671, 26.155704, 43.767258> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.215809, 26.207806, 43.876892>,  <34.444492, 26.239067, 43.942673>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.215809, 26.207806, 43.876892>,  <33.834671, 26.155704, 43.767258>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.215809, 26.207806, 43.876892> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173767, 0.506258, -0.844694,
		-0.248782, 0.852488, 0.459751,
		0.952844, 0.130255, 0.274082,
		34.501663, 26.246881, 43.959118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.346039, 26.673697, 44.125450>,  <33.834671, 26.155704, 43.767258>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.346039, 26.673697, 44.125450> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.946529, 26.656452, 44.115643>,  <32.706825, 26.646107, 44.109756>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.946529, 26.656452, 44.115643>,  <33.346039, 26.673697, 44.125450>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.946529, 26.656452, 44.115643> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003972, -0.423349, 0.905958,
		-0.049437, 0.904940, 0.422657,
		-0.998769, -0.043109, -0.024523,
		32.646900, 26.643518, 44.108284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.085930, 26.984266, 44.729939>,  <33.346039, 26.673697, 44.125450>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.085930, 26.984266, 44.729939> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.799789, 26.745092, 44.585300>,  <32.628105, 26.601587, 44.498516>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.799789, 26.745092, 44.585300>,  <33.085930, 26.984266, 44.729939>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.799789, 26.745092, 44.585300> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273036, -0.237155, 0.932314,
		-0.643218, 0.765657, 0.006390,
		-0.715348, -0.597936, -0.361595,
		32.585186, 26.565712, 44.476822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.373322, 27.162622, 45.028828>,  <33.085930, 26.984266, 44.729939>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.373322, 27.162622, 45.028828> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.354015, 26.790836, 44.882534>,  <32.342430, 26.567764, 44.794758>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.354015, 26.790836, 44.882534>,  <32.373322, 27.162622, 45.028828>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.354015, 26.790836, 44.882534> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516874, -0.290083, 0.805415,
		-0.854700, 0.227911, -0.466417,
		-0.048264, -0.929467, -0.365735,
		32.339535, 26.511997, 44.772812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.735485, 26.958736, 45.240559>,  <32.373322, 27.162622, 45.028828>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.735485, 26.958736, 45.240559> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.898899, 26.606701, 45.143780>,  <31.996948, 26.395479, 45.085712>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.898899, 26.606701, 45.143780>,  <31.735485, 26.958736, 45.240559>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.898899, 26.606701, 45.143780> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505921, -0.438977, 0.742525,
		-0.759698, -0.180942, -0.624595,
		0.408537, -0.880090, -0.241948,
		32.021461, 26.342674, 45.071194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.202291, 26.459476, 45.404819>,  <31.735485, 26.958736, 45.240559>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.202291, 26.459476, 45.404819> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.559238, 26.279125, 45.396931>,  <31.773407, 26.170914, 45.392197>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.559238, 26.279125, 45.396931>,  <31.202291, 26.459476, 45.404819>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.559238, 26.279125, 45.396931> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296509, -0.618668, 0.727552,
		-0.340240, -0.643396, -0.685769,
		0.892367, -0.450879, -0.019723,
		31.826948, 26.143862, 45.391014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.021015, 25.857489, 45.293430>,  <31.202291, 26.459476, 45.404819>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.021015, 25.857489, 45.293430> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.366083, 25.857466, 45.495735>,  <31.573124, 25.857452, 45.617119>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.366083, 25.857466, 45.495735>,  <31.021015, 25.857489, 45.293430>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.366083, 25.857466, 45.495735> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462282, -0.405755, 0.788453,
		0.205172, -0.913982, -0.350059,
		0.862670, -0.000058, 0.505767,
		31.624884, 25.857449, 45.647465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.165686, 25.241533, 45.544178>,  <31.021015, 25.857489, 45.293430>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.165686, 25.241533, 45.544178> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.383459, 25.475956, 45.784222>,  <31.514124, 25.616610, 45.928246>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.383459, 25.475956, 45.784222>,  <31.165686, 25.241533, 45.544178>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.383459, 25.475956, 45.784222> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399835, -0.447600, 0.799867,
		0.737375, -0.675418, -0.009363,
		0.544435, 0.586058, 0.600105,
		31.546789, 25.651773, 45.964252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.427792, 24.838715, 46.019459>,  <31.165686, 25.241533, 45.544178>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.427792, 24.838715, 46.019459> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.461796, 25.193745, 46.200558>,  <31.482199, 25.406763, 46.309219>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.461796, 25.193745, 46.200558>,  <31.427792, 24.838715, 46.019459>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.461796, 25.193745, 46.200558> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323357, -0.405227, 0.855121,
		0.942451, -0.219093, 0.252556,
		0.085009, 0.887575, 0.452752,
		31.487299, 25.460016, 46.336384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.557905, 24.594645, 46.683823>,  <31.427792, 24.838715, 46.019459>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.557905, 24.594645, 46.683823> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.529142, 24.990587, 46.732841>,  <31.511885, 25.228153, 46.762253>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.529142, 24.990587, 46.732841>,  <31.557905, 24.594645, 46.683823>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.529142, 24.990587, 46.732841> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233396, -0.136149, 0.962803,
		0.969720, 0.040629, 0.240818,
		-0.071905, 0.989855, 0.122543,
		31.507570, 25.287544, 46.769604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.980186, 24.743769, 47.266514>,  <31.557905, 24.594645, 46.683823>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.980186, 24.743769, 47.266514> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.705198, 25.030764, 47.221619>,  <31.540205, 25.202961, 47.194679>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.705198, 25.030764, 47.221619>,  <31.980186, 24.743769, 47.266514>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.705198, 25.030764, 47.221619> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269006, -0.108033, 0.957061,
		0.674552, 0.688144, 0.267277,
		-0.687471, 0.717486, -0.112241,
		31.498957, 25.246010, 47.187946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.117393, 25.372276, 47.769997>,  <31.980186, 24.743769, 47.266514>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.117393, 25.372276, 47.769997> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.726164, 25.431480, 47.711407>,  <31.491425, 25.467003, 47.676250>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.726164, 25.431480, 47.711407>,  <32.117393, 25.372276, 47.769997>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.726164, 25.431480, 47.711407> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130126, 0.114733, 0.984837,
		0.162573, 0.982308, -0.092957,
		-0.978078, 0.148012, -0.146477,
		31.432741, 25.475883, 47.667465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.869032, 25.951847, 48.195122>,  <32.117393, 25.372276, 47.769997>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.869032, 25.951847, 48.195122> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.547165, 25.732569, 48.103916>,  <31.354044, 25.601002, 48.049194>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.547165, 25.732569, 48.103916>,  <31.869032, 25.951847, 48.195122>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.547165, 25.732569, 48.103916> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302876, 0.048698, 0.951785,
		-0.510661, 0.834931, -0.205221,
		-0.804669, -0.548196, -0.228012,
		31.305765, 25.568110, 48.035511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.391521, 26.324572, 48.612507>,  <31.869032, 25.951847, 48.195122>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.391521, 26.324572, 48.612507> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.226286, 25.972820, 48.517803>,  <31.127144, 25.761770, 48.460983>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.226286, 25.972820, 48.517803>,  <31.391521, 26.324572, 48.612507>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.226286, 25.972820, 48.517803> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314214, -0.106384, 0.943373,
		-0.854767, 0.464090, -0.232366,
		-0.413089, -0.879377, -0.236757,
		31.102360, 25.709007, 48.446777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.708828, 26.450855, 48.915802>,  <31.391521, 26.324572, 48.612507>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.708828, 26.450855, 48.915802> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.779703, 26.058054, 48.889656>,  <30.822229, 25.822372, 48.873970>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.779703, 26.058054, 48.889656>,  <30.708828, 26.450855, 48.915802>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.779703, 26.058054, 48.889656> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091483, -0.049691, 0.994566,
		-0.979916, -0.182205, 0.081032,
		0.177189, -0.982004, -0.065362,
		30.832859, 25.763453, 48.870049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.087883, 26.506485, 48.395584>,  <30.708828, 26.450855, 48.915802>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.087883, 26.506485, 48.395584> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.038061, 26.743263, 48.714104>,  <30.008169, 26.885330, 48.905216>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.038061, 26.743263, 48.714104>,  <30.087883, 26.506485, 48.395584>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.038061, 26.743263, 48.714104> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012596, 0.803424, -0.595274,
		-0.992133, -0.064113, -0.107525,
		-0.124553, 0.591945, 0.796296,
		30.000696, 26.920847, 48.952991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.495405, 26.900494, 48.270302>,  <30.087883, 26.506485, 48.395584>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.495405, 26.900494, 48.270302> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.676073, 27.117783, 48.553402>,  <29.784473, 27.248156, 48.723263>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.676073, 27.117783, 48.553402>,  <29.495405, 26.900494, 48.270302>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.676073, 27.117783, 48.553402> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048281, 0.777227, -0.627366,
		-0.890879, 0.317532, 0.324821,
		0.451668, 0.543224, 0.707746,
		29.811573, 27.280750, 48.765724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.102995, 27.514215, 48.445694>,  <29.495405, 26.900494, 48.270302>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.102995, 27.514215, 48.445694> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.489042, 27.584455, 48.523373>,  <29.720671, 27.626598, 48.569981>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.489042, 27.584455, 48.523373>,  <29.102995, 27.514215, 48.445694>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.489042, 27.584455, 48.523373> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004189, 0.731283, -0.682062,
		-0.261782, 0.659084, 0.705038,
		0.965118, 0.175598, 0.194198,
		29.778578, 27.637135, 48.581631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.053619, 28.235399, 48.523399>,  <29.102995, 27.514215, 48.445694>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.053619, 28.235399, 48.523399> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.441547, 28.143581, 48.490524>,  <29.674305, 28.088491, 48.470798>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.441547, 28.143581, 48.490524>,  <29.053619, 28.235399, 48.523399>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.441547, 28.143581, 48.490524> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160270, 0.854222, -0.494589,
		0.183735, 0.466491, 0.865232,
		0.969822, -0.229544, -0.082186,
		29.732494, 28.074718, 48.465870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.347834, 28.823528, 48.630268>,  <29.053619, 28.235399, 48.523399>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.347834, 28.823528, 48.630268> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.640360, 28.620209, 48.448364>,  <29.815876, 28.498217, 48.339222>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.640360, 28.620209, 48.448364>,  <29.347834, 28.823528, 48.630268>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.640360, 28.620209, 48.448364> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264512, 0.825957, -0.497824,
		0.628659, 0.243775, 0.738486,
		0.731315, -0.508299, -0.454764,
		29.859755, 28.467718, 48.311935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.721386, 29.319462, 48.500847>,  <29.347834, 28.823528, 48.630268>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.721386, 29.319462, 48.500847> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.853542, 29.046427, 48.240105>,  <29.932837, 28.882605, 48.083660>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.853542, 29.046427, 48.240105>,  <29.721386, 29.319462, 48.500847>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.853542, 29.046427, 48.240105> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194082, 0.725011, -0.660826,
		0.923674, 0.091818, 0.372016,
		0.330392, -0.682589, -0.651854,
		29.952660, 28.841650, 48.044548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.196560, 29.718126, 48.158161>,  <29.721386, 29.319462, 48.500847>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.196560, 29.718126, 48.158161> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.132259, 29.420038, 47.899300>,  <30.093679, 29.241184, 47.743984>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.132259, 29.420038, 47.899300>,  <30.196560, 29.718126, 48.158161>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.132259, 29.420038, 47.899300> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262448, 0.599798, -0.755886,
		0.951462, -0.291352, 0.099164,
		-0.160750, -0.745222, -0.647150,
		30.084034, 29.196472, 47.705154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.981989, 29.572020, 48.207355>,  <30.196560, 29.718126, 48.158161>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.981989, 29.572020, 48.207355> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.227400, 29.741491, 48.473911>,  <31.374647, 29.843174, 48.633846>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.227400, 29.741491, 48.473911>,  <30.981989, 29.572020, 48.207355>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.227400, 29.741491, 48.473911> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477592, -0.472966, 0.740411,
		0.628878, -0.772527, -0.087833,
		0.613529, 0.423680, 0.666391,
		31.411459, 29.868595, 48.673828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.246870, 28.973295, 48.633751>,  <30.981989, 29.572020, 48.207355>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.246870, 28.973295, 48.633751> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.293955, 29.327681, 48.813179>,  <31.322206, 29.540312, 48.920834>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.293955, 29.327681, 48.813179>,  <31.246870, 28.973295, 48.633751>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.293955, 29.327681, 48.813179> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414606, -0.366606, 0.832887,
		0.902355, -0.284019, 0.324172,
		0.117712, 0.885964, 0.448566,
		31.329269, 29.593470, 48.947750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.445633, 28.748062, 49.377075>,  <31.246870, 28.973295, 48.633751>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.445633, 28.748062, 49.377075> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.339632, 29.133661, 49.385818>,  <31.276031, 29.365021, 49.391064>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.339632, 29.133661, 49.385818>,  <31.445633, 28.748062, 49.377075>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.339632, 29.133661, 49.385818> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419657, -0.135711, 0.897480,
		0.868137, 0.228664, 0.440513,
		-0.265004, 0.964000, 0.021855,
		31.260132, 29.422861, 49.392376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.735935, 29.028658, 49.979774>,  <31.445633, 28.748062, 49.377075>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.735935, 29.028658, 49.979774> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.408022, 29.233257, 49.876755>,  <31.211275, 29.356016, 49.814945>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.408022, 29.233257, 49.876755>,  <31.735935, 29.028658, 49.979774>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.408022, 29.233257, 49.876755> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428873, -0.250313, 0.867992,
		0.379509, 0.822018, 0.424569,
		-0.819781, 0.511497, -0.257545,
		31.162088, 29.386707, 49.799492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.582937, 29.445469, 50.488503>,  <31.735935, 29.028658, 49.979774>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.582937, 29.445469, 50.488503> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.231150, 29.404705, 50.302532>,  <31.020077, 29.380247, 50.190952>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.231150, 29.404705, 50.302532>,  <31.582937, 29.445469, 50.488503>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.231150, 29.404705, 50.302532> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453400, -0.117780, 0.883491,
		-0.144794, 0.987797, 0.057378,
		-0.879467, -0.101908, -0.464921,
		30.967310, 29.374132, 50.163055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.270344, 29.734671, 50.874584>,  <31.582937, 29.445469, 50.488503>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.270344, 29.734671, 50.874584> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.996323, 29.536207, 50.661221>,  <30.831909, 29.417130, 50.533203>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.996323, 29.536207, 50.661221>,  <31.270344, 29.734671, 50.874584>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.996323, 29.536207, 50.661221> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538863, -0.147613, 0.829360,
		-0.490232, 0.855592, -0.166239,
		-0.685054, -0.496159, -0.533411,
		30.790806, 29.387360, 50.501198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.619249, 29.876095, 51.173321>,  <31.270344, 29.734671, 50.874584>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.619249, 29.876095, 51.173321> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.549347, 29.538788, 50.970001>,  <30.507406, 29.336405, 50.848011>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.549347, 29.538788, 50.970001>,  <30.619249, 29.876095, 51.173321>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.549347, 29.538788, 50.970001> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609965, -0.312527, 0.728196,
		-0.772919, 0.437299, -0.459746,
		-0.174756, -0.843265, -0.508295,
		30.496920, 29.285809, 50.817513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.883829, 29.881746, 51.156696>,  <30.619249, 29.876095, 51.173321>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.883829, 29.881746, 51.156696> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.024799, 29.509356, 51.118580>,  <30.109381, 29.285921, 51.095711>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.024799, 29.509356, 51.118580>,  <29.883829, 29.881746, 51.156696>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.024799, 29.509356, 51.118580> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485842, -0.269035, 0.831612,
		-0.799846, -0.246786, -0.547122,
		0.352425, -0.930976, -0.095288,
		30.130527, 29.230062, 51.089993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.386419, 29.407112, 51.291039>,  <29.883829, 29.881746, 51.156696>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.386419, 29.407112, 51.291039> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.733074, 29.214327, 51.342648>,  <29.941067, 29.098656, 51.373611>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.733074, 29.214327, 51.342648>,  <29.386419, 29.407112, 51.291039>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.733074, 29.214327, 51.342648> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294469, -0.285332, 0.912071,
		-0.402774, -0.828428, -0.389204,
		0.866638, -0.481967, 0.129022,
		29.993065, 29.069736, 51.381355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<34.506325, 37.059982, 38.001904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.719837, 36.722912, 37.973660>,  <34.847942, 36.520672, 37.956715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.719837, 36.722912, 37.973660>,  <34.506325, 37.059982, 38.001904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.719837, 36.722912, 37.973660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284270, -0.257453, 0.923530,
		-0.796412, -0.472887, -0.376969,
		0.533777, -0.842672, -0.070611,
		34.879971, 36.470112, 37.952477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.111710, 36.620419, 38.346653>,  <34.506325, 37.059982, 38.001904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.111710, 36.620419, 38.346653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.480297, 36.465118, 38.351654>,  <34.701450, 36.371941, 38.354656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.480297, 36.465118, 38.351654>,  <34.111710, 36.620419, 38.346653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.480297, 36.465118, 38.351654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131009, -0.280311, 0.950927,
		-0.365692, -0.877888, -0.309162,
		0.921469, -0.388250, 0.012503,
		34.756737, 36.348644, 38.355404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.976616, 35.967182, 38.425014>,  <34.111710, 36.620419, 38.346653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.976616, 35.967182, 38.425014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.339584, 36.061821, 38.563931>,  <34.557365, 36.118603, 38.647278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.339584, 36.061821, 38.563931>,  <33.976616, 35.967182, 38.425014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.339584, 36.061821, 38.563931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207527, -0.466316, 0.859931,
		0.365404, -0.852391, -0.374044,
		0.907421, 0.236598, 0.347288,
		34.611809, 36.132801, 38.668118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.273689, 35.274193, 38.504902>,  <33.976616, 35.967182, 38.425014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.273689, 35.274193, 38.504902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.438705, 35.555870, 38.736042>,  <34.537716, 35.724876, 38.874725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.438705, 35.555870, 38.736042>,  <34.273689, 35.274193, 38.504902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.438705, 35.555870, 38.736042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162168, -0.567443, 0.807286,
		0.896387, -0.426750, -0.119897,
		0.412544, 0.704197, 0.577854,
		34.562469, 35.767128, 38.909397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.795670, 34.910217, 38.918320>,  <34.273689, 35.274193, 38.504902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.795670, 34.910217, 38.918320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.695160, 35.254906, 39.094635>,  <34.634853, 35.461720, 39.200424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.695160, 35.254906, 39.094635>,  <34.795670, 34.910217, 38.918320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.695160, 35.254906, 39.094635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127793, -0.480945, 0.867387,
		0.959442, 0.161626, 0.230973,
		-0.251278, 0.861724, 0.440784,
		34.619778, 35.513424, 39.226871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.132175, 34.876297, 39.467930>,  <34.795670, 34.910217, 38.918320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.132175, 34.876297, 39.467930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.885960, 35.177742, 39.560177>,  <34.738232, 35.358608, 39.615524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.885960, 35.177742, 39.560177>,  <35.132175, 34.876297, 39.467930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.885960, 35.177742, 39.560177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056391, -0.333990, 0.940888,
		0.786086, 0.566148, 0.248081,
		-0.615539, 0.753609, 0.230620,
		34.701298, 35.403824, 39.629364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.396954, 35.115158, 40.092171>,  <35.132175, 34.876297, 39.467930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.396954, 35.115158, 40.092171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.010246, 35.213593, 40.064453>,  <34.778221, 35.272652, 40.047821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.010246, 35.213593, 40.064453>,  <35.396954, 35.115158, 40.092171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.010246, 35.213593, 40.064453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158522, -0.364373, 0.917662,
		0.200573, 0.898151, 0.391274,
		-0.966769, 0.246083, -0.069293,
		34.720215, 35.287418, 40.043667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.192059, 35.525768, 40.778896>,  <35.396954, 35.115158, 40.092171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.192059, 35.525768, 40.778896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.846962, 35.401466, 40.619343>,  <34.639904, 35.326885, 40.523609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.846962, 35.401466, 40.619343>,  <35.192059, 35.525768, 40.778896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.846962, 35.401466, 40.619343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392281, -0.086421, 0.915777,
		-0.319056, 0.946553, -0.047345,
		-0.862740, -0.310756, -0.398887,
		34.588139, 35.308239, 40.499676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.559708, 35.997910, 41.051304>,  <35.192059, 35.525768, 40.778896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.559708, 35.997910, 41.051304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.457817, 35.633263, 40.922272>,  <34.396683, 35.414474, 40.844852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.457817, 35.633263, 40.922272>,  <34.559708, 35.997910, 41.051304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.457817, 35.633263, 40.922272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223394, -0.269090, 0.936849,
		-0.940855, 0.310706, -0.135106,
		-0.254729, -0.911621, -0.322585,
		34.381397, 35.359776, 40.825497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.926945, 35.796860, 41.438404>,  <34.559708, 35.997910, 41.051304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.926945, 35.796860, 41.438404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.022629, 35.434368, 41.298962>,  <34.080040, 35.216873, 41.215294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.022629, 35.434368, 41.298962>,  <33.926945, 35.796860, 41.438404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.022629, 35.434368, 41.298962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397584, -0.418970, 0.816328,
		-0.885837, -0.056669, -0.460523,
		0.239206, -0.906230, -0.348609,
		34.094391, 35.162498, 41.194378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.242020, 35.361454, 41.452686>,  <33.926945, 35.796860, 41.438404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.242020, 35.361454, 41.452686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.550014, 35.106865, 41.434715>,  <33.734814, 34.954113, 41.423931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.550014, 35.106865, 41.434715>,  <33.242020, 35.361454, 41.452686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.550014, 35.106865, 41.434715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314179, -0.439491, 0.841510,
		-0.555342, -0.633839, -0.538370,
		0.769991, -0.636471, -0.044928,
		33.781013, 34.915924, 41.421238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.909828, 34.721062, 41.528591>,  <33.242020, 35.361454, 41.452686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.909828, 34.721062, 41.528591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.290680, 34.642567, 41.622353>,  <33.519192, 34.595470, 41.678608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.290680, 34.642567, 41.622353>,  <32.909828, 34.721062, 41.528591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.290680, 34.642567, 41.622353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302432, -0.492837, 0.815872,
		-0.044584, -0.847704, -0.528592,
		0.952128, -0.196238, 0.234400,
		33.576317, 34.583694, 41.692673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.710888, 34.002113, 41.090450>,  <32.909828, 34.721062, 41.528591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.710888, 34.002113, 41.090450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.387459, 33.907845, 40.874794>,  <32.193401, 33.851284, 40.745399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.387459, 33.907845, 40.874794>,  <32.710888, 34.002113, 41.090450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.387459, 33.907845, 40.874794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437395, 0.372135, -0.818658,
		0.393579, -0.897757, -0.197807,
		-0.808567, -0.235687, -0.539139,
		32.144886, 33.837143, 40.713055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.853783, 33.555557, 40.532967>,  <32.710888, 34.002113, 41.090450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.853783, 33.555557, 40.532967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.503384, 33.704407, 40.410236>,  <32.293144, 33.793716, 40.336597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.503384, 33.704407, 40.410236>,  <32.853783, 33.555557, 40.532967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.503384, 33.704407, 40.410236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413929, 0.253536, -0.874290,
		-0.247553, -0.892884, -0.376131,
		-0.876002, 0.372125, -0.306828,
		32.240582, 33.816044, 40.318188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.839436, 33.387321, 39.836422>,  <32.853783, 33.555557, 40.532967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.839436, 33.387321, 39.836422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.585842, 33.692719, 39.885647>,  <32.433685, 33.875957, 39.915180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.585842, 33.692719, 39.885647>,  <32.839436, 33.387321, 39.836422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.585842, 33.692719, 39.885647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157558, 0.283311, -0.945997,
		-0.757126, -0.580358, -0.299909,
		-0.633984, 0.763492, 0.123062,
		32.395645, 33.921764, 39.922565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.452713, 33.198349, 39.301128>,  <32.839436, 33.387321, 39.836422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.452713, 33.198349, 39.301128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.392303, 33.580460, 39.402821>,  <32.356056, 33.809727, 39.463837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.392303, 33.580460, 39.402821>,  <32.452713, 33.198349, 39.301128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.392303, 33.580460, 39.402821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039305, 0.251170, -0.967145,
		-0.987748, -0.156057, -0.000386,
		-0.151027, 0.955280, 0.254226,
		32.346996, 33.867043, 39.479088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.786282, 33.407990, 38.980747>,  <32.452713, 33.198349, 39.301128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.786282, 33.407990, 38.980747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.006702, 33.732784, 39.057709>,  <32.138954, 33.927662, 39.103886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.006702, 33.732784, 39.057709>,  <31.786282, 33.407990, 38.980747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.006702, 33.732784, 39.057709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147915, 0.321964, -0.935126,
		-0.821258, 0.486842, 0.297524,
		0.551050, 0.811988, 0.192404,
		32.172016, 33.976379, 39.115429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.327959, 33.935223, 38.875366>,  <31.786282, 33.407990, 38.980747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.327959, 33.935223, 38.875366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.660265, 34.155338, 38.841881>,  <31.859650, 34.287407, 38.821789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.660265, 34.155338, 38.841881>,  <31.327959, 33.935223, 38.875366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.660265, 34.155338, 38.841881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270937, 0.268399, -0.924421,
		-0.486231, 0.790660, 0.372070,
		0.830766, 0.550290, -0.083716,
		31.909494, 34.320427, 38.816765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.159399, 34.698509, 38.530968>,  <31.327959, 33.935223, 38.875366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.159399, 34.698509, 38.530968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.548063, 34.616135, 38.484558>,  <31.781261, 34.566708, 38.456711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.548063, 34.616135, 38.484558>,  <31.159399, 34.698509, 38.530968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.548063, 34.616135, 38.484558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036479, 0.354337, -0.934406,
		0.233544, 0.912159, 0.336784,
		0.971662, -0.205939, -0.116028,
		31.839561, 34.554352, 38.449749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.257158, 35.071068, 37.921562>,  <31.159399, 34.698509, 38.530968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.257158, 35.071068, 37.921562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.583551, 34.840885, 37.943569>,  <31.779387, 34.702778, 37.956776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.583551, 34.840885, 37.943569>,  <31.257158, 35.071068, 37.921562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.583551, 34.840885, 37.943569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234042, 0.241832, -0.941670,
		0.528581, 0.781263, 0.332010,
		0.815982, -0.575453, 0.055020,
		31.828346, 34.668251, 37.960075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.807495, 35.537914, 37.677544>,  <31.257158, 35.071068, 37.921562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.807495, 35.537914, 37.677544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.884977, 35.147285, 37.640064>,  <31.931467, 34.912907, 37.617577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.884977, 35.147285, 37.640064>,  <31.807495, 35.537914, 37.677544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.884977, 35.147285, 37.640064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171253, 0.127704, -0.976915,
		0.965997, 0.173188, 0.191979,
		0.193706, -0.976575, -0.093703,
		31.943089, 34.854313, 37.611954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.335133, 35.573097, 37.184311>,  <31.807495, 35.537914, 37.677544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.335133, 35.573097, 37.184311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.196396, 35.198086, 37.195244>,  <32.113155, 34.973080, 37.201805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.196396, 35.198086, 37.195244>,  <32.335133, 35.573097, 37.184311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.196396, 35.198086, 37.195244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171991, -0.092225, -0.980772,
		0.922020, -0.335470, 0.193233,
		-0.346841, -0.937526, 0.027335,
		32.092342, 34.916828, 37.203445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.892632, 35.036278, 36.822651>,  <32.335133, 35.573097, 37.184311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.892632, 35.036278, 36.822651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.530846, 34.865665, 36.820827>,  <32.313774, 34.763298, 36.819733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.530846, 34.865665, 36.820827>,  <32.892632, 35.036278, 36.822651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.530846, 34.865665, 36.820827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126351, -0.257697, -0.957929,
		0.407408, -0.866987, 0.286970,
		-0.904463, -0.426527, -0.004557,
		32.259506, 34.737709, 36.819462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.918446, 34.455772, 36.379898>,  <32.892632, 35.036278, 36.822651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.918446, 34.455772, 36.379898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.525642, 34.528915, 36.398750>,  <32.289959, 34.572803, 36.410061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.525642, 34.528915, 36.398750>,  <32.918446, 34.455772, 36.379898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.525642, 34.528915, 36.398750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066306, -0.100186, -0.992757,
		-0.176816, -0.978020, 0.110509,
		-0.982008, 0.182863, 0.047134,
		32.231041, 34.583775, 36.412891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.604939, 33.903511, 36.071274>,  <32.918446, 34.455772, 36.379898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.604939, 33.903511, 36.071274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.312496, 34.175434, 36.048107>,  <32.137032, 34.338589, 36.034206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.312496, 34.175434, 36.048107>,  <32.604939, 33.903511, 36.071274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.312496, 34.175434, 36.048107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219354, -0.314586, -0.923537,
		-0.646043, -0.662497, 0.379113,
		-0.731103, 0.679805, -0.057915,
		32.093166, 34.379375, 36.030731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.237347, 33.551601, 35.570469>,  <32.604939, 33.903511, 36.071274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.237347, 33.551601, 35.570469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.112396, 33.930950, 35.592415>,  <32.037426, 34.158558, 35.605583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.112396, 33.930950, 35.592415>,  <32.237347, 33.551601, 35.570469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.112396, 33.930950, 35.592415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247792, -0.025595, -0.968475,
		-0.917070, -0.316127, 0.242994,
		-0.312380, 0.948372, 0.054861,
		32.018681, 34.215462, 35.608871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.980251, 33.353519, 35.370674>,  <32.237347, 33.551601, 35.570469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.980251, 33.353519, 35.370674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.180271, 33.079887, 35.158264>,  <33.300282, 32.915707, 35.030819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.180271, 33.079887, 35.158264>,  <32.980251, 33.353519, 35.370674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.180271, 33.079887, 35.158264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443508, -0.728970, 0.521444,
		-0.743816, -0.025225, -0.667908,
		0.500038, -0.684081, -0.531031,
		33.330284, 32.874664, 34.998959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.482243, 32.825375, 35.017963>,  <32.980251, 33.353519, 35.370674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.482243, 32.825375, 35.017963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.851082, 32.704300, 35.114388>,  <33.072388, 32.631657, 35.172241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.851082, 32.704300, 35.114388>,  <32.482243, 32.825375, 35.017963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.851082, 32.704300, 35.114388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381465, -0.606598, 0.697512,
		-0.064902, -0.735133, -0.674809,
		0.922102, -0.302686, 0.241057,
		33.127712, 32.613495, 35.186703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.577168, 32.205761, 35.037125>,  <32.482243, 32.825375, 35.017963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.577168, 32.205761, 35.037125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.874924, 32.302330, 35.286156>,  <33.053577, 32.360271, 35.435574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.874924, 32.302330, 35.286156>,  <32.577168, 32.205761, 35.037125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.874924, 32.302330, 35.286156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391154, -0.597988, 0.699578,
		0.541188, -0.764280, -0.350700,
		0.744388, 0.241425, 0.622576,
		33.098240, 32.374756, 35.472927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.750366, 31.568481, 35.353516>,  <32.577168, 32.205761, 35.037125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.750366, 31.568481, 35.353516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.877682, 31.855030, 35.601871>,  <32.954071, 32.026958, 35.750885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.877682, 31.855030, 35.601871>,  <32.750366, 31.568481, 35.353516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.877682, 31.855030, 35.601871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398711, -0.493045, 0.773263,
		0.860070, -0.493678, 0.128694,
		0.318291, 0.716372, 0.620888,
		32.973167, 32.069942, 35.788139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.230362, 31.200123, 35.853573>,  <32.750366, 31.568481, 35.353516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.230362, 31.200123, 35.853573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.126732, 31.537703, 36.041458>,  <33.064552, 31.740250, 36.154190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.126732, 31.537703, 36.041458>,  <33.230362, 31.200123, 35.853573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.126732, 31.537703, 36.041458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212123, -0.524158, 0.824780,
		0.942275, 0.114048, 0.314820,
		-0.259080, 0.843949, 0.469709,
		33.049007, 31.790888, 36.182369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.663364, 31.252026, 36.399979>,  <33.230362, 31.200123, 35.853573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.663364, 31.252026, 36.399979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.345913, 31.484249, 36.472759>,  <33.155441, 31.623583, 36.516426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.345913, 31.484249, 36.472759>,  <33.663364, 31.252026, 36.399979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.345913, 31.484249, 36.472759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068340, -0.382231, 0.921536,
		0.604552, 0.718923, 0.343025,
		-0.793629, 0.580559, 0.181948,
		33.107822, 31.658417, 36.527344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.709438, 31.473598, 37.092468>,  <33.663364, 31.252026, 36.399979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.709438, 31.473598, 37.092468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.315159, 31.494663, 37.028427>,  <33.078590, 31.507301, 36.990002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.315159, 31.494663, 37.028427>,  <33.709438, 31.473598, 37.092468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.315159, 31.494663, 37.028427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166504, -0.451460, 0.876619,
		-0.026115, 0.890736, 0.453770,
		-0.985695, 0.052662, -0.160101,
		33.019451, 31.510462, 36.980396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.422253, 31.802763, 37.720772>,  <33.709438, 31.473598, 37.092468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.422253, 31.802763, 37.720772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.128193, 31.612499, 37.527569>,  <32.951756, 31.498341, 37.411648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.128193, 31.612499, 37.527569>,  <33.422253, 31.802763, 37.720772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.128193, 31.612499, 37.527569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224782, -0.501153, 0.835655,
		-0.639550, 0.722905, 0.261504,
		-0.735153, -0.475661, -0.483008,
		32.907646, 31.469801, 37.382668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.025677, 31.702774, 38.271751>,  <33.422253, 31.802763, 37.720772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.025677, 31.702774, 38.271751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.851704, 31.467285, 37.999210>,  <32.747318, 31.325993, 37.835686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.851704, 31.467285, 37.999210>,  <33.025677, 31.702774, 38.271751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.851704, 31.467285, 37.999210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282231, -0.629415, 0.724005,
		-0.855089, 0.507193, 0.107599,
		-0.434934, -0.588721, -0.681351,
		32.721222, 31.290668, 37.794804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.382362, 31.500021, 38.587666>,  <33.025677, 31.702774, 38.271751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.382362, 31.500021, 38.587666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.472176, 31.234091, 38.302685>,  <32.526062, 31.074533, 38.131695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.472176, 31.234091, 38.302685>,  <32.382362, 31.500021, 38.587666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.472176, 31.234091, 38.302685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136237, -0.745360, 0.652594,
		-0.964896, -0.049466, -0.257932,
		0.224534, -0.664825, -0.712456,
		32.539536, 31.034643, 38.088947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.826401, 30.972288, 38.643856>,  <32.382362, 31.500021, 38.587666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.826401, 30.972288, 38.643856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.114491, 30.799803, 38.426479>,  <32.287346, 30.696312, 38.296055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.114491, 30.799803, 38.426479>,  <31.826401, 30.972288, 38.643856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.114491, 30.799803, 38.426479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144528, -0.859428, 0.490403,
		-0.678518, -0.274659, -0.681305,
		0.720226, -0.431215, -0.543441,
		32.330559, 30.670439, 38.263447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.600018, 30.312456, 38.345127>,  <31.826401, 30.972288, 38.643856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.600018, 30.312456, 38.345127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.998999, 30.299862, 38.370731>,  <32.238388, 30.292305, 38.386093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.998999, 30.299862, 38.370731>,  <31.600018, 30.312456, 38.345127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.998999, 30.299862, 38.370731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064689, -0.777463, 0.625593,
		0.030069, -0.628140, -0.777519,
		0.997452, -0.031486, 0.064012,
		32.298233, 30.290417, 38.389935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.599592, 29.650913, 38.399799>,  <31.600018, 30.312456, 38.345127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.599592, 29.650913, 38.399799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.972586, 29.740976, 38.512779>,  <32.196381, 29.795015, 38.580566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.972586, 29.740976, 38.512779>,  <31.599592, 29.650913, 38.399799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.972586, 29.740976, 38.512779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002932, -0.786646, 0.617398,
		0.361203, -0.574884, -0.734194,
		0.932482, 0.225159, 0.282453,
		32.252331, 29.808523, 38.597515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.017612, 29.026501, 38.468998>,  <31.599592, 29.650913, 38.399799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.017612, 29.026501, 38.468998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.244232, 29.282133, 38.677074>,  <32.380203, 29.435513, 38.801922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.244232, 29.282133, 38.677074>,  <32.017612, 29.026501, 38.468998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.244232, 29.282133, 38.677074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009399, -0.626230, 0.779582,
		0.823977, -0.446558, -0.348781,
		0.566545, 0.639079, 0.520196,
		32.414196, 29.473858, 38.833134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.650993, 28.679415, 38.709644>,  <32.017612, 29.026501, 38.468998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.650993, 28.679415, 38.709644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.696445, 28.983719, 38.965248>,  <32.723717, 29.166302, 39.118610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.696445, 28.983719, 38.965248>,  <32.650993, 28.679415, 38.709644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.696445, 28.983719, 38.965248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214738, -0.646780, 0.731822,
		0.970038, 0.054060, -0.236861,
		0.113635, 0.760758, 0.639010,
		32.730537, 29.211946, 39.156952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.162907, 28.465473, 39.083847>,  <32.650993, 28.679415, 38.709644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.162907, 28.465473, 39.083847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.990963, 28.739321, 39.319309>,  <32.887798, 28.903629, 39.460587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.990963, 28.739321, 39.319309>,  <33.162907, 28.465473, 39.083847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.990963, 28.739321, 39.319309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124161, -0.600953, 0.789582,
		0.894320, 0.412495, 0.173321,
		-0.429856, 0.684619, 0.588660,
		32.862007, 28.944706, 39.495907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.424706, 28.262201, 39.720787>,  <33.162907, 28.465473, 39.083847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.424706, 28.262201, 39.720787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.109383, 28.496552, 39.795967>,  <32.920189, 28.637161, 39.841076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.109383, 28.496552, 39.795967>,  <33.424706, 28.262201, 39.720787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.109383, 28.496552, 39.795967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130512, -0.457741, 0.879454,
		0.601286, 0.668746, 0.437303,
		-0.788303, 0.585877, 0.187954,
		32.872890, 28.672314, 39.852352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.523476, 28.365612, 40.334507>,  <33.424706, 28.262201, 39.720787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.523476, 28.365612, 40.334507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.142872, 28.477880, 40.284138>,  <32.914509, 28.545242, 40.253914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.142872, 28.477880, 40.284138>,  <33.523476, 28.365612, 40.334507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.142872, 28.477880, 40.284138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229522, -0.375163, 0.898094,
		0.204827, 0.883446, 0.421390,
		-0.951507, 0.280672, -0.125926,
		32.857418, 28.562082, 40.246361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.277924, 28.790413, 40.867413>,  <33.523476, 28.365612, 40.334507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.277924, 28.790413, 40.867413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.943790, 28.638176, 40.708736>,  <32.743309, 28.546833, 40.613533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.943790, 28.638176, 40.708736>,  <33.277924, 28.790413, 40.867413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.943790, 28.638176, 40.708736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244698, -0.388746, 0.888256,
		-0.492276, 0.839062, 0.231603,
		-0.835337, -0.380594, -0.396687,
		32.693188, 28.523998, 40.589729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.746922, 28.948887, 41.257656>,  <33.277924, 28.790413, 40.867413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.746922, 28.948887, 41.257656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.593929, 28.631857, 41.067696>,  <32.502132, 28.441639, 40.953720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.593929, 28.631857, 41.067696>,  <32.746922, 28.948887, 41.257656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.593929, 28.631857, 41.067696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273794, -0.393677, 0.877528,
		-0.882466, 0.465662, -0.066429,
		-0.382480, -0.792576, -0.474902,
		32.479187, 28.394085, 40.925224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.193722, 28.809406, 41.605946>,  <32.746922, 28.948887, 41.257656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.193722, 28.809406, 41.605946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.255028, 28.455143, 41.430618>,  <32.291809, 28.242586, 41.325420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.255028, 28.455143, 41.430618>,  <32.193722, 28.809406, 41.605946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.255028, 28.455143, 41.430618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224631, -0.463171, 0.857329,
		-0.962316, -0.032935, -0.269931,
		0.153260, -0.885657, -0.438318,
		32.301006, 28.189445, 41.299122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.669292, 28.534384, 41.878113>,  <32.193722, 28.809406, 41.605946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.669292, 28.534384, 41.878113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.932106, 28.253233, 41.769104>,  <32.089794, 28.084543, 41.703697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.932106, 28.253233, 41.769104>,  <31.669292, 28.534384, 41.878113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.932106, 28.253233, 41.769104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211616, -0.518930, 0.828209,
		-0.723549, -0.486492, -0.489696,
		0.657035, -0.702877, -0.272522,
		32.129215, 28.042370, 41.687347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.426462, 27.890432, 41.969471>,  <31.669292, 28.534384, 41.878113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.426462, 27.890432, 41.969471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.806458, 27.765526, 41.967846>,  <32.034454, 27.690582, 41.966869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.806458, 27.765526, 41.967846>,  <31.426462, 27.890432, 41.969471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.806458, 27.765526, 41.967846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197704, -0.611432, 0.766201,
		-0.241740, -0.727078, -0.642588,
		0.949987, -0.312264, -0.004062,
		32.091454, 27.671846, 41.966629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.442432, 27.337976, 42.325703>,  <31.426462, 27.890432, 41.969471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.442432, 27.337976, 42.325703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.840759, 27.370134, 42.308357>,  <32.079758, 27.389429, 42.297951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.840759, 27.370134, 42.308357>,  <31.442432, 27.337976, 42.325703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.840759, 27.370134, 42.308357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076651, -0.477275, 0.875404,
		0.049681, -0.875068, -0.481442,
		0.995820, 0.080394, -0.043364,
		32.139503, 27.394253, 42.295349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.681976, 26.733652, 42.427505>,  <31.442432, 27.337976, 42.325703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.681976, 26.733652, 42.427505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.994818, 26.965809, 42.518246>,  <32.182522, 27.105103, 42.572689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.994818, 26.965809, 42.518246>,  <31.681976, 26.733652, 42.427505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.994818, 26.965809, 42.518246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127432, -0.505302, 0.853482,
		0.609982, -0.638602, -0.469158,
		0.782102, 0.580394, 0.226847,
		32.229450, 27.139927, 42.586300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.209198, 26.239317, 42.650463>,  <31.681976, 26.733652, 42.427505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.209198, 26.239317, 42.650463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.309765, 26.600227, 42.790569>,  <32.370106, 26.816774, 42.874634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.309765, 26.600227, 42.790569>,  <32.209198, 26.239317, 42.650463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.309765, 26.600227, 42.790569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065265, -0.376874, 0.923962,
		0.965676, -0.209440, -0.153639,
		0.251417, 0.902275, 0.350269,
		32.385189, 26.870911, 42.895649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.909840, 26.123323, 42.982418>,  <32.209198, 26.239317, 42.650463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.909840, 26.123323, 42.982418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.702633, 26.437761, 43.117302>,  <32.578308, 26.626425, 43.198231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.702633, 26.437761, 43.117302>,  <32.909840, 26.123323, 42.982418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.702633, 26.437761, 43.117302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301085, -0.201426, 0.932081,
		0.800629, 0.584363, -0.132340,
		-0.518017, 0.786097, 0.337210,
		32.547226, 26.673590, 43.218464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.356972, 26.506311, 43.270752>,  <32.909840, 26.123323, 42.982418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.356972, 26.506311, 43.270752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.989044, 26.554281, 43.420181>,  <32.768288, 26.583063, 43.509838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.989044, 26.554281, 43.420181>,  <33.356972, 26.506311, 43.270752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.989044, 26.554281, 43.420181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357833, -0.134084, 0.924109,
		0.160914, 0.983687, 0.080420,
		-0.919817, 0.119925, 0.373571,
		32.713100, 26.590260, 43.532253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.025768, 26.827063, 43.587414>,  <33.356972, 26.506311, 43.270752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.025768, 26.827063, 43.587414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.378613, 26.652235, 43.657673>,  <34.590317, 26.547338, 43.699829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.378613, 26.652235, 43.657673>,  <34.025768, 26.827063, 43.587414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.378613, 26.652235, 43.657673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441203, 0.636011, -0.633111,
		0.164997, 0.635971, 0.753868,
		0.882109, -0.437071, 0.175652,
		34.643246, 26.521114, 43.710369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.402584, 27.368483, 43.807182>,  <34.025768, 26.827063, 43.587414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.402584, 27.368483, 43.807182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.658585, 27.093096, 43.670708>,  <34.812187, 26.927864, 43.588821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.658585, 27.093096, 43.670708>,  <34.402584, 27.368483, 43.807182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.658585, 27.093096, 43.670708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327426, 0.646070, -0.689482,
		0.695116, 0.329558, 0.638909,
		0.640005, -0.688466, -0.341188,
		34.850586, 26.886557, 43.568352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.162807, 27.565594, 43.864002>,  <34.402584, 27.368483, 43.807182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.162807, 27.565594, 43.864002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.125534, 27.316410, 43.553329>,  <35.103172, 27.166901, 43.366924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.125534, 27.316410, 43.553329>,  <35.162807, 27.565594, 43.864002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.125534, 27.316410, 43.553329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634486, 0.564015, -0.528501,
		0.767297, -0.542043, 0.342702,
		-0.093181, -0.622957, -0.776687,
		35.097580, 27.129522, 43.320324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.890896, 27.446236, 43.571064>,  <35.162807, 27.565594, 43.864002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.890896, 27.446236, 43.571064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.677559, 27.325222, 43.255085>,  <35.549557, 27.252615, 43.065498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.677559, 27.325222, 43.255085>,  <35.890896, 27.446236, 43.571064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.677559, 27.325222, 43.255085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686358, 0.391071, -0.613169,
		0.494431, -0.869216, -0.000928,
		-0.533340, -0.302532, -0.789951,
		35.517555, 27.234463, 43.018101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.343918, 27.238951, 43.076954>,  <35.890896, 27.446236, 43.571064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.343918, 27.238951, 43.076954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.015217, 27.324654, 42.865742>,  <35.817997, 27.376076, 42.739014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.015217, 27.324654, 42.865742>,  <36.343918, 27.238951, 43.076954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.015217, 27.324654, 42.865742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560722, 0.469124, -0.682285,
		0.101525, -0.856748, -0.505644,
		-0.821756, 0.214257, -0.528026,
		35.768688, 27.388931, 42.707333>
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
