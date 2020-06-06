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
	<24.406401, 34.821545, 34.678909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.066845, 34.951733, 34.845501>,  <23.863111, 35.029846, 34.945457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.066845, 34.951733, 34.845501>,  <24.406401, 34.821545, 34.678909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.066845, 34.951733, 34.845501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526458, 0.591011, 0.611187,
		-0.047218, 0.738088, -0.673050,
		-0.848889, 0.325473, 0.416478,
		23.812178, 35.049374, 34.970444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.743792, 34.143734, 34.612427>,  <24.406401, 34.821545, 34.678909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.743792, 34.143734, 34.612427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.072556, 34.122845, 34.385540>,  <25.269814, 34.110313, 34.249409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.072556, 34.122845, 34.385540>,  <24.743792, 34.143734, 34.612427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.072556, 34.122845, 34.385540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554022, 0.158145, -0.817343,
		0.132386, 0.986034, 0.101049,
		0.821909, -0.052222, -0.567221,
		25.319128, 34.107178, 34.215374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.120420, 34.570152, 34.084652>,  <24.743792, 34.143734, 34.612427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.120420, 34.570152, 34.084652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.191917, 34.649727, 33.699223>,  <25.234816, 34.697472, 33.467964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.191917, 34.649727, 33.699223>,  <25.120420, 34.570152, 34.084652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.191917, 34.649727, 33.699223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059386, -0.979741, -0.191263,
		-0.982102, -0.023035, -0.186937,
		0.178744, 0.198941, -0.963573,
		25.245541, 34.709408, 33.410152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.835716, 33.975399, 33.686630>,  <25.120420, 34.570152, 34.084652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.835716, 33.975399, 33.686630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.110949, 34.165966, 33.467701>,  <25.276089, 34.280308, 33.336342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.110949, 34.165966, 33.467701>,  <24.835716, 33.975399, 33.686630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.110949, 34.165966, 33.467701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161024, -0.835720, -0.525018,
		-0.707541, 0.273123, -0.651759,
		0.688082, 0.476420, -0.547327,
		25.317373, 34.308891, 33.303501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.669647, 33.867615, 32.987858>,  <24.835716, 33.975399, 33.686630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.669647, 33.867615, 32.987858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.059887, 33.915359, 33.061565>,  <25.294031, 33.944004, 33.105789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.059887, 33.915359, 33.061565>,  <24.669647, 33.867615, 32.987858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.059887, 33.915359, 33.061565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183995, -0.902412, -0.389614,
		0.119786, 0.414013, -0.902355,
		0.975601, 0.119358, 0.184273,
		25.352568, 33.951168, 33.116848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.111086, 33.787395, 32.420895>,  <24.669647, 33.867615, 32.987858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.111086, 33.787395, 32.420895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.310057, 33.667137, 32.746391>,  <25.429440, 33.594982, 32.941689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.310057, 33.667137, 32.746391>,  <25.111086, 33.787395, 32.420895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.310057, 33.667137, 32.746391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371685, -0.773708, -0.513056,
		0.783849, 0.557663, -0.273117,
		0.497425, -0.300645, 0.813745,
		25.459284, 33.576942, 32.990517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.872528, 33.752632, 32.199123>,  <25.111086, 33.787395, 32.420895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.872528, 33.752632, 32.199123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.758635, 33.515270, 32.500267>,  <25.690298, 33.372852, 32.680954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.758635, 33.515270, 32.500267>,  <25.872528, 33.752632, 32.199123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.758635, 33.515270, 32.500267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216600, -0.804881, -0.552495,
		0.933815, 0.005755, 0.357709,
		-0.284733, -0.593408, 0.752857,
		25.673214, 33.337246, 32.726124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.518797, 33.321175, 32.402901>,  <25.872528, 33.752632, 32.199123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.518797, 33.321175, 32.402901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.157749, 33.164333, 32.473934>,  <25.941120, 33.070229, 32.516556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.157749, 33.164333, 32.473934>,  <26.518797, 33.321175, 32.402901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.157749, 33.164333, 32.473934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242424, -0.803982, -0.542995,
		0.355682, -0.447067, 0.820744,
		-0.902619, -0.392102, 0.177582,
		25.886963, 33.046703, 32.527210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.979263, 33.019009, 31.952139>,  <26.518797, 33.321175, 32.402901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.979263, 33.019009, 31.952139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.023916, 32.989555, 31.555731>,  <27.050707, 32.971882, 31.317886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.023916, 32.989555, 31.555731>,  <26.979263, 33.019009, 31.952139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.023916, 32.989555, 31.555731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682156, -0.730859, -0.022537,
		-0.722635, 0.678545, -0.131816,
		0.111631, -0.073633, -0.991018,
		27.057405, 32.967464, 31.258425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.408293, 33.327232, 31.656694>,  <26.979263, 33.019009, 31.952139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.408293, 33.327232, 31.656694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.567568, 33.039680, 31.428782>,  <26.663134, 32.867149, 31.292034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.567568, 33.039680, 31.428782>,  <26.408293, 33.327232, 31.656694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.567568, 33.039680, 31.428782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863182, -0.503847, 0.032467,
		-0.310424, 0.478899, -0.821153,
		0.398187, -0.718883, -0.569784,
		26.687023, 32.824017, 31.257847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.829628, 33.089302, 31.272274>,  <26.408293, 33.327232, 31.656694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.829628, 33.089302, 31.272274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.101608, 32.799370, 31.227943>,  <26.264797, 32.625408, 31.201345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.101608, 32.799370, 31.227943>,  <25.829628, 33.089302, 31.272274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.101608, 32.799370, 31.227943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732002, -0.662145, -0.160426,
		0.042900, 0.190206, -0.980807,
		0.679950, -0.724835, -0.110825,
		26.305593, 32.581921, 31.194696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.386406, 32.508461, 30.946190>,  <25.829628, 33.089302, 31.272274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.386406, 32.508461, 30.946190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.021669, 32.344540, 30.936354>,  <24.802828, 32.246185, 30.930452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.021669, 32.344540, 30.936354>,  <25.386406, 32.508461, 30.946190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.021669, 32.344540, 30.936354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410075, -0.912024, -0.007119,
		-0.019509, -0.016575, 0.999672,
		-0.911843, -0.409802, -0.024590,
		24.748116, 32.221600, 30.928976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.910484, 32.281151, 31.487030>,  <25.386406, 32.508461, 30.946190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.910484, 32.281151, 31.487030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.077284, 31.923334, 31.551403>,  <25.177364, 31.708643, 31.590027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.077284, 31.923334, 31.551403>,  <24.910484, 32.281151, 31.487030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.077284, 31.923334, 31.551403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842233, 0.313740, -0.438417,
		0.341693, 0.318363, 0.884246,
		0.416999, -0.894546, 0.160933,
		25.202383, 31.654970, 31.599684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.544056, 32.544430, 31.742987>,  <24.910484, 32.281151, 31.487030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.544056, 32.544430, 31.742987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.535507, 32.178574, 31.581503>,  <25.530378, 31.959061, 31.484612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.535507, 32.178574, 31.581503>,  <25.544056, 32.544430, 31.742987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.535507, 32.178574, 31.581503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941144, 0.117840, -0.316798,
		0.337328, -0.386721, 0.858287,
		-0.021372, -0.914637, -0.403711,
		25.529095, 31.904182, 31.460390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.077360, 32.067322, 32.023701>,  <25.544056, 32.544430, 31.742987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.077360, 32.067322, 32.023701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.955160, 31.982943, 31.652288>,  <25.881840, 31.932316, 31.429441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.955160, 31.982943, 31.652288>,  <26.077360, 32.067322, 32.023701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.955160, 31.982943, 31.652288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917477, 0.195694, -0.346323,
		0.254764, -0.957708, 0.133754,
		-0.305502, -0.210947, -0.928531,
		25.863510, 31.919659, 31.373730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.628847, 31.637442, 31.702492>,  <26.077360, 32.067322, 32.023701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.628847, 31.637442, 31.702492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.419443, 31.826559, 31.418970>,  <26.293800, 31.940029, 31.248857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.419443, 31.826559, 31.418970>,  <26.628847, 31.637442, 31.702492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.419443, 31.826559, 31.418970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842020, 0.414166, -0.345643,
		0.130145, -0.777776, -0.614921,
		-0.523512, 0.472792, -0.708804,
		26.262390, 31.968397, 31.206329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.127407, 31.697420, 31.124537>,  <26.628847, 31.637442, 31.702492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.127407, 31.697420, 31.124537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.855942, 31.982140, 31.052139>,  <26.693064, 32.152973, 31.008701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.855942, 31.982140, 31.052139>,  <27.127407, 31.697420, 31.124537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.855942, 31.982140, 31.052139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720837, 0.598312, -0.349880,
		-0.140754, -0.367917, -0.919144,
		-0.678662, 0.711800, -0.180994,
		26.652344, 32.195679, 30.997841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.172113, 32.004536, 30.372358>,  <27.127407, 31.697420, 31.124537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.172113, 32.004536, 30.372358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.026712, 32.237270, 30.663380>,  <26.939472, 32.376911, 30.837994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.026712, 32.237270, 30.663380>,  <27.172113, 32.004536, 30.372358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.026712, 32.237270, 30.663380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813285, 0.579089, -0.056766,
		-0.454347, 0.571075, -0.683698,
		-0.363504, 0.581833, 0.727554,
		26.917662, 32.411819, 30.881645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.249748, 32.725143, 29.994062>,  <27.172113, 32.004536, 30.372358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.249748, 32.725143, 29.994062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.225555, 32.776459, 30.390018>,  <27.211040, 32.807247, 30.627592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.225555, 32.776459, 30.390018>,  <27.249748, 32.725143, 29.994062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.225555, 32.776459, 30.390018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667120, 0.742879, -0.055519,
		-0.742491, 0.657018, -0.130515,
		-0.060480, 0.128291, 0.989891,
		27.207411, 32.814945, 30.686985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.117292, 33.457954, 30.278097>,  <27.249748, 32.725143, 29.994062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.117292, 33.457954, 30.278097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.331999, 33.254932, 30.547695>,  <27.460823, 33.133118, 30.709454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.331999, 33.254932, 30.547695>,  <27.117292, 33.457954, 30.278097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.331999, 33.254932, 30.547695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659564, 0.750586, 0.039961,
		-0.526175, 0.423094, 0.737653,
		0.536764, -0.507556, 0.673997,
		27.493029, 33.102665, 30.749893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.221977, 33.872536, 30.892256>,  <27.117292, 33.457954, 30.278097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.221977, 33.872536, 30.892256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.520849, 33.609058, 30.856840>,  <27.700172, 33.450970, 30.835590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.520849, 33.609058, 30.856840>,  <27.221977, 33.872536, 30.892256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.520849, 33.609058, 30.856840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654406, 0.705871, 0.271106,
		-0.116079, -0.260506, 0.958469,
		0.747180, -0.658698, -0.088541,
		27.745003, 33.411449, 30.830278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.771990, 34.350922, 31.045181>,  <27.221977, 33.872536, 30.892256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.771990, 34.350922, 31.045181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.929291, 33.985088, 31.007463>,  <28.023670, 33.765587, 30.984833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.929291, 33.985088, 31.007463>,  <27.771990, 34.350922, 31.045181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.929291, 33.985088, 31.007463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911229, 0.374019, 0.172544,
		-0.122537, -0.153778, 0.980478,
		0.393251, -0.914583, -0.094296,
		28.047266, 33.710712, 30.979176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.115034, 34.180172, 31.670038>,  <27.771990, 34.350922, 31.045181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.115034, 34.180172, 31.670038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.259842, 34.039463, 31.324739>,  <28.346727, 33.955036, 31.117559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.259842, 34.039463, 31.324739>,  <28.115034, 34.180172, 31.670038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.259842, 34.039463, 31.324739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883515, 0.424765, 0.197427,
		0.297228, -0.834164, 0.464570,
		0.362019, -0.351774, -0.863248,
		28.368448, 33.933929, 31.065765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.626381, 33.642403, 31.794889>,  <28.115034, 34.180172, 31.670038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.626381, 33.642403, 31.794889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.683146, 33.788288, 31.426792>,  <28.717205, 33.875820, 31.205935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.683146, 33.788288, 31.426792>,  <28.626381, 33.642403, 31.794889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.683146, 33.788288, 31.426792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958807, 0.180453, 0.219375,
		0.246069, -0.913468, -0.324078,
		0.141911, 0.364710, -0.920244,
		28.725719, 33.897701, 31.150719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.214312, 33.279442, 31.531084>,  <28.626381, 33.642403, 31.794889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.214312, 33.279442, 31.531084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.187426, 33.631298, 31.342735>,  <29.171295, 33.842411, 31.229725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.187426, 33.631298, 31.342735>,  <29.214312, 33.279442, 31.531084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.187426, 33.631298, 31.342735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982702, 0.139989, 0.121242,
		0.172566, -0.454580, -0.873830,
		-0.067213, 0.879636, -0.470874,
		29.167261, 33.895187, 31.201473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.785780, 33.174809, 31.056309>,  <29.214312, 33.279442, 31.531084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.785780, 33.174809, 31.056309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.689062, 33.555370, 31.132589>,  <29.631031, 33.783707, 31.178358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.689062, 33.555370, 31.132589>,  <29.785780, 33.174809, 31.056309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.689062, 33.555370, 31.132589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964422, 0.213985, 0.155242,
		0.106891, 0.221452, -0.969295,
		-0.241794, 0.951404, 0.190700,
		29.616524, 33.840790, 31.189798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.207222, 33.739292, 30.629696>,  <29.785780, 33.174809, 31.056309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.207222, 33.739292, 30.629696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.109501, 33.840378, 31.004171>,  <30.050867, 33.901028, 31.228857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.109501, 33.840378, 31.004171>,  <30.207222, 33.739292, 30.629696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.109501, 33.840378, 31.004171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968086, 0.007902, 0.250494,
		0.055905, 0.967509, -0.246578,
		-0.244304, 0.252712, 0.936190,
		30.036209, 33.916191, 31.285028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.895313, 33.754211, 30.257504>,  <30.207222, 33.739292, 30.629696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.895313, 33.754211, 30.257504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.548203, 33.806126, 30.065620>,  <30.339935, 33.837273, 29.950491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.548203, 33.806126, 30.065620>,  <30.895313, 33.754211, 30.257504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.548203, 33.806126, 30.065620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052747, 0.935788, 0.348596,
		0.494146, 0.327807, -0.805210,
		-0.867777, 0.129785, -0.479706,
		30.287868, 33.845062, 29.921709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.896645, 34.361313, 29.775015>,  <30.895313, 33.754211, 30.257504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.896645, 34.361313, 29.775015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.534996, 34.291965, 29.931225>,  <30.318007, 34.250359, 30.024950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.534996, 34.291965, 29.931225>,  <30.896645, 34.361313, 29.775015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.534996, 34.291965, 29.931225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102920, 0.975437, 0.194756,
		-0.414694, 0.135890, -0.899757,
		-0.904122, -0.173367, 0.390523,
		30.263760, 34.239956, 30.048382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.592566, 34.267048, 29.909740>,  <30.896645, 34.361313, 29.775015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.592566, 34.267048, 29.909740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.693455, 34.163208, 29.536861>,  <31.753988, 34.100903, 29.313133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.693455, 34.163208, 29.536861>,  <31.592566, 34.267048, 29.909740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.693455, 34.163208, 29.536861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743930, -0.564044, 0.358360,
		-0.618831, -0.783876, 0.050860,
		0.252222, -0.259601, -0.932197,
		31.769121, 34.085327, 29.257202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.573469, 33.545155, 29.883739>,  <31.592566, 34.267048, 29.909740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.573469, 33.545155, 29.883739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.851889, 33.666111, 29.623257>,  <32.018940, 33.738686, 29.466967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.851889, 33.666111, 29.623257>,  <31.573469, 33.545155, 29.883739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.851889, 33.666111, 29.623257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652530, -0.644797, 0.398046,
		-0.299530, -0.701993, -0.646133,
		0.696050, 0.302395, -0.651208,
		32.060703, 33.756828, 29.427895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.831980, 33.016045, 29.516895>,  <31.573469, 33.545155, 29.883739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.831980, 33.016045, 29.516895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.132233, 33.278606, 29.547060>,  <32.312386, 33.436142, 29.565159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.132233, 33.278606, 29.547060>,  <31.831980, 33.016045, 29.516895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.132233, 33.278606, 29.547060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583157, -0.711838, 0.391427,
		0.310617, -0.249839, -0.917114,
		0.750630, 0.656405, 0.075413,
		32.357422, 33.475529, 29.569683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.456135, 32.642185, 29.343489>,  <31.831980, 33.016045, 29.516895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.456135, 32.642185, 29.343489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.568050, 32.966526, 29.549107>,  <32.635201, 33.161129, 29.672478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.568050, 32.966526, 29.549107>,  <32.456135, 32.642185, 29.343489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.568050, 32.966526, 29.549107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657049, -0.552115, 0.513279,
		0.700004, 0.194143, -0.687244,
		0.279788, 0.810850, 0.514044,
		32.651985, 33.209782, 29.703320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.066620, 32.719002, 29.247807>,  <32.456135, 32.642185, 29.343489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.066620, 32.719002, 29.247807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.000195, 32.894211, 29.601204>,  <32.960339, 32.999336, 29.813242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.000195, 32.894211, 29.601204>,  <33.066620, 32.719002, 29.247807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.000195, 32.894211, 29.601204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759496, -0.514626, 0.397902,
		0.628957, 0.737088, -0.247212,
		-0.166067, 0.438020, 0.883493,
		32.950375, 33.025616, 29.866251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.732857, 32.892109, 29.454161>,  <33.066620, 32.719002, 29.247807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.732857, 32.892109, 29.454161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.494728, 32.865849, 29.774483>,  <33.351852, 32.850094, 29.966675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.494728, 32.865849, 29.774483>,  <33.732857, 32.892109, 29.454161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.494728, 32.865849, 29.774483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740485, -0.431703, 0.515087,
		0.311896, 0.899624, 0.305611,
		-0.595318, -0.065646, 0.800804,
		33.316132, 32.846153, 30.014725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.137348, 33.413223, 29.880104>,  <33.732857, 32.892109, 29.454161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.137348, 33.413223, 29.880104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.867985, 33.400089, 30.175522>,  <33.706367, 33.392208, 30.352772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.867985, 33.400089, 30.175522>,  <34.137348, 33.413223, 29.880104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.867985, 33.400089, 30.175522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502739, -0.752787, 0.424930,
		0.542011, 0.657445, 0.523441,
		-0.673407, -0.032837, 0.738542,
		33.665962, 33.390240, 30.397085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.486687, 33.470852, 30.533489>,  <34.137348, 33.413223, 29.880104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.486687, 33.470852, 30.533489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.153934, 33.249649, 30.552065>,  <33.954281, 33.116928, 30.563210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.153934, 33.249649, 30.552065>,  <34.486687, 33.470852, 30.533489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.153934, 33.249649, 30.552065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499656, -0.709961, 0.496286,
		-0.241479, 0.436055, 0.866916,
		-0.831884, -0.553002, 0.046437,
		33.904369, 33.083748, 30.565996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.382069, 33.455215, 31.226782>,  <34.486687, 33.470852, 30.533489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.382069, 33.455215, 31.226782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.158054, 33.147141, 31.104683>,  <34.023647, 32.962296, 31.031424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.158054, 33.147141, 31.104683>,  <34.382069, 33.455215, 31.226782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.158054, 33.147141, 31.104683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438012, -0.588001, 0.680000,
		-0.703213, 0.247119, 0.666650,
		-0.560032, -0.770187, -0.305249,
		33.990044, 32.916084, 31.013109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.992085, 33.159706, 31.822514>,  <34.382069, 33.455215, 31.226782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.992085, 33.159706, 31.822514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.071571, 32.877861, 31.550034>,  <34.119263, 32.708755, 31.386545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.071571, 32.877861, 31.550034>,  <33.992085, 33.159706, 31.822514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.071571, 32.877861, 31.550034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239853, -0.638962, 0.730888,
		-0.950253, -0.308631, 0.042027,
		0.198721, -0.704609, -0.681202,
		34.131187, 32.666477, 31.345673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.401382, 32.711994, 32.330921>,  <33.992085, 33.159706, 31.822514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.401382, 32.711994, 32.330921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.376045, 32.313507, 32.307117>,  <34.360844, 32.074413, 32.292835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.376045, 32.313507, 32.307117>,  <34.401382, 32.711994, 32.330921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.376045, 32.313507, 32.307117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664015, 0.086583, -0.742689,
		0.745032, -0.007527, -0.666987,
		-0.063340, -0.996216, -0.059509,
		34.357044, 32.014641, 32.289265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.750069, 32.444206, 31.687563>,  <34.401382, 32.711994, 32.330921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.750069, 32.444206, 31.687563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.420609, 32.250053, 31.804869>,  <34.222931, 32.133560, 31.875252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.420609, 32.250053, 31.804869>,  <34.750069, 32.444206, 31.687563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.420609, 32.250053, 31.804869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486780, 0.339814, -0.804719,
		0.290931, -0.805568, -0.516159,
		-0.823654, -0.485373, 0.293272,
		34.173512, 32.104439, 31.892849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.542042, 31.826469, 31.201870>,  <34.750069, 32.444206, 31.687563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.542042, 31.826469, 31.201870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.236805, 32.005394, 31.388464>,  <34.053665, 32.112747, 31.500420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.236805, 32.005394, 31.388464>,  <34.542042, 31.826469, 31.201870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.236805, 32.005394, 31.388464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262098, 0.445582, -0.856015,
		-0.590764, -0.775479, -0.222779,
		-0.763088, 0.447313, 0.466485,
		34.007877, 32.139587, 31.528410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.966522, 31.712200, 30.864637>,  <34.542042, 31.826469, 31.201870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.966522, 31.712200, 30.864637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.867783, 32.030334, 31.086090>,  <33.808540, 32.221214, 31.218962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.867783, 32.030334, 31.086090>,  <33.966522, 31.712200, 30.864637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.867783, 32.030334, 31.086090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356936, 0.456521, -0.814976,
		-0.900924, -0.398785, 0.171193,
		-0.246847, 0.795336, 0.553631,
		33.793728, 32.268936, 31.252180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.214989, 31.868317, 30.764854>,  <33.966522, 31.712200, 30.864637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.214989, 31.868317, 30.764854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.435085, 32.190975, 30.851158>,  <33.567142, 32.384571, 30.902941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.435085, 32.190975, 30.851158>,  <33.214989, 31.868317, 30.764854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.435085, 32.190975, 30.851158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550851, 0.544857, -0.632214,
		-0.627533, 0.229018, 0.744145,
		0.550241, 0.806648, 0.215761,
		33.600159, 32.432968, 30.915886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.845158, 32.427448, 31.087242>,  <33.214989, 31.868317, 30.764854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.845158, 32.427448, 31.087242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.141296, 32.633076, 30.913982>,  <33.318981, 32.756454, 30.810026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.141296, 32.633076, 30.913982>,  <32.845158, 32.427448, 31.087242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.141296, 32.633076, 30.913982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672216, 0.562779, -0.481047,
		-0.003525, 0.647311, 0.762218,
		0.740347, 0.514070, -0.433149,
		33.363400, 32.787296, 30.784039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.468960, 33.096470, 30.996742>,  <32.845158, 32.427448, 31.087242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.468960, 33.096470, 30.996742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.785736, 33.045193, 30.757948>,  <32.975803, 33.014427, 30.614672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.785736, 33.045193, 30.757948>,  <32.468960, 33.096470, 30.996742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.785736, 33.045193, 30.757948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478701, 0.476587, -0.737367,
		0.379044, 0.869730, 0.316062,
		0.791942, -0.128196, -0.596988,
		33.023319, 33.006733, 30.578852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.734978, 33.705246, 30.925137>,  <32.468960, 33.096470, 30.996742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.734978, 33.705246, 30.925137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.831196, 33.504173, 30.593004>,  <32.888927, 33.383530, 30.393724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.831196, 33.504173, 30.593004>,  <32.734978, 33.705246, 30.925137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.831196, 33.504173, 30.593004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344308, 0.755630, -0.557203,
		0.907519, 0.419920, 0.008683,
		0.240542, -0.502683, -0.830331,
		32.903358, 33.353367, 30.343904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.077168, 34.205009, 30.455454>,  <32.734978, 33.705246, 30.925137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.077168, 34.205009, 30.455454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.927780, 33.914677, 30.224390>,  <32.838150, 33.740479, 30.085752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.927780, 33.914677, 30.224390>,  <33.077168, 34.205009, 30.455454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.927780, 33.914677, 30.224390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328233, 0.685829, -0.649539,
		0.867633, -0.052973, -0.494376,
		-0.373465, -0.725832, -0.577660,
		32.815739, 33.696926, 30.051092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.214424, 34.405678, 29.831043>,  <33.077168, 34.205009, 30.455454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.214424, 34.405678, 29.831043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.939281, 34.127369, 29.748333>,  <32.774197, 33.960384, 29.698706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.939281, 34.127369, 29.748333>,  <33.214424, 34.405678, 29.831043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.939281, 34.127369, 29.748333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507699, 0.664785, -0.547998,
		0.518743, -0.271964, -0.810519,
		-0.687857, -0.695770, -0.206776,
		32.732925, 33.918636, 29.686300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.201523, 34.239243, 29.053982>,  <33.214424, 34.405678, 29.831043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.201523, 34.239243, 29.053982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.862881, 34.226486, 29.266485>,  <32.659695, 34.218830, 29.393988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.862881, 34.226486, 29.266485>,  <33.201523, 34.239243, 29.053982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.862881, 34.226486, 29.266485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415576, 0.663222, -0.622442,
		-0.332489, -0.747743, -0.574745,
		-0.846609, -0.031895, 0.531258,
		32.608898, 34.216919, 29.425863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.474403, 33.985817, 28.437082>,  <33.201523, 34.239243, 29.053982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.474403, 33.985817, 28.437082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.340405, 34.361462, 28.406504>,  <33.260006, 34.586849, 28.388157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.340405, 34.361462, 28.406504>,  <33.474403, 33.985817, 28.437082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.340405, 34.361462, 28.406504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766788, 0.318877, 0.557095,
		0.547552, 0.128007, -0.826923,
		-0.334998, 0.939112, -0.076447,
		33.239906, 34.643196, 28.383570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.886345, 34.444256, 28.028835>,  <33.474403, 33.985817, 28.437082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.886345, 34.444256, 28.028835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.674461, 34.570606, 28.343700>,  <33.547329, 34.646416, 28.532619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.674461, 34.570606, 28.343700>,  <33.886345, 34.444256, 28.028835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.674461, 34.570606, 28.343700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839582, 0.063477, 0.539512,
		0.120453, 0.946674, -0.298829,
		-0.529711, 0.315877, 0.787164,
		33.515549, 34.665371, 28.579849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.025414, 35.221828, 28.275335>,  <33.886345, 34.444256, 28.028835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.025414, 35.221828, 28.275335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.934242, 34.944538, 28.548826>,  <33.879539, 34.778164, 28.712921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.934242, 34.944538, 28.548826>,  <34.025414, 35.221828, 28.275335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.934242, 34.944538, 28.548826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895245, 0.126920, 0.427116,
		-0.382867, 0.709455, 0.591681,
		-0.227924, -0.693228, 0.683729,
		33.865864, 34.736568, 28.753944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.650833, 35.251484, 28.711702>,  <34.025414, 35.221828, 28.275335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.650833, 35.251484, 28.711702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.038357, 35.153511, 28.696692>,  <35.270870, 35.094727, 28.687685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.038357, 35.153511, 28.696692>,  <34.650833, 35.251484, 28.711702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.038357, 35.153511, 28.696692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225915, -0.810867, -0.539867,
		0.101803, 0.531508, -0.840913,
		0.968813, -0.244935, -0.037527,
		35.329002, 35.080032, 28.685432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.987289, 35.128990, 27.954594>,  <34.650833, 35.251484, 28.711702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.987289, 35.128990, 27.954594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.201511, 34.899658, 28.202618>,  <35.330044, 34.762058, 28.351433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.201511, 34.899658, 28.202618>,  <34.987289, 35.128990, 27.954594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.201511, 34.899658, 28.202618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132821, -0.782280, -0.608602,
		0.833992, 0.243581, -0.495102,
		0.535552, -0.573329, 0.620062,
		35.362179, 34.727661, 28.388636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.648998, 34.798973, 27.707092>,  <34.987289, 35.128990, 27.954594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.648998, 34.798973, 27.707092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.479076, 34.551815, 27.971743>,  <35.377125, 34.403522, 28.130533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.479076, 34.551815, 27.971743>,  <35.648998, 34.798973, 27.707092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.479076, 34.551815, 27.971743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108368, -0.760302, -0.640466,
		0.898775, -0.200374, 0.389940,
		-0.424805, -0.617892, 0.661627,
		35.351635, 34.366447, 28.170231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.368050, 34.739990, 28.010527>,  <35.648998, 34.798973, 27.707092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.368050, 34.739990, 28.010527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.498920, 34.989136, 27.726274>,  <36.577442, 35.138626, 27.555723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.498920, 34.989136, 27.726274>,  <36.368050, 34.739990, 28.010527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.498920, 34.989136, 27.726274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675758, 0.679882, 0.284801,
		0.660536, 0.387034, 0.643348,
		0.327173, 0.622869, -0.710628,
		36.597073, 35.175995, 27.513086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.344288, 35.323860, 28.301353>,  <36.368050, 34.739990, 28.010527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.344288, 35.323860, 28.301353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.420349, 35.459785, 27.932924>,  <36.465984, 35.541340, 27.711866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.420349, 35.459785, 27.932924>,  <36.344288, 35.323860, 28.301353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.420349, 35.459785, 27.932924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384280, 0.889094, 0.248678,
		0.903422, 0.306663, 0.299643,
		0.190151, 0.339808, -0.921072,
		36.477394, 35.561729, 27.656603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.612717, 36.045185, 28.297529>,  <36.344288, 35.323860, 28.301353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.612717, 36.045185, 28.297529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.396347, 35.964886, 27.970825>,  <36.266525, 35.916706, 27.774803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.396347, 35.964886, 27.970825>,  <36.612717, 36.045185, 28.297529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.396347, 35.964886, 27.970825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530556, 0.834953, 0.146163,
		0.652616, 0.512401, -0.558156,
		-0.540928, -0.200745, -0.816761,
		36.234070, 35.904663, 27.725798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.575912, 36.709274, 27.887035>,  <36.612717, 36.045185, 28.297529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.575912, 36.709274, 27.887035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.272251, 36.490456, 27.745943>,  <36.090054, 36.359165, 27.661287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.272251, 36.490456, 27.745943>,  <36.575912, 36.709274, 27.887035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.272251, 36.490456, 27.745943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615696, 0.779330, 0.116463,
		0.211183, 0.305589, -0.928449,
		-0.759158, -0.547047, -0.352731,
		36.044502, 36.326340, 27.640123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.241257, 37.087143, 27.346008>,  <36.575912, 36.709274, 27.887035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.241257, 37.087143, 27.346008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.978672, 36.817471, 27.481377>,  <35.821121, 36.655666, 27.562597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.978672, 36.817471, 27.481377>,  <36.241257, 37.087143, 27.346008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.978672, 36.817471, 27.481377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657085, 0.731402, 0.182455,
		-0.370529, -0.102594, -0.923137,
		-0.656465, -0.674185, 0.338419,
		35.781731, 36.615215, 27.582903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.601540, 37.120388, 26.946081>,  <36.241257, 37.087143, 27.346008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.601540, 37.120388, 26.946081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.551414, 36.991898, 27.321550>,  <35.521339, 36.914803, 27.546833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.551414, 36.991898, 27.321550>,  <35.601540, 37.120388, 26.946081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.551414, 36.991898, 27.321550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646128, 0.744399, 0.168487,
		-0.752871, -0.585390, -0.300837,
		-0.125312, -0.321229, 0.938674,
		35.513821, 36.895531, 27.603153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.313400, 36.776653, 26.317492>,  <35.601540, 37.120388, 26.946081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.313400, 36.776653, 26.317492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.651329, 36.952511, 26.195517>,  <35.854088, 37.058025, 26.122332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.651329, 36.952511, 26.195517>,  <35.313400, 36.776653, 26.317492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.651329, 36.952511, 26.195517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491026, 0.863454, -0.115499,
		0.212520, 0.247308, 0.945343,
		0.844824, 0.439642, -0.304936,
		35.904778, 37.084404, 26.104036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.679428, 36.495010, 25.782108>,  <35.313400, 36.776653, 26.317492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.679428, 36.495010, 25.782108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.957489, 36.249268, 25.931416>,  <36.124325, 36.101822, 26.021000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.957489, 36.249268, 25.931416>,  <35.679428, 36.495010, 25.782108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.957489, 36.249268, 25.931416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302339, -0.221224, -0.927173,
		0.652187, 0.757384, 0.031958,
		0.695157, -0.614353, 0.373266,
		36.166035, 36.064960, 26.043396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.379101, 36.785721, 25.682014>,  <35.679428, 36.495010, 25.782108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.379101, 36.785721, 25.682014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.355087, 36.387600, 25.651628>,  <36.340679, 36.148727, 25.633396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.355087, 36.387600, 25.651628>,  <36.379101, 36.785721, 25.682014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.355087, 36.387600, 25.651628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304258, 0.054234, -0.951044,
		0.950696, -0.080207, 0.299573,
		-0.060033, -0.995302, -0.075964,
		36.337078, 36.089008, 25.628839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.999836, 36.430721, 25.406969>,  <36.379101, 36.785721, 25.682014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.999836, 36.430721, 25.406969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.632271, 36.295399, 25.325827>,  <36.411732, 36.214207, 25.277142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.632271, 36.295399, 25.325827>,  <36.999836, 36.430721, 25.406969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.632271, 36.295399, 25.325827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201777, 0.038754, -0.978665,
		0.338948, -0.940239, 0.032650,
		-0.918913, -0.338304, -0.202854,
		36.356598, 36.193909, 25.264971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.089443, 35.966030, 24.858501>,  <36.999836, 36.430721, 25.406969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.089443, 35.966030, 24.858501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.700233, 36.047775, 24.815683>,  <36.466709, 36.096825, 24.789991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.700233, 36.047775, 24.815683>,  <37.089443, 35.966030, 24.858501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.700233, 36.047775, 24.815683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067768, -0.190340, -0.979376,
		-0.220532, -0.960210, 0.171355,
		-0.973022, 0.204371, -0.107048,
		36.408325, 36.109085, 24.783569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.691326, 35.417347, 24.623146>,  <37.089443, 35.966030, 24.858501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.691326, 35.417347, 24.623146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.521355, 35.756584, 24.496542>,  <36.419373, 35.960125, 24.420580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.521355, 35.756584, 24.496542>,  <36.691326, 35.417347, 24.623146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.521355, 35.756584, 24.496542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131603, -0.288056, -0.948528,
		-0.895609, -0.444711, 0.010792,
		-0.424930, 0.848089, -0.316511,
		36.393875, 36.011009, 24.401588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.326233, 35.263557, 24.144375>,  <36.691326, 35.417347, 24.623146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.326233, 35.263557, 24.144375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.339287, 35.647804, 24.033993>,  <36.347118, 35.878353, 23.967764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.339287, 35.647804, 24.033993>,  <36.326233, 35.263557, 24.144375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.339287, 35.647804, 24.033993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067629, -0.277592, -0.958316,
		-0.997177, 0.012610, -0.074024,
		0.032633, 0.960616, -0.275955,
		36.349075, 35.935989, 23.951206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.062485, 35.273548, 23.464300>,  <36.326233, 35.263557, 24.144375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.062485, 35.273548, 23.464300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.250702, 35.625538, 23.490326>,  <36.363632, 35.836731, 23.505941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.250702, 35.625538, 23.490326>,  <36.062485, 35.273548, 23.464300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.250702, 35.625538, 23.490326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166710, -0.016250, -0.985872,
		-0.866483, 0.474747, -0.154347,
		0.470547, 0.879973, 0.065065,
		36.391865, 35.889530, 23.509846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.796402, 35.795715, 22.994314>,  <36.062485, 35.273548, 23.464300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.796402, 35.795715, 22.994314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.154617, 35.959141, 23.064835>,  <36.369549, 36.057194, 23.107147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.154617, 35.959141, 23.064835>,  <35.796402, 35.795715, 22.994314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.154617, 35.959141, 23.064835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142122, 0.112828, -0.983398,
		-0.421669, 0.905731, 0.042977,
		0.895543, 0.408560, 0.176300,
		36.423279, 36.081707, 23.117725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.828838, 36.248535, 22.509611>,  <35.796402, 35.795715, 22.994314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.828838, 36.248535, 22.509611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.208881, 36.228348, 22.632742>,  <36.436905, 36.216236, 22.706619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.208881, 36.228348, 22.632742>,  <35.828838, 36.248535, 22.509611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.208881, 36.228348, 22.632742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311721, 0.116983, -0.942945,
		0.011581, 0.991851, 0.126879,
		0.950103, -0.050471, 0.307826,
		36.493912, 36.213207, 22.725090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.113354, 36.891159, 22.199572>,  <35.828838, 36.248535, 22.509611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.113354, 36.891159, 22.199572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.390484, 36.614613, 22.281551>,  <36.556763, 36.448685, 22.330738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.390484, 36.614613, 22.281551>,  <36.113354, 36.891159, 22.199572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.390484, 36.614613, 22.281551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195626, -0.093350, -0.976225,
		0.694060, 0.716450, 0.070573,
		0.692829, -0.691365, 0.204947,
		36.598331, 36.407204, 22.343035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.620525, 37.218689, 22.040606>,  <36.113354, 36.891159, 22.199572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.620525, 37.218689, 22.040606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.703663, 36.830841, 21.989021>,  <36.753544, 36.598133, 21.958071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.703663, 36.830841, 21.989021>,  <36.620525, 37.218689, 22.040606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.703663, 36.830841, 21.989021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331037, 0.193785, -0.923506,
		0.920443, 0.149255, 0.361258,
		0.207844, -0.969624, -0.128959,
		36.766018, 36.539955, 21.950335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.195049, 37.179783, 21.615139>,  <36.620525, 37.218689, 22.040606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.195049, 37.179783, 21.615139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.059444, 36.803875, 21.597691>,  <36.978081, 36.578331, 21.587221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.059444, 36.803875, 21.597691>,  <37.195049, 37.179783, 21.615139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.059444, 36.803875, 21.597691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287765, -0.059442, -0.955855,
		0.895691, -0.336597, 0.290585,
		-0.339011, -0.939771, -0.043619,
		36.957741, 36.521942, 21.584604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.743477, 36.708363, 21.318184>,  <37.195049, 37.179783, 21.615139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.743477, 36.708363, 21.318184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.398003, 36.515255, 21.260231>,  <37.190720, 36.399391, 21.225460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.398003, 36.515255, 21.260231>,  <37.743477, 36.708363, 21.318184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.398003, 36.515255, 21.260231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243368, -0.147706, -0.958621,
		0.441390, -0.863204, 0.245061,
		-0.863682, -0.482766, -0.144881,
		37.138897, 36.370426, 21.216766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.847824, 36.400944, 20.762568>,  <37.743477, 36.708363, 21.318184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.847824, 36.400944, 20.762568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.455349, 36.323715, 20.762812>,  <37.219864, 36.277378, 20.762959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.455349, 36.323715, 20.762812>,  <37.847824, 36.400944, 20.762568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.455349, 36.323715, 20.762812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049983, -0.257068, -0.965100,
		0.186491, -0.946910, 0.261881,
		-0.981184, -0.193072, 0.000611,
		37.160995, 36.265793, 20.762995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.709621, 35.617146, 20.456108>,  <37.847824, 36.400944, 20.762568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.709621, 35.617146, 20.456108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.400974, 35.861290, 20.384480>,  <37.215786, 36.007774, 20.341503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.400974, 35.861290, 20.384480>,  <37.709621, 35.617146, 20.456108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.400974, 35.861290, 20.384480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027137, -0.249677, -0.967949,
		-0.635506, -0.751747, 0.176092,
		-0.771619, 0.610358, -0.179071,
		37.169487, 36.044399, 20.330759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.182102, 35.250675, 19.902102>,  <37.709621, 35.617146, 20.456108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.182102, 35.250675, 19.902102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.062233, 35.632294, 19.901457>,  <36.990311, 35.861263, 19.901070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.062233, 35.632294, 19.901457>,  <37.182102, 35.250675, 19.902102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.062233, 35.632294, 19.901457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107516, -0.035450, -0.993571,
		-0.947965, -0.297570, 0.113198,
		-0.299670, 0.954042, -0.001611,
		36.972332, 35.918507, 19.900974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.548351, 35.351486, 19.502481>,  <37.182102, 35.250675, 19.902102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.548351, 35.351486, 19.502481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.729412, 35.708130, 19.507235>,  <36.838047, 35.922115, 19.510086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.729412, 35.708130, 19.507235>,  <36.548351, 35.351486, 19.502481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.729412, 35.708130, 19.507235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178654, 0.103738, -0.978428,
		-0.873607, 0.440764, 0.206246,
		0.452651, 0.891608, 0.011882,
		36.865208, 35.975613, 19.510799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.082069, 35.782757, 19.033022>,  <36.548351, 35.351486, 19.502481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.082069, 35.782757, 19.033022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.395676, 36.028046, 19.071554>,  <36.583839, 36.175220, 19.094673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.395676, 36.028046, 19.071554>,  <36.082069, 35.782757, 19.033022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.395676, 36.028046, 19.071554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031488, 0.194273, -0.980442,
		-0.619943, 0.765648, 0.171622,
		0.784015, 0.613222, 0.096330,
		36.630878, 36.212013, 19.100452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.952023, 36.390774, 18.591415>,  <36.082069, 35.782757, 19.033022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.952023, 36.390774, 18.591415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.345684, 36.387085, 18.662254>,  <36.581879, 36.384872, 18.704758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.345684, 36.387085, 18.662254>,  <35.952023, 36.390774, 18.591415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.345684, 36.387085, 18.662254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177213, 0.088408, -0.980194,
		-0.006613, 0.996042, 0.088641,
		0.984150, -0.009226, 0.177096,
		36.640930, 36.384315, 18.715384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.234905, 36.959080, 18.223747>,  <35.952023, 36.390774, 18.591415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.234905, 36.959080, 18.223747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.533607, 36.696266, 18.265030>,  <36.712830, 36.538578, 18.289801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.533607, 36.696266, 18.265030>,  <36.234905, 36.959080, 18.223747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.533607, 36.696266, 18.265030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243340, 0.125491, -0.961789,
		0.618980, 0.743339, 0.253595,
		0.746759, -0.657038, 0.103208,
		36.757637, 36.499153, 18.295992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.921356, 37.233677, 17.962284>,  <36.234905, 36.959080, 18.223747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.921356, 37.233677, 17.962284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.955761, 36.835304, 17.951601>,  <36.976406, 36.596279, 17.945190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.955761, 36.835304, 17.951601>,  <36.921356, 37.233677, 17.962284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.955761, 36.835304, 17.951601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104985, 0.035718, -0.993832,
		0.990747, 0.082680, 0.107630,
		0.086014, -0.995936, -0.026707,
		36.981564, 36.536522, 17.943588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.350475, 37.139137, 17.471039>,  <36.921356, 37.233677, 17.962284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.350475, 37.139137, 17.471039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.213028, 36.765308, 17.507921>,  <37.130558, 36.541012, 17.530050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.213028, 36.765308, 17.507921>,  <37.350475, 37.139137, 17.471039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.213028, 36.765308, 17.507921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114421, -0.055791, -0.991864,
		0.932111, -0.351378, -0.087764,
		-0.343623, -0.934570, 0.092208,
		37.109940, 36.484936, 17.535583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.673649, 36.710072, 16.945839>,  <37.350475, 37.139137, 17.471039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.673649, 36.710072, 16.945839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.341564, 36.508316, 17.040779>,  <37.142315, 36.387260, 17.097742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.341564, 36.508316, 17.040779>,  <37.673649, 36.710072, 16.945839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.341564, 36.508316, 17.040779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172302, -0.172740, -0.969780,
		0.530150, -0.846019, 0.056502,
		-0.830212, -0.504393, 0.237349,
		37.092499, 36.356998, 17.111984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.655621, 36.062702, 16.498558>,  <37.673649, 36.710072, 16.945839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.655621, 36.062702, 16.498558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.277786, 36.141289, 16.603745>,  <37.051086, 36.188442, 16.666857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.277786, 36.141289, 16.603745>,  <37.655621, 36.062702, 16.498558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.277786, 36.141289, 16.603745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298316, -0.179542, -0.937428,
		-0.136959, -0.963932, 0.228203,
		-0.944590, 0.196466, 0.262967,
		36.994408, 36.200230, 16.682634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.262375, 35.523506, 16.206470>,  <37.655621, 36.062702, 16.498558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.262375, 35.523506, 16.206470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.996433, 35.809387, 16.293337>,  <36.836868, 35.980915, 16.345457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.996433, 35.809387, 16.293337>,  <37.262375, 35.523506, 16.206470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.996433, 35.809387, 16.293337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344322, -0.035234, -0.938190,
		-0.662879, -0.698536, 0.269515,
		-0.664856, 0.714707, 0.217165,
		36.796978, 36.023800, 16.358486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.684437, 35.280708, 15.925328>,  <37.262375, 35.523506, 16.206470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.684437, 35.280708, 15.925328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.614056, 35.672249, 15.967063>,  <36.571827, 35.907173, 15.992104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.614056, 35.672249, 15.967063>,  <36.684437, 35.280708, 15.925328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.614056, 35.672249, 15.967063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427590, 0.019473, -0.903763,
		-0.886684, -0.203629, 0.415123,
		-0.175949, 0.978854, 0.104336,
		36.561272, 35.965904, 15.998363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.066326, 35.305096, 15.524162>,  <36.684437, 35.280708, 15.925328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.066326, 35.305096, 15.524162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.222637, 35.669075, 15.579705>,  <36.316422, 35.887463, 15.613030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.222637, 35.669075, 15.579705>,  <36.066326, 35.305096, 15.524162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.222637, 35.669075, 15.579705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371334, 0.293871, -0.880767,
		-0.842262, 0.292621, 0.452734,
		0.390776, 0.909952, 0.138857,
		36.339870, 35.942062, 15.621363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.568802, 35.810680, 15.242789>,  <36.066326, 35.305096, 15.524162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.568802, 35.810680, 15.242789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.877617, 36.064819, 15.235866>,  <36.062904, 36.217300, 15.231711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.877617, 36.064819, 15.235866>,  <35.568802, 35.810680, 15.242789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.877617, 36.064819, 15.235866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335648, 0.384433, -0.859972,
		-0.539725, 0.669738, 0.510048,
		0.772035, 0.635345, -0.017308,
		36.109226, 36.255424, 15.230673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.329441, 36.578941, 15.188073>,  <35.568802, 35.810680, 15.242789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.329441, 36.578941, 15.188073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.709927, 36.544521, 15.069552>,  <35.938217, 36.523869, 14.998440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.709927, 36.544521, 15.069552>,  <35.329441, 36.578941, 15.188073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.709927, 36.544521, 15.069552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245164, 0.372271, -0.895159,
		0.187335, 0.924126, 0.333011,
		0.951210, -0.086052, -0.296302,
		35.995289, 36.518707, 14.980661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.532246, 37.086571, 14.716303>,  <35.329441, 36.578941, 15.188073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.532246, 37.086571, 14.716303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.829765, 36.835888, 14.623348>,  <36.008278, 36.685478, 14.567575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.829765, 36.835888, 14.623348>,  <35.532246, 37.086571, 14.716303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.829765, 36.835888, 14.623348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049716, 0.398584, -0.915783,
		0.666552, 0.669605, 0.327624,
		0.743799, -0.626706, -0.232387,
		36.052906, 36.647877, 14.553632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.900391, 37.471783, 14.224035>,  <35.532246, 37.086571, 14.716303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.900391, 37.471783, 14.224035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.074387, 37.114422, 14.179115>,  <36.178783, 36.900005, 14.152164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.074387, 37.114422, 14.179115>,  <35.900391, 37.471783, 14.224035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.074387, 37.114422, 14.179115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074166, 0.159843, -0.984352,
		0.897374, 0.419859, 0.135791,
		0.434995, -0.893403, -0.112300,
		36.204884, 36.846401, 14.145425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.573399, 37.535053, 13.846393>,  <35.900391, 37.471783, 14.224035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.573399, 37.535053, 13.846393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.487282, 37.146210, 13.809173>,  <36.435612, 36.912903, 13.786840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.487282, 37.146210, 13.809173>,  <36.573399, 37.535053, 13.846393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.487282, 37.146210, 13.809173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167621, 0.057084, -0.984198,
		0.962057, -0.227482, 0.150656,
		-0.215288, -0.972108, -0.093049,
		36.422695, 36.854576, 13.781258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.160084, 37.206623, 13.440774>,  <36.573399, 37.535053, 13.846393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.160084, 37.206623, 13.440774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.838081, 36.976982, 13.380934>,  <36.644882, 36.839199, 13.345030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.838081, 36.976982, 13.380934>,  <37.160084, 37.206623, 13.440774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.838081, 36.976982, 13.380934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254788, -0.106824, -0.961079,
		0.535775, -0.811787, 0.232267,
		-0.805002, -0.574100, -0.149600,
		36.596581, 36.804752, 13.336054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.366501, 36.785339, 12.814986>,  <37.160084, 37.206623, 13.440774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.366501, 36.785339, 12.814986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.980236, 36.686138, 12.845953>,  <36.748478, 36.626617, 12.864533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.980236, 36.686138, 12.845953>,  <37.366501, 36.785339, 12.814986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.980236, 36.686138, 12.845953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027000, -0.200571, -0.979307,
		0.258402, -0.947768, 0.186987,
		-0.965660, -0.248006, 0.077418,
		36.690536, 36.611736, 12.869178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.305862, 36.092514, 12.381092>,  <37.366501, 36.785339, 12.814986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.305862, 36.092514, 12.381092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.973862, 36.312057, 12.420797>,  <36.774662, 36.443783, 12.444621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.973862, 36.312057, 12.420797>,  <37.305862, 36.092514, 12.381092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.973862, 36.312057, 12.420797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034926, 0.126476, -0.991355,
		-0.556665, -0.826294, -0.085807,
		-0.830002, 0.548856, 0.099264,
		36.724861, 36.476715, 12.450577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.737038, 35.748768, 11.891673>,  <37.305862, 36.092514, 12.381092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.737038, 35.748768, 11.891673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.673641, 36.138733, 11.954202>,  <36.635605, 36.372711, 11.991718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.673641, 36.138733, 11.954202>,  <36.737038, 35.748768, 11.891673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.673641, 36.138733, 11.954202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005168, 0.157501, -0.987505,
		-0.987348, -0.157315, -0.019923,
		-0.158487, 0.974908, 0.156321,
		36.626095, 36.431206, 12.001098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.246284, 35.791363, 11.337955>,  <36.737038, 35.748768, 11.891673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.246284, 35.791363, 11.337955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.354145, 36.154011, 11.467772>,  <36.418861, 36.371601, 11.545662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.354145, 36.154011, 11.467772>,  <36.246284, 35.791363, 11.337955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.354145, 36.154011, 11.467772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137260, 0.369772, -0.918928,
		-0.953124, 0.203247, 0.224154,
		0.269655, 0.906620, 0.324541,
		36.435043, 36.425995, 11.565134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.710510, 36.265835, 11.140610>,  <36.246284, 35.791363, 11.337955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.710510, 36.265835, 11.140610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.052029, 36.470509, 11.178999>,  <36.256939, 36.593315, 11.202032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.052029, 36.470509, 11.178999>,  <35.710510, 36.265835, 11.140610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.052029, 36.470509, 11.178999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164940, 0.440716, -0.882363,
		-0.493790, 0.737528, 0.460678,
		0.853795, 0.511686, 0.095973,
		36.308167, 36.624016, 11.207790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.457191, 37.006271, 11.133346>,  <35.710510, 36.265835, 11.140610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.457191, 37.006271, 11.133346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.843399, 36.983772, 11.031668>,  <36.075123, 36.970272, 10.970661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.843399, 36.983772, 11.031668>,  <35.457191, 37.006271, 11.133346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.843399, 36.983772, 11.031668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170027, 0.603157, -0.779290,
		0.197155, 0.795637, 0.572793,
		0.965516, -0.056251, -0.254196,
		36.133053, 36.966896, 10.955409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.570332, 37.629112, 11.000924>,  <35.457191, 37.006271, 11.133346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.570332, 37.629112, 11.000924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.849777, 37.423260, 10.802092>,  <36.017445, 37.299747, 10.682792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.849777, 37.423260, 10.802092>,  <35.570332, 37.629112, 11.000924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.849777, 37.423260, 10.802092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273603, 0.449784, -0.850198,
		0.661121, 0.729962, 0.173419,
		0.698614, -0.514635, -0.497081,
		36.059361, 37.268867, 10.652967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.652431, 38.019581, 10.324584>,  <35.570332, 37.629112, 11.000924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.652431, 38.019581, 10.324584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.882790, 37.702782, 10.243506>,  <36.021004, 37.512703, 10.194860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.882790, 37.702782, 10.243506>,  <35.652431, 38.019581, 10.324584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.882790, 37.702782, 10.243506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022482, 0.263184, -0.964484,
		0.817214, 0.550885, 0.169372,
		0.575896, -0.791997, -0.202693,
		36.055557, 37.465183, 10.182698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.218891, 38.224297, 9.891508>,  <35.652431, 38.019581, 10.324584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.218891, 38.224297, 9.891508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.161842, 37.833481, 9.828193>,  <36.127613, 37.598991, 9.790203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.161842, 37.833481, 9.828193>,  <36.218891, 38.224297, 9.891508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.161842, 37.833481, 9.828193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031982, 0.155291, -0.987351,
		0.989261, -0.145877, 0.009100,
		-0.142619, -0.977039, -0.158289,
		36.119057, 37.540371, 9.780706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.666103, 38.106907, 9.409888>,  <36.218891, 38.224297, 9.891508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.666103, 38.106907, 9.409888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.394146, 37.814198, 9.390931>,  <36.230972, 37.638573, 9.379557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.394146, 37.814198, 9.390931>,  <36.666103, 38.106907, 9.409888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.394146, 37.814198, 9.390931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162032, 0.212947, -0.963535,
		0.715184, -0.647423, -0.263353,
		-0.679895, -0.731777, -0.047393,
		36.190178, 37.594666, 9.376714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.746754, 37.752556, 8.690104>,  <36.666103, 38.106907, 9.409888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.746754, 37.752556, 8.690104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.379986, 37.630932, 8.793492>,  <36.159927, 37.557957, 8.855525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.379986, 37.630932, 8.793492>,  <36.746754, 37.752556, 8.690104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.379986, 37.630932, 8.793492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268234, -0.009987, -0.963302,
		0.295487, -0.952599, -0.072403,
		-0.916918, -0.304065, 0.258470,
		36.104912, 37.539711, 8.871034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.520382, 37.164856, 8.323428>,  <36.746754, 37.752556, 8.690104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.520382, 37.164856, 8.323428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.163803, 37.332657, 8.391944>,  <35.949856, 37.433338, 8.433054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.163803, 37.332657, 8.391944>,  <36.520382, 37.164856, 8.323428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.163803, 37.332657, 8.391944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240834, -0.118438, -0.963313,
		-0.383822, -0.899996, 0.206612,
		-0.891448, 0.419500, 0.171290,
		35.896370, 37.458508, 8.443331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.924816, 36.667206, 8.118431>,  <36.520382, 37.164856, 8.323428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.924816, 36.667206, 8.118431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.760265, 37.031754, 8.123712>,  <35.661537, 37.250484, 8.126880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.760265, 37.031754, 8.123712>,  <35.924816, 36.667206, 8.118431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.760265, 37.031754, 8.123712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195068, -0.073884, -0.978003,
		-0.890349, -0.404899, 0.208173,
		-0.411373, 0.911372, 0.013201,
		35.636852, 37.305164, 8.127672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.281136, 36.552006, 7.770444>,  <35.924816, 36.667206, 8.118431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.281136, 36.552006, 7.770444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.373005, 36.941216, 7.761734>,  <35.428127, 37.174740, 7.756507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.373005, 36.941216, 7.761734>,  <35.281136, 36.552006, 7.770444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.373005, 36.941216, 7.761734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130814, 0.008691, -0.991369,
		-0.964436, 0.230540, 0.129281,
		0.229673, 0.973024, -0.021776,
		35.441906, 37.233124, 7.755201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.711132, 37.119934, 7.525987>,  <35.281136, 36.552006, 7.770444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.711132, 37.119934, 7.525987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.093945, 37.166813, 7.419891>,  <35.323631, 37.194939, 7.356234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.093945, 37.166813, 7.419891>,  <34.711132, 37.119934, 7.525987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.093945, 37.166813, 7.419891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275574, 0.082884, -0.957700,
		-0.090253, 0.989644, 0.111619,
		0.957034, 0.117195, -0.265239,
		35.381054, 37.201973, 7.340319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.892628, 37.779972, 7.147125>,  <34.711132, 37.119934, 7.525987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.892628, 37.779972, 7.147125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.100689, 37.453236, 7.047350>,  <35.225525, 37.257195, 6.987485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.100689, 37.453236, 7.047350>,  <34.892628, 37.779972, 7.147125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.100689, 37.453236, 7.047350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504835, -0.058478, -0.861233,
		0.688900, 0.573897, -0.442785,
		0.520152, -0.816837, -0.249438,
		35.256733, 37.208183, 6.972519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.163124, 38.456619, 7.377965>,  <34.892628, 37.779972, 7.147125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.163124, 38.456619, 7.377965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.202309, 38.110481, 7.574567>,  <35.225819, 37.902798, 7.692529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.202309, 38.110481, 7.574567>,  <35.163124, 38.456619, 7.377965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.202309, 38.110481, 7.574567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821582, -0.208390, -0.530639,
		0.561612, 0.455793, 0.690540,
		0.097960, -0.865348, 0.491505,
		35.231697, 37.850876, 7.722019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.200710, 39.248257, 7.363148>,  <35.163124, 38.456619, 7.377965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.200710, 39.248257, 7.363148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.564896, 39.336208, 7.223032>,  <35.783409, 39.388981, 7.138962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.564896, 39.336208, 7.223032>,  <35.200710, 39.248257, 7.363148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.564896, 39.336208, 7.223032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153901, 0.606022, 0.780418,
		0.383880, -0.764455, 0.517924,
		0.910467, 0.219878, -0.350290,
		35.838036, 39.402172, 7.117944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.699158, 39.776466, 6.944918>,  <35.200710, 39.248257, 7.363148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.699158, 39.776466, 6.944918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.810291, 40.160557, 6.933713>,  <34.876972, 40.391010, 6.926991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.810291, 40.160557, 6.933713>,  <34.699158, 39.776466, 6.944918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.810291, 40.160557, 6.933713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.916409, 0.256182, -0.307515,
		-0.288106, 0.111108, 0.951131,
		0.277830, 0.960221, -0.028012,
		34.893639, 40.448624, 6.925310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.100632, 40.173489, 7.176392>,  <34.699158, 39.776466, 6.944918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.100632, 40.173489, 7.176392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.351048, 40.401192, 6.963219>,  <34.501297, 40.537815, 6.835316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.351048, 40.401192, 6.963219>,  <34.100632, 40.173489, 7.176392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.351048, 40.401192, 6.963219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777155, 0.511615, -0.366443,
		0.064054, 0.643578, 0.762695,
		0.626041, 0.569261, -0.532931,
		34.538860, 40.571968, 6.803340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.398441, 39.885006, 7.823610>,  <34.100632, 40.173489, 7.176392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.398441, 39.885006, 7.823610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.076962, 39.674957, 7.935546>,  <33.884071, 39.548927, 8.002707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.076962, 39.674957, 7.935546>,  <34.398441, 39.885006, 7.823610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.076962, 39.674957, 7.935546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091498, 0.355635, 0.930135,
		-0.587955, 0.773156, -0.237777,
		-0.803702, -0.525122, 0.279840,
		33.835850, 39.517422, 8.019498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.996365, 40.107224, 8.415028>,  <34.398441, 39.885006, 7.823610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.996365, 40.107224, 8.415028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.888664, 39.722519, 8.394956>,  <33.824043, 39.491695, 8.382913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.888664, 39.722519, 8.394956>,  <33.996365, 40.107224, 8.415028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.888664, 39.722519, 8.394956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192892, -0.104902, 0.975596,
		-0.943557, 0.252997, 0.213761,
		-0.269247, -0.961763, -0.050180,
		33.807892, 39.433990, 8.379902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.498638, 39.832558, 8.836322>,  <33.996365, 40.107224, 8.415028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.498638, 39.832558, 8.836322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.777157, 39.547211, 8.804637>,  <33.944267, 39.376003, 8.785625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.777157, 39.547211, 8.804637>,  <33.498638, 39.832558, 8.836322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.777157, 39.547211, 8.804637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180844, 0.067563, 0.981188,
		-0.694601, -0.697521, 0.176053,
		0.696294, -0.713372, -0.079213,
		33.986046, 39.333199, 8.780873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.425816, 39.517879, 9.448172>,  <33.498638, 39.832558, 8.836322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.425816, 39.517879, 9.448172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.776596, 39.373631, 9.321108>,  <33.987064, 39.287083, 9.244869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.776596, 39.373631, 9.321108>,  <33.425816, 39.517879, 9.448172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.776596, 39.373631, 9.321108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278580, -0.157148, 0.947469,
		-0.391599, -0.919378, -0.037349,
		0.876951, -0.360623, -0.317659,
		34.039680, 39.265442, 9.225810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.378407, 38.745724, 9.672183>,  <33.425816, 39.517879, 9.448172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.378407, 38.745724, 9.672183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.759483, 38.863312, 9.641291>,  <33.988129, 38.933865, 9.622755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.759483, 38.863312, 9.641291>,  <33.378407, 38.745724, 9.672183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.759483, 38.863312, 9.641291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197237, -0.404609, 0.892966,
		0.231255, -0.865953, -0.443449,
		0.952690, 0.293967, -0.077230,
		34.045292, 38.951500, 9.618121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.804844, 38.120609, 9.877310>,  <33.378407, 38.745724, 9.672183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.804844, 38.120609, 9.877310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.078953, 38.411736, 9.866740>,  <34.243416, 38.586411, 9.860398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.078953, 38.411736, 9.866740>,  <33.804844, 38.120609, 9.877310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.078953, 38.411736, 9.866740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164383, -0.119226, 0.979165,
		0.709497, -0.675334, -0.201342,
		0.685268, 0.727811, -0.026423,
		34.284534, 38.630077, 9.858813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.360477, 37.863956, 10.307929>,  <33.804844, 38.120609, 9.877310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.360477, 37.863956, 10.307929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.388435, 38.261330, 10.271697>,  <34.405209, 38.499752, 10.249958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.388435, 38.261330, 10.271697>,  <34.360477, 37.863956, 10.307929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.388435, 38.261330, 10.271697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199368, 0.075060, 0.977046,
		0.977429, -0.086345, -0.192813,
		0.069891, 0.993434, -0.090580,
		34.409401, 38.559361, 10.244523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.965336, 38.084602, 10.626929>,  <34.360477, 37.863956, 10.307929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.965336, 38.084602, 10.626929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.748623, 38.420483, 10.641749>,  <34.618595, 38.622009, 10.650641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.748623, 38.420483, 10.641749>,  <34.965336, 38.084602, 10.626929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.748623, 38.420483, 10.641749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216857, 0.097060, 0.971366,
		0.812061, 0.534305, -0.234680,
		-0.541784, 0.839701, 0.037049,
		34.586086, 38.672394, 10.652864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.420242, 38.566933, 11.051894>,  <34.965336, 38.084602, 10.626929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.420242, 38.566933, 11.051894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.051048, 38.720573, 11.061436>,  <34.829533, 38.812756, 11.067161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.051048, 38.720573, 11.061436>,  <35.420242, 38.566933, 11.051894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.051048, 38.720573, 11.061436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175048, 0.363819, 0.914874,
		0.342723, 0.848589, -0.403035,
		-0.922984, 0.384098, 0.023854,
		34.774155, 38.835804, 11.068592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.592052, 39.210732, 11.224338>,  <35.420242, 38.566933, 11.051894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.592052, 39.210732, 11.224338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.206123, 39.175369, 11.323377>,  <34.974567, 39.154152, 11.382800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.206123, 39.175369, 11.323377>,  <35.592052, 39.210732, 11.224338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.206123, 39.175369, 11.323377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183162, 0.449582, 0.874258,
		-0.188604, 0.888853, -0.417574,
		-0.964822, -0.088405, 0.247597,
		34.916676, 39.148849, 11.397655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.486153, 39.783566, 11.558503>,  <35.592052, 39.210732, 11.224338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.486153, 39.783566, 11.558503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.177158, 39.557198, 11.673742>,  <34.991760, 39.421375, 11.742886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.177158, 39.557198, 11.673742>,  <35.486153, 39.783566, 11.558503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.177158, 39.557198, 11.673742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117915, 0.317957, 0.940744,
		-0.623988, 0.760683, -0.178886,
		-0.772486, -0.565920, 0.288097,
		34.945412, 39.387421, 11.760172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.211407, 40.232700, 12.242372>,  <35.486153, 39.783566, 11.558503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.211407, 40.232700, 12.242372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.066132, 39.861214, 12.272264>,  <34.978966, 39.638321, 12.290198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.066132, 39.861214, 12.272264>,  <35.211407, 40.232700, 12.242372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.066132, 39.861214, 12.272264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252051, -0.020719, 0.967492,
		-0.896976, 0.370216, 0.241608,
		-0.363187, -0.928715, 0.074729,
		34.957176, 39.582600, 12.294683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.632290, 40.196404, 12.733619>,  <35.211407, 40.232700, 12.242372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.632290, 40.196404, 12.733619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.805779, 39.836285, 12.718920>,  <34.909870, 39.620213, 12.710100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.805779, 39.836285, 12.718920>,  <34.632290, 40.196404, 12.733619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.805779, 39.836285, 12.718920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194513, 0.053728, 0.979427,
		-0.879803, -0.431943, 0.198422,
		0.433718, -0.900299, -0.036748,
		34.935894, 39.566196, 12.707895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.332245, 39.896969, 13.275080>,  <34.632290, 40.196404, 12.733619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.332245, 39.896969, 13.275080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.669342, 39.697586, 13.193760>,  <34.871601, 39.577957, 13.144968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.669342, 39.697586, 13.193760>,  <34.332245, 39.896969, 13.275080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.669342, 39.697586, 13.193760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175043, -0.103397, 0.979116,
		-0.509068, -0.860726, 0.000115,
		0.842739, -0.498457, -0.203300,
		34.922165, 39.548050, 13.132770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.387386, 39.350449, 13.813274>,  <34.332245, 39.896969, 13.275080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.387386, 39.350449, 13.813274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.761772, 39.349438, 13.672445>,  <34.986404, 39.348831, 13.587948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.761772, 39.349438, 13.672445>,  <34.387386, 39.350449, 13.813274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.761772, 39.349438, 13.672445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347967, -0.145795, 0.926101,
		-0.053669, -0.989312, -0.135581,
		0.935969, -0.002525, -0.352073,
		35.042564, 39.348679, 13.566823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.700054, 38.946518, 14.206887>,  <34.387386, 39.350449, 13.813274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.700054, 38.946518, 14.206887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.027866, 39.127190, 14.065826>,  <35.224552, 39.235592, 13.981190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.027866, 39.127190, 14.065826>,  <34.700054, 38.946518, 14.206887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.027866, 39.127190, 14.065826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435401, -0.090701, 0.895656,
		0.372560, -0.887560, -0.270992,
		0.819527, 0.451676, -0.352653,
		35.273724, 39.262691, 13.960031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.227787, 38.480396, 14.386650>,  <34.700054, 38.946518, 14.206887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.227787, 38.480396, 14.386650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.401997, 38.832531, 14.311467>,  <35.506523, 39.043812, 14.266357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.401997, 38.832531, 14.311467>,  <35.227787, 38.480396, 14.386650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.401997, 38.832531, 14.311467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421891, -0.015170, 0.906520,
		0.795192, -0.474104, -0.378014,
		0.435519, 0.880338, -0.187957,
		35.532654, 39.096634, 14.255080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.909870, 38.366695, 14.553859>,  <35.227787, 38.480396, 14.386650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.909870, 38.366695, 14.553859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.834213, 38.757290, 14.595243>,  <35.788818, 38.991646, 14.620074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.834213, 38.757290, 14.595243>,  <35.909870, 38.366695, 14.553859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.834213, 38.757290, 14.595243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379136, -0.024573, 0.925014,
		0.905805, 0.214181, -0.365573,
		-0.189138, 0.976485, 0.103462,
		35.777473, 39.050236, 14.626282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.572781, 38.659855, 14.807200>,  <35.909870, 38.366695, 14.553859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.572781, 38.659855, 14.807200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.240398, 38.864971, 14.893508>,  <36.040970, 38.988041, 14.945292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.240398, 38.864971, 14.893508>,  <36.572781, 38.659855, 14.807200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.240398, 38.864971, 14.893508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320551, 0.124322, 0.939037,
		0.454701, 0.849467, -0.267681,
		-0.830960, 0.512786, 0.215768,
		35.991112, 39.018806, 14.958239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.855412, 39.195213, 15.259171>,  <36.572781, 38.659855, 14.807200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.855412, 39.195213, 15.259171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.457100, 39.213825, 15.290798>,  <36.218113, 39.224991, 15.309774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.457100, 39.213825, 15.290798>,  <36.855412, 39.195213, 15.259171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.457100, 39.213825, 15.290798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086891, 0.201715, 0.975582,
		0.029444, 0.978338, -0.204907,
		-0.995783, 0.046530, 0.079069,
		36.158363, 39.227783, 15.314519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.630886, 39.833530, 15.716410>,  <36.855412, 39.195213, 15.259171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.630886, 39.833530, 15.716410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.316265, 39.586670, 15.724957>,  <36.127491, 39.438553, 15.730084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.316265, 39.586670, 15.724957>,  <36.630886, 39.833530, 15.716410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.316265, 39.586670, 15.724957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074865, 0.129647, 0.988730,
		-0.612966, 0.776091, -0.148177,
		-0.786555, -0.617151, 0.021367,
		36.080299, 39.401524, 15.731367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.115936, 40.154205, 16.132771>,  <36.630886, 39.833530, 15.716410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.115936, 40.154205, 16.132771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.013493, 39.767696, 16.143513>,  <35.952026, 39.535789, 16.149958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.013493, 39.767696, 16.143513>,  <36.115936, 40.154205, 16.132771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.013493, 39.767696, 16.143513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358525, 0.120753, 0.925677,
		-0.897700, 0.227450, -0.377360,
		-0.256113, -0.966274, 0.026853,
		35.936657, 39.477814, 16.151569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.607849, 40.130753, 16.613232>,  <36.115936, 40.154205, 16.132771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.607849, 40.130753, 16.613232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.696407, 39.743156, 16.569342>,  <35.749542, 39.510597, 16.543007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.696407, 39.743156, 16.569342>,  <35.607849, 40.130753, 16.613232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.696407, 39.743156, 16.569342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274505, -0.169891, 0.946459,
		-0.935752, -0.179421, -0.303606,
		0.221395, -0.968992, -0.109724,
		35.762825, 39.452457, 16.536425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.938572, 39.792019, 16.789934>,  <35.607849, 40.130753, 16.613232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.938572, 39.792019, 16.789934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.243011, 39.536579, 16.835396>,  <35.425674, 39.383316, 16.862673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.243011, 39.536579, 16.835396>,  <34.938572, 39.792019, 16.789934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.243011, 39.536579, 16.835396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292387, -0.181366, 0.938944,
		-0.578997, -0.747861, -0.324756,
		0.761099, -0.638601, 0.113654,
		35.471340, 39.344997, 16.869492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.707718, 39.223644, 17.040697>,  <34.938572, 39.792019, 16.789934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.707718, 39.223644, 17.040697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.093330, 39.194233, 17.142860>,  <35.324699, 39.176586, 17.204159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.093330, 39.194233, 17.142860>,  <34.707718, 39.223644, 17.040697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.093330, 39.194233, 17.142860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265782, -0.267166, 0.926273,
		0.000130, -0.960841, -0.277100,
		0.964033, -0.073528, 0.255409,
		35.382542, 39.172173, 17.219482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.679253, 38.745979, 17.462103>,  <34.707718, 39.223644, 17.040697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.679253, 38.745979, 17.462103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.038273, 38.904972, 17.538439>,  <35.253685, 39.000366, 17.584240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.038273, 38.904972, 17.538439>,  <34.679253, 38.745979, 17.462103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.038273, 38.904972, 17.538439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032875, -0.371287, 0.927936,
		0.439691, -0.839140, -0.320180,
		0.897547, 0.397479, 0.190838,
		35.307537, 39.024216, 17.595690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.187504, 38.213116, 17.608591>,  <34.679253, 38.745979, 17.462103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.187504, 38.213116, 17.608591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.316998, 38.534126, 17.809048>,  <35.394695, 38.726734, 17.929321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.316998, 38.534126, 17.809048>,  <35.187504, 38.213116, 17.608591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.316998, 38.534126, 17.809048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081443, -0.551336, 0.830298,
		0.942635, -0.227985, -0.243849,
		0.323738, 0.802528, 0.501141,
		35.414120, 38.774883, 17.959391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.622723, 37.960396, 18.095964>,  <35.187504, 38.213116, 17.608591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.622723, 37.960396, 18.095964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.562927, 38.335781, 18.220507>,  <35.527050, 38.561012, 18.295233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.562927, 38.335781, 18.220507>,  <35.622723, 37.960396, 18.095964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.562927, 38.335781, 18.220507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139898, -0.291653, 0.946238,
		0.978816, 0.185013, -0.087689,
		-0.149491, 0.938461, 0.311358,
		35.518082, 38.617321, 18.313913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.061794, 37.965389, 18.612480>,  <35.622723, 37.960396, 18.095964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.061794, 37.965389, 18.612480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.798775, 38.259171, 18.679661>,  <35.640965, 38.435440, 18.719969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.798775, 38.259171, 18.679661>,  <36.061794, 37.965389, 18.612480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.798775, 38.259171, 18.679661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006971, -0.228842, 0.973439,
		0.753382, 0.638911, 0.155594,
		-0.657547, 0.734455, 0.167952,
		35.601509, 38.479507, 18.730047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.223827, 38.223526, 19.209095>,  <36.061794, 37.965389, 18.612480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.223827, 38.223526, 19.209095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.839237, 38.325081, 19.166941>,  <35.608482, 38.386013, 19.141649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.839237, 38.325081, 19.166941>,  <36.223827, 38.223526, 19.209095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.839237, 38.325081, 19.166941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191511, -0.343648, 0.919364,
		0.197196, 0.904129, 0.379031,
		-0.961477, 0.253883, -0.105385,
		35.550793, 38.401245, 19.135324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.070938, 38.692818, 19.760378>,  <36.223827, 38.223526, 19.209095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.070938, 38.692818, 19.760378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.703373, 38.571392, 19.659620>,  <35.482834, 38.498535, 19.599165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.703373, 38.571392, 19.659620>,  <36.070938, 38.692818, 19.760378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.703373, 38.571392, 19.659620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147062, -0.328899, 0.932844,
		-0.366030, 0.894244, 0.257585,
		-0.918910, -0.303568, -0.251896,
		35.427700, 38.480320, 19.584051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.724888, 38.882641, 20.266281>,  <36.070938, 38.692818, 19.760378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.724888, 38.882641, 20.266281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.450027, 38.634426, 20.115145>,  <35.285110, 38.485497, 20.024464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.450027, 38.634426, 20.115145>,  <35.724888, 38.882641, 20.266281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.450027, 38.634426, 20.115145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252350, -0.283830, 0.925073,
		-0.681282, 0.731011, 0.038442,
		-0.687149, -0.620535, -0.377839,
		35.243881, 38.448265, 20.001793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.199711, 38.969902, 20.641617>,  <35.724888, 38.882641, 20.266281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.199711, 38.969902, 20.641617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.107849, 38.607395, 20.499664>,  <35.052734, 38.389893, 20.414492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.107849, 38.607395, 20.499664>,  <35.199711, 38.969902, 20.641617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.107849, 38.607395, 20.499664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425778, -0.234336, 0.873956,
		-0.875199, 0.351806, -0.332053,
		-0.229651, -0.906266, -0.354882,
		35.038952, 38.335514, 20.393200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.450981, 38.787075, 20.755318>,  <35.199711, 38.969902, 20.641617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.450981, 38.787075, 20.755318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.659714, 38.447937, 20.717697>,  <34.784954, 38.244453, 20.695126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.659714, 38.447937, 20.717697>,  <34.450981, 38.787075, 20.755318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.659714, 38.447937, 20.717697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375005, -0.327028, 0.867423,
		-0.766201, -0.417379, -0.488601,
		0.521830, -0.847849, -0.094050,
		34.816261, 38.193581, 20.689482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.981022, 38.253990, 20.938078>,  <34.450981, 38.787075, 20.755318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.981022, 38.253990, 20.938078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.341728, 38.083534, 20.966982>,  <34.558151, 37.981258, 20.984324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.341728, 38.083534, 20.966982>,  <33.981022, 38.253990, 20.938078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.341728, 38.083534, 20.966982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274462, -0.435412, 0.857372,
		-0.333901, -0.792981, -0.509599,
		0.901765, -0.426143, 0.072258,
		34.612259, 37.955692, 20.988659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.926548, 37.684105, 21.345867>,  <33.981022, 38.253990, 20.938078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.926548, 37.684105, 21.345867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.316505, 37.772766, 21.354456>,  <34.550480, 37.825962, 21.359610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.316505, 37.772766, 21.354456>,  <33.926548, 37.684105, 21.345867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.316505, 37.772766, 21.354456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020963, -0.187347, 0.982070,
		0.221700, -0.956959, -0.187289,
		0.974890, 0.221651, 0.021474,
		34.608971, 37.839260, 21.360899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.173759, 37.157272, 21.762840>,  <33.926548, 37.684105, 21.345867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.173759, 37.157272, 21.762840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.450027, 37.446468, 21.756430>,  <34.615788, 37.619987, 21.752583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.450027, 37.446468, 21.756430>,  <34.173759, 37.157272, 21.762840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.450027, 37.446468, 21.756430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167423, -0.138299, 0.976137,
		0.703525, -0.676870, -0.216565,
		0.690668, 0.722995, -0.016027,
		34.657227, 37.663368, 21.751621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.769951, 36.862099, 22.049555>,  <34.173759, 37.157272, 21.762840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.769951, 36.862099, 22.049555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.797470, 37.258511, 22.095377>,  <34.813980, 37.496357, 22.122869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.797470, 37.258511, 22.095377>,  <34.769951, 36.862099, 22.049555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.797470, 37.258511, 22.095377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175778, -0.125073, 0.976452,
		0.982023, -0.047041, -0.182806,
		0.068798, 0.991032, 0.114556,
		34.818108, 37.555820, 22.129744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.186699, 36.896564, 22.568045>,  <34.769951, 36.862099, 22.049555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.186699, 36.896564, 22.568045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.068157, 37.277653, 22.541214>,  <34.997032, 37.506306, 22.525116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.068157, 37.277653, 22.541214>,  <35.186699, 36.896564, 22.568045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.068157, 37.277653, 22.541214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041406, 0.082982, 0.995691,
		0.954181, 0.292296, -0.064040,
		-0.296350, 0.952721, -0.067077,
		34.979252, 37.563469, 22.521091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.681366, 37.275669, 23.049049>,  <35.186699, 36.896564, 22.568045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.681366, 37.275669, 23.049049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.340046, 37.478504, 23.000488>,  <35.135254, 37.600204, 22.971352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.340046, 37.478504, 23.000488>,  <35.681366, 37.275669, 23.049049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.340046, 37.478504, 23.000488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033237, 0.285257, 0.957875,
		0.520356, 0.813322, -0.260265,
		-0.853303, 0.507086, -0.121403,
		35.084057, 37.630630, 22.964067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.875603, 37.904232, 23.342916>,  <35.681366, 37.275669, 23.049049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.875603, 37.904232, 23.342916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.477470, 37.866920, 23.352816>,  <35.238590, 37.844532, 23.358755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.477470, 37.866920, 23.352816>,  <35.875603, 37.904232, 23.342916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.477470, 37.866920, 23.352816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004785, 0.208436, 0.978024,
		-0.096389, 0.973577, -0.207017,
		-0.995332, -0.093280, 0.024750,
		35.178871, 37.838936, 23.360241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.620922, 38.489815, 23.716541>,  <35.875603, 37.904232, 23.342916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.620922, 38.489815, 23.716541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.355743, 38.191784, 23.745853>,  <35.196636, 38.012966, 23.763441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.355743, 38.191784, 23.745853>,  <35.620922, 38.489815, 23.716541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.355743, 38.191784, 23.745853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073895, 0.162521, 0.983934,
		-0.745013, 0.646879, -0.162800,
		-0.662944, -0.745074, 0.073279,
		35.156860, 37.968262, 23.767838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.269375, 38.713028, 24.256041>,  <35.620922, 38.489815, 23.716541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.269375, 38.713028, 24.256041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.141682, 38.334484, 24.236095>,  <35.065067, 38.107357, 24.224129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.141682, 38.334484, 24.236095>,  <35.269375, 38.713028, 24.256041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.141682, 38.334484, 24.236095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088221, -0.022709, 0.995842,
		-0.943562, 0.322302, -0.076239,
		-0.319231, -0.946365, -0.049861,
		35.045914, 38.050575, 24.221138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.347500, 39.393330, 23.882006>,  <35.269375, 38.713028, 24.256041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.347500, 39.393330, 23.882006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.053291, 39.611378, 24.042933>,  <34.876766, 39.742207, 24.139488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.053291, 39.611378, 24.042933>,  <35.347500, 39.393330, 23.882006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.053291, 39.611378, 24.042933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102402, 0.497553, -0.861368,
		-0.669720, -0.674751, -0.310139,
		-0.735519, 0.545117, 0.402317,
		34.832634, 39.774914, 24.163628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.700615, 39.248451, 23.548157>,  <35.347500, 39.393330, 23.882006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.700615, 39.248451, 23.548157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.753002, 39.634190, 23.640150>,  <34.784435, 39.865631, 23.695347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.753002, 39.634190, 23.640150>,  <34.700615, 39.248451, 23.548157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.753002, 39.634190, 23.640150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041651, 0.226426, -0.973138,
		-0.990511, 0.137029, -0.010511,
		0.130968, 0.964342, 0.229985,
		34.792294, 39.923492, 23.709145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.184193, 39.706303, 23.225813>,  <34.700615, 39.248451, 23.548157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.184193, 39.706303, 23.225813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.496971, 39.944462, 23.299623>,  <34.684639, 40.087357, 23.343910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.496971, 39.944462, 23.299623>,  <34.184193, 39.706303, 23.225813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.496971, 39.944462, 23.299623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063235, 0.370271, -0.926769,
		-0.620125, 0.713018, 0.327184,
		0.781950, 0.595402, 0.184527,
		34.731556, 40.123081, 23.354982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.887451, 40.295734, 22.986946>,  <34.184193, 39.706303, 23.225813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.887451, 40.295734, 22.986946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.285244, 40.337666, 22.985859>,  <34.523922, 40.362823, 22.985207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.285244, 40.337666, 22.985859>,  <33.887451, 40.295734, 22.986946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.285244, 40.337666, 22.985859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027844, 0.238984, -0.970624,
		-0.101099, 0.965348, 0.240585,
		0.994487, 0.104828, -0.002718,
		34.583591, 40.369114, 22.985043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.953976, 40.942772, 22.609692>,  <33.887451, 40.295734, 22.986946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.953976, 40.942772, 22.609692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.326355, 40.796764, 22.605690>,  <34.549782, 40.709160, 22.603289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.326355, 40.796764, 22.605690>,  <33.953976, 40.942772, 22.609692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.326355, 40.796764, 22.605690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114105, 0.316826, -0.941595,
		0.346867, 0.875434, 0.336598,
		0.930948, -0.365016, -0.010005,
		34.605640, 40.687260, 22.602688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.223003, 41.333969, 22.221533>,  <33.953976, 40.942772, 22.609692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.223003, 41.333969, 22.221533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.473152, 41.022747, 22.197729>,  <34.623241, 40.836014, 22.183447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.473152, 41.022747, 22.197729>,  <34.223003, 41.333969, 22.221533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.473152, 41.022747, 22.197729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106561, 0.160695, -0.981235,
		0.773020, 0.607291, 0.183404,
		0.625368, -0.778058, -0.059507,
		34.660763, 40.789330, 22.179876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.832787, 41.593979, 21.954298>,  <34.223003, 41.333969, 22.221533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.832787, 41.593979, 21.954298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.815804, 41.204712, 21.863846>,  <34.805614, 40.971149, 21.809574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.815804, 41.204712, 21.863846>,  <34.832787, 41.593979, 21.954298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.815804, 41.204712, 21.863846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150595, 0.217517, -0.964369,
		0.987684, -0.074996, 0.137320,
		-0.042454, -0.973171, -0.226132,
		34.803066, 40.912762, 21.796007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.414890, 41.558064, 21.402849>,  <34.832787, 41.593979, 21.954298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.414890, 41.558064, 21.402849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.209129, 41.215263, 21.390589>,  <35.085674, 41.009583, 21.383232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.209129, 41.215263, 21.390589>,  <35.414890, 41.558064, 21.402849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.209129, 41.215263, 21.390589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019339, 0.024143, -0.999521,
		0.857334, -0.514744, 0.004155,
		-0.514398, -0.857004, -0.030653,
		35.054810, 40.958160, 21.381393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.842083, 41.056664, 21.034704>,  <35.414890, 41.558064, 21.402849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.842083, 41.056664, 21.034704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.468948, 40.918613, 20.993322>,  <35.245068, 40.835781, 20.968493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.468948, 40.918613, 20.993322>,  <35.842083, 41.056664, 21.034704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.468948, 40.918613, 20.993322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169183, -0.166063, -0.971494,
		0.318111, -0.923747, 0.213299,
		-0.932836, -0.345129, -0.103456,
		35.189098, 40.815075, 20.962286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.868790, 40.488987, 20.633444>,  <35.842083, 41.056664, 21.034704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.868790, 40.488987, 20.633444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.490688, 40.616550, 20.605764>,  <35.263828, 40.693089, 20.589157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.490688, 40.616550, 20.605764>,  <35.868790, 40.488987, 20.633444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.490688, 40.616550, 20.605764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010256, -0.182923, -0.983074,
		-0.326166, -0.929967, 0.169639,
		-0.945257, 0.318905, -0.069201,
		35.207111, 40.712223, 20.585005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.648193, 40.134365, 20.001713>,  <35.868790, 40.488987, 20.633444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.648193, 40.134365, 20.001713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.333088, 40.368164, 20.079473>,  <35.144024, 40.508446, 20.126129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.333088, 40.368164, 20.079473>,  <35.648193, 40.134365, 20.001713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.333088, 40.368164, 20.079473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279694, -0.058226, -0.958322,
		-0.548821, -0.809301, 0.209349,
		-0.787761, 0.584501, 0.194401,
		35.096760, 40.543514, 20.137794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.040848, 39.786537, 19.724728>,  <35.648193, 40.134365, 20.001713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.040848, 39.786537, 19.724728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.988773, 40.181721, 19.758175>,  <34.957527, 40.418831, 19.778242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.988773, 40.181721, 19.758175>,  <35.040848, 39.786537, 19.724728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.988773, 40.181721, 19.758175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318102, 0.038257, -0.947284,
		-0.939076, -0.149921, 0.309290,
		-0.130186, 0.987958, 0.083617,
		34.949718, 40.478107, 19.783260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.345497, 39.941597, 19.453049>,  <35.040848, 39.786537, 19.724728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.345497, 39.941597, 19.453049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.554359, 40.282383, 19.437473>,  <34.679676, 40.486855, 19.428129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.554359, 40.282383, 19.437473>,  <34.345497, 39.941597, 19.453049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.554359, 40.282383, 19.437473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170771, 0.059714, -0.983500,
		-0.835578, 0.520189, 0.176670,
		0.522156, 0.851961, -0.038937,
		34.711006, 40.537971, 19.425793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.023556, 40.315861, 19.044371>,  <34.345497, 39.941597, 19.453049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.023556, 40.315861, 19.044371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.357235, 40.535172, 19.020712>,  <34.557442, 40.666759, 19.006517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.357235, 40.535172, 19.020712>,  <34.023556, 40.315861, 19.044371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.357235, 40.535172, 19.020712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252907, 0.285059, -0.924543,
		-0.490047, 0.786214, 0.376461,
		0.834202, 0.548279, -0.059146,
		34.607494, 40.699654, 19.002968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.846081, 41.008389, 18.800293>,  <34.023556, 40.315861, 19.044371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.846081, 41.008389, 18.800293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.230217, 40.927597, 18.723406>,  <34.460701, 40.879124, 18.677273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.230217, 40.927597, 18.723406>,  <33.846081, 41.008389, 18.800293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.230217, 40.927597, 18.723406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100223, 0.393262, -0.913947,
		0.260188, 0.896967, 0.357424,
		0.960342, -0.201976, -0.192219,
		34.518318, 40.867004, 18.665741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.096176, 41.658733, 18.433994>,  <33.846081, 41.008389, 18.800293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.096176, 41.658733, 18.433994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.364326, 41.378212, 18.337029>,  <34.525219, 41.209900, 18.278849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.364326, 41.378212, 18.337029>,  <34.096176, 41.658733, 18.433994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.364326, 41.378212, 18.337029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051202, 0.369638, -0.927764,
		0.740250, 0.609542, 0.283706,
		0.670380, -0.701303, -0.242415,
		34.565441, 41.167820, 18.264303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.618301, 41.946178, 17.990108>,  <34.096176, 41.658733, 18.433994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.618301, 41.946178, 17.990108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.670181, 41.559280, 17.902832>,  <34.701309, 41.327141, 17.850466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.670181, 41.559280, 17.902832>,  <34.618301, 41.946178, 17.990108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.670181, 41.559280, 17.902832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010647, 0.218679, -0.975739,
		0.991496, 0.128877, 0.018064,
		0.129701, -0.967249, -0.218191,
		34.709091, 41.269104, 17.837374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.097694, 41.931618, 17.465479>,  <34.618301, 41.946178, 17.990108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.097694, 41.931618, 17.465479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.905304, 41.581512, 17.445158>,  <34.789871, 41.371449, 17.432964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.905304, 41.581512, 17.445158>,  <35.097694, 41.931618, 17.465479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.905304, 41.581512, 17.445158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029993, 0.074340, -0.996782,
		0.876220, -0.477905, -0.062008,
		-0.480977, -0.875260, -0.050804,
		34.761009, 41.318935, 17.429916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.506783, 41.525757, 17.025808>,  <35.097694, 41.931618, 17.465479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.506783, 41.525757, 17.025808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.162834, 41.325272, 16.987007>,  <34.956467, 41.204983, 16.963726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.162834, 41.325272, 16.987007>,  <35.506783, 41.525757, 17.025808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.162834, 41.325272, 16.987007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111513, 0.001023, -0.993763,
		0.498185, -0.865324, 0.055012,
		-0.859870, -0.501212, -0.097004,
		34.904873, 41.174908, 16.957907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.598991, 40.966808, 16.510080>,  <35.506783, 41.525757, 17.025808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.598991, 40.966808, 16.510080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.206272, 41.034981, 16.543591>,  <34.970638, 41.075886, 16.563698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.206272, 41.034981, 16.543591>,  <35.598991, 40.966808, 16.510080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.206272, 41.034981, 16.543591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061030, 0.134588, -0.989020,
		-0.179841, -0.976134, -0.121737,
		-0.981800, 0.170436, 0.083778,
		34.911732, 41.086113, 16.568724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.346523, 40.755314, 15.899687>,  <35.598991, 40.966808, 16.510080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.346523, 40.755314, 15.899687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.030415, 40.975216, 16.007944>,  <34.840752, 41.107159, 16.072899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.030415, 40.975216, 16.007944>,  <35.346523, 40.755314, 15.899687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.030415, 40.975216, 16.007944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123254, 0.290037, -0.949045,
		-0.600237, -0.783358, -0.161447,
		-0.790268, 0.549754, 0.270643,
		34.793335, 41.140141, 16.089136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.736675, 40.443455, 15.540865>,  <35.346523, 40.755314, 15.899687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.736675, 40.443455, 15.540865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.717358, 40.829193, 15.644951>,  <34.705765, 41.060635, 15.707402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.717358, 40.829193, 15.644951>,  <34.736675, 40.443455, 15.540865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.717358, 40.829193, 15.644951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194565, 0.246446, -0.949425,
		-0.979700, -0.096484, 0.175725,
		-0.048297, 0.964342, 0.260215,
		34.702869, 41.118496, 15.723016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.221760, 40.640690, 15.079450>,  <34.736675, 40.443455, 15.540865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.221760, 40.640690, 15.079450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.411499, 40.972046, 15.198621>,  <34.525341, 41.170860, 15.270123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.411499, 40.972046, 15.198621>,  <34.221760, 40.640690, 15.079450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.411499, 40.972046, 15.198621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004262, 0.340582, -0.940205,
		-0.880327, 0.444714, 0.165084,
		0.474348, 0.828392, 0.297928,
		34.553802, 41.220562, 15.287999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.869827, 41.205143, 14.708887>,  <34.221760, 40.640690, 15.079450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.869827, 41.205143, 14.708887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.226051, 41.333672, 14.837665>,  <34.439785, 41.410789, 14.914931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.226051, 41.333672, 14.837665>,  <33.869827, 41.205143, 14.708887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.226051, 41.333672, 14.837665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236254, 0.278062, -0.931056,
		-0.388691, 0.905225, 0.171717,
		0.890564, 0.321324, 0.321943,
		34.493221, 41.430069, 14.934247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.946560, 41.834656, 14.447638>,  <33.869827, 41.205143, 14.708887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.946560, 41.834656, 14.447638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.320007, 41.721577, 14.535676>,  <34.544075, 41.653728, 14.588499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.320007, 41.721577, 14.535676>,  <33.946560, 41.834656, 14.447638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.320007, 41.721577, 14.535676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311446, 0.336736, -0.888600,
		0.177087, 0.898161, 0.402426,
		0.933618, -0.282694, 0.220097,
		34.600094, 41.636768, 14.601705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.311176, 42.404678, 14.211904>,  <33.946560, 41.834656, 14.447638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.311176, 42.404678, 14.211904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.581093, 42.111458, 14.246074>,  <34.743042, 41.935528, 14.266576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.581093, 42.111458, 14.246074>,  <34.311176, 42.404678, 14.211904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.581093, 42.111458, 14.246074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424354, 0.290695, -0.857566,
		0.603804, 0.614930, 0.507230,
		0.674793, -0.733047, 0.085425,
		34.783531, 41.891544, 14.271701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.959244, 42.656628, 14.055984>,  <34.311176, 42.404678, 14.211904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.959244, 42.656628, 14.055984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.051949, 42.271790, 13.998486>,  <35.107571, 42.040886, 13.963986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.051949, 42.271790, 13.998486>,  <34.959244, 42.656628, 14.055984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.051949, 42.271790, 13.998486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513604, 0.246514, -0.821853,
		0.826135, 0.116642, 0.551267,
		0.231757, -0.962094, -0.143746,
		35.121475, 41.983162, 13.955361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.618107, 42.668392, 13.756760>,  <34.959244, 42.656628, 14.055984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.618107, 42.668392, 13.756760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.508984, 42.294861, 13.664197>,  <35.443512, 42.070744, 13.608660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.508984, 42.294861, 13.664197>,  <35.618107, 42.668392, 13.756760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.508984, 42.294861, 13.664197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495225, 0.069913, -0.865947,
		0.824822, -0.350832, 0.443381,
		-0.272804, -0.933825, -0.231406,
		35.427143, 42.014713, 13.594775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.224407, 42.257500, 13.446389>,  <35.618107, 42.668392, 13.756760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.224407, 42.257500, 13.446389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.907001, 42.041901, 13.333383>,  <35.716557, 41.912540, 13.265579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.907001, 42.041901, 13.333383>,  <36.224407, 42.257500, 13.446389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.907001, 42.041901, 13.333383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367272, -0.054004, -0.928544,
		0.485225, -0.840575, 0.240811,
		-0.793516, -0.538996, -0.282516,
		35.668945, 41.880203, 13.248628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.473312, 41.603561, 13.071054>,  <36.224407, 42.257500, 13.446389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.473312, 41.603561, 13.071054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.100220, 41.691936, 12.957074>,  <35.876366, 41.744961, 12.888686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.100220, 41.691936, 12.957074>,  <36.473312, 41.603561, 13.071054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.100220, 41.691936, 12.957074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237194, -0.219238, -0.946400,
		-0.271573, -0.950325, 0.152084,
		-0.932731, 0.220943, -0.284951,
		35.820400, 41.758217, 12.871589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.175007, 41.050941, 12.616697>,  <36.473312, 41.603561, 13.071054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.175007, 41.050941, 12.616697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.955215, 41.374458, 12.532854>,  <35.823341, 41.568569, 12.482548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.955215, 41.374458, 12.532854>,  <36.175007, 41.050941, 12.616697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.955215, 41.374458, 12.532854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086656, -0.194354, -0.977096,
		-0.831002, -0.555058, 0.036707,
		-0.549479, 0.808787, -0.209608,
		35.790371, 41.617096, 12.469972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.791126, 40.838493, 12.140420>,  <36.175007, 41.050941, 12.616697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.791126, 40.838493, 12.140420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.728420, 41.232681, 12.114287>,  <35.690796, 41.469196, 12.098608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.728420, 41.232681, 12.114287>,  <35.791126, 40.838493, 12.140420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.728420, 41.232681, 12.114287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160324, -0.039880, -0.986259,
		-0.974537, -0.165081, -0.151744,
		-0.156761, 0.985474, -0.065331,
		35.681393, 41.528324, 12.094688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.158039, 40.969883, 11.775278>,  <35.791126, 40.838493, 12.140420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.158039, 40.969883, 11.775278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.391193, 41.293583, 11.746017>,  <35.531086, 41.487804, 11.728461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.391193, 41.293583, 11.746017>,  <35.158039, 40.969883, 11.775278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.391193, 41.293583, 11.746017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173097, -0.211630, -0.961899,
		-0.793900, 0.548018, -0.263435,
		0.582889, 0.809252, -0.073153,
		35.566059, 41.536358, 11.724072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.033001, 41.179836, 11.055828>,  <35.158039, 40.969883, 11.775278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.033001, 41.179836, 11.055828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.377293, 41.359310, 11.152020>,  <35.583866, 41.466995, 11.209736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.377293, 41.359310, 11.152020>,  <35.033001, 41.179836, 11.055828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.377293, 41.359310, 11.152020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399632, -0.302922, -0.865178,
		-0.315342, 0.840788, -0.440040,
		0.860729, 0.448681, 0.240482,
		35.635509, 41.493916, 11.224165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.207634, 41.493633, 10.476992>,  <35.033001, 41.179836, 11.055828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.207634, 41.493633, 10.476992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.541271, 41.482410, 10.697358>,  <35.741451, 41.475677, 10.829578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.541271, 41.482410, 10.697358>,  <35.207634, 41.493633, 10.476992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.541271, 41.482410, 10.697358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547472, -0.080304, -0.832962,
		0.067608, 0.996376, -0.051623,
		0.834088, -0.028053, 0.550917,
		35.791496, 41.473995, 10.862633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.720268, 42.009396, 10.122355>,  <35.207634, 41.493633, 10.476992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.720268, 42.009396, 10.122355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.907524, 41.751659, 10.364239>,  <36.019878, 41.597019, 10.509369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.907524, 41.751659, 10.364239>,  <35.720268, 42.009396, 10.122355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.907524, 41.751659, 10.364239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599431, -0.271239, -0.753068,
		0.649252, 0.715021, 0.259260,
		0.468138, -0.644340, 0.604709,
		36.047966, 41.558357, 10.545651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.423409, 42.030437, 9.877491>,  <35.720268, 42.009396, 10.122355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.423409, 42.030437, 9.877491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.440479, 41.694790, 10.094400>,  <36.450722, 41.493401, 10.224546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.440479, 41.694790, 10.094400>,  <36.423409, 42.030437, 9.877491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.440479, 41.694790, 10.094400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517192, -0.445829, -0.730581,
		0.854805, 0.311639, 0.414958,
		0.042678, -0.839117, 0.542274,
		36.453281, 41.443054, 10.257083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.061344, 41.919167, 9.734564>,  <36.423409, 42.030437, 9.877491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.061344, 41.919167, 9.734564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.894043, 41.574287, 9.848886>,  <36.793663, 41.367359, 9.917479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.894043, 41.574287, 9.848886>,  <37.061344, 41.919167, 9.734564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.894043, 41.574287, 9.848886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202698, -0.395305, -0.895906,
		0.885427, -0.316780, 0.340101,
		-0.418249, -0.862197, 0.285803,
		36.768570, 41.315628, 9.934627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.363281, 42.487450, 10.053900>,  <37.061344, 41.919167, 9.734564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.363281, 42.487450, 10.053900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.611137, 42.795296, 9.992271>,  <37.759850, 42.980003, 9.955295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.611137, 42.795296, 9.992271>,  <37.363281, 42.487450, 10.053900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.611137, 42.795296, 9.992271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377460, -0.120084, 0.918207,
		0.688168, -0.627110, -0.364909,
		0.619636, 0.769619, -0.154071,
		37.797028, 43.026180, 9.946050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.125938, 42.205292, 10.358459>,  <37.363281, 42.487450, 10.053900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.125938, 42.205292, 10.358459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.114895, 42.603916, 10.327190>,  <38.108269, 42.843090, 10.308429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.114895, 42.603916, 10.327190>,  <38.125938, 42.205292, 10.358459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.114895, 42.603916, 10.327190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390491, 0.082739, 0.916881,
		0.920193, -0.005214, -0.391431,
		-0.027606, 0.996558, -0.078172,
		38.106613, 42.902882, 10.303739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.860527, 42.354664, 10.506793>,  <38.125938, 42.205292, 10.358459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.860527, 42.354664, 10.506793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.593178, 42.644703, 10.573142>,  <38.432770, 42.818726, 10.612951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.593178, 42.644703, 10.573142>,  <38.860527, 42.354664, 10.506793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.593178, 42.644703, 10.573142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302381, 0.061123, 0.951225,
		0.679592, 0.685929, -0.260109,
		-0.668372, 0.725097, 0.165873,
		38.392666, 42.862232, 10.622904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.176815, 42.804546, 10.917333>,  <38.860527, 42.354664, 10.506793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.176815, 42.804546, 10.917333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.801208, 42.922523, 10.988053>,  <38.575844, 42.993309, 11.030485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.801208, 42.922523, 10.988053>,  <39.176815, 42.804546, 10.917333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.801208, 42.922523, 10.988053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237125, 0.183023, 0.954083,
		0.249039, 0.937823, -0.241799,
		-0.939016, 0.294940, 0.176801,
		38.519505, 43.011005, 11.041094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.198326, 43.274368, 11.551694>,  <39.176815, 42.804546, 10.917333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.198326, 43.274368, 11.551694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.810417, 43.182583, 11.518511>,  <38.577671, 43.127514, 11.498601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.810417, 43.182583, 11.518511>,  <39.198326, 43.274368, 11.551694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.810417, 43.182583, 11.518511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106183, 0.090771, 0.990195,
		-0.219680, 0.969076, -0.112392,
		-0.969776, -0.229460, -0.082959,
		38.519485, 43.113747, 11.493623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.765892, 43.761364, 11.995081>,  <39.198326, 43.274368, 11.551694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.765892, 43.761364, 11.995081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.557228, 43.422070, 11.958484>,  <38.432030, 43.218494, 11.936525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.557228, 43.422070, 11.958484>,  <38.765892, 43.761364, 11.995081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.557228, 43.422070, 11.958484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217411, 0.028470, 0.975665,
		-0.824985, 0.528860, -0.199266,
		-0.521663, -0.848231, -0.091493,
		38.400730, 43.167599, 11.931036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.078590, 43.802822, 12.281760>,  <38.765892, 43.761364, 11.995081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.078590, 43.802822, 12.281760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.131195, 43.408680, 12.325163>,  <38.162758, 43.172195, 12.351205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.131195, 43.408680, 12.325163>,  <38.078590, 43.802822, 12.281760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.131195, 43.408680, 12.325163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422954, 0.043221, 0.905120,
		-0.896557, -0.164926, -0.411077,
		0.131510, -0.985358, 0.108506,
		38.170647, 43.113071, 12.357715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.432526, 43.462685, 12.727204>,  <38.078590, 43.802822, 12.281760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.432526, 43.462685, 12.727204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.692047, 43.158646, 12.741598>,  <37.847759, 42.976223, 12.750235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.692047, 43.158646, 12.741598>,  <37.432526, 43.462685, 12.727204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.692047, 43.158646, 12.741598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245175, -0.164043, 0.955500,
		-0.720374, -0.628757, -0.292790,
		0.648807, -0.760101, 0.035984,
		37.886688, 42.930614, 12.752394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.077503, 42.944138, 13.049179>,  <37.432526, 43.462685, 12.727204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.077503, 42.944138, 13.049179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.463833, 42.848824, 13.089998>,  <37.695629, 42.791637, 13.114490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.463833, 42.848824, 13.089998>,  <37.077503, 42.944138, 13.049179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.463833, 42.848824, 13.089998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168185, -0.276481, 0.946188,
		-0.197247, -0.931010, -0.307106,
		0.965820, -0.238283, 0.102047,
		37.753578, 42.777340, 13.120612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.043201, 42.236511, 13.398456>,  <37.077503, 42.944138, 13.049179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.043201, 42.236511, 13.398456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.407089, 42.394974, 13.448204>,  <37.625423, 42.490051, 13.478053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.407089, 42.394974, 13.448204>,  <37.043201, 42.236511, 13.398456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.407089, 42.394974, 13.448204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002145, -0.304014, 0.952665,
		0.415213, -0.866393, -0.277418,
		0.909722, 0.396154, 0.124372,
		37.680004, 42.513821, 13.485516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.528660, 41.700962, 13.671500>,  <37.043201, 42.236511, 13.398456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.528660, 41.700962, 13.671500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.625755, 42.073879, 13.778767>,  <37.684013, 42.297630, 13.843126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.625755, 42.073879, 13.778767>,  <37.528660, 41.700962, 13.671500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.625755, 42.073879, 13.778767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089462, -0.253743, 0.963125,
		0.965959, -0.257775, 0.021813,
		0.242735, 0.932291, 0.268167,
		37.698574, 42.353565, 13.859217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.842335, 41.635502, 14.232029>,  <37.528660, 41.700962, 13.671500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.842335, 41.635502, 14.232029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.778038, 42.024738, 14.298071>,  <37.739460, 42.258278, 14.337696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.778038, 42.024738, 14.298071>,  <37.842335, 41.635502, 14.232029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.778038, 42.024738, 14.298071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138798, -0.187904, 0.972331,
		0.977189, 0.133375, 0.165267,
		-0.160739, 0.973090, 0.165105,
		37.729816, 42.316666, 14.347603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.091450, 41.726589, 14.846375>,  <37.842335, 41.635502, 14.232029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.091450, 41.726589, 14.846375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.897362, 42.076149, 14.834663>,  <37.780907, 42.285885, 14.827636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.897362, 42.076149, 14.834663>,  <38.091450, 41.726589, 14.846375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.897362, 42.076149, 14.834663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013247, 0.040829, 0.999078,
		0.874290, 0.484388, -0.031387,
		-0.485223, 0.873900, -0.029280,
		37.751797, 42.338318, 14.825879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.283306, 42.099140, 15.481349>,  <38.091450, 41.726589, 14.846375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.283306, 42.099140, 15.481349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.949596, 42.280304, 15.355579>,  <37.749371, 42.389000, 15.280118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.949596, 42.280304, 15.355579>,  <38.283306, 42.099140, 15.481349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.949596, 42.280304, 15.355579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231012, 0.230667, 0.945212,
		0.500621, 0.861201, -0.087813,
		-0.834274, 0.452907, -0.314424,
		37.699314, 42.416176, 15.261252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.323303, 42.658245, 15.765514>,  <38.283306, 42.099140, 15.481349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.323303, 42.658245, 15.765514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.935329, 42.643986, 15.669220>,  <37.702545, 42.635429, 15.611444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.935329, 42.643986, 15.669220>,  <38.323303, 42.658245, 15.765514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.935329, 42.643986, 15.669220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235803, 0.382296, 0.893447,
		0.060181, 0.923352, -0.379209,
		-0.969936, -0.035650, -0.240736,
		37.644348, 42.633289, 15.596999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.033913, 43.342270, 16.003923>,  <38.323303, 42.658245, 15.765514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.033913, 43.342270, 16.003923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.739094, 43.075340, 15.961155>,  <37.562202, 42.915180, 15.935493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.739094, 43.075340, 15.961155>,  <38.033913, 43.342270, 16.003923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.739094, 43.075340, 15.961155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389031, 0.289556, 0.874535,
		-0.552643, 0.686171, -0.473029,
		-0.737049, -0.667328, -0.106921,
		37.517979, 42.875141, 15.929079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.494637, 43.648693, 16.422419>,  <38.033913, 43.342270, 16.003923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.494637, 43.648693, 16.422419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.385433, 43.267063, 16.373091>,  <37.319912, 43.038086, 16.343494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.385433, 43.267063, 16.373091>,  <37.494637, 43.648693, 16.422419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.385433, 43.267063, 16.373091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433162, 0.007452, 0.901285,
		-0.858975, 0.299473, -0.415304,
		-0.273006, -0.954076, -0.123319,
		37.303532, 42.980839, 16.336096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.807884, 43.587425, 16.645103>,  <37.494637, 43.648693, 16.422419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.807884, 43.587425, 16.645103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.980709, 43.228519, 16.681404>,  <37.084404, 43.013176, 16.703184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.980709, 43.228519, 16.681404>,  <36.807884, 43.587425, 16.645103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.980709, 43.228519, 16.681404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354981, -0.076698, 0.931722,
		-0.829044, -0.434773, -0.351651,
		0.432058, -0.897268, 0.090750,
		37.110325, 42.959339, 16.708630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.256416, 43.052277, 16.752686>,  <36.807884, 43.587425, 16.645103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.256416, 43.052277, 16.752686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.586178, 42.860996, 16.873800>,  <36.784035, 42.746227, 16.946470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.586178, 42.860996, 16.873800>,  <36.256416, 43.052277, 16.752686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.586178, 42.860996, 16.873800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453756, -0.238629, 0.858581,
		-0.338318, -0.845212, -0.413713,
		0.824406, -0.478198, 0.302788,
		36.833500, 42.717537, 16.964638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.039150, 42.481171, 17.159945>,  <36.256416, 43.052277, 16.752686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.039150, 42.481171, 17.159945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.421387, 42.480053, 17.277821>,  <36.650726, 42.479382, 17.348545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.421387, 42.480053, 17.277821>,  <36.039150, 42.481171, 17.159945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.421387, 42.480053, 17.277821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277936, -0.341011, 0.898033,
		0.097985, -0.940055, -0.326642,
		0.955589, -0.002792, 0.294689,
		36.708065, 42.479214, 17.366228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.178883, 41.831547, 17.570696>,  <36.039150, 42.481171, 17.159945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.178883, 41.831547, 17.570696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.461884, 42.093857, 17.676067>,  <36.631683, 42.251244, 17.739290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.461884, 42.093857, 17.676067>,  <36.178883, 41.831547, 17.570696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.461884, 42.093857, 17.676067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196515, -0.175494, 0.964668,
		0.678839, -0.734272, 0.004708,
		0.707502, 0.655780, 0.263427,
		36.674133, 42.290592, 17.755096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.461872, 41.617085, 18.204165>,  <36.178883, 41.831547, 17.570696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.461872, 41.617085, 18.204165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.530357, 42.009781, 18.171019>,  <36.571449, 42.245399, 18.151131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.530357, 42.009781, 18.171019>,  <36.461872, 41.617085, 18.204165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.530357, 42.009781, 18.171019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302164, 0.132379, 0.944019,
		0.937754, -0.136590, 0.319313,
		0.171214, 0.981743, -0.082867,
		36.581722, 42.304302, 18.146158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.604542, 41.687492, 18.877356>,  <36.461872, 41.617085, 18.204165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.604542, 41.687492, 18.877356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.562256, 42.061649, 18.742380>,  <36.536884, 42.286144, 18.661396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.562256, 42.061649, 18.742380>,  <36.604542, 41.687492, 18.877356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.562256, 42.061649, 18.742380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325570, 0.288076, 0.900564,
		0.939589, 0.205066, 0.274080,
		-0.105719, 0.935393, -0.337437,
		36.530540, 42.342266, 18.641150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.751022, 42.029396, 19.469280>,  <36.604542, 41.687492, 18.877356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.751022, 42.029396, 19.469280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.608597, 42.320225, 19.234476>,  <36.523140, 42.494724, 19.093594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.608597, 42.320225, 19.234476>,  <36.751022, 42.029396, 19.469280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.608597, 42.320225, 19.234476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458840, 0.411205, 0.787640,
		0.814055, 0.549793, 0.187196,
		-0.356063, 0.727075, -0.587010,
		36.501778, 42.538345, 19.058372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.065495, 42.754955, 19.659657>,  <36.751022, 42.029396, 19.469280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.065495, 42.754955, 19.659657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.706654, 42.795643, 19.487673>,  <36.491348, 42.820053, 19.384481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.706654, 42.795643, 19.487673>,  <37.065495, 42.754955, 19.659657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.706654, 42.795643, 19.487673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354893, 0.413773, 0.838358,
		0.263180, 0.904680, -0.335097,
		-0.897099, 0.101715, -0.429961,
		36.437523, 42.826157, 19.358685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.784439, 43.470493, 19.841927>,  <37.065495, 42.754955, 19.659657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.784439, 43.470493, 19.841927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.451622, 43.269901, 19.747080>,  <36.251930, 43.149548, 19.690172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.451622, 43.269901, 19.747080>,  <36.784439, 43.470493, 19.841927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.451622, 43.269901, 19.747080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403319, 0.253426, 0.879266,
		-0.380841, 0.827221, -0.413117,
		-0.832042, -0.501479, -0.237119,
		36.202011, 43.119457, 19.675943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.094627, 43.868774, 19.861023>,  <36.784439, 43.470493, 19.841927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.094627, 43.868774, 19.861023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.009899, 43.480480, 19.906273>,  <35.959061, 43.247501, 19.933422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.009899, 43.480480, 19.906273>,  <36.094627, 43.868774, 19.861023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.009899, 43.480480, 19.906273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452972, 0.200086, 0.868782,
		-0.865995, 0.132787, -0.482100,
		-0.211825, -0.970738, 0.113125,
		35.946350, 43.189259, 19.940210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.371304, 43.743687, 20.012133>,  <36.094627, 43.868774, 19.861023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.371304, 43.743687, 20.012133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.560650, 43.424210, 20.160736>,  <35.674259, 43.232525, 20.249899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.560650, 43.424210, 20.160736>,  <35.371304, 43.743687, 20.012133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.560650, 43.424210, 20.160736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426795, 0.160986, 0.889904,
		-0.770565, -0.579809, -0.264671,
		0.473366, -0.798689, 0.371510,
		35.702660, 43.184605, 20.272188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.921097, 43.635262, 20.597450>,  <35.371304, 43.743687, 20.012133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.921097, 43.635262, 20.597450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.232246, 43.386593, 20.634167>,  <35.418938, 43.237392, 20.656197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.232246, 43.386593, 20.634167>,  <34.921097, 43.635262, 20.597450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.232246, 43.386593, 20.634167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140296, -0.029422, 0.989672,
		-0.612554, -0.782723, -0.110106,
		0.777878, -0.621675, 0.091790,
		35.465611, 43.200092, 20.661703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.832127, 43.262688, 21.302122>,  <34.921097, 43.635262, 20.597450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.832127, 43.262688, 21.302122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.212719, 43.194313, 21.199778>,  <35.441074, 43.153286, 21.138371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.212719, 43.194313, 21.199778>,  <34.832127, 43.262688, 21.302122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.212719, 43.194313, 21.199778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216593, -0.218567, 0.951481,
		-0.218567, -0.960733, -0.170939,
		-0.951481, 0.170939, 0.255860,
		35.498161, 43.143032, 21.123020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.046116, 42.619946, 21.579716>,  <34.832127, 43.262688, 21.302122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.046116, 42.619946, 21.579716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.376701, 42.834743, 21.512074>,  <35.575054, 42.963623, 21.471489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.376701, 42.834743, 21.512074>,  <35.046116, 42.619946, 21.579716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.376701, 42.834743, 21.512074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323966, -0.207962, 0.922929,
		0.460439, -0.817551, -0.345841,
		0.826464, 0.536993, -0.169106,
		35.624641, 42.995842, 21.461342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.604767, 42.251999, 21.985071>,  <35.046116, 42.619946, 21.579716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.604767, 42.251999, 21.985071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.742535, 42.625046, 21.941978>,  <35.825195, 42.848873, 21.916122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.742535, 42.625046, 21.941978>,  <35.604767, 42.251999, 21.985071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.742535, 42.625046, 21.941978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501394, -0.085714, 0.860963,
		0.793712, -0.350549, -0.497129,
		0.344420, 0.932614, -0.107731,
		35.845860, 42.904831, 21.909658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.301456, 42.112518, 22.142809>,  <35.604767, 42.251999, 21.985071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.301456, 42.112518, 22.142809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.274780, 42.508755, 22.190598>,  <36.258774, 42.746498, 22.219271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.274780, 42.508755, 22.190598>,  <36.301456, 42.112518, 22.142809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.274780, 42.508755, 22.190598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185226, -0.105367, 0.977031,
		0.980430, 0.087292, -0.176457,
		-0.066694, 0.990595, 0.119474,
		36.254772, 42.805935, 22.226440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.863724, 42.297478, 22.381210>,  <36.301456, 42.112518, 22.142809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.863724, 42.297478, 22.381210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.629055, 42.608551, 22.471571>,  <36.488255, 42.795193, 22.525787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.629055, 42.608551, 22.471571>,  <36.863724, 42.297478, 22.381210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.629055, 42.608551, 22.471571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415505, 0.049622, 0.908236,
		0.695108, 0.626697, -0.352242,
		-0.586668, 0.777681, 0.225903,
		36.453056, 42.841854, 22.539341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.231949, 42.671749, 22.820387>,  <36.863724, 42.297478, 22.381210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.231949, 42.671749, 22.820387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.853333, 42.775558, 22.897028>,  <36.626163, 42.837845, 22.943012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.853333, 42.775558, 22.897028>,  <37.231949, 42.671749, 22.820387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.853333, 42.775558, 22.897028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115174, -0.282923, 0.952202,
		0.301331, 0.923363, 0.237907,
		-0.946538, 0.259527, 0.191601,
		36.569370, 42.853416, 22.954508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.224323, 43.235645, 23.295151>,  <37.231949, 42.671749, 22.820387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.224323, 43.235645, 23.295151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.870129, 43.052902, 23.329086>,  <36.657612, 42.943256, 23.349447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.870129, 43.052902, 23.329086>,  <37.224323, 43.235645, 23.295151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.870129, 43.052902, 23.329086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138878, -0.085963, 0.986571,
		-0.443431, 0.885376, 0.139567,
		-0.885484, -0.456859, 0.084841,
		36.604485, 42.915844, 23.354538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.109909, 43.358410, 23.964005>,  <37.224323, 43.235645, 23.295151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.109909, 43.358410, 23.964005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.800598, 43.123249, 23.869005>,  <36.615009, 42.982151, 23.812006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.800598, 43.123249, 23.869005>,  <37.109909, 43.358410, 23.964005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.800598, 43.123249, 23.869005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046828, -0.320586, 0.946061,
		-0.632333, 0.742692, 0.220372,
		-0.773281, -0.587906, -0.237496,
		36.568615, 42.946877, 23.797756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.597103, 43.380779, 24.517714>,  <37.109909, 43.358410, 23.964005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.597103, 43.380779, 24.517714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.548607, 43.026600, 24.338253>,  <36.519508, 42.814095, 24.230576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.548607, 43.026600, 24.338253>,  <36.597103, 43.380779, 24.517714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.548607, 43.026600, 24.338253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062494, -0.457898, 0.886805,
		-0.990654, 0.079477, 0.110850,
		-0.121239, -0.885445, -0.448652,
		36.512234, 42.760967, 24.203657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.149132, 42.944260, 25.001299>,  <36.597103, 43.380779, 24.517714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.149132, 42.944260, 25.001299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.300953, 42.661488, 24.762575>,  <36.392048, 42.491825, 24.619341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.300953, 42.661488, 24.762575>,  <36.149132, 42.944260, 25.001299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.300953, 42.661488, 24.762575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208109, -0.563311, 0.799607,
		-0.901459, -0.427696, -0.066688,
		0.379555, -0.706935, -0.596809,
		36.414818, 42.449406, 24.583532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.695374, 42.301083, 25.016663>,  <36.149132, 42.944260, 25.001299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.695374, 42.301083, 25.016663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.077320, 42.212780, 24.937172>,  <36.306488, 42.159798, 24.889477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.077320, 42.212780, 24.937172>,  <35.695374, 42.301083, 25.016663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.077320, 42.212780, 24.937172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003783, -0.659954, 0.751296,
		-0.297004, -0.718141, -0.629335,
		0.954869, -0.220757, -0.198726,
		36.363781, 42.146553, 24.877554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.850216, 41.536846, 24.923454>,  <35.695374, 42.301083, 25.016663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.850216, 41.536846, 24.923454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.174797, 41.712593, 25.077597>,  <36.369545, 41.818043, 25.170082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.174797, 41.712593, 25.077597>,  <35.850216, 41.536846, 24.923454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.174797, 41.712593, 25.077597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005842, -0.665454, 0.746416,
		0.584388, -0.603430, -0.542552,
		0.811453, 0.439367, 0.385358,
		36.418232, 41.844402, 25.193205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.304470, 41.016415, 25.198469>,  <35.850216, 41.536846, 24.923454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.304470, 41.016415, 25.198469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.373772, 41.350559, 25.407141>,  <36.415352, 41.551048, 25.532345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.373772, 41.350559, 25.407141>,  <36.304470, 41.016415, 25.198469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.373772, 41.350559, 25.407141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263679, -0.471011, 0.841797,
		0.948925, -0.283397, 0.138665,
		0.173250, 0.835365, 0.521680,
		36.425747, 41.601170, 25.563644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.889519, 41.005180, 25.621048>,  <36.304470, 41.016415, 25.198469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.889519, 41.005180, 25.621048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.573215, 41.212612, 25.751144>,  <36.383434, 41.337070, 25.829203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.573215, 41.212612, 25.751144>,  <36.889519, 41.005180, 25.621048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.573215, 41.212612, 25.751144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063479, -0.597930, 0.799031,
		0.608832, 0.611192, 0.505735,
		-0.790755, 0.518579, 0.325241,
		36.335987, 41.368187, 25.848717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.878628, 41.179764, 26.297323>,  <36.889519, 41.005180, 25.621048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.878628, 41.179764, 26.297323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.489849, 41.149750, 26.208164>,  <36.256580, 41.131741, 26.154669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.489849, 41.149750, 26.208164>,  <36.878628, 41.179764, 26.297323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.489849, 41.149750, 26.208164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169365, -0.434280, 0.884712,
		-0.163189, 0.897647, 0.409389,
		-0.971949, -0.075040, -0.222900,
		36.198265, 41.127239, 26.141294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.456444, 41.406994, 26.855993>,  <36.878628, 41.179764, 26.297323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.456444, 41.406994, 26.855993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.225853, 41.143192, 26.663027>,  <36.087498, 40.984913, 26.547247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.225853, 41.143192, 26.663027>,  <36.456444, 41.406994, 26.855993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.225853, 41.143192, 26.663027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224294, -0.439992, 0.869539,
		-0.785724, 0.609475, 0.105724,
		-0.576480, -0.659505, -0.482414,
		36.052910, 40.945339, 26.518303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.824577, 41.377720, 27.080978>,  <36.456444, 41.406994, 26.855993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.824577, 41.377720, 27.080978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.859406, 41.009254, 26.929256>,  <35.880302, 40.788174, 26.838223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.859406, 41.009254, 26.929256>,  <35.824577, 41.377720, 27.080978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.859406, 41.009254, 26.929256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218400, -0.389140, 0.894914,
		-0.971967, 0.004918, -0.235066,
		0.087073, -0.921166, -0.379305,
		35.885529, 40.732906, 26.815466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.191769, 40.872208, 27.064266>,  <35.824577, 41.377720, 27.080978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.191769, 40.872208, 27.064266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.565598, 40.749454, 27.136265>,  <35.789894, 40.675800, 27.179464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.565598, 40.749454, 27.136265>,  <35.191769, 40.872208, 27.064266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.565598, 40.749454, 27.136265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285286, -0.344119, 0.894536,
		-0.212579, -0.887358, -0.409153,
		0.934571, -0.306885, 0.179999,
		35.845970, 40.657387, 27.190264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.220219, 40.053520, 27.198502>,  <35.191769, 40.872208, 27.064266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.220219, 40.053520, 27.198502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.507832, 40.273983, 27.367838>,  <35.680401, 40.406261, 27.469440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.507832, 40.273983, 27.367838>,  <35.220219, 40.053520, 27.198502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.507832, 40.273983, 27.367838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145335, -0.476428, 0.867118,
		0.679611, -0.685012, -0.262464,
		0.719032, 0.551157, 0.423342,
		35.723541, 40.439331, 27.494841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.728348, 39.735195, 27.555063>,  <35.220219, 40.053520, 27.198502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.728348, 39.735195, 27.555063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.661346, 40.077606, 27.750677>,  <35.621147, 40.283054, 27.868046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.661346, 40.077606, 27.750677>,  <35.728348, 39.735195, 27.555063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.661346, 40.077606, 27.750677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216116, -0.515859, 0.828965,
		0.961892, 0.033165, 0.271409,
		-0.167502, 0.856031, 0.489033,
		35.611095, 40.334415, 27.897387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.163799, 39.838848, 28.044250>,  <35.728348, 39.735195, 27.555063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.163799, 39.838848, 28.044250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.796150, 39.966148, 28.137142>,  <35.575562, 40.042526, 28.192877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.796150, 39.966148, 28.137142>,  <36.163799, 39.838848, 28.044250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.796150, 39.966148, 28.137142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063156, -0.700863, 0.710495,
		0.388875, 0.638366, 0.664278,
		-0.919124, 0.318246, 0.232231,
		35.520412, 40.061623, 28.206812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.106636, 40.133305, 28.721546>,  <36.163799, 39.838848, 28.044250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.106636, 40.133305, 28.721546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.747810, 39.985630, 28.624405>,  <35.532516, 39.897026, 28.566120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.747810, 39.985630, 28.624405>,  <36.106636, 40.133305, 28.721546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.747810, 39.985630, 28.624405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150918, -0.772473, 0.616855,
		-0.415336, 0.516706, 0.748673,
		-0.897062, -0.369190, -0.242855,
		35.478691, 39.874874, 28.551548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.576542, 40.196087, 29.369020>,  <36.106636, 40.133305, 28.721546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.576542, 40.196087, 29.369020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.478100, 39.906525, 29.111219>,  <35.419033, 39.732788, 28.956539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.478100, 39.906525, 29.111219>,  <35.576542, 40.196087, 29.369020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.478100, 39.906525, 29.111219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083637, -0.646616, 0.758218,
		-0.965627, 0.240508, 0.098592,
		-0.246108, -0.723909, -0.644505,
		35.404266, 39.689350, 28.917868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.909023, 39.956718, 29.397320>,  <35.576542, 40.196087, 29.369020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.909023, 39.956718, 29.397320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.107288, 39.647842, 29.238304>,  <35.226246, 39.462517, 29.142895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.107288, 39.647842, 29.238304>,  <34.909023, 39.956718, 29.397320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.107288, 39.647842, 29.238304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441775, -0.618247, 0.650082,
		-0.747767, -0.146596, -0.647576,
		0.495661, -0.772192, -0.397542,
		35.255985, 39.416183, 29.119041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.436455, 39.478298, 29.403639>,  <34.909023, 39.956718, 29.397320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.436455, 39.478298, 29.403639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.784859, 39.282551, 29.386370>,  <34.993900, 39.165104, 29.376009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.784859, 39.282551, 29.386370>,  <34.436455, 39.478298, 29.403639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.784859, 39.282551, 29.386370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389922, -0.742103, 0.545200,
		-0.298842, -0.458040, -0.837193,
		0.871007, -0.489369, -0.043172,
		35.046162, 39.135738, 29.373419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.444111, 38.897865, 28.945545>,  <34.436455, 39.478298, 29.403639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.444111, 38.897865, 28.945545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.679245, 38.863205, 29.267275>,  <34.820328, 38.842411, 29.460314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.679245, 38.863205, 29.267275>,  <34.444111, 38.897865, 28.945545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.679245, 38.863205, 29.267275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642055, -0.654831, 0.398700,
		0.492151, -0.750792, -0.440567,
		0.587837, -0.086648, 0.804325,
		34.855595, 38.837212, 29.508572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.797997, 38.147583, 29.035282>,  <34.444111, 38.897865, 28.945545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.797997, 38.147583, 29.035282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.694450, 38.352856, 29.362606>,  <34.632324, 38.476021, 29.559000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.694450, 38.352856, 29.362606>,  <34.797997, 38.147583, 29.035282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.694450, 38.352856, 29.362606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523299, -0.786596, 0.327758,
		0.811880, -0.343377, 0.472169,
		-0.258862, 0.513186, 0.818310,
		34.616791, 38.506813, 29.608099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.553501, 38.066639, 28.776636>,  <34.797997, 38.147583, 29.035282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.553501, 38.066639, 28.776636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.252224, 37.937859, 28.547184>,  <35.071457, 37.860588, 28.409513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.252224, 37.937859, 28.547184>,  <35.553501, 38.066639, 28.776636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.252224, 37.937859, 28.547184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428569, -0.901733, -0.056615,
		-0.499032, -0.288481, 0.817156,
		-0.753190, -0.321955, -0.573628,
		35.026268, 37.841270, 28.375095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.443848, 37.377705, 28.920820>,  <35.553501, 38.066639, 28.776636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.443848, 37.377705, 28.920820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.253136, 37.409954, 28.570692>,  <35.138710, 37.429302, 28.360615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.253136, 37.409954, 28.570692>,  <35.443848, 37.377705, 28.920820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.253136, 37.409954, 28.570692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341616, -0.900516, -0.269015,
		-0.809927, -0.427283, 0.401805,
		-0.476778, 0.080620, -0.875319,
		35.110104, 37.434139, 28.308096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.086357, 36.745373, 28.880432>,  <35.443848, 37.377705, 28.920820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.086357, 36.745373, 28.880432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.117920, 36.907333, 28.516052>,  <35.136856, 37.004509, 28.297424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.117920, 36.907333, 28.516052>,  <35.086357, 36.745373, 28.880432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.117920, 36.907333, 28.516052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200376, -0.901589, -0.383389,
		-0.976536, -0.152281, -0.152273,
		0.078905, 0.404905, -0.910948,
		35.141590, 37.028805, 28.242767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.866798, 36.234116, 28.478943>,  <35.086357, 36.745373, 28.880432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.866798, 36.234116, 28.478943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.045029, 36.444340, 28.189049>,  <35.151966, 36.570477, 28.015112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.045029, 36.444340, 28.189049>,  <34.866798, 36.234116, 28.478943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.045029, 36.444340, 28.189049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361731, -0.846208, -0.391257,
		-0.818908, -0.087823, -0.567166,
		0.445579, 0.525565, -0.724735,
		35.178703, 36.602009, 27.971628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.775002, 35.867546, 27.776737>,  <34.866798, 36.234116, 28.478943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.775002, 35.867546, 27.776737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.107773, 36.089119, 27.763762>,  <35.307438, 36.222061, 27.755976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.107773, 36.089119, 27.763762>,  <34.775002, 35.867546, 27.776737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.107773, 36.089119, 27.763762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511666, -0.788448, -0.341390,
		-0.214685, 0.267413, -0.939362,
		0.831930, 0.553931, -0.032441,
		35.357353, 36.255299, 27.754028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.095058, 35.542641, 27.228893>,  <34.775002, 35.867546, 27.776737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.095058, 35.542641, 27.228893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.380600, 35.794506, 27.351494>,  <35.551926, 35.945625, 27.425055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.380600, 35.794506, 27.351494>,  <35.095058, 35.542641, 27.228893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.380600, 35.794506, 27.351494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697878, -0.603274, -0.386039,
		-0.058170, 0.489475, -0.870075,
		0.713850, 0.629662, 0.306501,
		35.594753, 35.983406, 27.443443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.634670, 35.640953, 26.663242>,  <35.095058, 35.542641, 27.228893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.634670, 35.640953, 26.663242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.829407, 35.725010, 27.002377>,  <35.946247, 35.775444, 27.205858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.829407, 35.725010, 27.002377>,  <35.634670, 35.640953, 26.663242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.829407, 35.725010, 27.002377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823584, -0.433819, -0.365390,
		0.291025, 0.876152, -0.384268,
		0.486840, 0.210139, 0.847837,
		35.975460, 35.788052, 27.256727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.355122, 35.569935, 26.339750>,  <35.634670, 35.640953, 26.663242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.355122, 35.569935, 26.339750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.376339, 35.598789, 26.738144>,  <36.389069, 35.616100, 26.977180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.376339, 35.598789, 26.738144>,  <36.355122, 35.569935, 26.339750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.376339, 35.598789, 26.738144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850728, -0.525556, -0.007247,
		0.522922, 0.847696, -0.089243,
		0.053045, 0.072132, 0.995984,
		36.392254, 35.620430, 27.036940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.032768, 35.859421, 26.528448>,  <36.355122, 35.569935, 26.339750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.032768, 35.859421, 26.528448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.906452, 35.582882, 26.788391>,  <36.830662, 35.416958, 26.944357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.906452, 35.582882, 26.788391>,  <37.032768, 35.859421, 26.528448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.906452, 35.582882, 26.788391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893230, -0.447619, -0.042148,
		0.320028, 0.567163, 0.758886,
		-0.315787, -0.691348, 0.649858,
		36.811714, 35.375477, 26.983349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.753551, 35.824001, 26.976675>,  <37.032768, 35.859421, 26.528448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.753551, 35.824001, 26.976675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.496693, 35.537010, 27.084656>,  <37.342575, 35.364815, 27.149445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.496693, 35.537010, 27.084656>,  <37.753551, 35.824001, 26.976675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.496693, 35.537010, 27.084656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762743, -0.562832, 0.318502,
		-0.076580, 0.410429, 0.908671,
		-0.642151, -0.717474, 0.269950,
		37.304047, 35.321770, 27.165642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.982750, 35.550140, 27.544201>,  <37.753551, 35.824001, 26.976675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.982750, 35.550140, 27.544201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.764912, 35.237385, 27.422829>,  <37.634209, 35.049732, 27.350006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.764912, 35.237385, 27.422829>,  <37.982750, 35.550140, 27.544201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.764912, 35.237385, 27.422829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764214, -0.611668, 0.204543,
		-0.345527, -0.120492, 0.930641,
		-0.544598, -0.781885, -0.303430,
		37.601532, 35.002819, 27.331800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.294033, 34.941044, 27.840679>,  <37.982750, 35.550140, 27.544201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.294033, 34.941044, 27.840679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.052277, 34.778320, 27.566679>,  <37.907223, 34.680687, 27.402279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.052277, 34.778320, 27.566679>,  <38.294033, 34.941044, 27.840679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.052277, 34.778320, 27.566679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617075, -0.782876, -0.079521,
		-0.503919, -0.470756, 0.724192,
		-0.604388, -0.406808, -0.684998,
		37.870960, 34.656277, 27.361179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.625248, 34.469742, 27.731623>,  <38.294033, 34.941044, 27.840679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.625248, 34.469742, 27.731623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.303413, 34.382713, 27.510607>,  <38.110313, 34.330498, 27.377996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.303413, 34.382713, 27.510607>,  <38.625248, 34.469742, 27.731623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.303413, 34.382713, 27.510607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450449, -0.829921, -0.329129,
		-0.386956, -0.513705, 0.765749,
		-0.804587, -0.217573, -0.552541,
		38.062038, 34.317440, 27.344845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.373890, 33.801277, 27.786058>,  <38.625248, 34.469742, 27.731623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.373890, 33.801277, 27.786058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.237930, 33.903187, 27.423941>,  <38.156353, 33.964333, 27.206671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.237930, 33.903187, 27.423941>,  <38.373890, 33.801277, 27.786058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.237930, 33.903187, 27.423941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446527, -0.803466, -0.393771,
		-0.827696, -0.538082, 0.159335,
		-0.339901, 0.254775, -0.905294,
		38.135960, 33.979618, 27.152353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.001667, 33.170872, 27.493607>,  <38.373890, 33.801277, 27.786058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.001667, 33.170872, 27.493607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.120293, 33.401039, 27.188726>,  <38.191467, 33.539139, 27.005798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.120293, 33.401039, 27.188726>,  <38.001667, 33.170872, 27.493607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.120293, 33.401039, 27.188726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461875, -0.784974, -0.412900,
		-0.835897, -0.229592, -0.498562,
		0.296560, 0.575415, -0.762200,
		38.209259, 33.573666, 26.960066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.954212, 32.817314, 26.762501>,  <38.001667, 33.170872, 27.493607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.954212, 32.817314, 26.762501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.228203, 33.107716, 26.786886>,  <38.392597, 33.281960, 26.801517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.228203, 33.107716, 26.786886>,  <37.954212, 32.817314, 26.762501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.228203, 33.107716, 26.786886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728006, -0.685326, -0.018309,
		0.028486, 0.056922, -0.997972,
		0.684978, 0.726008, 0.060962,
		38.433697, 33.325520, 26.805174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.370754, 33.081821, 26.099100>,  <37.954212, 32.817314, 26.762501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.370754, 33.081821, 26.099100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.534004, 33.012745, 26.457678>,  <38.631954, 32.971298, 26.672825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.534004, 33.012745, 26.457678>,  <38.370754, 33.081821, 26.099100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.534004, 33.012745, 26.457678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551926, -0.735497, -0.392965,
		0.727194, 0.655149, -0.204862,
		0.408126, -0.172693, 0.896443,
		38.656441, 32.960938, 26.726610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.075150, 33.286945, 26.208982>,  <38.370754, 33.081821, 26.099100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.075150, 33.286945, 26.208982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.003593, 32.976700, 26.451111>,  <38.960659, 32.790550, 26.596388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.003593, 32.976700, 26.451111>,  <39.075150, 33.286945, 26.208982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.003593, 32.976700, 26.451111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770434, -0.493076, -0.404113,
		0.611908, 0.394071, 0.685767,
		-0.178886, -0.775618, 0.605323,
		38.949928, 32.744015, 26.632708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.698238, 33.114067, 26.606012>,  <39.075150, 33.286945, 26.208982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.698238, 33.114067, 26.606012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.455200, 32.797672, 26.577274>,  <39.309376, 32.607834, 26.560032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.455200, 32.797672, 26.577274>,  <39.698238, 33.114067, 26.606012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.455200, 32.797672, 26.577274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736055, -0.526789, -0.425107,
		0.298409, -0.311174, 0.902287,
		-0.607598, -0.790989, -0.071843,
		39.272923, 32.560375, 26.555721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.957718, 32.468811, 26.891750>,  <39.698238, 33.114067, 26.606012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.957718, 32.468811, 26.891750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.759300, 32.484295, 26.544777>,  <39.640251, 32.493584, 26.336592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.759300, 32.484295, 26.544777>,  <39.957718, 32.468811, 26.891750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.759300, 32.484295, 26.544777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827760, -0.280602, -0.485876,
		-0.262212, -0.959043, 0.107149,
		-0.496043, 0.038709, -0.867435,
		39.610489, 32.495907, 26.284546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.504074, 32.319279, 27.366892>,  <39.957718, 32.468811, 26.891750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.504074, 32.319279, 27.366892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.383118, 32.177273, 27.720734>,  <39.310543, 32.092072, 27.933039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.383118, 32.177273, 27.720734>,  <39.504074, 32.319279, 27.366892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.383118, 32.177273, 27.720734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929160, 0.097265, 0.356652,
		-0.212657, 0.929788, 0.300451,
		-0.302388, -0.355012, 0.884606,
		39.292400, 32.070770, 27.986116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.737087, 32.793537, 27.942488>,  <39.504074, 32.319279, 27.366892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.737087, 32.793537, 27.942488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.728683, 32.446270, 28.140820>,  <39.723640, 32.237911, 28.259819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.728683, 32.446270, 28.140820>,  <39.737087, 32.793537, 27.942488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.728683, 32.446270, 28.140820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789642, 0.289771, 0.540832,
		-0.613208, 0.402894, 0.679450,
		-0.021013, -0.868165, 0.495831,
		39.722378, 32.185822, 28.289570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.672890, 33.020214, 28.627922>,  <39.737087, 32.793537, 27.942488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.672890, 33.020214, 28.627922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.855286, 32.664558, 28.612370>,  <39.964722, 32.451164, 28.603039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.855286, 32.664558, 28.612370>,  <39.672890, 33.020214, 28.627922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.855286, 32.664558, 28.612370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770169, 0.372331, 0.517889,
		-0.445998, -0.266095, 0.854564,
		0.455989, -0.889136, -0.038879,
		39.992081, 32.397820, 28.600706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.885712, 32.790684, 29.364386>,  <39.672890, 33.020214, 28.627922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.885712, 32.790684, 29.364386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.129745, 32.613018, 29.101929>,  <40.276165, 32.506420, 28.944454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.129745, 32.613018, 29.101929>,  <39.885712, 32.790684, 29.364386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.129745, 32.613018, 29.101929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789139, 0.266282, 0.553492,
		-0.071122, -0.855462, 0.512959,
		0.610083, -0.444161, -0.656140,
		40.312771, 32.479771, 28.905087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.897617, 33.391460, 29.222481>,  <39.885712, 32.790684, 29.364386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.897617, 33.391460, 29.222481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.960236, 33.721134, 29.440186>,  <39.997807, 33.918938, 29.570808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.960236, 33.721134, 29.440186>,  <39.897617, 33.391460, 29.222481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.960236, 33.721134, 29.440186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508141, -0.539735, 0.671177,
		0.846928, 0.171494, -0.503291,
		0.156541, 0.824182, 0.544260,
		40.007198, 33.968388, 29.603464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.397831, 33.596756, 28.748941>,  <39.897617, 33.391460, 29.222481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.397831, 33.596756, 28.748941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.587765, 33.948502, 28.763123>,  <40.701725, 34.159550, 28.771631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.587765, 33.948502, 28.763123>,  <40.397831, 33.596756, 28.748941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.587765, 33.948502, 28.763123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015044, -0.048387, 0.998715,
		0.879945, -0.473694, -0.036205,
		0.474837, 0.879359, 0.035452,
		40.730217, 34.212311, 28.773758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.143658, 33.646244, 29.167170>,  <40.397831, 33.596756, 28.748941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.143658, 33.646244, 29.167170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.975433, 34.007729, 29.199238>,  <40.874500, 34.224621, 29.218479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.975433, 34.007729, 29.199238>,  <41.143658, 33.646244, 29.167170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.975433, 34.007729, 29.199238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279185, 0.044830, 0.959190,
		0.863240, 0.425781, -0.271158,
		-0.420561, 0.903715, 0.080173,
		40.849266, 34.278843, 29.223289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.643158, 34.198387, 29.379202>,  <41.143658, 33.646244, 29.167170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.643158, 34.198387, 29.379202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.264339, 34.256657, 29.493660>,  <41.037048, 34.291618, 29.562336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.264339, 34.256657, 29.493660>,  <41.643158, 34.198387, 29.379202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.264339, 34.256657, 29.493660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301254, 0.094719, 0.948828,
		0.111119, 0.984787, -0.133590,
		-0.947047, 0.145678, 0.286146,
		40.980225, 34.300362, 29.579504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.732780, 34.671810, 29.847975>,  <41.643158, 34.198387, 29.379202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.732780, 34.671810, 29.847975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.349251, 34.573822, 29.905445>,  <41.119133, 34.515030, 29.939928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.349251, 34.573822, 29.905445>,  <41.732780, 34.671810, 29.847975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.349251, 34.573822, 29.905445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149389, -0.004790, 0.988767,
		-0.241532, 0.969518, 0.041189,
		-0.958825, -0.244972, 0.143678,
		41.061604, 34.500332, 29.948549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.500053, 34.924999, 30.523088>,  <41.732780, 34.671810, 29.847975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.500053, 34.924999, 30.523088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.208633, 34.664032, 30.439608>,  <41.033779, 34.507450, 30.389519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.208633, 34.664032, 30.439608>,  <41.500053, 34.924999, 30.523088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.208633, 34.664032, 30.439608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099994, -0.200120, 0.974655,
		-0.677652, 0.730956, 0.080560,
		-0.728552, -0.652422, -0.208703,
		40.990067, 34.468304, 30.376997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.815376, 35.079498, 30.848602>,  <41.500053, 34.924999, 30.523088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.815376, 35.079498, 30.848602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.834572, 34.688240, 30.767673>,  <40.846088, 34.453487, 30.719116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.834572, 34.688240, 30.767673>,  <40.815376, 35.079498, 30.848602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.834572, 34.688240, 30.767673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122418, -0.206788, 0.970697,
		-0.991318, -0.021812, -0.129665,
		0.047986, -0.978143, -0.202322,
		40.848969, 34.394798, 30.706976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.243790, 34.642841, 31.081928>,  <40.815376, 35.079498, 30.848602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.243790, 34.642841, 31.081928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.549732, 34.428135, 31.224403>,  <40.733299, 34.299313, 31.309889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.549732, 34.428135, 31.224403>,  <40.243790, 34.642841, 31.081928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.549732, 34.428135, 31.224403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480383, -0.106852, 0.870526,
		-0.429209, -0.836938, -0.339580,
		0.764861, -0.536766, 0.356188,
		40.779190, 34.267105, 31.331261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.119171, 33.882454, 31.355921>,  <40.243790, 34.642841, 31.081928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.119171, 33.882454, 31.355921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.403942, 34.104263, 31.528271>,  <40.574806, 34.237350, 31.631681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.403942, 34.104263, 31.528271>,  <40.119171, 33.882454, 31.355921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.403942, 34.104263, 31.528271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563638, 0.085223, 0.821614,
		0.418888, -0.827789, 0.373226,
		0.711931, 0.554529, 0.430874,
		40.617523, 34.270622, 31.657534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.208481, 33.715298, 32.074261>,  <40.119171, 33.882454, 31.355921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.208481, 33.715298, 32.074261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.341534, 34.092125, 32.056965>,  <40.421364, 34.318222, 32.046589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.341534, 34.092125, 32.056965>,  <40.208481, 33.715298, 32.074261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.341534, 34.092125, 32.056965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300708, 0.149406, 0.941941,
		0.893831, -0.300314, 0.332983,
		0.332628, 0.942066, -0.043237,
		40.441322, 34.374744, 32.043995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.375431, 33.941128, 32.739452>,  <40.208481, 33.715298, 32.074261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.375431, 33.941128, 32.739452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.380302, 34.307304, 32.578548>,  <40.383224, 34.527012, 32.482006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.380302, 34.307304, 32.578548>,  <40.375431, 33.941128, 32.739452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.380302, 34.307304, 32.578548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326169, 0.383925, 0.863838,
		0.945233, 0.120685, 0.303265,
		0.012178, 0.915443, -0.402262,
		40.383957, 34.581936, 32.457870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.898987, 33.402954, 32.477364>,  <40.375431, 33.941128, 32.739452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.898987, 33.402954, 32.477364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.764236, 33.115414, 32.720600>,  <40.683384, 32.942890, 32.866543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.764236, 33.115414, 32.720600>,  <40.898987, 33.402954, 32.477364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.764236, 33.115414, 32.720600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868547, 0.012086, 0.495459,
		-0.363509, 0.695062, 0.620282,
		-0.336878, -0.718848, 0.608087,
		40.663174, 32.899757, 32.903027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.843040, 33.555901, 33.199112>,  <40.898987, 33.402954, 32.477364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.843040, 33.555901, 33.199112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.918507, 33.163795, 33.175465>,  <40.963787, 32.928532, 33.161274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.918507, 33.163795, 33.175465>,  <40.843040, 33.555901, 33.199112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.918507, 33.163795, 33.175465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875232, 0.140534, 0.462837,
		-0.445392, -0.139065, 0.884470,
		0.188663, -0.980261, -0.059122,
		40.975105, 32.869717, 33.157726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.049931, 33.136868, 33.935089>,  <40.843040, 33.555901, 33.199112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.049931, 33.136868, 33.935089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.209923, 32.946621, 33.621704>,  <41.305920, 32.832474, 33.433674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.209923, 32.946621, 33.621704>,  <41.049931, 33.136868, 33.935089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.209923, 32.946621, 33.621704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882076, -0.032389, 0.469992,
		-0.248909, -0.879058, 0.406572,
		0.399982, -0.475613, -0.783458,
		41.329918, 32.803936, 33.386665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.325798, 32.485149, 34.137344>,  <41.049931, 33.136868, 33.935089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.325798, 32.485149, 34.137344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.541023, 32.626896, 33.831425>,  <41.670158, 32.711945, 33.647873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.541023, 32.626896, 33.831425>,  <41.325798, 32.485149, 34.137344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.541023, 32.626896, 33.831425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807560, 0.043268, 0.588197,
		0.241527, -0.934106, -0.262889,
		0.538063, 0.354364, -0.764796,
		41.702442, 32.733204, 33.601986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.956013, 32.205830, 34.292042>,  <41.325798, 32.485149, 34.137344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.956013, 32.205830, 34.292042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.017811, 32.553989, 34.105053>,  <42.054890, 32.762886, 33.992859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.017811, 32.553989, 34.105053>,  <41.956013, 32.205830, 34.292042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.017811, 32.553989, 34.105053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750639, 0.204235, 0.628354,
		0.642395, -0.447986, -0.621802,
		0.154500, 0.870401, -0.467475,
		42.064159, 32.815109, 33.964809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.725746, 32.387684, 34.152504>,  <41.956013, 32.205830, 34.292042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.725746, 32.387684, 34.152504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.504295, 32.715973, 34.208958>,  <42.371426, 32.912945, 34.242828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.504295, 32.715973, 34.208958>,  <42.725746, 32.387684, 34.152504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.504295, 32.715973, 34.208958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515194, 0.204399, 0.832344,
		0.654273, 0.533518, -0.535990,
		-0.553626, 0.820719, 0.141133,
		42.338207, 32.962189, 34.251297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.997135, 32.798214, 34.780689>,  <42.725746, 32.387684, 34.152504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.997135, 32.798214, 34.780689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.145626, 32.580044, 35.081276>,  <43.234718, 32.449142, 35.261627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.145626, 32.580044, 35.081276>,  <42.997135, 32.798214, 34.780689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.145626, 32.580044, 35.081276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695536, 0.699497, 0.164111,
		-0.615159, 0.461750, 0.639036,
		0.371225, -0.545427, 0.751466,
		43.256992, 32.416416, 35.306717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.989571, 33.208069, 35.449814>,  <42.997135, 32.798214, 34.780689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.989571, 33.208069, 35.449814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.286987, 32.950676, 35.377079>,  <43.465439, 32.796238, 35.333439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.286987, 32.950676, 35.377079>,  <42.989571, 33.208069, 35.449814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.286987, 32.950676, 35.377079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635615, 0.764598, -0.106690,
		0.207689, -0.036252, 0.977523,
		0.743545, -0.643487, -0.181841,
		43.510052, 32.757629, 35.322525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.439693, 33.801281, 35.282360>,  <42.989571, 33.208069, 35.449814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.439693, 33.801281, 35.282360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.620525, 33.445786, 35.251961>,  <43.729023, 33.232491, 35.233723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.620525, 33.445786, 35.251961>,  <43.439693, 33.801281, 35.282360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.620525, 33.445786, 35.251961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737525, 0.420359, -0.528540,
		0.501678, 0.182893, 0.845499,
		0.452080, -0.888734, -0.075996,
		43.756149, 33.179165, 35.229160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.125069, 34.174500, 35.463863>,  <43.439693, 33.801281, 35.282360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.125069, 34.174500, 35.463863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.469585, 34.098236, 35.275471>,  <44.676296, 34.052479, 35.162434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.469585, 34.098236, 35.275471>,  <44.125069, 34.174500, 35.463863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.469585, 34.098236, 35.275471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191999, 0.980329, -0.045729,
		0.470440, -0.051042, 0.880955,
		0.861292, -0.190655, -0.470986,
		44.727974, 34.041039, 35.134174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.657490, 34.329838, 35.793343>,  <44.125069, 34.174500, 35.463863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.657490, 34.329838, 35.793343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.714592, 34.377430, 35.400311>,  <44.748856, 34.405983, 35.164490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.714592, 34.377430, 35.400311>,  <44.657490, 34.329838, 35.793343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.714592, 34.377430, 35.400311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058727, 0.989981, 0.128406,
		0.988013, -0.076035, 0.134345,
		0.142763, 0.118977, -0.982580,
		44.757420, 34.413124, 35.105537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.405743, 34.406116, 35.554539>,  <44.657490, 34.329838, 35.793343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.405743, 34.406116, 35.554539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.213211, 34.648346, 35.301048>,  <45.097691, 34.793682, 35.148952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.213211, 34.648346, 35.301048>,  <45.405743, 34.406116, 35.554539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.213211, 34.648346, 35.301048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346169, 0.795541, 0.497275,
		0.805289, 0.019977, -0.592546,
		-0.481328, 0.605571, -0.633725,
		45.068813, 34.830017, 35.110931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.171482, 34.642704, 35.727379>,  <45.405743, 34.406116, 35.554539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.171482, 34.642704, 35.727379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.331989, 34.320049, 35.553791>,  <46.428291, 34.126457, 35.449638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.331989, 34.320049, 35.553791>,  <46.171482, 34.642704, 35.727379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.331989, 34.320049, 35.553791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407195, 0.581484, -0.704321,
		0.820474, 0.105911, 0.561788,
		0.401266, -0.806634, -0.433966,
		46.452370, 34.078060, 35.423603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.962250, 34.467209, 35.728584>,  <46.171482, 34.642704, 35.727379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.962250, 34.467209, 35.728584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.763367, 34.351048, 35.401550>,  <46.644035, 34.281349, 35.205330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.763367, 34.351048, 35.401550>,  <46.962250, 34.467209, 35.728584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.763367, 34.351048, 35.401550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600795, 0.564608, -0.565919,
		0.625961, -0.772582, -0.106255,
		-0.497211, -0.290406, -0.817585,
		46.614204, 34.263927, 35.156273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.418484, 34.370365, 35.144279>,  <46.962250, 34.467209, 35.728584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.418484, 34.370365, 35.144279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.067360, 34.471462, 34.981518>,  <46.856686, 34.532120, 34.883862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.067360, 34.471462, 34.981518>,  <47.418484, 34.370365, 35.144279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.067360, 34.471462, 34.981518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447683, 0.735017, -0.509245,
		0.170373, -0.629184, -0.758354,
		-0.877811, 0.252740, -0.406902,
		46.804016, 34.547283, 34.859447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.349510, 34.777878, 34.497349>,  <47.418484, 34.370365, 35.144279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.349510, 34.777878, 34.497349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.511101, 34.801125, 34.862518>,  <47.608055, 34.815071, 35.081619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.511101, 34.801125, 34.862518>,  <47.349510, 34.777878, 34.497349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.511101, 34.801125, 34.862518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516376, 0.809286, -0.280022,
		-0.755088, 0.584533, 0.296922,
		0.403977, 0.058118, 0.912921,
		47.632294, 34.818562, 35.136395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<39.756439, 38.527695, 15.233713> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.723248, 38.129650, 15.212294>,  <39.703331, 37.890823, 15.199442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.723248, 38.129650, 15.212294>,  <39.756439, 38.527695, 15.233713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.723248, 38.129650, 15.212294> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080068, -0.046904, 0.995685,
		-0.993329, 0.086913, -0.075784,
		-0.082983, -0.995111, -0.053550,
		39.698353, 37.831116, 15.196229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.099979, 38.409092, 15.491117>,  <39.756439, 38.527695, 15.233713>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.099979, 38.409092, 15.491117> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.297684, 38.061947, 15.511210>,  <39.416306, 37.853661, 15.523266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.297684, 38.061947, 15.511210>,  <39.099979, 38.409092, 15.491117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.297684, 38.061947, 15.511210> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249533, -0.086288, 0.964514,
		-0.832728, -0.489259, -0.259209,
		0.494264, -0.867859, 0.050231,
		39.445965, 37.801590, 15.526279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.643116, 37.881531, 15.677273>,  <39.099979, 38.409092, 15.491117>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.643116, 37.881531, 15.677273> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.996181, 37.739574, 15.800537>,  <39.208019, 37.654400, 15.874496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.996181, 37.739574, 15.800537>,  <38.643116, 37.881531, 15.677273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.996181, 37.739574, 15.800537> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387178, -0.177307, 0.904796,
		-0.266465, -0.917940, -0.293908,
		0.882661, -0.354891, 0.308161,
		39.260979, 37.633106, 15.892985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.461926, 37.264935, 15.999643>,  <38.643116, 37.881531, 15.677273>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.461926, 37.264935, 15.999643> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.822651, 37.391338, 16.117535>,  <39.039085, 37.467182, 16.188269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.822651, 37.391338, 16.117535>,  <38.461926, 37.264935, 15.999643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.822651, 37.391338, 16.117535> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230119, -0.226084, 0.946536,
		0.365750, -0.921424, -0.131166,
		0.901816, 0.316011, 0.294728,
		39.093197, 37.486141, 16.205954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.672737, 36.838909, 16.533863>,  <38.461926, 37.264935, 15.999643>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.672737, 36.838909, 16.533863> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.948002, 37.118080, 16.613192>,  <39.113159, 37.285583, 16.660789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.948002, 37.118080, 16.613192>,  <38.672737, 36.838909, 16.533863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.948002, 37.118080, 16.613192> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104042, -0.175593, 0.978950,
		0.718059, -0.694310, -0.048223,
		0.688162, 0.697926, 0.198323,
		39.154449, 37.327457, 16.672689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.107044, 36.602364, 17.018263>,  <38.672737, 36.838909, 16.533863>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.107044, 36.602364, 17.018263> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.166748, 36.996456, 17.051825>,  <39.202568, 37.232910, 17.071962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.166748, 36.996456, 17.051825>,  <39.107044, 36.602364, 17.018263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.166748, 36.996456, 17.051825> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067188, -0.074555, 0.994951,
		0.986513, -0.154141, 0.055068,
		0.149257, 0.985232, 0.083906,
		39.211525, 37.292027, 17.076996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.540787, 36.614326, 17.529255>,  <39.107044, 36.602364, 17.018263>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.540787, 36.614326, 17.529255> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.385025, 36.981705, 17.501463>,  <39.291569, 37.202129, 17.484787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.385025, 36.981705, 17.501463>,  <39.540787, 36.614326, 17.529255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.385025, 36.981705, 17.501463> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031975, 0.088869, 0.995530,
		0.920513, 0.385439, -0.063973,
		-0.389402, 0.918444, -0.069481,
		39.268204, 37.257236, 17.480619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.838318, 36.984028, 18.157703>,  <39.540787, 36.614326, 17.529255>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.838318, 36.984028, 18.157703> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.561871, 37.238583, 18.020672>,  <39.396000, 37.391315, 17.938454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.561871, 37.238583, 18.020672>,  <39.838318, 36.984028, 18.157703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.561871, 37.238583, 18.020672> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172446, 0.315110, 0.933257,
		0.701865, 0.704069, -0.108036,
		-0.691121, 0.636390, -0.342579,
		39.354534, 37.429501, 17.917898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.044819, 37.647305, 18.310692>,  <39.838318, 36.984028, 18.157703>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.044819, 37.647305, 18.310692> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.646294, 37.614452, 18.300764>,  <39.407177, 37.594742, 18.294807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.646294, 37.614452, 18.300764>,  <40.044819, 37.647305, 18.310692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.646294, 37.614452, 18.300764> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037223, 0.153149, 0.987502,
		-0.077306, 0.984784, -0.155641,
		-0.996312, -0.082133, -0.024817,
		39.347401, 37.589813, 18.293320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.707176, 38.115101, 18.855827>,  <40.044819, 37.647305, 18.310692>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.707176, 38.115101, 18.855827> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.394897, 37.880634, 18.769180>,  <39.207531, 37.739956, 18.717192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.394897, 37.880634, 18.769180>,  <39.707176, 38.115101, 18.855827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.394897, 37.880634, 18.769180> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390947, 0.187707, 0.901070,
		-0.487512, 0.788150, -0.375701,
		-0.780700, -0.586162, -0.216615,
		39.160686, 37.704784, 18.704195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.152271, 38.534416, 18.894468>,  <39.707176, 38.115101, 18.855827>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.152271, 38.534416, 18.894468> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.039253, 38.157639, 18.967024>,  <38.971443, 37.931572, 19.010557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.039253, 38.157639, 18.967024>,  <39.152271, 38.534416, 18.894468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.039253, 38.157639, 18.967024> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372601, 0.282014, 0.884102,
		-0.883933, 0.182212, -0.430653,
		-0.282544, -0.941948, 0.181388,
		38.954491, 37.875053, 19.021441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.426739, 38.521893, 19.245245>,  <39.152271, 38.534416, 18.894468>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.426739, 38.521893, 19.245245> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.585564, 38.164295, 19.328310>,  <38.680859, 37.949738, 19.378149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.585564, 38.164295, 19.328310>,  <38.426739, 38.521893, 19.245245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.585564, 38.164295, 19.328310> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112241, 0.177267, 0.977741,
		-0.910903, -0.411531, -0.029956,
		0.397061, -0.893990, 0.207664,
		38.704681, 37.896099, 19.390610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.998245, 38.244682, 19.769056>,  <38.426739, 38.521893, 19.245245>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.998245, 38.244682, 19.769056> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.358189, 38.071152, 19.787174>,  <38.574154, 37.967033, 19.798046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.358189, 38.071152, 19.787174>,  <37.998245, 38.244682, 19.769056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.358189, 38.071152, 19.787174> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057414, -0.014863, 0.998240,
		-0.432390, -0.900874, -0.038283,
		0.899857, -0.433826, 0.045296,
		38.628147, 37.941006, 19.800762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.928085, 37.795673, 20.321663>,  <37.998245, 38.244682, 19.769056>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.928085, 37.795673, 20.321663> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.326878, 37.810886, 20.294567>,  <38.566151, 37.820015, 20.278309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.326878, 37.810886, 20.294567>,  <37.928085, 37.795673, 20.321663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.326878, 37.810886, 20.294567> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076260, -0.312667, 0.946796,
		0.014833, -0.949101, -0.314623,
		0.996977, 0.038036, -0.067740,
		38.625973, 37.822296, 20.274244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.047848, 37.384235, 20.870699>,  <37.928085, 37.795673, 20.321663>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.047848, 37.384235, 20.870699> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.411415, 37.521145, 20.775436>,  <38.629555, 37.603291, 20.718279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.411415, 37.521145, 20.775436>,  <38.047848, 37.384235, 20.870699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.411415, 37.521145, 20.775436> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265729, -0.035304, 0.963401,
		0.321339, -0.938937, -0.123040,
		0.908916, 0.342274, -0.238158,
		38.684090, 37.623829, 20.703989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.597221, 36.887634, 21.058659>,  <38.047848, 37.384235, 20.870699>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.597221, 36.887634, 21.058659> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.728340, 37.265507, 21.062979>,  <38.807011, 37.492229, 21.065571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.728340, 37.265507, 21.062979>,  <38.597221, 36.887634, 21.058659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.728340, 37.265507, 21.062979> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167647, -0.069414, 0.983400,
		0.929753, -0.320549, -0.181128,
		0.327801, 0.944685, 0.010799,
		38.826679, 37.548912, 21.066219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.163120, 36.872849, 21.601831>,  <38.597221, 36.887634, 21.058659>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.163120, 36.872849, 21.601831> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.050343, 37.250271, 21.532295>,  <38.982677, 37.476723, 21.490574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.050343, 37.250271, 21.532295>,  <39.163120, 36.872849, 21.601831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.050343, 37.250271, 21.532295> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103796, 0.210123, 0.972149,
		0.953801, 0.256045, -0.157179,
		-0.281941, 0.943551, -0.173839,
		38.965759, 37.533337, 21.480143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.572216, 37.248859, 22.005911>,  <39.163120, 36.872849, 21.601831>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.572216, 37.248859, 22.005911> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.260418, 37.495010, 21.959085>,  <39.073341, 37.642700, 21.930990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.260418, 37.495010, 21.959085>,  <39.572216, 37.248859, 22.005911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.260418, 37.495010, 21.959085> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069142, 0.270264, 0.960300,
		0.622584, 0.740453, -0.253217,
		-0.779493, 0.615375, -0.117065,
		39.026569, 37.679623, 21.923965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.620964, 37.745899, 22.530664>,  <39.572216, 37.248859, 22.005911>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.620964, 37.745899, 22.530664> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.253201, 37.828110, 22.396536>,  <39.032543, 37.877438, 22.316059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.253201, 37.828110, 22.396536>,  <39.620964, 37.745899, 22.530664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.253201, 37.828110, 22.396536> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275973, 0.270318, 0.922370,
		0.280218, 0.940577, -0.191813,
		-0.919411, 0.205530, -0.335322,
		38.977379, 37.889771, 22.295938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.413055, 38.385281, 22.828629>,  <39.620964, 37.745899, 22.530664>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.413055, 38.385281, 22.828629> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.081829, 38.180759, 22.736654>,  <38.883091, 38.058044, 22.681469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.081829, 38.180759, 22.736654>,  <39.413055, 38.385281, 22.828629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.081829, 38.180759, 22.736654> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352574, 0.156068, 0.922678,
		-0.435885, 0.845109, -0.309508,
		-0.828068, -0.511306, -0.229935,
		38.833408, 38.027367, 22.667673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.935543, 38.872456, 22.887680>,  <39.413055, 38.385281, 22.828629>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.935543, 38.872456, 22.887680> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.714367, 38.539715, 22.906784>,  <38.581661, 38.340073, 22.918247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.714367, 38.539715, 22.906784>,  <38.935543, 38.872456, 22.887680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.714367, 38.539715, 22.906784> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450027, 0.346398, 0.823094,
		-0.701234, 0.433631, -0.565893,
		-0.552944, -0.831849, 0.047760,
		38.548485, 38.290161, 22.921112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.244061, 39.117771, 22.910120>,  <38.935543, 38.872456, 22.887680>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.244061, 39.117771, 22.910120> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.266445, 38.746487, 23.057243>,  <38.279877, 38.523716, 23.145517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.266445, 38.746487, 23.057243>,  <38.244061, 39.117771, 22.910120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.266445, 38.746487, 23.057243> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483976, 0.296993, 0.823142,
		-0.873290, -0.224079, -0.432613,
		0.055966, -0.928215, 0.367810,
		38.283234, 38.468021, 23.167587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.980457, 39.853504, 23.311928>,  <38.244061, 39.117771, 22.910120>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.980457, 39.853504, 23.311928> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.092327, 40.236320, 23.281336>,  <38.159447, 40.466011, 23.262980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.092327, 40.236320, 23.281336>,  <37.980457, 39.853504, 23.311928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.092327, 40.236320, 23.281336> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167904, -0.127187, -0.977564,
		-0.945300, 0.260556, -0.196262,
		0.279672, 0.957044, -0.076482,
		38.176228, 40.523434, 23.258390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.653397, 40.146786, 22.747307>,  <37.980457, 39.853504, 23.311928>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.653397, 40.146786, 22.747307> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.972755, 40.378525, 22.812925>,  <38.164371, 40.517570, 22.852297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.972755, 40.378525, 22.812925>,  <37.653397, 40.146786, 22.747307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.972755, 40.378525, 22.812925> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212845, -0.016694, -0.976943,
		-0.563256, 0.814906, -0.136641,
		0.798398, 0.579352, 0.164046,
		38.212276, 40.552330, 22.862139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.636570, 40.823139, 22.344658>,  <37.653397, 40.146786, 22.747307>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.636570, 40.823139, 22.344658> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.029156, 40.783127, 22.410048>,  <38.264706, 40.759121, 22.449282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.029156, 40.783127, 22.410048>,  <37.636570, 40.823139, 22.344658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.029156, 40.783127, 22.410048> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179763, 0.184762, -0.966203,
		0.066442, 0.977680, 0.199318,
		0.981463, -0.100026, 0.163475,
		38.323593, 40.753120, 22.459089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.896935, 41.319260, 21.955002>,  <37.636570, 40.823139, 22.344658>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.896935, 41.319260, 21.955002> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.207241, 41.075802, 22.021633>,  <38.393425, 40.929729, 22.061611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.207241, 41.075802, 22.021633>,  <37.896935, 41.319260, 21.955002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.207241, 41.075802, 22.021633> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329981, 0.166270, -0.929229,
		0.537871, 0.775828, 0.329826,
		0.775762, -0.608642, 0.166576,
		38.439968, 40.893208, 22.071606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.514164, 41.720676, 21.627766>,  <37.896935, 41.319260, 21.955002>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.514164, 41.720676, 21.627766> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.644554, 41.344826, 21.669411>,  <38.722790, 41.119316, 21.694397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.644554, 41.344826, 21.669411>,  <38.514164, 41.720676, 21.627766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.644554, 41.344826, 21.669411> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571272, 0.108037, -0.813619,
		0.753251, 0.324696, 0.572000,
		0.325977, -0.939628, 0.104111,
		38.742348, 41.062939, 21.700644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.119137, 41.671963, 21.381952>,  <38.514164, 41.720676, 21.627766>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.119137, 41.671963, 21.381952> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.033451, 41.281254, 21.380138>,  <38.982040, 41.046829, 21.379051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.033451, 41.281254, 21.380138>,  <39.119137, 41.671963, 21.381952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.033451, 41.281254, 21.380138> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532966, -0.112991, -0.838559,
		0.818573, -0.182045, 0.544792,
		-0.214212, -0.976777, -0.004532,
		38.969189, 40.988220, 21.378778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.723976, 41.364662, 21.185022>,  <39.119137, 41.671963, 21.381952>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.723976, 41.364662, 21.185022> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.443512, 41.086872, 21.120436>,  <39.275234, 40.920197, 21.081684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.443512, 41.086872, 21.120436>,  <39.723976, 41.364662, 21.185022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.443512, 41.086872, 21.120436> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423012, -0.222882, -0.878285,
		0.573959, -0.684125, 0.450048,
		-0.701164, -0.694476, -0.161468,
		39.233162, 40.878529, 21.071995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.044167, 40.827255, 20.923893>,  <39.723976, 41.364662, 21.185022>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.044167, 40.827255, 20.923893> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.669167, 40.773121, 20.795662>,  <39.444164, 40.740639, 20.718723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.669167, 40.773121, 20.795662>,  <40.044167, 40.827255, 20.923893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.669167, 40.773121, 20.795662> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342451, -0.195329, -0.919007,
		0.061759, -0.971354, 0.229469,
		-0.937504, -0.135339, -0.320578,
		39.387917, 40.732521, 20.699488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.198895, 40.253674, 20.616095>,  <40.044167, 40.827255, 20.923893>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.198895, 40.253674, 20.616095> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.871162, 40.408714, 20.447113>,  <39.674522, 40.501740, 20.345724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.871162, 40.408714, 20.447113>,  <40.198895, 40.253674, 20.616095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.871162, 40.408714, 20.447113> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256520, -0.411148, -0.874731,
		-0.512737, -0.825060, 0.237438,
		-0.819328, 0.387599, -0.422455,
		39.625362, 40.524994, 20.320377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.923473, 39.711533, 20.227144>,  <40.198895, 40.253674, 20.616095>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.923473, 39.711533, 20.227144> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.765491, 40.051479, 20.087584>,  <39.670704, 40.255447, 20.003847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.765491, 40.051479, 20.087584>,  <39.923473, 39.711533, 20.227144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.765491, 40.051479, 20.087584> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027913, -0.368501, -0.929208,
		-0.918278, -0.376731, 0.121817,
		-0.394951, 0.849871, -0.348903,
		39.647007, 40.306442, 19.982912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.509468, 39.578480, 19.684885>,  <39.923473, 39.711533, 20.227144>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.509468, 39.578480, 19.684885> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.580044, 39.960232, 19.588535>,  <39.622387, 40.189285, 19.530725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.580044, 39.960232, 19.588535>,  <39.509468, 39.578480, 19.684885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.580044, 39.960232, 19.588535> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034917, -0.238492, -0.970517,
		-0.983693, 0.179645, -0.008754,
		0.176436, 0.954384, -0.240875,
		39.632977, 40.246548, 19.516273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.070763, 39.655880, 19.161346>,  <39.509468, 39.578480, 19.684885>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.070763, 39.655880, 19.161346> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.340645, 39.950275, 19.139091>,  <39.502575, 40.126911, 19.125738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.340645, 39.950275, 19.139091>,  <39.070763, 39.655880, 19.161346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.340645, 39.950275, 19.139091> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042056, -0.113595, -0.992637,
		-0.736889, 0.667397, -0.107596,
		0.674705, 0.735988, -0.055639,
		39.543056, 40.171070, 19.122400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.818310, 40.194965, 18.714174>,  <39.070763, 39.655880, 19.161346>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.818310, 40.194965, 18.714174> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.216358, 40.234303, 18.717138>,  <39.455189, 40.257904, 18.718916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.216358, 40.234303, 18.717138>,  <38.818310, 40.194965, 18.714174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.216358, 40.234303, 18.717138> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010597, 0.181315, -0.983368,
		-0.098050, 0.978496, 0.181473,
		0.995125, 0.098343, 0.007409,
		39.514896, 40.263805, 18.719360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.946808, 40.912876, 18.428825>,  <38.818310, 40.194965, 18.714174>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.946808, 40.912876, 18.428825> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.290794, 40.713394, 18.385458>,  <39.497185, 40.593704, 18.359438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.290794, 40.713394, 18.385458>,  <38.946808, 40.912876, 18.428825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.290794, 40.713394, 18.385458> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007510, 0.224779, -0.974381,
		0.510301, 0.837118, 0.197046,
		0.859963, -0.498707, -0.108418,
		39.548782, 40.563782, 18.352932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.330360, 41.308216, 17.903475>,  <38.946808, 40.912876, 18.428825>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.330360, 41.308216, 17.903475> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.524052, 40.958241, 17.902483>,  <39.640266, 40.748257, 17.901888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.524052, 40.958241, 17.902483>,  <39.330360, 41.308216, 17.903475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.524052, 40.958241, 17.902483> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152114, 0.086976, -0.984529,
		0.861619, 0.476357, 0.175206,
		0.484226, -0.874940, -0.002479,
		39.669319, 40.695759, 17.901739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.960182, 41.506016, 17.470547>,  <39.330360, 41.308216, 17.903475>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.960182, 41.506016, 17.470547> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.902771, 41.110157, 17.471586>,  <39.868324, 40.872643, 17.472210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.902771, 41.110157, 17.471586>,  <39.960182, 41.506016, 17.470547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.902771, 41.110157, 17.471586> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182970, -0.029119, -0.982687,
		0.972585, -0.140564, 0.185254,
		-0.143525, -0.989643, 0.002601,
		39.859715, 40.813263, 17.472366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.438766, 41.246582, 16.949192>,  <39.960182, 41.506016, 17.470547>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.438766, 41.246582, 16.949192> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.157524, 40.965534, 16.992970>,  <39.988781, 40.796906, 17.019236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.157524, 40.965534, 16.992970>,  <40.438766, 41.246582, 16.949192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.157524, 40.965534, 16.992970> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022371, -0.175689, -0.984192,
		0.710736, -0.689540, 0.139246,
		-0.703103, -0.702616, 0.109443,
		39.946594, 40.754749, 17.025803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.610943, 40.700840, 16.479584>,  <40.438766, 41.246582, 16.949192>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.610943, 40.700840, 16.479584> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.230461, 40.607143, 16.559923>,  <40.002171, 40.550926, 16.608128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.230461, 40.607143, 16.559923>,  <40.610943, 40.700840, 16.479584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.230461, 40.607143, 16.559923> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164944, -0.164116, -0.972553,
		0.260779, -0.958225, 0.117471,
		-0.951204, -0.234245, 0.200851,
		39.945099, 40.536869, 16.620178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.015953, 39.360928, 16.353470> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.786461, 39.687782, 16.375795>,  <39.648766, 39.883896, 16.389191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.786461, 39.687782, 16.375795>,  <40.015953, 39.360928, 16.353470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.786461, 39.687782, 16.375795> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143495, -0.033191, -0.989094,
		-0.806375, -0.575485, 0.136298,
		-0.573732, 0.817139, 0.055814,
		39.614342, 39.932922, 16.392540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.357834, 39.178574, 16.238565>,  <40.015953, 39.360928, 16.353470>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.357834, 39.178574, 16.238565> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.374939, 39.567860, 16.148203>,  <39.385201, 39.801430, 16.093987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.374939, 39.567860, 16.148203>,  <39.357834, 39.178574, 16.238565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.374939, 39.567860, 16.148203> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162943, -0.216290, -0.962636,
		-0.985708, 0.077972, 0.149330,
		0.042760, 0.973211, -0.225904,
		39.387768, 39.859821, 16.080431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.772022, 39.289886, 15.890759>,  <39.357834, 39.178574, 16.238565>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.772022, 39.289886, 15.890759> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.024204, 39.584423, 15.792512>,  <39.175514, 39.761143, 15.733563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.024204, 39.584423, 15.792512>,  <38.772022, 39.289886, 15.890759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.024204, 39.584423, 15.792512> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121970, -0.218521, -0.968180,
		-0.766581, 0.640355, -0.047957,
		0.630458, 0.736338, -0.245618,
		39.213341, 39.805325, 15.718826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.446068, 39.676510, 15.325450>,  <38.772022, 39.289886, 15.890759>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.446068, 39.676510, 15.325450> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.837349, 39.758648, 15.313086>,  <39.072117, 39.807930, 15.305667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.837349, 39.758648, 15.313086>,  <38.446068, 39.676510, 15.325450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.837349, 39.758648, 15.313086> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014265, -0.214948, -0.976521,
		-0.207166, 0.954794, -0.213192,
		0.978202, 0.205343, -0.030910,
		39.130810, 39.820251, 15.303813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.477200, 39.856819, 14.673527>,  <38.446068, 39.676510, 15.325450>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.477200, 39.856819, 14.673527> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.864311, 39.864910, 14.773923>,  <39.096577, 39.869762, 14.834161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.864311, 39.864910, 14.773923>,  <38.477200, 39.856819, 14.673527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.864311, 39.864910, 14.773923> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251784, -0.064774, -0.965613,
		-0.003270, 0.997695, -0.067778,
		0.967778, 0.020224, 0.250991,
		39.154644, 39.870975, 14.849220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.685707, 40.413387, 14.376289>,  <38.477200, 39.856819, 14.673527>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.685707, 40.413387, 14.376289> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.995068, 40.167683, 14.438936>,  <39.180683, 40.020260, 14.476524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.995068, 40.167683, 14.438936>,  <38.685707, 40.413387, 14.376289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.995068, 40.167683, 14.438936> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216190, 0.023334, -0.976072,
		0.595909, 0.788758, 0.150843,
		0.773405, -0.614261, 0.156617,
		39.227089, 39.983406, 14.485921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.233646, 40.767509, 14.115212>,  <38.685707, 40.413387, 14.376289>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.233646, 40.767509, 14.115212> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.321842, 40.377625, 14.129732>,  <39.374760, 40.143692, 14.138444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.321842, 40.377625, 14.129732>,  <39.233646, 40.767509, 14.115212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.321842, 40.377625, 14.129732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305950, 0.033775, -0.951448,
		0.926164, 0.220888, 0.305661,
		0.220487, -0.974714, 0.036299,
		39.387989, 40.085209, 14.140622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.967522, 40.718616, 13.877037>,  <39.233646, 40.767509, 14.115212>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.967522, 40.718616, 13.877037> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.815369, 40.351650, 13.830304>,  <39.724075, 40.131470, 13.802264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.815369, 40.351650, 13.830304>,  <39.967522, 40.718616, 13.877037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.815369, 40.351650, 13.830304> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341080, -0.021739, -0.939783,
		0.859635, -0.397328, 0.321182,
		-0.380384, -0.917419, -0.116832,
		39.701252, 40.076424, 13.795255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.501392, 40.350204, 13.571651>,  <39.967522, 40.718616, 13.877037>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.501392, 40.350204, 13.571651> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.158859, 40.158642, 13.494361>,  <39.953339, 40.043705, 13.447987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.158859, 40.158642, 13.494361>,  <40.501392, 40.350204, 13.571651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.158859, 40.158642, 13.494361> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247244, -0.051711, -0.967573,
		0.453385, -0.876341, 0.162689,
		-0.856337, -0.478907, -0.193225,
		39.901958, 40.014969, 13.436394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.641968, 39.857452, 13.040502>,  <40.501392, 40.350204, 13.571651>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.641968, 39.857452, 13.040502> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.247524, 39.922554, 13.027269>,  <40.010857, 39.961613, 13.019330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.247524, 39.922554, 13.027269>,  <40.641968, 39.857452, 13.040502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.247524, 39.922554, 13.027269> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032477, -0.006363, -0.999452,
		-0.162873, -0.986647, 0.000989,
		-0.986112, 0.162752, -0.033080,
		39.951691, 39.971378, 13.017345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.402809, 39.352039, 12.596547>,  <40.641968, 39.857452, 13.040502>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.402809, 39.352039, 12.596547> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.124084, 39.638176, 12.575614>,  <39.956848, 39.809856, 12.563054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.124084, 39.638176, 12.575614>,  <40.402809, 39.352039, 12.596547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.124084, 39.638176, 12.575614> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057201, -0.017308, -0.998213,
		-0.714966, -0.698564, -0.028857,
		-0.696816, 0.715338, -0.052333,
		39.915039, 39.852776, 12.559914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.926483, 39.166821, 12.115068>,  <40.402809, 39.352039, 12.596547>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.926483, 39.166821, 12.115068> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.860020, 39.558735, 12.159616>,  <39.820141, 39.793884, 12.186345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.860020, 39.558735, 12.159616>,  <39.926483, 39.166821, 12.115068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.860020, 39.558735, 12.159616> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018789, 0.109775, -0.993779,
		-0.985921, -0.167215, 0.000170,
		-0.166156, 0.979790, 0.111371,
		39.810173, 39.852673, 12.193027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.423927, 39.291851, 11.622849>,  <39.926483, 39.166821, 12.115068>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.423927, 39.291851, 11.622849> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.534054, 39.666470, 11.709648>,  <39.600132, 39.891239, 11.761727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.534054, 39.666470, 11.709648>,  <39.423927, 39.291851, 11.622849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.534054, 39.666470, 11.709648> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145259, 0.263656, -0.953617,
		-0.950315, 0.231028, 0.208630,
		0.275319, 0.936542, 0.216997,
		39.616650, 39.947433, 11.774748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.838783, 39.727711, 11.396585>,  <39.423927, 39.291851, 11.622849>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.838783, 39.727711, 11.396585> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.175278, 39.943211, 11.414775>,  <39.377174, 40.072510, 11.425689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.175278, 39.943211, 11.414775>,  <38.838783, 39.727711, 11.396585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.175278, 39.943211, 11.414775> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100210, 0.238019, -0.966077,
		-0.531296, 0.808145, 0.254218,
		0.841239, 0.538748, 0.045475,
		39.427650, 40.104836, 11.428417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.691452, 40.470608, 11.284554>,  <38.838783, 39.727711, 11.396585>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.691452, 40.470608, 11.284554> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.078678, 40.445229, 11.187546>,  <39.311016, 40.430000, 11.129341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.078678, 40.445229, 11.187546>,  <38.691452, 40.470608, 11.284554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.078678, 40.445229, 11.187546> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185196, 0.471005, -0.862471,
		0.168948, 0.879846, 0.444216,
		0.968070, -0.063446, -0.242519,
		39.369099, 40.426193, 11.114790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.792801, 41.055820, 10.836539>,  <38.691452, 40.470608, 11.284554>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.792801, 41.055820, 10.836539> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.125412, 40.841530, 10.777819>,  <39.324978, 40.712955, 10.742586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.125412, 40.841530, 10.777819>,  <38.792801, 41.055820, 10.836539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.125412, 40.841530, 10.777819> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017252, 0.289059, -0.957156,
		0.555212, 0.793371, 0.249604,
		0.831530, -0.535731, -0.146801,
		39.374870, 40.680809, 10.733778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.249641, 41.571449, 10.679119>,  <38.792801, 41.055820, 10.836539>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.249641, 41.571449, 10.679119> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.345924, 41.213139, 10.529646>,  <39.403694, 40.998150, 10.439962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.345924, 41.213139, 10.529646>,  <39.249641, 41.571449, 10.679119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.345924, 41.213139, 10.529646> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104090, 0.406606, -0.907655,
		0.965000, 0.179582, 0.191115,
		0.240707, -0.895780, -0.373682,
		39.418137, 40.944405, 10.417542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.744335, 41.725018, 10.192616>,  <39.249641, 41.571449, 10.679119>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.744335, 41.725018, 10.192616> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.618259, 41.365673, 10.070234>,  <39.542614, 41.150066, 9.996805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.618259, 41.365673, 10.070234>,  <39.744335, 41.725018, 10.192616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.618259, 41.365673, 10.070234> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028076, 0.313421, -0.949199,
		0.948612, -0.307771, -0.073565,
		-0.315193, -0.898357, -0.305956,
		39.523701, 41.096165, 9.978448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.272717, 41.504539, 9.723561>,  <39.744335, 41.725018, 10.192616>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.272717, 41.504539, 9.723561> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.919865, 41.323368, 9.671853>,  <39.708153, 41.214664, 9.640828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.919865, 41.323368, 9.671853>,  <40.272717, 41.504539, 9.723561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.919865, 41.323368, 9.671853> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125966, 0.037603, -0.991322,
		0.453859, -0.890754, 0.023883,
		-0.882125, -0.452928, -0.129271,
		39.655228, 41.187489, 9.633072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.286510, 41.195927, 9.064729>,  <40.272717, 41.504539, 9.723561>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.286510, 41.195927, 9.064729> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.889790, 41.161182, 9.102201>,  <39.651756, 41.140335, 9.124685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.889790, 41.161182, 9.102201>,  <40.286510, 41.195927, 9.064729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.889790, 41.161182, 9.102201> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109250, 0.196562, -0.974386,
		0.066216, -0.976637, -0.204440,
		-0.991806, -0.086855, 0.093682,
		39.592247, 41.135124, 9.130306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.177410, 41.254223, 8.395369>,  <40.286510, 41.195927, 9.064729>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.177410, 41.254223, 8.395369> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.815300, 41.259342, 8.565223>,  <39.598034, 41.262413, 8.667135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.815300, 41.259342, 8.565223>,  <40.177410, 41.254223, 8.395369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.815300, 41.259342, 8.565223> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409563, 0.239239, -0.880354,
		-0.112860, -0.970876, -0.211334,
		-0.905274, 0.012802, 0.424636,
		39.543716, 41.263184, 8.692614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.734493, 40.656754, 8.014805>,  <40.177410, 41.254223, 8.395369>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.734493, 40.656754, 8.014805> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.517590, 40.958408, 8.162987>,  <39.387447, 41.139400, 8.251896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.517590, 40.958408, 8.162987>,  <39.734493, 40.656754, 8.014805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.517590, 40.958408, 8.162987> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378687, 0.174226, -0.908978,
		-0.750035, -0.633187, 0.191106,
		-0.542258, 0.754135, 0.370455,
		39.354912, 41.184650, 8.274123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.993481, 40.554440, 7.925402>,  <39.734493, 40.656754, 8.014805>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.993481, 40.554440, 7.925402> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.089443, 40.942425, 7.941512>,  <39.147022, 41.175217, 7.951178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.089443, 40.942425, 7.941512>,  <38.993481, 40.554440, 7.925402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.089443, 40.942425, 7.941512> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337400, 0.122209, -0.933395,
		-0.910277, 0.210343, 0.356583,
		0.239910, 0.969959, 0.040275,
		39.161415, 41.233414, 7.953594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.422741, 40.058147, 7.471062>,  <38.993481, 40.554440, 7.925402>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.422741, 40.058147, 7.471062> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.215538, 39.749191, 7.324045>,  <39.091217, 39.563816, 7.235834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.215538, 39.749191, 7.324045>,  <39.422741, 40.058147, 7.471062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.215538, 39.749191, 7.324045> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090631, -0.377707, 0.921479,
		-0.850564, 0.510640, 0.125650,
		-0.518003, -0.772389, -0.367543,
		39.060139, 39.517475, 7.213782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.742542, 39.891331, 7.887638>,  <39.422741, 40.058147, 7.471062>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.742542, 39.891331, 7.887638> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.844090, 39.543728, 7.717755>,  <38.905018, 39.335167, 7.615825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.844090, 39.543728, 7.717755>,  <38.742542, 39.891331, 7.887638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.844090, 39.543728, 7.717755> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036709, -0.447433, 0.893564,
		-0.966543, -0.211254, -0.145488,
		0.253865, -0.869008, -0.424709,
		38.920250, 39.283024, 7.590343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.199635, 39.400826, 8.018023>,  <38.742542, 39.891331, 7.887638>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.199635, 39.400826, 8.018023> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.545952, 39.209068, 7.960633>,  <38.753742, 39.094013, 7.926199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.545952, 39.209068, 7.960633>,  <38.199635, 39.400826, 8.018023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.545952, 39.209068, 7.960633> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156668, -0.531993, 0.832129,
		-0.475237, -0.697978, -0.535702,
		0.865797, -0.479386, -0.143472,
		38.805691, 39.065250, 7.917591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.069275, 38.760326, 8.028783>,  <38.199635, 39.400826, 8.018023>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.069275, 38.760326, 8.028783> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.457668, 38.728920, 8.119136>,  <38.690704, 38.710075, 8.173347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.457668, 38.728920, 8.119136>,  <38.069275, 38.760326, 8.028783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.457668, 38.728920, 8.119136> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222233, -0.645127, 0.731043,
		0.088323, -0.760031, -0.643858,
		0.970985, -0.078518, 0.225883,
		38.748962, 38.705364, 8.186901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.160091, 38.071861, 8.153316>,  <38.069275, 38.760326, 8.028783>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.160091, 38.071861, 8.153316> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.457634, 38.269901, 8.332896>,  <38.636158, 38.388725, 8.440644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.457634, 38.269901, 8.332896>,  <38.160091, 38.071861, 8.153316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.457634, 38.269901, 8.332896> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214605, -0.459229, 0.862005,
		0.632948, -0.737555, -0.235350,
		0.743856, 0.495097, 0.448951,
		38.680790, 38.418430, 8.467582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.483147, 37.514332, 8.600478>,  <38.160091, 38.071861, 8.153316>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.483147, 37.514332, 8.600478> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.589306, 37.870018, 8.749537>,  <38.653000, 38.083427, 8.838973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.589306, 37.870018, 8.749537>,  <38.483147, 37.514332, 8.600478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.589306, 37.870018, 8.749537> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122959, -0.352136, 0.927837,
		0.956267, -0.292064, 0.015882,
		0.265395, 0.889212, 0.372648,
		38.668926, 38.136784, 8.861332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.084923, 37.296459, 8.994571>,  <38.483147, 37.514332, 8.600478>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.084923, 37.296459, 8.994571> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.916603, 37.637894, 9.117419>,  <38.815613, 37.842754, 9.191128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.916603, 37.637894, 9.117419>,  <39.084923, 37.296459, 8.994571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.916603, 37.637894, 9.117419> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047416, -0.358787, 0.932215,
		0.905915, 0.377710, 0.191449,
		-0.420796, 0.853585, 0.307121,
		38.790363, 37.893970, 9.209556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.369392, 37.488865, 9.614802>,  <39.084923, 37.296459, 8.994571>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.369392, 37.488865, 9.614802> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.017044, 37.677170, 9.634594>,  <38.805634, 37.790154, 9.646469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.017044, 37.677170, 9.634594>,  <39.369392, 37.488865, 9.614802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.017044, 37.677170, 9.634594> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059273, -0.213406, 0.975164,
		0.469626, 0.856063, 0.215888,
		-0.880874, 0.470759, 0.049479,
		38.752781, 37.818398, 9.649438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.391930, 37.676601, 10.313107>,  <39.369392, 37.488865, 9.614802>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.391930, 37.676601, 10.313107> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.018768, 37.784855, 10.218079>,  <38.794872, 37.849808, 10.161061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.018768, 37.784855, 10.218079>,  <39.391930, 37.676601, 10.313107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.018768, 37.784855, 10.218079> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264675, -0.067938, 0.961942,
		0.244194, 0.960282, 0.135010,
		-0.932908, 0.270634, -0.237572,
		38.738895, 37.866047, 10.146807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.285175, 38.203876, 10.785194>,  <39.391930, 37.676601, 10.313107>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.285175, 38.203876, 10.785194> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.946186, 38.042572, 10.647111>,  <38.742794, 37.945789, 10.564260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.946186, 38.042572, 10.647111>,  <39.285175, 38.203876, 10.785194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.946186, 38.042572, 10.647111> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361620, -0.037502, 0.931571,
		-0.388615, 0.914315, -0.114046,
		-0.847473, -0.403263, -0.345208,
		38.691944, 37.921593, 10.543549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.751080, 38.583771, 11.034996>,  <39.285175, 38.203876, 10.785194>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.751080, 38.583771, 11.034996> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.622955, 38.210236, 10.971325>,  <38.546082, 37.986115, 10.933123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.622955, 38.210236, 10.971325>,  <38.751080, 38.583771, 11.034996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.622955, 38.210236, 10.971325> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326967, -0.048718, 0.943779,
		-0.889096, 0.354352, -0.289731,
		-0.320315, -0.933842, -0.159177,
		38.526859, 37.930084, 10.923572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.057323, 38.483479, 11.262788>,  <38.751080, 38.583771, 11.034996>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.057323, 38.483479, 11.262788> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.229420, 38.122410, 11.266212>,  <38.332676, 37.905769, 11.268266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.229420, 38.122410, 11.266212>,  <38.057323, 38.483479, 11.262788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.229420, 38.122410, 11.266212> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074316, -0.025969, 0.996896,
		-0.899651, -0.429539, -0.078257,
		0.430238, -0.902675, 0.008559,
		38.358490, 37.851608, 11.268779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.852474, 38.206169, 11.921811>,  <38.057323, 38.483479, 11.262788>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.852474, 38.206169, 11.921811> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.100033, 37.907028, 11.825741>,  <38.248569, 37.727543, 11.768099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.100033, 37.907028, 11.825741>,  <37.852474, 38.206169, 11.921811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.100033, 37.907028, 11.825741> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200091, -0.145578, 0.968902,
		-0.759558, -0.647709, 0.059540,
		0.618899, -0.747850, -0.240176,
		38.285702, 37.682674, 11.753688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.780567, 37.692699, 12.400165>,  <37.852474, 38.206169, 11.921811>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.780567, 37.692699, 12.400165> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.157204, 37.632664, 12.279578>,  <38.383186, 37.596642, 12.207227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.157204, 37.632664, 12.279578>,  <37.780567, 37.692699, 12.400165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.157204, 37.632664, 12.279578> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270220, -0.197505, 0.942323,
		-0.201018, -0.968737, -0.145397,
		0.941580, -0.150135, -0.301474,
		38.439682, 37.587635, 12.189138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.054367, 37.184456, 12.782425>,  <37.780567, 37.692699, 12.400165>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.054367, 37.184456, 12.782425> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.385620, 37.339760, 12.620708>,  <38.584370, 37.432941, 12.523677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.385620, 37.339760, 12.620708>,  <38.054367, 37.184456, 12.782425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.385620, 37.339760, 12.620708> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507849, -0.214411, 0.834336,
		0.237257, -0.896259, -0.374739,
		0.828129, 0.388263, -0.404294,
		38.634060, 37.456238, 12.499419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.603653, 36.751606, 12.931130>,  <38.054367, 37.184456, 12.782425>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.603653, 36.751606, 12.931130> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.794834, 37.094166, 12.853004>,  <38.909542, 37.299702, 12.806129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.794834, 37.094166, 12.853004>,  <38.603653, 36.751606, 12.931130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.794834, 37.094166, 12.853004> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516092, -0.093858, 0.851375,
		0.710783, -0.507716, -0.486839,
		0.477950, 0.856397, -0.195315,
		38.938221, 37.351086, 12.794410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.349152, 36.716492, 13.253393>,  <38.603653, 36.751606, 12.931130>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.349152, 36.716492, 13.253393> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.277805, 37.104176, 13.185482>,  <39.234997, 37.336784, 13.144735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.277805, 37.104176, 13.185482>,  <39.349152, 36.716492, 13.253393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.277805, 37.104176, 13.185482> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402480, 0.229315, 0.886242,
		0.897884, 0.089742, -0.430988,
		-0.178365, 0.969207, -0.169778,
		39.224297, 37.394936, 13.134548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.976284, 37.031467, 13.302303>,  <39.349152, 36.716492, 13.253393>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.976284, 37.031467, 13.302303> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.705837, 37.310955, 13.395821>,  <39.543568, 37.478645, 13.451931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.705837, 37.310955, 13.395821>,  <39.976284, 37.031467, 13.302303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.705837, 37.310955, 13.395821> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552402, 0.270739, 0.788386,
		0.487561, 0.662190, -0.569024,
		-0.676118, 0.698716, 0.233794,
		39.503002, 37.520569, 13.465959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.343906, 37.519039, 13.603717>,  <39.976284, 37.031467, 13.302303>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.343906, 37.519039, 13.603717> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.976974, 37.614544, 13.731147>,  <39.756813, 37.671848, 13.807605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.976974, 37.614544, 13.731147>,  <40.343906, 37.519039, 13.603717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.976974, 37.614544, 13.731147> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364363, 0.181053, 0.913487,
		0.160431, 0.954049, -0.253084,
		-0.917334, 0.238767, 0.318574,
		39.701775, 37.686172, 13.826719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.395233, 38.162827, 14.103136>,  <40.343906, 37.519039, 13.603717>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.395233, 38.162827, 14.103136> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.053570, 37.979927, 14.202197>,  <39.848572, 37.870190, 14.261634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.053570, 37.979927, 14.202197>,  <40.395233, 38.162827, 14.103136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.053570, 37.979927, 14.202197> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196574, 0.156984, 0.967840,
		-0.481419, 0.875375, -0.044207,
		-0.854163, -0.457247, 0.247651,
		39.797321, 37.842754, 14.276492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.281212, 38.366291, 14.734991>,  <40.395233, 38.162827, 14.103136>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.281212, 38.366291, 14.734991> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.019161, 38.064320, 14.723012>,  <39.861931, 37.883137, 14.715824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.019161, 38.064320, 14.723012>,  <40.281212, 38.366291, 14.734991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.019161, 38.064320, 14.723012> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008740, -0.032063, 0.999448,
		-0.755471, 0.655024, 0.014408,
		-0.655124, -0.754927, -0.029948,
		39.822624, 37.837841, 14.714027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.417072, 41.169331, 19.130585> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.149197, 40.873016, 19.109600>,  <39.988472, 40.695229, 19.097010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.149197, 40.873016, 19.109600>,  <40.417072, 41.169331, 19.130585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.149197, 40.873016, 19.109600> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330424, 0.233962, 0.914375,
		-0.665080, 0.629685, -0.401455,
		-0.669694, -0.740783, -0.052460,
		39.948288, 40.650780, 19.093863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.808533, 41.487385, 19.332628>,  <40.417072, 41.169331, 19.130585>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.808533, 41.487385, 19.332628> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.754433, 41.095005, 19.388420>,  <39.721973, 40.859577, 19.421894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.754433, 41.095005, 19.388420>,  <39.808533, 41.487385, 19.332628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.754433, 41.095005, 19.388420> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518490, 0.190028, 0.833701,
		-0.844320, 0.040436, -0.534311,
		-0.135246, -0.980946, 0.139479,
		39.713860, 40.800720, 19.430264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.135559, 41.374241, 19.494741>,  <39.808533, 41.487385, 19.332628>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.135559, 41.374241, 19.494741> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.290901, 41.034939, 19.638765>,  <39.384106, 40.831356, 19.725180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.290901, 41.034939, 19.638765>,  <39.135559, 41.374241, 19.494741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.290901, 41.034939, 19.638765> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545271, 0.103457, 0.831851,
		-0.742873, -0.519383, -0.422352,
		0.388354, -0.848256, 0.360059,
		39.407406, 40.780460, 19.746782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.520382, 40.959148, 19.736155>,  <39.135559, 41.374241, 19.494741>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.520382, 40.959148, 19.736155> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.851643, 40.827412, 19.917568>,  <39.050400, 40.748371, 20.026417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.851643, 40.827412, 19.917568>,  <38.520382, 40.959148, 19.736155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.851643, 40.827412, 19.917568> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488814, -0.028443, 0.871924,
		-0.274263, -0.943781, -0.184543,
		0.828155, -0.329344, 0.453533,
		39.100090, 40.728607, 20.053629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.190281, 40.657093, 20.286564>,  <38.520382, 40.959148, 19.736155>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.190281, 40.657093, 20.286564> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.571655, 40.665287, 20.406919>,  <38.800480, 40.670204, 20.479132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.571655, 40.665287, 20.406919>,  <38.190281, 40.657093, 20.286564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.571655, 40.665287, 20.406919> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296143, -0.125036, 0.946924,
		0.057025, -0.991940, -0.113146,
		0.953440, 0.020491, 0.300887,
		38.857689, 40.671432, 20.497185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.305340, 40.044479, 20.716858>,  <38.190281, 40.657093, 20.286564>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.305340, 40.044479, 20.716858> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.608547, 40.289165, 20.807383>,  <38.790470, 40.435978, 20.861698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.608547, 40.289165, 20.807383>,  <38.305340, 40.044479, 20.716858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.608547, 40.289165, 20.807383> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226472, -0.078542, 0.970846,
		0.611656, -0.787170, 0.079000,
		0.758016, 0.611715, 0.226313,
		38.835953, 40.472679, 20.875277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.613220, 39.754402, 21.279669>,  <38.305340, 40.044479, 20.716858>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.613220, 39.754402, 21.279669> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.716755, 40.140408, 21.296446>,  <38.778877, 40.372009, 21.306513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.716755, 40.140408, 21.296446>,  <38.613220, 39.754402, 21.279669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.716755, 40.140408, 21.296446> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101113, -0.016113, 0.994744,
		0.960613, -0.261720, 0.093405,
		0.258839, 0.965009, 0.041942,
		38.794407, 40.429909, 21.309029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.060024, 39.754021, 21.884331>,  <38.613220, 39.754402, 21.279669>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.060024, 39.754021, 21.884331> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.989021, 40.141834, 21.816803>,  <38.946419, 40.374523, 21.776285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.989021, 40.141834, 21.816803>,  <39.060024, 39.754021, 21.884331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.989021, 40.141834, 21.816803> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010562, 0.169658, 0.985446,
		0.984063, 0.176705, -0.019876,
		-0.177506, 0.969531, -0.168821,
		38.935768, 40.432693, 21.766157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.506535, 40.118778, 22.265631>,  <39.060024, 39.754021, 21.884331>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.506535, 40.118778, 22.265631> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.188122, 40.350483, 22.195442>,  <38.997074, 40.489506, 22.153330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.188122, 40.350483, 22.195442>,  <39.506535, 40.118778, 22.265631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.188122, 40.350483, 22.195442> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230338, -0.021831, 0.972866,
		0.559716, 0.814847, 0.150805,
		-0.796029, 0.579265, -0.175471,
		38.949314, 40.524261, 22.142801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.550137, 40.580372, 22.699013>,  <39.506535, 40.118778, 22.265631>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.550137, 40.580372, 22.699013> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.167618, 40.667908, 22.621437>,  <38.938107, 40.720428, 22.574892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.167618, 40.667908, 22.621437>,  <39.550137, 40.580372, 22.699013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.167618, 40.667908, 22.621437> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171423, 0.117752, 0.978135,
		0.236895, 0.968629, -0.075090,
		-0.956292, 0.218843, -0.193940,
		38.880730, 40.733559, 22.563255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.345684, 41.169453, 22.925489>,  <39.550137, 40.580372, 22.699013>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.345684, 41.169453, 22.925489> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.986919, 40.992710, 22.932577>,  <38.771660, 40.886665, 22.936831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.986919, 40.992710, 22.932577>,  <39.345684, 41.169453, 22.925489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.986919, 40.992710, 22.932577> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161070, 0.363746, 0.917467,
		-0.411833, 0.820032, -0.397418,
		-0.896911, -0.441856, 0.017720,
		38.717846, 40.860153, 22.937893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.931721, 41.642513, 23.247145>,  <39.345684, 41.169453, 22.925489>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.931721, 41.642513, 23.247145> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.723511, 41.302124, 23.275127>,  <38.598583, 41.097889, 23.291918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.723511, 41.302124, 23.275127>,  <38.931721, 41.642513, 23.247145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.723511, 41.302124, 23.275127> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312556, 0.266148, 0.911852,
		-0.794581, 0.452780, -0.404514,
		-0.520529, -0.850974, 0.069957,
		38.567352, 41.046833, 23.296114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.237480, 41.837894, 23.323862>,  <38.931721, 41.642513, 23.247145>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.237480, 41.837894, 23.323862> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.337215, 41.498703, 23.510946>,  <38.397057, 41.295189, 23.623198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.337215, 41.498703, 23.510946>,  <38.237480, 41.837894, 23.323862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.337215, 41.498703, 23.510946> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473444, 0.314576, 0.822735,
		-0.844796, -0.426576, -0.323036,
		0.249339, -0.847983, 0.467712,
		38.412018, 41.244308, 23.651260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.711658, 41.596588, 23.698879>,  <38.237480, 41.837894, 23.323862>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.711658, 41.596588, 23.698879> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.000130, 41.386448, 23.879507>,  <38.173210, 41.260365, 23.987883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.000130, 41.386448, 23.879507>,  <37.711658, 41.596588, 23.698879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.000130, 41.386448, 23.879507> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493464, 0.067926, 0.867110,
		-0.486208, -0.848171, -0.210254,
		0.721176, -0.525349, 0.451568,
		38.216484, 41.228844, 24.014978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.479958, 41.727985, 24.509077>,  <37.711658, 41.596588, 23.698879>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.479958, 41.727985, 24.509077> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.109848, 41.848251, 24.601564>,  <36.887783, 41.920410, 24.657057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.109848, 41.848251, 24.601564>,  <37.479958, 41.727985, 24.509077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.109848, 41.848251, 24.601564> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077070, 0.447846, -0.890783,
		-0.371379, -0.842041, -0.391209,
		-0.925278, 0.300667, 0.231217,
		36.832264, 41.938450, 24.670929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.065872, 41.496124, 24.053940>,  <37.479958, 41.727985, 24.509077>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.065872, 41.496124, 24.053940> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.866383, 41.812134, 24.196566>,  <36.746689, 42.001740, 24.282141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.866383, 41.812134, 24.196566>,  <37.065872, 41.496124, 24.053940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.866383, 41.812134, 24.196566> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159412, 0.320757, -0.933650,
		-0.851976, -0.522474, -0.034029,
		-0.498723, 0.790023, 0.356566,
		36.716766, 42.049141, 24.303535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.506634, 41.636269, 23.580156>,  <37.065872, 41.496124, 24.053940>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.506634, 41.636269, 23.580156> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.501518, 41.985176, 23.775700>,  <36.498447, 42.194519, 23.893024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.501518, 41.985176, 23.775700>,  <36.506634, 41.636269, 23.580156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.501518, 41.985176, 23.775700> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435110, 0.435329, -0.788142,
		-0.900286, -0.222785, 0.373967,
		-0.012788, 0.872270, 0.488857,
		36.497681, 42.246857, 23.922358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.732883, 41.891754, 23.555813>,  <36.506634, 41.636269, 23.580156>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.732883, 41.891754, 23.555813> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.021633, 42.166767, 23.587313>,  <36.194881, 42.331776, 23.606213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.021633, 42.166767, 23.587313>,  <35.732883, 41.891754, 23.555813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.021633, 42.166767, 23.587313> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495678, 0.593110, -0.634448,
		-0.482909, 0.418957, 0.768944,
		0.721874, 0.687529, 0.078751,
		36.238197, 42.373024, 23.610937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.459896, 42.396767, 23.170567>,  <35.732883, 41.891754, 23.555813>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.459896, 42.396767, 23.170567> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.807724, 42.574776, 23.256178>,  <36.016422, 42.681580, 23.307545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.807724, 42.574776, 23.256178>,  <35.459896, 42.396767, 23.170567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.807724, 42.574776, 23.256178> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144329, 0.643536, -0.751685,
		-0.472248, 0.622752, 0.623828,
		0.869569, 0.445018, 0.214027,
		36.068596, 42.708282, 23.320387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.269360, 43.181885, 23.037712>,  <35.459896, 42.396767, 23.170567>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.269360, 43.181885, 23.037712> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.664379, 43.119007, 23.040131>,  <35.901390, 43.081280, 23.041582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.664379, 43.119007, 23.040131>,  <35.269360, 43.181885, 23.037712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.664379, 43.119007, 23.040131> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075956, 0.442809, -0.893393,
		0.137760, 0.882729, 0.449235,
		0.987549, -0.157196, 0.006048,
		35.960644, 43.071850, 23.041945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.530083, 43.721355, 22.834251>,  <35.269360, 43.181885, 23.037712>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.530083, 43.721355, 22.834251> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.825344, 43.461716, 22.760714>,  <36.002502, 43.305931, 22.716591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.825344, 43.461716, 22.760714>,  <35.530083, 43.721355, 22.834251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.825344, 43.461716, 22.760714> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058067, 0.210369, -0.975896,
		0.672127, 0.731038, 0.117594,
		0.738156, -0.649098, -0.183844,
		36.046791, 43.266987, 22.705561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.017826, 44.083714, 22.420359>,  <35.530083, 43.721355, 22.834251>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.017826, 44.083714, 22.420359> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.084763, 43.692268, 22.372501>,  <36.124924, 43.457401, 22.343788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.084763, 43.692268, 22.372501>,  <36.017826, 44.083714, 22.420359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.084763, 43.692268, 22.372501> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136140, 0.097254, -0.985904,
		0.976455, 0.181266, -0.116954,
		0.167337, -0.978613, -0.119641,
		36.134964, 43.398685, 22.336609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.359558, 44.067429, 21.791571>,  <36.017826, 44.083714, 22.420359>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.359558, 44.067429, 21.791571> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.203159, 43.700687, 21.823847>,  <36.109322, 43.480644, 21.843212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.203159, 43.700687, 21.823847>,  <36.359558, 44.067429, 21.791571>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.203159, 43.700687, 21.823847> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159957, -0.018643, -0.986948,
		0.906387, -0.398798, -0.139367,
		-0.390995, -0.916849, 0.080688,
		36.085861, 43.425632, 21.848053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.638149, 43.790688, 21.203438>,  <36.359558, 44.067429, 21.791571>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.638149, 43.790688, 21.203438> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.336639, 43.546955, 21.301851>,  <36.155731, 43.400715, 21.360899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.336639, 43.546955, 21.301851>,  <36.638149, 43.790688, 21.203438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.336639, 43.546955, 21.301851> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135068, -0.222748, -0.965474,
		0.643099, -0.760983, 0.085601,
		-0.753777, -0.609334, 0.246034,
		36.110508, 43.364155, 21.375662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.787205, 43.158821, 20.824612>,  <36.638149, 43.790688, 21.203438>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.787205, 43.158821, 20.824612> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.397472, 43.143723, 20.913387>,  <36.163635, 43.134663, 20.966654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.397472, 43.143723, 20.913387>,  <36.787205, 43.158821, 20.824612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.397472, 43.143723, 20.913387> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197195, -0.332519, -0.922250,
		0.108612, -0.942341, 0.316539,
		-0.974329, -0.037747, 0.221941,
		36.105175, 43.132397, 20.979969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.576584, 42.484749, 20.974169>,  <36.787205, 43.158821, 20.824612>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.576584, 42.484749, 20.974169> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.243332, 42.681553, 20.873114>,  <36.043381, 42.799637, 20.812481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.243332, 42.681553, 20.873114>,  <36.576584, 42.484749, 20.974169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.243332, 42.681553, 20.873114> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071368, -0.357333, -0.931247,
		-0.548459, -0.793877, 0.262590,
		-0.833126, 0.492010, -0.252639,
		35.993393, 42.829155, 20.797321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.144611, 42.048695, 20.515409>,  <36.576584, 42.484749, 20.974169>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.144611, 42.048695, 20.515409> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.048550, 42.427868, 20.431751>,  <35.990913, 42.655373, 20.381556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.048550, 42.427868, 20.431751>,  <36.144611, 42.048695, 20.515409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.048550, 42.427868, 20.431751> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018380, -0.210973, -0.977319,
		-0.970560, -0.238556, 0.033244,
		-0.240158, 0.947936, -0.209146,
		35.976501, 42.712250, 20.369007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.558594, 41.917397, 20.087648>,  <36.144611, 42.048695, 20.515409>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.558594, 41.917397, 20.087648> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.705143, 42.286037, 20.036404>,  <35.793072, 42.507221, 20.005657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.705143, 42.286037, 20.036404>,  <35.558594, 41.917397, 20.087648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.705143, 42.286037, 20.036404> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283902, -0.241843, -0.927853,
		-0.886099, 0.303568, -0.350251,
		0.366372, 0.921607, -0.128113,
		35.815056, 42.562519, 19.997971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.793488, 41.811176, 19.919699>,  <35.558594, 41.917397, 20.087648>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.793488, 41.811176, 19.919699> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.847889, 41.417538, 19.873981>,  <34.880531, 41.181355, 19.846550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.847889, 41.417538, 19.873981>,  <34.793488, 41.811176, 19.919699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.847889, 41.417538, 19.873981> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170576, -0.136905, 0.975787,
		-0.975913, -0.113216, -0.186483,
		0.136005, -0.984093, -0.114295,
		34.888691, 41.122311, 19.839693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.196880, 41.554298, 20.315281>,  <34.793488, 41.811176, 19.919699>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.196880, 41.554298, 20.315281> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.456882, 41.255573, 20.259062>,  <34.612885, 41.076336, 20.225330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.456882, 41.255573, 20.259062>,  <34.196880, 41.554298, 20.315281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.456882, 41.255573, 20.259062> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064879, -0.238811, 0.968897,
		-0.757153, -0.620671, -0.203682,
		0.650007, -0.746818, -0.140547,
		34.651886, 41.031528, 20.216898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.958588, 40.985855, 20.584311>,  <34.196880, 41.554298, 20.315281>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.958588, 40.985855, 20.584311> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.345531, 40.886246, 20.565575>,  <34.577698, 40.826481, 20.554333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.345531, 40.886246, 20.565575>,  <33.958588, 40.985855, 20.584311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.345531, 40.886246, 20.565575> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061978, -0.411777, 0.909174,
		-0.245694, -0.876600, -0.413772,
		0.967364, -0.249023, -0.046841,
		34.635742, 40.811539, 20.551523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.968452, 40.329617, 20.787374>,  <33.958588, 40.985855, 20.584311>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.968452, 40.329617, 20.787374> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.333462, 40.483528, 20.842857>,  <34.552467, 40.575874, 20.876146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.333462, 40.483528, 20.842857>,  <33.968452, 40.329617, 20.787374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.333462, 40.483528, 20.842857> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004998, -0.328610, 0.944452,
		0.408986, -0.862531, -0.297943,
		0.912527, 0.384779, 0.138708,
		34.607220, 40.598961, 20.884470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.327190, 39.877590, 21.122110>,  <33.968452, 40.329617, 20.787374>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.327190, 39.877590, 21.122110> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.562424, 40.190132, 21.205667>,  <34.703564, 40.377659, 21.255802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.562424, 40.190132, 21.205667>,  <34.327190, 39.877590, 21.122110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.562424, 40.190132, 21.205667> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011401, -0.250240, 0.968117,
		0.808719, -0.571717, -0.138254,
		0.588085, 0.781358, 0.208892,
		34.738850, 40.424538, 21.268335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.804520, 39.648304, 21.616423>,  <34.327190, 39.877590, 21.122110>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.804520, 39.648304, 21.616423> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.829815, 40.045727, 21.654055>,  <34.844994, 40.284180, 21.676634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.829815, 40.045727, 21.654055>,  <34.804520, 39.648304, 21.616423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.829815, 40.045727, 21.654055> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102330, -0.100227, 0.989688,
		0.992738, -0.052963, -0.108009,
		0.063242, 0.993554, 0.094079,
		34.848789, 40.343792, 21.682278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.437122, 39.817657, 21.984186>,  <34.804520, 39.648304, 21.616423>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.437122, 39.817657, 21.984186> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.196297, 40.130093, 22.050419>,  <35.051804, 40.317554, 22.090158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.196297, 40.130093, 22.050419>,  <35.437122, 39.817657, 21.984186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.196297, 40.130093, 22.050419> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209363, -0.045686, 0.976770,
		0.770511, 0.622743, -0.136026,
		-0.602063, 0.781091, 0.165581,
		35.015678, 40.364422, 22.100094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.783352, 40.265087, 22.430948>,  <35.437122, 39.817657, 21.984186>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.783352, 40.265087, 22.430948> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.413433, 40.398991, 22.503273>,  <35.191483, 40.479332, 22.546667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.413433, 40.398991, 22.503273>,  <35.783352, 40.265087, 22.430948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.413433, 40.398991, 22.503273> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176956, -0.042256, 0.983311,
		0.336812, 0.941356, -0.020159,
		-0.924794, 0.334758, 0.180811,
		35.135994, 40.499416, 22.557516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.834034, 40.715115, 22.978630>,  <35.783352, 40.265087, 22.430948>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.834034, 40.715115, 22.978630> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.444942, 40.622410, 22.982374>,  <35.211487, 40.566788, 22.984621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.444942, 40.622410, 22.982374>,  <35.834034, 40.715115, 22.978630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.444942, 40.622410, 22.982374> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028119, -0.077762, 0.996575,
		-0.230237, 0.969660, 0.082158,
		-0.972728, -0.231758, 0.009362,
		35.153126, 40.552883, 22.985184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.608723, 41.045086, 23.656277>,  <35.834034, 40.715115, 22.978630>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.608723, 41.045086, 23.656277> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.336414, 40.773766, 23.545673>,  <35.173031, 40.610973, 23.479311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.336414, 40.773766, 23.545673>,  <35.608723, 41.045086, 23.656277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.336414, 40.773766, 23.545673> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318562, -0.065757, 0.945618,
		-0.659600, 0.731832, -0.171317,
		-0.680769, -0.678305, -0.276507,
		35.132183, 40.570274, 23.462721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.044022, 41.175011, 24.062227>,  <35.608723, 41.045086, 23.656277>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.044022, 41.175011, 24.062227> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.964344, 40.797356, 23.957216>,  <34.916538, 40.570763, 23.894211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.964344, 40.797356, 23.957216>,  <35.044022, 41.175011, 24.062227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.964344, 40.797356, 23.957216> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237373, -0.213429, 0.947682,
		-0.950776, 0.251091, -0.181599,
		-0.199196, -0.944140, -0.262526,
		34.904587, 40.514114, 23.878458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.348457, 41.006790, 24.244190>,  <35.044022, 41.175011, 24.062227>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.348457, 41.006790, 24.244190> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.589344, 40.687614, 24.254234>,  <34.733875, 40.496109, 24.260262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.589344, 40.687614, 24.254234>,  <34.348457, 41.006790, 24.244190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.589344, 40.687614, 24.254234> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341039, -0.228695, 0.911806,
		-0.721821, -0.557670, -0.409852,
		0.602218, -0.797937, 0.025111,
		34.770008, 40.448235, 24.261768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<33.838383, 41.925091, 16.392250> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.137074, 41.672321, 16.309242>,  <34.316288, 41.520660, 16.259438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.137074, 41.672321, 16.309242>,  <33.838383, 41.925091, 16.392250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.137074, 41.672321, 16.309242> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088234, -0.403359, 0.910778,
		-0.659251, -0.661794, -0.356957,
		0.746728, -0.631926, -0.207522,
		34.361092, 41.482742, 16.246986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.594166, 41.199638, 16.565331>,  <33.838383, 41.925091, 16.392250>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.594166, 41.199638, 16.565331> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.993725, 41.190910, 16.581989>,  <34.233459, 41.185673, 16.591984>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.993725, 41.190910, 16.581989>,  <33.594166, 41.199638, 16.565331>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.993725, 41.190910, 16.581989> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046572, -0.337793, 0.940067,
		-0.006442, -0.940967, -0.338436,
		0.998894, -0.021817, 0.041647,
		34.293392, 41.184364, 16.594482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.668892, 40.712704, 17.016125>,  <33.594166, 41.199638, 16.565331>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.668892, 40.712704, 17.016125> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.043369, 40.852127, 16.997995>,  <34.268055, 40.935780, 16.987118>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.043369, 40.852127, 16.997995>,  <33.668892, 40.712704, 17.016125>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.043369, 40.852127, 16.997995> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154519, -0.292299, 0.943761,
		0.315707, -0.890544, -0.327507,
		0.936190, 0.348559, -0.045325,
		34.324226, 40.956696, 16.984398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.098881, 40.204269, 17.382307>,  <33.668892, 40.712704, 17.016125>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.098881, 40.204269, 17.382307> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.336765, 40.525764, 17.375162>,  <34.479496, 40.718662, 17.370876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.336765, 40.525764, 17.375162>,  <34.098881, 40.204269, 17.382307>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.336765, 40.525764, 17.375162> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323770, -0.219116, 0.920413,
		0.735859, -0.553165, -0.390538,
		0.594714, 0.803739, -0.017860,
		34.515179, 40.766888, 17.369804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.812595, 40.054600, 17.566717>,  <34.098881, 40.204269, 17.382307>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.812595, 40.054600, 17.566717> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.777847, 40.440773, 17.665014>,  <34.757000, 40.672478, 17.723991>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.777847, 40.440773, 17.665014>,  <34.812595, 40.054600, 17.566717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.777847, 40.440773, 17.665014> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351814, -0.201050, 0.914224,
		0.932030, 0.165876, -0.322188,
		-0.086872, 0.965435, 0.245742,
		34.751785, 40.730404, 17.738737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.320919, 40.125057, 18.026247>,  <34.812595, 40.054600, 17.566717>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.320919, 40.125057, 18.026247> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.069717, 40.429913, 18.089184>,  <34.918999, 40.612827, 18.126945>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.069717, 40.429913, 18.089184>,  <35.320919, 40.125057, 18.026247>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.069717, 40.429913, 18.089184> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329027, 0.076813, 0.941191,
		0.705233, 0.642839, -0.299004,
		-0.628002, 0.762140, 0.157340,
		34.881317, 40.658554, 18.136385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.779263, 40.625561, 18.393347>,  <35.320919, 40.125057, 18.026247>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.779263, 40.625561, 18.393347> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.398132, 40.732021, 18.451717>,  <35.169456, 40.795898, 18.486740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.398132, 40.732021, 18.451717>,  <35.779263, 40.625561, 18.393347>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.398132, 40.732021, 18.451717> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166480, 0.056240, 0.984440,
		0.253800, 0.962290, -0.097895,
		-0.952822, 0.266148, 0.145929,
		35.112286, 40.811867, 18.495497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.744736, 41.279972, 18.923605>,  <35.779263, 40.625561, 18.393347>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.744736, 41.279972, 18.923605> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.380539, 41.115654, 18.942635>,  <35.162022, 41.017063, 18.954052>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.380539, 41.115654, 18.942635>,  <35.744736, 41.279972, 18.923605>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.380539, 41.115654, 18.942635> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007037, 0.099636, 0.994999,
		-0.413477, 0.906269, -0.087826,
		-0.910487, -0.410791, 0.047575,
		35.107391, 40.992416, 18.956907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.470825, 41.576427, 19.463768>,  <35.744736, 41.279972, 18.923605>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.470825, 41.576427, 19.463768> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.226593, 41.260944, 19.435129>,  <35.080051, 41.071655, 19.417946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.226593, 41.260944, 19.435129>,  <35.470825, 41.576427, 19.463768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.226593, 41.260944, 19.435129> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090600, -0.020245, 0.995682,
		-0.786751, 0.614435, -0.059095,
		-0.610585, -0.788708, -0.071596,
		35.043419, 41.024334, 19.413651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.243500, 42.310741, 19.221113>,  <35.470825, 41.576427, 19.463768>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.243500, 42.310741, 19.221113> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.516346, 42.571491, 19.353643>,  <35.680054, 42.727943, 19.433161>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.516346, 42.571491, 19.353643>,  <35.243500, 42.310741, 19.221113>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.516346, 42.571491, 19.353643> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577270, -0.201912, -0.791196,
		-0.448864, 0.730951, -0.514036,
		0.682115, 0.651876, 0.331324,
		35.720982, 42.767056, 19.453041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.221714, 42.903526, 18.834091>,  <35.243500, 42.310741, 19.221113>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.221714, 42.903526, 18.834091> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.590347, 42.889034, 18.988684>,  <35.811527, 42.880341, 19.081440>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.590347, 42.889034, 18.988684>,  <35.221714, 42.903526, 18.834091>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.590347, 42.889034, 18.988684> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381283, -0.102301, -0.918780,
		0.072822, 0.994094, -0.080466,
		0.921586, -0.036227, 0.386481,
		35.866821, 42.878166, 19.104628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.737194, 43.325436, 18.399572>,  <35.221714, 42.903526, 18.834091>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.737194, 43.325436, 18.399572> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.965439, 43.064011, 18.598475>,  <36.102386, 42.907154, 18.717815>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.965439, 43.064011, 18.598475>,  <35.737194, 43.325436, 18.399572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.965439, 43.064011, 18.598475> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594621, -0.088825, -0.799084,
		0.566420, 0.751643, 0.337937,
		0.570608, -0.653562, 0.497255,
		36.136620, 42.867943, 18.747650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.431267, 43.548382, 18.162689>,  <35.737194, 43.325436, 18.399572>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.431267, 43.548382, 18.162689> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.460712, 43.176758, 18.307705>,  <36.478382, 42.953785, 18.394714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.460712, 43.176758, 18.307705>,  <36.431267, 43.548382, 18.162689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.460712, 43.176758, 18.307705> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655033, -0.229071, -0.720040,
		0.752005, 0.290483, 0.591699,
		0.073619, -0.929056, 0.362539,
		36.482800, 42.898041, 18.416466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.123276, 43.486046, 18.143906>,  <36.431267, 43.548382, 18.162689>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.123276, 43.486046, 18.143906> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.937309, 43.131927, 18.147894>,  <36.825729, 42.919456, 18.150288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.937309, 43.131927, 18.147894>,  <37.123276, 43.486046, 18.143906>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.937309, 43.131927, 18.147894> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547002, -0.296079, -0.783023,
		0.696160, -0.358588, 0.621912,
		-0.464918, -0.885297, 0.009970,
		36.797832, 42.866337, 18.150885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.645054, 43.078739, 18.100658>,  <37.123276, 43.486046, 18.143906>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.645054, 43.078739, 18.100658> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.333042, 42.846996, 18.006081>,  <37.145836, 42.707951, 17.949335>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.333042, 42.846996, 18.006081>,  <37.645054, 43.078739, 18.100658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.333042, 42.846996, 18.006081> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419694, -0.204122, -0.884416,
		0.464128, -0.789101, 0.402373,
		-0.780027, -0.579356, -0.236442,
		37.099033, 42.673191, 17.935148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.975658, 42.607834, 17.711468>,  <37.645054, 43.078739, 18.100658>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.975658, 42.607834, 17.711468> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.590141, 42.565697, 17.613491>,  <37.358829, 42.540413, 17.554705>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.590141, 42.565697, 17.613491>,  <37.975658, 42.607834, 17.711468>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.590141, 42.565697, 17.613491> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255182, -0.098075, -0.961906,
		0.077311, -0.989587, 0.121407,
		-0.963798, -0.105347, -0.244943,
		37.301003, 42.534092, 17.540009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.910099, 42.114738, 17.296463>,  <37.975658, 42.607834, 17.711468>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.910099, 42.114738, 17.296463> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.571232, 42.309273, 17.210873>,  <37.367912, 42.425995, 17.159519>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.571232, 42.309273, 17.210873>,  <37.910099, 42.114738, 17.296463>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.571232, 42.309273, 17.210873> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175053, -0.124757, -0.976623,
		-0.501661, -0.864820, 0.020555,
		-0.847167, 0.486335, -0.213975,
		37.317081, 42.455173, 17.146681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.626022, 41.708267, 16.835264>,  <37.910099, 42.114738, 17.296463>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.626022, 41.708267, 16.835264> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.461800, 42.068981, 16.781269>,  <37.363266, 42.285408, 16.748871>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.461800, 42.068981, 16.781269>,  <37.626022, 41.708267, 16.835264>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.461800, 42.068981, 16.781269> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176621, -0.066589, -0.982024,
		-0.894564, -0.427023, -0.131936,
		-0.410561, 0.901786, -0.134989,
		37.338631, 42.339516, 16.740772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.108269, 41.666004, 16.323006>,  <37.626022, 41.708267, 16.835264>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.108269, 41.666004, 16.323006> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.148048, 42.063984, 16.317659>,  <37.171917, 42.302773, 16.314451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.148048, 42.063984, 16.317659>,  <37.108269, 41.666004, 16.323006>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.148048, 42.063984, 16.317659> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045973, -0.018014, -0.998780,
		-0.993980, 0.098710, -0.047533,
		0.099446, 0.994953, -0.013368,
		37.177883, 42.362469, 16.313648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.605129, 41.905758, 15.873586>,  <37.108269, 41.666004, 16.323006>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.605129, 41.905758, 15.873586> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.895081, 42.180424, 15.895653>,  <37.069050, 42.345222, 15.908893>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.895081, 42.180424, 15.895653>,  <36.605129, 41.905758, 15.873586>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.895081, 42.180424, 15.895653> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033619, 0.044725, -0.998433,
		-0.688058, 0.725595, 0.009335,
		0.724876, 0.686666, 0.055167,
		37.112545, 42.386425, 15.912203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.367287, 42.540924, 15.436675>,  <36.605129, 41.905758, 15.873586>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.367287, 42.540924, 15.436675> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.764832, 42.555515, 15.478435>,  <37.003361, 42.564270, 15.503490>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.764832, 42.555515, 15.478435>,  <36.367287, 42.540924, 15.436675>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.764832, 42.555515, 15.478435> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089514, 0.289008, -0.953132,
		-0.064937, 0.956632, 0.283971,
		0.993866, 0.036474, 0.104399,
		37.062992, 42.566456, 15.509754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.587032, 42.892029, 14.924900>,  <36.367287, 42.540924, 15.436675>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.587032, 42.892029, 14.924900> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.961117, 42.802498, 15.034645>,  <37.185570, 42.748779, 15.100492>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.961117, 42.802498, 15.034645>,  <36.587032, 42.892029, 14.924900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.961117, 42.802498, 15.034645> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346599, 0.420230, -0.838616,
		0.072410, 0.879379, 0.470584,
		0.935214, -0.223828, 0.274363,
		37.241680, 42.735348, 15.116954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.012730, 43.419304, 14.708655>,  <36.587032, 42.892029, 14.924900>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.012730, 43.419304, 14.708655> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.251415, 43.099682, 14.738167>,  <37.394627, 42.907909, 14.755874>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.251415, 43.099682, 14.738167>,  <37.012730, 43.419304, 14.708655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.251415, 43.099682, 14.738167> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421261, 0.233674, -0.876319,
		0.682987, 0.553992, 0.476048,
		0.596714, -0.799055, 0.073779,
		37.430428, 42.859966, 14.760301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.995975, 35.631145, 13.670073> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.140381, 36.003197, 13.697024>,  <36.227024, 36.226425, 13.713195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.140381, 36.003197, 13.697024>,  <35.995975, 35.631145, 13.670073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.140381, 36.003197, 13.697024> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100553, -0.033006, 0.994384,
		0.927125, -0.365758, 0.081612,
		0.361011, 0.930124, 0.067379,
		36.248684, 36.282234, 13.717238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.561195, 35.609035, 14.064095>,  <35.995975, 35.631145, 13.670073>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.561195, 35.609035, 14.064095> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.474861, 35.998486, 14.093656>,  <36.423061, 36.232155, 14.111392>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.474861, 35.998486, 14.093656>,  <36.561195, 35.609035, 14.064095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.474861, 35.998486, 14.093656> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026780, -0.069754, 0.997205,
		0.976063, 0.217210, -0.011018,
		-0.215834, 0.973629, 0.073901,
		36.410110, 36.290573, 14.115826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.072529, 35.886219, 14.303254>,  <36.561195, 35.609035, 14.064095>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.072529, 35.886219, 14.303254> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.757832, 36.119473, 14.384242>,  <36.569012, 36.259422, 14.432835>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.757832, 36.119473, 14.384242>,  <37.072529, 35.886219, 14.303254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.757832, 36.119473, 14.384242> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237402, -0.016938, 0.971264,
		0.569803, 0.812202, -0.125111,
		-0.786743, 0.583130, 0.202469,
		36.521809, 36.294411, 14.444983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.296658, 36.583672, 14.666805>,  <37.072529, 35.886219, 14.303254>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.296658, 36.583672, 14.666805> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.913284, 36.503143, 14.747669>,  <36.683258, 36.454826, 14.796187>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.913284, 36.503143, 14.747669>,  <37.296658, 36.583672, 14.666805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.913284, 36.503143, 14.747669> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189986, 0.078270, 0.978662,
		-0.212845, 0.976394, -0.036770,
		-0.958437, -0.201318, 0.202161,
		36.625751, 36.442749, 14.808317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.184639, 36.997856, 15.236104>,  <37.296658, 36.583672, 14.666805>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.184639, 36.997856, 15.236104> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.845825, 36.785500, 15.246551>,  <36.642536, 36.658085, 15.252818>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.845825, 36.785500, 15.246551>,  <37.184639, 36.997856, 15.236104>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.845825, 36.785500, 15.246551> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011240, 0.031233, 0.999449,
		-0.531413, 0.846865, -0.020488,
		-0.847038, -0.530890, 0.026116,
		36.591713, 36.626232, 15.254386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.648266, 37.294998, 15.665829>,  <37.184639, 36.997856, 15.236104>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.648266, 37.294998, 15.665829> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.577133, 36.901375, 15.666289>,  <36.534454, 36.665199, 15.666566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.577133, 36.901375, 15.666289>,  <36.648266, 37.294998, 15.665829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.577133, 36.901375, 15.666289> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033098, 0.007151, 0.999427,
		-0.983505, 0.177687, -0.033842,
		-0.177827, -0.984061, 0.001152,
		36.523785, 36.606155, 15.666635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.282494, 37.221138, 16.185415>,  <36.648266, 37.294998, 15.665829>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.282494, 37.221138, 16.185415> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.374756, 36.837788, 16.118105>,  <36.430115, 36.607777, 16.077719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.374756, 36.837788, 16.118105>,  <36.282494, 37.221138, 16.185415>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.374756, 36.837788, 16.118105> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064576, -0.157479, 0.985408,
		-0.970890, -0.238158, 0.025564,
		0.230657, -0.958374, -0.168274,
		36.443954, 36.550274, 16.067623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.878426, 36.896061, 16.651808>,  <36.282494, 37.221138, 16.185415>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.878426, 36.896061, 16.651808> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.143250, 36.612381, 16.554888>,  <36.302143, 36.442173, 16.496737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.143250, 36.612381, 16.554888>,  <35.878426, 36.896061, 16.651808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.143250, 36.612381, 16.554888> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183370, -0.160187, 0.969905,
		-0.726669, -0.686568, 0.023992,
		0.662063, -0.709200, -0.242299,
		36.341869, 36.399620, 16.482199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.726303, 36.377186, 17.066479>,  <35.878426, 36.896061, 16.651808>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.726303, 36.377186, 17.066479> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.095726, 36.281204, 16.946840>,  <36.317379, 36.223614, 16.875057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.095726, 36.281204, 16.946840>,  <35.726303, 36.377186, 17.066479>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.095726, 36.281204, 16.946840> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290857, -0.069913, 0.954209,
		-0.249881, -0.968262, 0.005225,
		0.923559, -0.239958, -0.299095,
		36.372795, 36.209217, 16.857111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.962185, 35.806736, 17.492142>,  <35.726303, 36.377186, 17.066479>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.962185, 35.806736, 17.492142> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.312481, 35.963806, 17.379795>,  <36.522659, 36.058048, 17.312387>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.312481, 35.963806, 17.379795>,  <35.962185, 35.806736, 17.492142>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.312481, 35.963806, 17.379795> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327519, -0.055793, 0.943196,
		0.354699, -0.917983, -0.177469,
		0.875739, 0.392675, -0.280867,
		36.575203, 36.081608, 17.295534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.502918, 35.384998, 17.732208>,  <35.962185, 35.806736, 17.492142>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.502918, 35.384998, 17.732208> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.707603, 35.722416, 17.666990>,  <36.830414, 35.924866, 17.627859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.707603, 35.722416, 17.666990>,  <36.502918, 35.384998, 17.732208>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.707603, 35.722416, 17.666990> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309161, -0.003732, 0.951002,
		0.801603, -0.537048, -0.262701,
		0.511715, 0.843543, -0.163043,
		36.861118, 35.975479, 17.618078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.155579, 35.268543, 18.127493>,  <36.502918, 35.384998, 17.732208>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.155579, 35.268543, 18.127493> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.090366, 35.655750, 18.051226>,  <37.051239, 35.888077, 18.005465>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.090366, 35.655750, 18.051226>,  <37.155579, 35.268543, 18.127493>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.090366, 35.655750, 18.051226> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262709, 0.228870, 0.937338,
		0.951001, 0.102728, -0.291622,
		-0.163035, 0.968021, -0.190668,
		37.041454, 35.946156, 17.994024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.652382, 35.627445, 18.480154>,  <37.155579, 35.268543, 18.127493>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.652382, 35.627445, 18.480154> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.376934, 35.909996, 18.414627>,  <37.211666, 36.079525, 18.375311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.376934, 35.909996, 18.414627>,  <37.652382, 35.627445, 18.480154>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.376934, 35.909996, 18.414627> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027205, 0.250926, 0.967624,
		0.724612, 0.661869, -0.192009,
		-0.688620, 0.706375, -0.163817,
		37.170349, 36.121910, 18.365482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.913418, 36.275379, 18.789503>,  <37.652382, 35.627445, 18.480154>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.913418, 36.275379, 18.789503> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.513420, 36.274609, 18.790911>,  <37.273422, 36.274147, 18.791756>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.513420, 36.274609, 18.790911>,  <37.913418, 36.275379, 18.789503>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.513420, 36.274609, 18.790911> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003036, 0.209629, 0.977776,
		-0.002623, 0.977779, -0.209621,
		-0.999992, -0.001929, 0.003518,
		37.213421, 36.274029, 18.791965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.126915, 36.991451, 18.593136>,  <37.913418, 36.275379, 18.789503>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.126915, 36.991451, 18.593136> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.459118, 37.210701, 18.632769>,  <38.658440, 37.342251, 18.656549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.459118, 37.210701, 18.632769>,  <38.126915, 36.991451, 18.593136>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.459118, 37.210701, 18.632769> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039964, 0.118791, -0.992115,
		-0.555571, 0.827919, 0.076751,
		0.830508, 0.548123, 0.099084,
		38.708271, 37.375137, 18.662495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.046459, 37.536102, 18.145189>,  <38.126915, 36.991451, 18.593136>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.046459, 37.536102, 18.145189> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.442719, 37.555126, 18.196329>,  <38.680473, 37.566540, 18.227013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.442719, 37.555126, 18.196329>,  <38.046459, 37.536102, 18.145189>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.442719, 37.555126, 18.196329> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116172, 0.197082, -0.973480,
		-0.071491, 0.979233, 0.189715,
		0.990653, 0.047556, 0.127849,
		38.739914, 37.569393, 18.234684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.340851, 38.184353, 17.772326>,  <38.046459, 37.536102, 18.145189>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.340851, 38.184353, 17.772326> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.633636, 37.914242, 17.808611>,  <38.809307, 37.752174, 17.830381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.633636, 37.914242, 17.808611>,  <38.340851, 38.184353, 17.772326>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.633636, 37.914242, 17.808611> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272656, 0.168292, -0.947279,
		0.624407, 0.718110, 0.307301,
		0.731966, -0.675275, 0.090714,
		38.853226, 37.711658, 17.835825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.800034, 38.496002, 17.409052>,  <38.340851, 38.184353, 17.772326>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.800034, 38.496002, 17.409052> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.947098, 38.124172, 17.419794>,  <39.035336, 37.901073, 17.426239>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.947098, 38.124172, 17.419794>,  <38.800034, 38.496002, 17.409052>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.947098, 38.124172, 17.419794> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383337, 0.125178, -0.915087,
		0.847278, 0.346734, 0.402362,
		0.367658, -0.929573, 0.026855,
		39.057396, 37.845299, 17.427851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.395851, 38.550766, 17.158541>,  <38.800034, 38.496002, 17.409052>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.395851, 38.550766, 17.158541> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.344196, 38.154316, 17.145962>,  <39.313202, 37.916447, 17.138414>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.344196, 38.154316, 17.145962>,  <39.395851, 38.550766, 17.158541>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.344196, 38.154316, 17.145962> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579111, -0.049634, -0.813736,
		0.804956, -0.123294, 0.580383,
		-0.129135, -0.991128, -0.031448,
		39.305454, 37.856979, 17.136528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.017380, 38.225712, 17.129667>,  <39.395851, 38.550766, 17.158541>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.017380, 38.225712, 17.129667> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.741089, 37.990948, 16.960697>,  <39.575314, 37.850090, 16.859316>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.741089, 37.990948, 16.960697>,  <40.017380, 38.225712, 17.129667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.741089, 37.990948, 16.960697> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541386, -0.032459, -0.840147,
		0.479376, -0.809004, 0.340163,
		-0.690724, -0.586906, -0.422423,
		39.533871, 37.814877, 16.833971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.383896, 37.752819, 16.527813>,  <40.017380, 38.225712, 17.129667>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.383896, 37.752819, 16.527813> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.998020, 37.670410, 16.462164>,  <39.766495, 37.620964, 16.422773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.998020, 37.670410, 16.462164>,  <40.383896, 37.752819, 16.527813>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.998020, 37.670410, 16.462164> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205102, -0.196558, -0.958800,
		0.165278, -0.958602, 0.231873,
		-0.964685, -0.206026, -0.164124,
		39.708614, 37.608601, 16.412928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.383080, 37.078728, 16.190941>,  <40.383896, 37.752819, 16.527813>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.383080, 37.078728, 16.190941> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.042728, 37.267620, 16.098854>,  <39.838516, 37.380955, 16.043602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.042728, 37.267620, 16.098854>,  <40.383080, 37.078728, 16.190941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.042728, 37.267620, 16.098854> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175932, -0.156782, -0.971837,
		-0.495026, -0.867420, 0.050322,
		-0.850880, 0.472231, -0.230218,
		39.787464, 37.409290, 16.029789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.108021, 36.679577, 15.594778>,  <40.383080, 37.078728, 16.190941>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.108021, 36.679577, 15.594778> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.899132, 37.020702, 15.594926>,  <39.773800, 37.225376, 15.595015>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.899132, 37.020702, 15.594926>,  <40.108021, 36.679577, 15.594778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.899132, 37.020702, 15.594926> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181474, -0.110701, -0.977145,
		-0.833280, -0.510351, 0.212573,
		-0.522219, 0.852812, 0.000370,
		39.742466, 37.276546, 15.595037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.406002, 36.566315, 15.178397>,  <40.108021, 36.679577, 15.594778>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.406002, 36.566315, 15.178397> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.507496, 36.953114, 15.187670>,  <39.568394, 37.185192, 15.193233>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.507496, 36.953114, 15.187670>,  <39.406002, 36.566315, 15.178397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.507496, 36.953114, 15.187670> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104016, 0.051105, -0.993262,
		-0.961665, 0.249613, 0.113550,
		0.253734, 0.966996, 0.023182,
		39.583614, 37.243214, 15.194625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.065571, 36.765854, 14.675554>,  <39.406002, 36.566315, 15.178397>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.065571, 36.765854, 14.675554> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.271206, 37.107929, 14.702015>,  <39.394585, 37.313175, 14.717892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.271206, 37.107929, 14.702015>,  <39.065571, 36.765854, 14.675554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.271206, 37.107929, 14.702015> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243625, 0.219529, -0.944698,
		-0.822414, 0.469538, 0.321201,
		0.514084, 0.855185, 0.066153,
		39.425430, 37.364483, 14.721861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.605507, 37.328430, 14.585794>,  <39.065571, 36.765854, 14.675554>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.605507, 37.328430, 14.585794> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.971733, 37.456196, 14.488052>,  <39.191471, 37.532856, 14.429407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.971733, 37.456196, 14.488052>,  <38.605507, 37.328430, 14.585794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.971733, 37.456196, 14.488052> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294257, 0.117906, -0.948425,
		-0.274125, 0.940253, 0.201940,
		0.915570, 0.319410, -0.244355,
		39.246403, 37.552017, 14.414745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469822, 37.847389, 14.124924>,  <38.605507, 37.328430, 14.585794>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.469822, 37.847389, 14.124924> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.856087, 37.786945, 14.040392>,  <39.087845, 37.750679, 13.989673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.856087, 37.786945, 14.040392>,  <38.469822, 37.847389, 14.124924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.856087, 37.786945, 14.040392> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194071, 0.121214, -0.973470,
		0.172715, 0.981057, 0.087727,
		0.965664, -0.151108, -0.211330,
		39.145786, 37.741611, 13.976993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.562645, 38.444283, 13.605936>,  <38.469822, 37.847389, 14.124924>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.562645, 38.444283, 13.605936> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.845882, 38.164921, 13.564303>,  <39.015827, 37.997303, 13.539324>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.845882, 38.164921, 13.564303>,  <38.562645, 38.444283, 13.605936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.845882, 38.164921, 13.564303> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235135, -0.094232, -0.967384,
		0.665817, 0.709474, -0.230945,
		0.708096, -0.698404, -0.104081,
		39.058311, 37.955399, 13.533079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.097187, 38.960754, 13.649899>,  <38.562645, 38.444283, 13.605936>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.097187, 38.960754, 13.649899> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.289677, 39.309780, 13.683482>,  <39.405170, 39.519196, 13.703631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.289677, 39.309780, 13.683482>,  <39.097187, 38.960754, 13.649899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.289677, 39.309780, 13.683482> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019845, -0.106595, 0.994104,
		0.876372, -0.476723, -0.068612,
		0.481227, 0.872567, 0.083956,
		39.434044, 39.571548, 13.708669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.580776, 38.790882, 14.119983>,  <39.097187, 38.960754, 13.649899>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.580776, 38.790882, 14.119983> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.531048, 39.187775, 14.118218>,  <39.501209, 39.425911, 14.117160>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.531048, 39.187775, 14.118218>,  <39.580776, 38.790882, 14.119983>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.531048, 39.187775, 14.118218> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023775, 0.001466, 0.999716,
		0.991957, 0.124391, 0.023408,
		-0.124321, 0.992232, -0.004412,
		39.493752, 39.485443, 14.116895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.112671, 39.070847, 14.673476>,  <39.580776, 38.790882, 14.119983>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.112671, 39.070847, 14.673476> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.850437, 39.368504, 14.622167>,  <39.693096, 39.547096, 14.591381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.850437, 39.368504, 14.622167>,  <40.112671, 39.070847, 14.673476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.850437, 39.368504, 14.622167> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040671, 0.204423, 0.978037,
		0.754022, 0.635973, -0.164283,
		-0.655589, 0.744143, -0.128274,
		39.653759, 39.591747, 14.583685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.404583, 39.659534, 14.924576>,  <40.112671, 39.070847, 14.673476>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.404583, 39.659534, 14.924576> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.012268, 39.737556, 14.925763>,  <39.776878, 39.784370, 14.926476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.012268, 39.737556, 14.925763>,  <40.404583, 39.659534, 14.924576>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.012268, 39.737556, 14.925763> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050852, 0.240946, 0.969205,
		0.188333, 0.950736, -0.246235,
		-0.980788, 0.195055, 0.002969,
		39.718033, 39.796074, 14.926654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.310410, 40.332611, 15.216513>,  <40.404583, 39.659534, 14.924576>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.310410, 40.332611, 15.216513> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.949348, 40.162155, 15.240577>,  <39.732712, 40.059883, 15.255015>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.949348, 40.162155, 15.240577>,  <40.310410, 40.332611, 15.216513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.949348, 40.162155, 15.240577> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136943, 0.416933, 0.898562,
		-0.407993, 0.802853, -0.434704,
		-0.902656, -0.426137, 0.060161,
		39.678551, 40.034313, 15.258625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.800758, 40.903454, 15.382532>,  <40.310410, 40.332611, 15.216513>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.800758, 40.903454, 15.382532> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.630775, 40.555374, 15.482267>,  <39.528786, 40.346527, 15.542109>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.630775, 40.555374, 15.482267>,  <39.800758, 40.903454, 15.382532>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.630775, 40.555374, 15.482267> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291458, 0.392313, 0.872435,
		-0.857006, 0.298080, -0.420343,
		-0.424962, -0.870195, 0.249337,
		39.503288, 40.294315, 15.557069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.167080, 41.127670, 15.739863>,  <39.800758, 40.903454, 15.382532>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.167080, 41.127670, 15.739863> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.239857, 40.751759, 15.855600>,  <39.283524, 40.526211, 15.925042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.239857, 40.751759, 15.855600>,  <39.167080, 41.127670, 15.739863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.239857, 40.751759, 15.855600> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024792, 0.289776, 0.956773,
		-0.982996, -0.181254, 0.029425,
		0.181946, -0.939775, 0.289343,
		39.294441, 40.469826, 15.942403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.846325, 41.026150, 16.450718>,  <39.167080, 41.127670, 15.739863>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.846325, 41.026150, 16.450718> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.100483, 40.718811, 16.419964>,  <39.252979, 40.534409, 16.401512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.100483, 40.718811, 16.419964>,  <38.846325, 41.026150, 16.450718>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.100483, 40.718811, 16.419964> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143567, 0.019715, 0.989444,
		-0.758722, -0.639728, 0.122836,
		0.635397, -0.768348, -0.076885,
		39.291103, 40.488308, 16.396898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.687656, 40.451000, 16.896624>,  <38.846325, 41.026150, 16.450718>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.687656, 40.451000, 16.896624> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.081184, 40.422276, 16.830973>,  <39.317303, 40.405041, 16.791582>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.081184, 40.422276, 16.830973>,  <38.687656, 40.451000, 16.896624>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.081184, 40.422276, 16.830973> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170957, 0.102451, 0.979937,
		-0.053556, -0.992142, 0.113070,
		0.983822, -0.071812, -0.164127,
		39.376331, 40.400734, 16.781734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.960159, 39.939720, 17.232473>,  <38.687656, 40.451000, 16.896624>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.960159, 39.939720, 17.232473> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.295380, 40.149551, 17.172491>,  <39.496513, 40.275452, 17.136501>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.295380, 40.149551, 17.172491>,  <38.960159, 39.939720, 17.232473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.295380, 40.149551, 17.172491> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182582, -0.010645, 0.983133,
		0.514133, -0.851296, -0.104699,
		0.838052, 0.524578, -0.149958,
		39.546795, 40.306923, 17.127504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.592316, 39.519867, 17.445936>,  <38.960159, 39.939720, 17.232473>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.592316, 39.519867, 17.445936> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.711201, 39.901783, 17.448473>,  <39.782532, 40.130932, 17.449995>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.711201, 39.901783, 17.448473>,  <39.592316, 39.519867, 17.445936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.711201, 39.901783, 17.448473> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171400, -0.059885, 0.983380,
		0.939301, -0.291185, -0.181450,
		0.297212, 0.954791, 0.006341,
		39.800365, 40.188221, 17.450375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.229782, 39.531666, 17.785870>,  <39.592316, 39.519867, 17.445936>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.229782, 39.531666, 17.785870> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.080055, 39.900402, 17.826052>,  <39.990219, 40.121643, 17.850161>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.080055, 39.900402, 17.826052>,  <40.229782, 39.531666, 17.785870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.080055, 39.900402, 17.826052> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142835, -0.049720, 0.988497,
		0.916233, 0.384363, -0.113060,
		-0.374320, 0.921842, 0.100455,
		39.967758, 40.176956, 17.856188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.675880, 39.799847, 18.318335>,  <40.229782, 39.531666, 17.785870>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.675880, 39.799847, 18.318335> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.353222, 40.034943, 18.293415>,  <40.159626, 40.175999, 18.278463>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.353222, 40.034943, 18.293415>,  <40.675880, 39.799847, 18.318335>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.353222, 40.034943, 18.293415> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044994, 0.166171, 0.985070,
		0.589319, 0.791800, -0.160486,
		-0.806647, 0.587741, -0.062301,
		40.111229, 40.211266, 18.274725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.807560, 40.504181, 18.760126>,  <40.675880, 39.799847, 18.318335>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.807560, 40.504181, 18.760126> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.416065, 40.425140, 18.738104>,  <40.181168, 40.377716, 18.724892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.416065, 40.425140, 18.738104>,  <40.807560, 40.504181, 18.760126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.416065, 40.425140, 18.738104> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069727, 0.068077, 0.995241,
		-0.192917, 0.977915, -0.080408,
		-0.978734, -0.197606, -0.055054,
		40.122444, 40.365860, 18.721588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<37.712200, 43.612389, 14.578672> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.697269, 43.219135, 14.507051>,  <37.688309, 42.983185, 14.464079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.697269, 43.219135, 14.507051>,  <37.712200, 43.612389, 14.578672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.697269, 43.219135, 14.507051> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396496, 0.149897, -0.905716,
		0.917277, -0.104803, 0.384212,
		-0.037330, -0.983131, -0.179052,
		37.686069, 42.924194, 14.453336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.362934, 43.427689, 14.159279>,  <37.712200, 43.612389, 14.578672>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.362934, 43.427689, 14.159279> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.142117, 43.104397, 14.077287>,  <38.009628, 42.910423, 14.028091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.142117, 43.104397, 14.077287>,  <38.362934, 43.427689, 14.159279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.142117, 43.104397, 14.077287> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369091, -0.016426, -0.929248,
		0.747679, -0.588639, 0.307378,
		-0.552040, -0.808229, -0.204980,
		37.976505, 42.861927, 14.015793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.790451, 43.023815, 13.821239>,  <38.362934, 43.427689, 14.159279>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.790451, 43.023815, 13.821239> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.451355, 42.851646, 13.697256>,  <38.247898, 42.748344, 13.622866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.451355, 42.851646, 13.697256>,  <38.790451, 43.023815, 13.821239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.451355, 42.851646, 13.697256> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421565, -0.192107, -0.886215,
		0.321904, -0.881946, 0.344308,
		-0.847738, -0.430425, -0.309958,
		38.197033, 42.722519, 13.604269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.002800, 42.551682, 13.344092>,  <38.790451, 43.023815, 13.821239>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.002800, 42.551682, 13.344092> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.611832, 42.578373, 13.263906>,  <38.377251, 42.594387, 13.215794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.611832, 42.578373, 13.263906>,  <39.002800, 42.551682, 13.344092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.611832, 42.578373, 13.263906> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198215, -0.038898, -0.979386,
		-0.073156, -0.997012, 0.024792,
		-0.977425, 0.066734, -0.200468,
		38.318604, 42.598392, 13.203765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.744602, 42.007195, 12.803987>,  <39.002800, 42.551682, 13.344092>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.744602, 42.007195, 12.803987> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.485195, 42.311077, 12.784915>,  <38.329552, 42.493408, 12.773472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.485195, 42.311077, 12.784915>,  <38.744602, 42.007195, 12.803987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.485195, 42.311077, 12.784915> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048862, -0.020962, -0.998586,
		-0.759631, -0.649928, -0.023526,
		-0.648516, 0.759706, -0.047680,
		38.290642, 42.538990, 12.770611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198200, 41.824902, 12.252191>,  <38.744602, 42.007195, 12.803987>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.198200, 41.824902, 12.252191> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.225887, 42.221676, 12.294650>,  <38.242500, 42.459740, 12.320126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.225887, 42.221676, 12.294650>,  <38.198200, 41.824902, 12.252191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.225887, 42.221676, 12.294650> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011636, 0.105594, -0.994341,
		-0.997534, 0.070062, -0.004233,
		0.069218, 0.991938, 0.106149,
		38.246655, 42.519257, 12.326495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.618305, 42.126621, 11.852465>,  <38.198200, 41.824902, 12.252191>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.618305, 42.126621, 11.852465> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.895172, 42.414955, 11.866893>,  <38.061295, 42.587955, 11.875549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.895172, 42.414955, 11.866893>,  <37.618305, 42.126621, 11.852465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.895172, 42.414955, 11.866893> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000227, 0.049760, -0.998761,
		-0.721733, 0.691322, 0.034279,
		0.692171, 0.720831, 0.036070,
		38.102825, 42.631203, 11.877714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.322807, 42.647125, 11.421851>,  <37.618305, 42.126621, 11.852465>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.322807, 42.647125, 11.421851> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.700245, 42.777180, 11.446893>,  <37.926708, 42.855213, 11.461918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.700245, 42.777180, 11.446893>,  <37.322807, 42.647125, 11.421851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.700245, 42.777180, 11.446893> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072837, 0.388265, -0.918665,
		-0.322999, 0.862285, 0.390046,
		0.943592, 0.325137, 0.062603,
		37.983322, 42.874722, 11.465673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.284760, 43.387291, 11.211928>,  <37.322807, 42.647125, 11.421851>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.284760, 43.387291, 11.211928> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.650787, 43.240395, 11.145263>,  <37.870403, 43.152256, 11.105264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.650787, 43.240395, 11.145263>,  <37.284760, 43.387291, 11.211928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.650787, 43.240395, 11.145263> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104206, 0.183916, -0.977403,
		0.389597, 0.911760, 0.130028,
		0.915071, -0.367243, -0.166664,
		37.925308, 43.130222, 11.095263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.589535, 43.932491, 10.818954>,  <37.284760, 43.387291, 11.211928>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.589535, 43.932491, 10.818954> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.826508, 43.613728, 10.771707>,  <37.968693, 43.422470, 10.743358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.826508, 43.613728, 10.771707>,  <37.589535, 43.932491, 10.818954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.826508, 43.613728, 10.771707> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103911, 0.220984, -0.969726,
		0.798891, 0.562223, 0.213726,
		0.592433, -0.796914, -0.118121,
		38.004238, 43.374653, 10.736270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.081726, 44.205502, 10.363299>,  <37.589535, 43.932491, 10.818954>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.081726, 44.205502, 10.363299> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.079052, 43.805824, 10.347504>,  <38.077446, 43.566017, 10.338026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.079052, 43.805824, 10.347504>,  <38.081726, 44.205502, 10.363299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.079052, 43.805824, 10.347504> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167192, 0.040053, -0.985111,
		0.985902, 0.000013, -0.167326,
		-0.006689, -0.999198, -0.039490,
		38.077045, 43.506065, 10.335656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.554581, 43.988682, 9.780291>,  <38.081726, 44.205502, 10.363299>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.554581, 43.988682, 9.780291> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.293091, 43.692940, 9.844782>,  <38.136196, 43.515495, 9.883476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.293091, 43.692940, 9.844782>,  <38.554581, 43.988682, 9.780291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.293091, 43.692940, 9.844782> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129898, -0.100255, -0.986446,
		0.745497, -0.665810, -0.030502,
		-0.653728, -0.739355, 0.161227,
		38.096973, 43.471134, 9.893150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.681675, 43.589577, 9.187801>,  <38.554581, 43.988682, 9.780291>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.681675, 43.589577, 9.187801> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.321682, 43.538204, 9.354428>,  <38.105686, 43.507381, 9.454404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.321682, 43.538204, 9.354428>,  <38.681675, 43.589577, 9.187801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.321682, 43.538204, 9.354428> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416598, -0.027918, -0.908662,
		0.128336, -0.991325, -0.028381,
		-0.899987, -0.128438, 0.416567,
		38.051685, 43.499676, 9.479399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.286541, 43.014183, 8.832843>,  <38.681675, 43.589577, 9.187801>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.286541, 43.014183, 8.832843> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.015289, 43.249630, 9.008871>,  <37.852539, 43.390900, 9.114488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.015289, 43.249630, 9.008871>,  <38.286541, 43.014183, 8.832843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.015289, 43.249630, 9.008871> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458616, 0.128977, -0.879225,
		-0.574287, -0.798055, 0.182487,
		-0.678134, 0.588619, 0.440071,
		37.811848, 43.426216, 9.140892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.571060, 42.192955, 8.660475>,  <38.286541, 43.014183, 8.832843>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.571060, 42.192955, 8.660475> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.777046, 41.870693, 8.543358>,  <38.900639, 41.677334, 8.473087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.777046, 41.870693, 8.543358>,  <38.571060, 42.192955, 8.660475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.777046, 41.870693, 8.543358> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118404, -0.271437, 0.955145,
		-0.848995, -0.526533, -0.044387,
		0.514964, -0.805658, -0.292792,
		38.931534, 41.628994, 8.455521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.408112, 41.577805, 9.135628>,  <38.571060, 42.192955, 8.660475>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.408112, 41.577805, 9.135628> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.761665, 41.448116, 9.000793>,  <38.973797, 41.370304, 8.919892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.761665, 41.448116, 9.000793>,  <38.408112, 41.577805, 9.135628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.761665, 41.448116, 9.000793> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272030, -0.229897, 0.934423,
		-0.380455, -0.917620, -0.115005,
		0.883885, -0.324221, -0.337086,
		39.026833, 41.350849, 8.899668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.328472, 40.985115, 9.353506>,  <38.408112, 41.577805, 9.135628>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.328472, 40.985115, 9.353506> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.720600, 41.010803, 9.278844>,  <38.955879, 41.026215, 9.234046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.720600, 41.010803, 9.278844>,  <38.328472, 40.985115, 9.353506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.720600, 41.010803, 9.278844> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197308, -0.346747, 0.916971,
		-0.005836, -0.935758, -0.352595,
		0.980324, 0.064218, -0.186656,
		39.014698, 41.030067, 9.222847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.702408, 40.345371, 9.426260>,  <38.328472, 40.985115, 9.353506>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.702408, 40.345371, 9.426260> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.988758, 40.612663, 9.507237>,  <39.160568, 40.773041, 9.555824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.988758, 40.612663, 9.507237>,  <38.702408, 40.345371, 9.426260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.988758, 40.612663, 9.507237> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173489, -0.451082, 0.875458,
		0.676330, -0.591598, -0.438851,
		0.715876, 0.668234, 0.202445,
		39.203522, 40.813133, 9.567971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.187691, 39.864944, 9.742296>,  <38.702408, 40.345371, 9.426260>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.187691, 39.864944, 9.742296> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.308971, 40.241543, 9.801161>,  <39.381741, 40.467503, 9.836479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.308971, 40.241543, 9.801161>,  <39.187691, 39.864944, 9.742296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.308971, 40.241543, 9.801161> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435317, -0.274224, 0.857497,
		0.847683, -0.195934, -0.492994,
		0.303204, 0.941494, 0.147161,
		39.399933, 40.523991, 9.845309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.929932, 39.888893, 9.856017>,  <39.187691, 39.864944, 9.742296>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.929932, 39.888893, 9.856017> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.779758, 40.209110, 10.042855>,  <39.689655, 40.401241, 10.154958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.779758, 40.209110, 10.042855>,  <39.929932, 39.888893, 9.856017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.779758, 40.209110, 10.042855> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354693, -0.341504, 0.870384,
		0.856296, 0.492445, -0.155737,
		-0.375432, 0.800545, 0.467096,
		39.667130, 40.449272, 10.182984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.402763, 40.007607, 10.416723>,  <39.929932, 39.888893, 9.856017>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.402763, 40.007607, 10.416723> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.062698, 40.191936, 10.518591>,  <39.858658, 40.302536, 10.579711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.062698, 40.191936, 10.518591>,  <40.402763, 40.007607, 10.416723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.062698, 40.191936, 10.518591> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195734, -0.172400, 0.965384,
		0.488782, 0.870583, 0.056368,
		-0.850165, 0.460829, 0.254668,
		39.807648, 40.330185, 10.594992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.616184, 40.269112, 11.061147>,  <40.402763, 40.007607, 10.416723>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.616184, 40.269112, 11.061147> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.217648, 40.299641, 11.045813>,  <39.978523, 40.317959, 11.036613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.217648, 40.299641, 11.045813>,  <40.616184, 40.269112, 11.061147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.217648, 40.299641, 11.045813> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040483, -0.026786, 0.998821,
		0.075205, 0.996724, 0.029778,
		-0.996346, 0.076321, -0.038335,
		39.918743, 40.322536, 11.034312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.552464, 40.808067, 11.379495>,  <40.616184, 40.269112, 11.061147>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.552464, 40.808067, 11.379495> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.213100, 40.598568, 11.410217>,  <40.009483, 40.472870, 11.428651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.213100, 40.598568, 11.410217>,  <40.552464, 40.808067, 11.379495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.213100, 40.598568, 11.410217> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054701, 0.057576, 0.996841,
		-0.526512, 0.849927, -0.020199,
		-0.848406, -0.523744, 0.076807,
		39.958580, 40.441444, 11.433259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.068089, 41.132965, 11.939386>,  <40.552464, 40.808067, 11.379495>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.068089, 41.132965, 11.939386> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.936970, 40.758190, 11.890892>,  <39.858299, 40.533325, 11.861795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.936970, 40.758190, 11.890892>,  <40.068089, 41.132965, 11.939386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.936970, 40.758190, 11.890892> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285908, -0.023928, 0.957958,
		-0.900449, 0.348674, -0.260035,
		-0.327793, -0.936938, -0.121235,
		39.838631, 40.477108, 11.854522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.379723, 41.104450, 12.159605>,  <40.068089, 41.132965, 11.939386>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.379723, 41.104450, 12.159605> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.487606, 40.720169, 12.185869>,  <39.552334, 40.489601, 12.201628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.487606, 40.720169, 12.185869>,  <39.379723, 41.104450, 12.159605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.487606, 40.720169, 12.185869> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277511, -0.012251, 0.960644,
		-0.922088, -0.277312, -0.269909,
		0.269705, -0.960702, 0.065660,
		39.568520, 40.431957, 12.205567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.900146, 40.760147, 12.593737>,  <39.379723, 41.104450, 12.159605>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.900146, 40.760147, 12.593737> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.199787, 40.495613, 12.578313>,  <39.379570, 40.336891, 12.569058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.199787, 40.495613, 12.578313>,  <38.900146, 40.760147, 12.593737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.199787, 40.495613, 12.578313> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160734, -0.237916, 0.957894,
		-0.642664, -0.711358, -0.284521,
		0.749098, -0.661337, -0.038560,
		39.424515, 40.297211, 12.566745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.675865, 40.150406, 12.975793>,  <38.900146, 40.760147, 12.593737>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.675865, 40.150406, 12.975793> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.070847, 40.090279, 12.995111>,  <39.307835, 40.054203, 13.006701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.070847, 40.090279, 12.995111>,  <38.675865, 40.150406, 12.975793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.070847, 40.090279, 12.995111> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079502, -0.209114, 0.974654,
		-0.136409, -0.966269, -0.218441,
		0.987457, -0.150318, 0.048295,
		39.367085, 40.045181, 13.009599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.772102, 39.385216, 13.185887>,  <38.675865, 40.150406, 12.975793>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.772102, 39.385216, 13.185887> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.096794, 39.607990, 13.256219>,  <39.291607, 39.741657, 13.298418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.096794, 39.607990, 13.256219>,  <38.772102, 39.385216, 13.185887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.096794, 39.607990, 13.256219> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153685, -0.086759, 0.984304,
		0.563453, -0.826009, 0.015169,
		0.811727, 0.556940, 0.175829,
		39.340313, 39.775074, 13.308968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.911392, 38.636047, 12.965875>,  <38.772102, 39.385216, 13.185887>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.911392, 38.636047, 12.965875> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.017223, 38.254372, 13.021768>,  <39.080723, 38.025368, 13.055304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.017223, 38.254372, 13.021768>,  <38.911392, 38.636047, 12.965875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.017223, 38.254372, 13.021768> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148795, -0.183551, -0.971684,
		0.952816, 0.236294, -0.190542,
		0.264577, -0.954188, 0.139731,
		39.096596, 37.968117, 13.063687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.450047, 38.485256, 12.417274>,  <38.911392, 38.636047, 12.965875>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.450047, 38.485256, 12.417274> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.278404, 38.148945, 12.549315>,  <39.175419, 37.947159, 12.628540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.278404, 38.148945, 12.549315>,  <39.450047, 38.485256, 12.417274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.278404, 38.148945, 12.549315> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141059, -0.298600, -0.943896,
		0.892173, -0.451593, 0.009531,
		-0.429103, -0.840774, 0.330104,
		39.149673, 37.896713, 12.648347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.644897, 37.982788, 11.953102>,  <39.450047, 38.485256, 12.417274>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.644897, 37.982788, 11.953102> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.328617, 37.810997, 12.127614>,  <39.138847, 37.707924, 12.232321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.328617, 37.810997, 12.127614>,  <39.644897, 37.982788, 11.953102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.328617, 37.810997, 12.127614> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342792, -0.279855, -0.896758,
		0.507229, -0.858623, 0.074062,
		-0.790704, -0.429474, 0.436280,
		39.091408, 37.682156, 12.258498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.555416, 37.349010, 11.633823>,  <39.644897, 37.982788, 11.953102>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.555416, 37.349010, 11.633823> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.196899, 37.427814, 11.792746>,  <38.981789, 37.475098, 11.888099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.196899, 37.427814, 11.792746>,  <39.555416, 37.349010, 11.633823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.196899, 37.427814, 11.792746> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436346, -0.231870, -0.869390,
		-0.079154, -0.952588, 0.293786,
		-0.896291, 0.197008, 0.397305,
		38.928013, 37.486916, 11.911937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.085636, 36.699261, 11.612251>,  <39.555416, 37.349010, 11.633823>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.085636, 36.699261, 11.612251> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.869392, 37.035244, 11.631086>,  <38.739647, 37.236832, 11.642387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.869392, 37.035244, 11.631086>,  <39.085636, 36.699261, 11.612251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.869392, 37.035244, 11.631086> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467532, -0.253436, -0.846867,
		-0.699397, -0.479838, 0.529716,
		-0.540608, 0.839956, 0.047087,
		38.707211, 37.287231, 11.645212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.511395, 36.572495, 11.186369>,  <39.085636, 36.699261, 11.612251>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.511395, 36.572495, 11.186369> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.473621, 36.970348, 11.203300>,  <38.450958, 37.209061, 11.213458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.473621, 36.970348, 11.203300>,  <38.511395, 36.572495, 11.186369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.473621, 36.970348, 11.203300> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325262, 0.009359, -0.945578,
		-0.940897, -0.103058, 0.322632,
		-0.094430, 0.994631, 0.042327,
		38.445293, 37.268738, 11.215998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.068855, 36.749962, 10.656714>,  <38.511395, 36.572495, 11.186369>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.068855, 36.749962, 10.656714> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.198391, 37.119347, 10.739023>,  <38.276112, 37.340977, 10.788408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.198391, 37.119347, 10.739023>,  <38.068855, 36.749962, 10.656714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.198391, 37.119347, 10.739023> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175806, 0.272440, -0.945975,
		-0.929634, 0.270171, 0.250578,
		0.323842, 0.923463, 0.205772,
		38.295544, 37.396385, 10.800755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.384167, 36.805531, 10.759563>,  <38.068855, 36.749962, 10.656714>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.384167, 36.805531, 10.759563> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.996353, 36.892735, 10.804255>,  <36.763664, 36.945057, 10.831069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.996353, 36.892735, 10.804255>,  <37.384167, 36.805531, 10.759563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.996353, 36.892735, 10.804255> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091052, -0.102714, 0.990535,
		0.227424, 0.970526, 0.079734,
		-0.969530, 0.218012, 0.111727,
		36.705494, 36.958138, 10.837772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.374462, 37.379566, 11.332710>,  <37.384167, 36.805531, 10.759563>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.374462, 37.379566, 11.332710> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.051941, 37.148384, 11.282357>,  <36.858429, 37.009674, 11.252146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.051941, 37.148384, 11.282357>,  <37.374462, 37.379566, 11.332710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.051941, 37.148384, 11.282357> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060530, -0.131080, 0.989522,
		-0.588399, 0.805473, 0.070707,
		-0.806302, -0.577954, -0.125883,
		36.810051, 36.974998, 11.244593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.942699, 37.558006, 11.890145>,  <37.374462, 37.379566, 11.332710>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.942699, 37.558006, 11.890145> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.767765, 37.215412, 11.780478>,  <36.662804, 37.009853, 11.714678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.767765, 37.215412, 11.780478>,  <36.942699, 37.558006, 11.890145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.767765, 37.215412, 11.780478> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298180, -0.149519, 0.942726,
		-0.848426, 0.494039, -0.189997,
		-0.437335, -0.856487, -0.274168,
		36.636566, 36.958466, 11.698228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.231449, 37.671822, 12.123161>,  <36.942699, 37.558006, 11.890145>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.231449, 37.671822, 12.123161> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.366543, 37.296547, 12.092822>,  <36.447598, 37.071384, 12.074618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.366543, 37.296547, 12.092822>,  <36.231449, 37.671822, 12.123161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.366543, 37.296547, 12.092822> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440175, -0.228655, 0.868311,
		-0.831976, -0.259868, -0.490188,
		0.337730, -0.938182, -0.075848,
		36.467861, 37.015091, 12.070067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.683319, 37.218102, 12.435236>,  <36.231449, 37.671822, 12.123161>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.683319, 37.218102, 12.435236> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.008862, 36.986515, 12.454961>,  <36.204185, 36.847561, 12.466796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.008862, 36.986515, 12.454961>,  <35.683319, 37.218102, 12.435236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.008862, 36.986515, 12.454961> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206425, -0.208753, 0.955934,
		-0.543165, -0.788172, -0.289409,
		0.813856, -0.578971, 0.049312,
		36.253017, 36.812824, 12.469754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.430546, 36.708260, 12.894156>,  <35.683319, 37.218102, 12.435236>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.430546, 36.708260, 12.894156> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.829430, 36.679039, 12.888116>,  <36.068760, 36.661507, 12.884492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.829430, 36.679039, 12.888116>,  <35.430546, 36.708260, 12.894156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.829430, 36.679039, 12.888116> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002655, -0.237052, 0.971493,
		-0.074544, -0.968747, -0.236586,
		0.997214, -0.073047, -0.015098,
		36.128593, 36.657124, 12.883586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.624699, 36.001976, 13.158298>,  <35.430546, 36.708260, 12.894156>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.624699, 36.001976, 13.158298> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.938126, 36.242897, 13.219296>,  <36.126183, 36.387447, 13.255894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.938126, 36.242897, 13.219296>,  <35.624699, 36.001976, 13.158298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.938126, 36.242897, 13.219296> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018635, -0.222544, 0.974744,
		0.621025, -0.766622, -0.163155,
		0.783569, 0.602300, 0.152491,
		36.173195, 36.423588, 13.265043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<36.225811, 40.209503, 10.234049> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.430336, 40.545010, 10.159191>,  <36.553051, 40.746315, 10.114277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.430336, 40.545010, 10.159191>,  <36.225811, 40.209503, 10.234049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.430336, 40.545010, 10.159191> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381793, 0.416797, 0.824932,
		0.769930, -0.350348, 0.533351,
		0.511313, 0.838770, -0.187144,
		36.583729, 40.796642, 10.103048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.506359, 40.355095, 10.919952>,  <36.225811, 40.209503, 10.234049>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.506359, 40.355095, 10.919952> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.483284, 40.697891, 10.715117>,  <36.469437, 40.903568, 10.592216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.483284, 40.697891, 10.715117>,  <36.506359, 40.355095, 10.919952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.483284, 40.697891, 10.715117> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480998, 0.425621, 0.766478,
		0.874822, 0.290531, 0.387658,
		-0.057690, 0.856995, -0.512087,
		36.465977, 40.954990, 10.561491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.732746, 40.818745, 11.390072>,  <36.506359, 40.355095, 10.919952>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.732746, 40.818745, 11.390072> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.531841, 41.039314, 11.123639>,  <36.411297, 41.171658, 10.963779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.531841, 41.039314, 11.123639>,  <36.732746, 40.818745, 11.390072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.531841, 41.039314, 11.123639> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279780, 0.625225, 0.728571,
		0.818202, 0.552290, -0.159750,
		-0.502263, 0.551424, -0.666081,
		36.381161, 41.204742, 10.923815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.945568, 41.485893, 11.509247>,  <36.732746, 40.818745, 11.390072>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.945568, 41.485893, 11.509247> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.597919, 41.504543, 11.312286>,  <36.389332, 41.515736, 11.194110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.597919, 41.504543, 11.312286>,  <36.945568, 41.485893, 11.509247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.597919, 41.504543, 11.312286> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379264, 0.576192, 0.723990,
		0.317475, 0.815983, -0.483095,
		-0.869119, 0.046628, -0.492400,
		36.337185, 41.518532, 11.164566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.745361, 42.145576, 11.553929>,  <36.945568, 41.485893, 11.509247>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.745361, 42.145576, 11.553929> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.423553, 41.921234, 11.475755>,  <36.230469, 41.786629, 11.428850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.423553, 41.921234, 11.475755>,  <36.745361, 42.145576, 11.553929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.423553, 41.921234, 11.475755> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538189, 0.549237, 0.639289,
		-0.251208, 0.619500, -0.743716,
		-0.804517, -0.560855, -0.195436,
		36.182198, 41.752979, 11.417124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.291309, 42.599583, 11.774595>,  <36.745361, 42.145576, 11.553929>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.291309, 42.599583, 11.774595> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.070412, 42.268929, 11.731327>,  <35.937874, 42.070538, 11.705366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.070412, 42.268929, 11.731327>,  <36.291309, 42.599583, 11.774595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.070412, 42.268929, 11.731327> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569767, 0.279511, 0.772813,
		-0.608600, 0.488412, -0.625348,
		-0.552242, -0.826637, -0.108170,
		35.904739, 42.020939, 11.698876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.490108, 42.718380, 11.779588>,  <36.291309, 42.599583, 11.774595>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.490108, 42.718380, 11.779588> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.553894, 42.343369, 11.903271>,  <35.592167, 42.118362, 11.977481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.553894, 42.343369, 11.903271>,  <35.490108, 42.718380, 11.779588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.553894, 42.343369, 11.903271> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500136, 0.193322, 0.844092,
		-0.851137, -0.289251, -0.438063,
		0.159468, -0.937529, 0.309208,
		35.601734, 42.062111, 11.996033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.997952, 42.594582, 12.268505>,  <35.490108, 42.718380, 11.779588>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.997952, 42.594582, 12.268505> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.234333, 42.276535, 12.323013>,  <35.376163, 42.085709, 12.355719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.234333, 42.276535, 12.323013>,  <34.997952, 42.594582, 12.268505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.234333, 42.276535, 12.323013> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391004, -0.134561, 0.910500,
		-0.705613, -0.591345, -0.390411,
		0.590954, -0.795113, 0.136270,
		35.411621, 42.038002, 12.363894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.556477, 42.010700, 12.506492>,  <34.997952, 42.594582, 12.268505>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.556477, 42.010700, 12.506492> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.936615, 41.949512, 12.614898>,  <35.164696, 41.912800, 12.679941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.936615, 41.949512, 12.614898>,  <34.556477, 42.010700, 12.506492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.936615, 41.949512, 12.614898> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304128, -0.271833, 0.913024,
		-0.065992, -0.950109, -0.304856,
		0.950343, -0.152967, 0.271016,
		35.221718, 41.903622, 12.696202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.567310, 41.361172, 12.904276>,  <34.556477, 42.010700, 12.506492>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.567310, 41.361172, 12.904276> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.897449, 41.555042, 13.020131>,  <35.095531, 41.671364, 13.089644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.897449, 41.555042, 13.020131>,  <34.567310, 41.361172, 12.904276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.897449, 41.555042, 13.020131> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201709, -0.226022, 0.953010,
		0.527368, -0.844986, -0.088782,
		0.825347, 0.484678, 0.289638,
		35.145054, 41.700447, 13.107022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.850220, 40.906662, 13.411464>,  <34.567310, 41.361172, 12.904276>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.850220, 40.906662, 13.411464> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.046028, 41.247242, 13.486717>,  <35.163513, 41.451591, 13.531869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.046028, 41.247242, 13.486717>,  <34.850220, 40.906662, 13.411464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.046028, 41.247242, 13.486717> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049271, -0.188399, 0.980856,
		0.870599, -0.489419, -0.050273,
		0.489521, 0.851455, 0.188134,
		35.192883, 41.502678, 13.543158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.519165, 40.762043, 13.803512>,  <34.850220, 40.906662, 13.411464>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.519165, 40.762043, 13.803512> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.373211, 41.129974, 13.861154>,  <35.285637, 41.350735, 13.895739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.373211, 41.129974, 13.861154>,  <35.519165, 40.762043, 13.803512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.373211, 41.129974, 13.861154> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168546, -0.217478, 0.961403,
		0.915669, 0.326516, 0.234389,
		-0.364888, 0.919832, 0.144105,
		35.263744, 41.405926, 13.904386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.059757, 40.274876, 14.018730>,  <35.519165, 40.762043, 13.803512>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.059757, 40.274876, 14.018730> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.898823, 39.918484, 14.102896>,  <35.802261, 39.704647, 14.153395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.898823, 39.918484, 14.102896>,  <36.059757, 40.274876, 14.018730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.898823, 39.918484, 14.102896> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286462, -0.095772, -0.953293,
		0.869520, -0.443821, -0.216700,
		-0.402337, -0.890983, 0.210413,
		35.778122, 39.651188, 14.166019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.292824, 39.840816, 13.472341>,  <36.059757, 40.274876, 14.018730>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.292824, 39.840816, 13.472341> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.961193, 39.670921, 13.617793>,  <35.762215, 39.568985, 13.705065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.961193, 39.670921, 13.617793>,  <36.292824, 39.840816, 13.472341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.961193, 39.670921, 13.617793> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340323, -0.132674, -0.930901,
		0.443637, -0.895540, -0.034553,
		-0.829075, -0.424741, 0.363632,
		35.712471, 39.543499, 13.726883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.169144, 39.346027, 13.015053>,  <36.292824, 39.840816, 13.472341>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.169144, 39.346027, 13.015053> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.815914, 39.361214, 13.202128>,  <35.603977, 39.370327, 13.314374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.815914, 39.361214, 13.202128>,  <36.169144, 39.346027, 13.015053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.815914, 39.361214, 13.202128> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469125, -0.050465, -0.881689,
		-0.009876, -0.998004, 0.062378,
		-0.883077, 0.037971, 0.467690,
		35.550991, 39.372604, 13.342436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.908783, 38.819427, 12.797619>,  <36.169144, 39.346027, 13.015053>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.908783, 38.819427, 12.797619> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.598366, 39.036961, 12.925375>,  <35.412117, 39.167480, 13.002028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.598366, 39.036961, 12.925375>,  <35.908783, 38.819427, 12.797619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.598366, 39.036961, 12.925375> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522409, -0.270563, -0.808631,
		-0.353346, -0.794381, 0.494071,
		-0.776039, 0.543834, 0.319389,
		35.365555, 39.200111, 13.021192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.385490, 38.358315, 12.642420>,  <35.908783, 38.819427, 12.797619>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.385490, 38.358315, 12.642420> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.236481, 38.728985, 12.662395>,  <35.147076, 38.951389, 12.674381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.236481, 38.728985, 12.662395>,  <35.385490, 38.358315, 12.642420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.236481, 38.728985, 12.662395> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513691, -0.161087, -0.842717,
		-0.772884, -0.339584, 0.536035,
		-0.372522, 0.926679, 0.049940,
		35.124725, 39.006989, 12.677378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.677895, 38.316483, 12.359277>,  <35.385490, 38.358315, 12.642420>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.677895, 38.316483, 12.359277> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.754131, 38.707947, 12.328535>,  <34.799873, 38.942825, 12.310090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.754131, 38.707947, 12.328535>,  <34.677895, 38.316483, 12.359277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.754131, 38.707947, 12.328535> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526929, 0.035937, -0.849149,
		-0.828263, 0.202339, 0.522532,
		0.190594, 0.978656, -0.076853,
		34.811310, 39.001545, 12.305479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.974636, 38.670361, 12.280764>,  <34.677895, 38.316483, 12.359277>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.974636, 38.670361, 12.280764> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.284500, 38.869209, 12.124416>,  <34.470417, 38.988518, 12.030608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.284500, 38.869209, 12.124416>,  <33.974636, 38.670361, 12.280764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.284500, 38.869209, 12.124416> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377882, -0.131711, -0.916437,
		-0.507060, 0.857627, 0.085822,
		0.774658, 0.497119, -0.390868,
		34.516899, 39.018345, 12.007156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.694633, 39.050732, 11.809717>,  <33.974636, 38.670361, 12.280764>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.694633, 39.050732, 11.809717> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.077713, 39.034138, 11.695809>,  <34.307560, 39.024181, 11.627464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.077713, 39.034138, 11.695809>,  <33.694633, 39.050732, 11.809717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.077713, 39.034138, 11.695809> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287171, -0.201863, -0.936367,
		-0.018638, 0.978535, -0.205238,
		0.957698, -0.041487, -0.284769,
		34.365021, 39.021690, 11.610378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.579704, 39.388683, 11.159267>,  <33.694633, 39.050732, 11.809717>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.579704, 39.388683, 11.159267> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.948750, 39.237980, 11.126183>,  <34.170177, 39.147560, 11.106332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.948750, 39.237980, 11.126183>,  <33.579704, 39.388683, 11.159267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.948750, 39.237980, 11.126183> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165896, -0.193986, -0.966875,
		0.348230, 0.905773, -0.241476,
		0.922613, -0.376755, -0.082712,
		34.225533, 39.124954, 11.101369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.964603, 39.785900, 10.697513>,  <33.579704, 39.388683, 11.159267>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.964603, 39.785900, 10.697513> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.139194, 39.427021, 10.670588>,  <34.243950, 39.211693, 10.654434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.139194, 39.427021, 10.670588>,  <33.964603, 39.785900, 10.697513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.139194, 39.427021, 10.670588> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072350, 0.039570, -0.996594,
		0.896801, 0.439862, -0.047641,
		0.436478, -0.897193, -0.067310,
		34.270138, 39.157864, 10.650395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.469154, 39.861717, 10.162704>,  <33.964603, 39.785900, 10.697513>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.469154, 39.861717, 10.162704> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.428242, 39.465073, 10.194328>,  <34.403694, 39.227085, 10.213303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.428242, 39.465073, 10.194328>,  <34.469154, 39.861717, 10.162704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.428242, 39.465073, 10.194328> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019092, -0.077504, -0.996809,
		0.994572, -0.103469, -0.011004,
		-0.102286, -0.991608, 0.079059,
		34.397556, 39.167591, 10.218046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.077511, 39.675716, 9.838578>,  <34.469154, 39.861717, 10.162704>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.077511, 39.675716, 9.838578> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.814404, 39.374523, 9.846155>,  <34.656540, 39.193806, 9.850701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.814404, 39.374523, 9.846155>,  <35.077511, 39.675716, 9.838578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.814404, 39.374523, 9.846155> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037738, 0.007827, -0.999257,
		0.752278, -0.657990, -0.033564,
		-0.657763, -0.752986, 0.018943,
		34.617073, 39.148628, 9.851838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.291882, 39.393002, 9.310753>,  <35.077511, 39.675716, 9.838578>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.291882, 39.393002, 9.310753> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.929535, 39.243084, 9.389684>,  <34.712128, 39.153133, 9.437042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.929535, 39.243084, 9.389684>,  <35.291882, 39.393002, 9.310753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.929535, 39.243084, 9.389684> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239792, 0.069758, -0.968315,
		0.349151, -0.924481, -0.153063,
		-0.905866, -0.374791, 0.197328,
		34.657776, 39.130646, 9.448882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.249550, 38.822243, 8.870951>,  <35.291882, 39.393002, 9.310753>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.249550, 38.822243, 8.870951> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.889122, 38.944462, 8.994049>,  <34.672863, 39.017792, 9.067908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.889122, 38.944462, 8.994049>,  <35.249550, 38.822243, 8.870951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.889122, 38.944462, 8.994049> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301222, 0.069536, -0.951015,
		-0.311978, -0.949635, 0.029380,
		-0.901074, 0.305546, 0.307745,
		34.618801, 39.036125, 9.086372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.924927, 38.387840, 8.337320>,  <35.249550, 38.822243, 8.870951>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.924927, 38.387840, 8.337320> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.141850, 38.065884, 8.240952>,  <35.272003, 37.872707, 8.183130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.141850, 38.065884, 8.240952>,  <34.924927, 38.387840, 8.337320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.141850, 38.065884, 8.240952> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027499, -0.269593, 0.962582,
		-0.839729, -0.528641, -0.124068,
		0.542308, -0.804896, -0.240922,
		35.304543, 37.824413, 8.168674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.635071, 37.769768, 8.758231>,  <34.924927, 38.387840, 8.337320>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.635071, 37.769768, 8.758231> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.020428, 37.698250, 8.678321>,  <35.251640, 37.655338, 8.630375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.020428, 37.698250, 8.678321>,  <34.635071, 37.769768, 8.758231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.020428, 37.698250, 8.678321> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168032, -0.177966, 0.969584,
		-0.208915, -0.967656, -0.141406,
		0.963390, -0.178800, -0.199776,
		35.309444, 37.644611, 8.618388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.876564, 37.221111, 9.093654>,  <34.635071, 37.769768, 8.758231>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.876564, 37.221111, 9.093654> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.255081, 37.332981, 9.028765>,  <35.482189, 37.400105, 8.989831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.255081, 37.332981, 9.028765>,  <34.876564, 37.221111, 9.093654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.255081, 37.332981, 9.028765> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265866, -0.387590, 0.882660,
		0.183981, -0.878383, -0.441129,
		0.946291, 0.279674, -0.162223,
		35.538967, 37.416882, 8.980098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.358219, 36.601936, 9.279647>,  <34.876564, 37.221111, 9.093654>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.358219, 36.601936, 9.279647> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.626583, 36.896912, 9.310797>,  <35.787601, 37.073898, 9.329487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.626583, 36.896912, 9.310797>,  <35.358219, 36.601936, 9.279647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.626583, 36.896912, 9.310797> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263950, -0.335627, 0.904259,
		0.692975, -0.586119, -0.419822,
		0.670907, 0.737441, 0.077875,
		35.827854, 37.118145, 9.334160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.945179, 36.234196, 9.648808>,  <35.358219, 36.601936, 9.279647>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.945179, 36.234196, 9.648808> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.024979, 36.625736, 9.666941>,  <36.072857, 36.860661, 9.677820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.024979, 36.625736, 9.666941>,  <35.945179, 36.234196, 9.648808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.024979, 36.625736, 9.666941> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392849, -0.122276, 0.911438,
		0.897703, -0.164020, -0.408933,
		0.199497, 0.978849, 0.045332,
		36.084827, 36.919392, 9.680540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.663868, 36.354183, 9.832973>,  <35.945179, 36.234196, 9.648808>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.663868, 36.354183, 9.832973> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.486912, 36.699001, 9.931910>,  <36.380737, 36.905891, 9.991272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.486912, 36.699001, 9.931910>,  <36.663868, 36.354183, 9.832973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.486912, 36.699001, 9.931910> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365096, -0.078799, 0.927629,
		0.819144, 0.500676, -0.279868,
		-0.442388, 0.862041, 0.247343,
		36.354195, 36.957615, 10.006112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.083263, 36.758030, 10.020501>,  <36.663868, 36.354183, 9.832973>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.083263, 36.758030, 10.020501> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.757755, 36.894505, 10.208698>,  <36.562450, 36.976391, 10.321616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.757755, 36.894505, 10.208698>,  <37.083263, 36.758030, 10.020501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.757755, 36.894505, 10.208698> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410343, -0.235988, 0.880868,
		0.411573, 0.909890, 0.052036,
		-0.813773, 0.341189, 0.470493,
		36.513622, 36.996861, 10.349846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.535946, 37.343750, 10.176404>,  <37.083263, 36.758030, 10.020501>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.535946, 37.343750, 10.176404> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.885311, 37.513222, 10.272443>,  <38.094929, 37.614906, 10.330066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.885311, 37.513222, 10.272443>,  <37.535946, 37.343750, 10.176404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.885311, 37.513222, 10.272443> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005179, 0.484921, -0.874543,
		-0.486954, 0.765080, 0.421341,
		0.873412, 0.423680, 0.240097,
		38.147335, 37.640327, 10.344472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.524853, 37.964745, 9.776929>,  <37.535946, 37.343750, 10.176404>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.524853, 37.964745, 9.776929> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.892376, 37.963375, 9.934802>,  <38.112892, 37.962555, 10.029526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.892376, 37.963375, 9.934802>,  <37.524853, 37.964745, 9.776929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.892376, 37.963375, 9.934802> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335093, 0.535151, -0.775452,
		-0.208562, 0.844750, 0.492849,
		0.918811, -0.003420, 0.394682,
		38.168018, 37.962349, 10.053206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.746395, 38.622635, 9.682565>,  <37.524853, 37.964745, 9.776929>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.746395, 38.622635, 9.682565> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.065998, 38.382118, 9.685053>,  <38.257759, 38.237808, 9.686545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.065998, 38.382118, 9.685053>,  <37.746395, 38.622635, 9.682565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.065998, 38.382118, 9.685053> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349251, 0.455624, -0.818798,
		0.489499, 0.656399, 0.574048,
		0.799009, -0.601287, 0.006220,
		38.305702, 38.201733, 9.686919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.313210, 39.096664, 9.551249>,  <37.746395, 38.622635, 9.682565>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.313210, 39.096664, 9.551249> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.444042, 38.732029, 9.451637>,  <38.522541, 38.513248, 9.391870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.444042, 38.732029, 9.451637>,  <38.313210, 39.096664, 9.551249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.444042, 38.732029, 9.451637> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420926, 0.376480, -0.825279,
		0.846071, 0.165115, 0.506854,
		0.327086, -0.911592, -0.249027,
		38.542168, 38.458549, 9.376929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.006207, 39.257614, 9.371430>,  <38.313210, 39.096664, 9.551249>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.006207, 39.257614, 9.371430> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.905109, 38.906605, 9.208418>,  <38.844452, 38.695999, 9.110611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.905109, 38.906605, 9.208418>,  <39.006207, 39.257614, 9.371430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.905109, 38.906605, 9.208418> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558380, 0.211692, -0.802121,
		0.790148, -0.430286, 0.436486,
		-0.252741, -0.877520, -0.407531,
		38.829288, 38.643349, 9.086159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.605965, 39.151482, 9.024988>,  <39.006207, 39.257614, 9.371430>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.605965, 39.151482, 9.024988> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.341801, 38.898197, 8.863544>,  <39.183300, 38.746227, 8.766677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.341801, 38.898197, 8.863544>,  <39.605965, 39.151482, 9.024988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.341801, 38.898197, 8.863544> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307000, 0.262843, -0.914693,
		0.685278, -0.727984, 0.020810,
		-0.660412, -0.633208, -0.403612,
		39.143677, 38.708233, 8.742460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.055031, 38.775509, 8.422976>,  <39.605965, 39.151482, 9.024988>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.055031, 38.775509, 8.422976> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.660065, 38.757637, 8.362295>,  <39.423084, 38.746914, 8.325886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.660065, 38.757637, 8.362295>,  <40.055031, 38.775509, 8.422976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.660065, 38.757637, 8.362295> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132483, 0.290147, -0.947767,
		0.086362, -0.955939, -0.280576,
		-0.987416, -0.044680, -0.151704,
		39.363838, 38.744232, 8.316784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.966324, 38.566044, 7.731963>,  <40.055031, 38.775509, 8.422976>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.966324, 38.566044, 7.731963> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.593430, 38.703575, 7.777071>,  <39.369694, 38.786095, 7.804137>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.593430, 38.703575, 7.777071>,  <39.966324, 38.566044, 7.731963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.593430, 38.703575, 7.777071> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042766, 0.414161, -0.909198,
		-0.359314, -0.842765, -0.400800,
		-0.932236, 0.343829, 0.112772,
		39.313759, 38.806725, 7.810903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.551220, 38.245525, 7.148664>,  <39.966324, 38.566044, 7.731963>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.551220, 38.245525, 7.148664> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.367989, 38.572929, 7.287344>,  <39.258049, 38.769371, 7.370552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.367989, 38.572929, 7.287344>,  <39.551220, 38.245525, 7.148664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.367989, 38.572929, 7.287344> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018265, 0.398612, -0.916938,
		-0.888724, -0.413697, -0.197545,
		-0.458078, 0.818513, 0.346700,
		39.230564, 38.818481, 7.391354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.408943, 37.248447, 23.592779> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.342602, 37.622658, 23.468021>,  <38.302795, 37.847183, 23.393167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.342602, 37.622658, 23.468021>,  <38.408943, 37.248447, 23.592779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.342602, 37.622658, 23.468021> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225103, -0.272008, -0.935596,
		-0.960115, -0.225379, -0.165478,
		-0.165852, 0.935530, -0.311893,
		38.292847, 37.903316, 23.374454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.026276, 37.124920, 23.055441>,  <38.408943, 37.248447, 23.592779>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.026276, 37.124920, 23.055441> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.184418, 37.490517, 23.018963>,  <38.279301, 37.709873, 22.997076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.184418, 37.490517, 23.018963>,  <38.026276, 37.124920, 23.055441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.184418, 37.490517, 23.018963> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312825, -0.227331, -0.922204,
		-0.863618, 0.336068, -0.375795,
		0.395353, 0.913991, -0.091197,
		38.303024, 37.764713, 22.991604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.780987, 37.341694, 22.324636>,  <38.026276, 37.124920, 23.055441>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.780987, 37.341694, 22.324636> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.093479, 37.564514, 22.437326>,  <38.280975, 37.698208, 22.504940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.093479, 37.564514, 22.437326>,  <37.780987, 37.341694, 22.324636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.093479, 37.564514, 22.437326> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347016, -0.012394, -0.937777,
		-0.518899, 0.830385, -0.202989,
		0.781232, 0.557052, 0.281726,
		38.327850, 37.731628, 22.521845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.792671, 37.937126, 21.869352>,  <37.780987, 37.341694, 22.324636>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.792671, 37.937126, 21.869352> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.168579, 37.925919, 22.005613>,  <38.394123, 37.919193, 22.087370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.168579, 37.925919, 22.005613>,  <37.792671, 37.937126, 21.869352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.168579, 37.925919, 22.005613> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340664, 0.158084, -0.926800,
		-0.027883, 0.987028, 0.158109,
		0.939772, -0.028020, 0.340652,
		38.450512, 37.917511, 22.107809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.175446, 38.580799, 21.712339>,  <37.792671, 37.937126, 21.869352>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.175446, 38.580799, 21.712339> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.426884, 38.271400, 21.744778>,  <38.577747, 38.085762, 21.764240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.426884, 38.271400, 21.744778>,  <38.175446, 38.580799, 21.712339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.426884, 38.271400, 21.744778> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319450, 0.161714, -0.933703,
		0.709098, 0.612827, 0.348745,
		0.628595, -0.773493, 0.081096,
		38.615463, 38.039352, 21.769106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.822475, 38.813465, 21.304228>,  <38.175446, 38.580799, 21.712339>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.822475, 38.813465, 21.304228> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.873848, 38.419754, 21.352743>,  <38.904671, 38.183529, 21.381853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.873848, 38.419754, 21.352743>,  <38.822475, 38.813465, 21.304228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.873848, 38.419754, 21.352743> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192088, -0.095296, -0.976740,
		0.972938, 0.148739, 0.176829,
		0.128428, -0.984274, 0.121288,
		38.912376, 38.124474, 21.389130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.425793, 38.640934, 20.950874>,  <38.822475, 38.813465, 21.304228>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.425793, 38.640934, 20.950874> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.243351, 38.289124, 21.005136>,  <39.133888, 38.078037, 21.037695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.243351, 38.289124, 21.005136>,  <39.425793, 38.640934, 20.950874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.243351, 38.289124, 21.005136> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127922, -0.215649, -0.968056,
		0.880687, -0.424176, 0.210868,
		-0.456100, -0.879529, 0.135657,
		39.106522, 38.025265, 21.045834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.883537, 38.047901, 20.693239>,  <39.425793, 38.640934, 20.950874>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.883537, 38.047901, 20.693239> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.500751, 37.934490, 20.668449>,  <39.271080, 37.866444, 20.653576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.500751, 37.934490, 20.668449>,  <39.883537, 38.047901, 20.693239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.500751, 37.934490, 20.668449> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116908, -0.181148, -0.976483,
		0.265630, -0.941700, 0.206498,
		-0.956960, -0.283524, -0.061974,
		39.213665, 37.849434, 20.649857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.915741, 37.731335, 20.120728>,  <39.883537, 38.047901, 20.693239>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.915741, 37.731335, 20.120728> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.520615, 37.765514, 20.172743>,  <39.283539, 37.786022, 20.203951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.520615, 37.765514, 20.172743>,  <39.915741, 37.731335, 20.120728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.520615, 37.765514, 20.172743> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136497, -0.074695, -0.987820,
		-0.074695, -0.993539, 0.085448,
		0.987820, -0.085448, -0.130036,
		39.224270, 37.791149, 20.211754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.625237, 37.156441, 19.928324>,  <39.915741, 37.731335, 20.120728>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.625237, 37.156441, 19.928324> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.336189, 37.428894, 19.881197>,  <39.162762, 37.592365, 19.852921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.336189, 37.428894, 19.881197>,  <39.625237, 37.156441, 19.928324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.336189, 37.428894, 19.881197> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099245, -0.270901, -0.957477,
		-0.684089, -0.680195, 0.263357,
		-0.722615, 0.681137, -0.117815,
		39.119404, 37.633236, 19.845852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.131069, 36.711975, 19.604994>,  <39.625237, 37.156441, 19.928324>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.131069, 36.711975, 19.604994> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.026035, 37.092365, 19.539627>,  <38.963017, 37.320599, 19.500406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.026035, 37.092365, 19.539627>,  <39.131069, 36.711975, 19.604994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.026035, 37.092365, 19.539627> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042547, -0.157786, -0.986557,
		-0.963971, -0.266004, 0.000971,
		-0.262581, 0.950971, -0.163419,
		38.947262, 37.377655, 19.490601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.535179, 36.701782, 19.209993>,  <39.131069, 36.711975, 19.604994>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.535179, 36.701782, 19.209993> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.718037, 37.053516, 19.156641>,  <38.827751, 37.264557, 19.124630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.718037, 37.053516, 19.156641>,  <38.535179, 36.701782, 19.209993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.718037, 37.053516, 19.156641> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083574, -0.106835, -0.990758,
		-0.885456, 0.464068, 0.024650,
		0.457146, 0.879333, -0.133381,
		38.855179, 37.317318, 19.116627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.753109, 36.870255, 19.215988>,  <38.535179, 36.701782, 19.209993>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.753109, 36.870255, 19.215988> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.415596, 36.656116, 19.200851>,  <37.213089, 36.527634, 19.191771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.415596, 36.656116, 19.200851>,  <37.753109, 36.870255, 19.215988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.415596, 36.656116, 19.200851> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139765, 0.151120, 0.978585,
		-0.518165, 0.831003, -0.202335,
		-0.843784, -0.535348, -0.037840,
		37.162460, 36.495514, 19.189499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.229687, 37.260818, 19.629980>,  <37.753109, 36.870255, 19.215988>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.229687, 37.260818, 19.629980> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.138390, 36.872963, 19.594887>,  <37.083611, 36.640247, 19.573830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.138390, 36.872963, 19.594887>,  <37.229687, 37.260818, 19.629980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.138390, 36.872963, 19.594887> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347520, -0.003038, 0.937668,
		-0.909469, 0.244509, -0.336277,
		-0.228246, -0.969642, -0.087735,
		37.069916, 36.582069, 19.568567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.593063, 37.145859, 19.991674>,  <37.229687, 37.260818, 19.629980>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.593063, 37.145859, 19.991674> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.740173, 36.774860, 19.964880>,  <36.828442, 36.552261, 19.948803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.740173, 36.774860, 19.964880>,  <36.593063, 37.145859, 19.991674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.740173, 36.774860, 19.964880> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096614, -0.109756, 0.989252,
		-0.924881, -0.357354, -0.129976,
		0.367779, -0.927497, -0.066986,
		36.850506, 36.496613, 19.944784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.029461, 36.685219, 20.218002>,  <36.593063, 37.145859, 19.991674>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.029461, 36.685219, 20.218002> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.378895, 36.494320, 20.256128>,  <36.588554, 36.379780, 20.279003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.378895, 36.494320, 20.256128>,  <36.029461, 36.685219, 20.218002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.378895, 36.494320, 20.256128> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171719, -0.119013, 0.977931,
		-0.455374, -0.870671, -0.185920,
		0.873583, -0.477251, 0.095315,
		36.640968, 36.351147, 20.284723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.892357, 36.180305, 20.768713>,  <36.029461, 36.685219, 20.218002>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.892357, 36.180305, 20.768713> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.291695, 36.157936, 20.763231>,  <36.531296, 36.144516, 20.759941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.291695, 36.157936, 20.763231>,  <35.892357, 36.180305, 20.768713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.291695, 36.157936, 20.763231> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001514, -0.212454, 0.977170,
		-0.057555, -0.975570, -0.212017,
		0.998341, -0.055920, -0.013705,
		36.591198, 36.141159, 20.759119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.136593, 35.586327, 21.026081>,  <35.892357, 36.180305, 20.768713>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.136593, 35.586327, 21.026081> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.441330, 35.838001, 21.087696>,  <36.624172, 35.989006, 21.124664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.441330, 35.838001, 21.087696>,  <36.136593, 35.586327, 21.026081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.441330, 35.838001, 21.087696> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072348, -0.153663, 0.985471,
		0.643713, -0.761915, -0.071547,
		0.761839, 0.629185, 0.154038,
		36.669880, 36.026756, 21.133907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.502987, 35.261627, 21.538841>,  <36.136593, 35.586327, 21.026081>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.502987, 35.261627, 21.538841> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.660885, 35.628773, 21.555380>,  <36.755623, 35.849060, 21.565304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.660885, 35.628773, 21.555380>,  <36.502987, 35.261627, 21.538841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.660885, 35.628773, 21.555380> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081443, -0.079781, 0.993480,
		0.915174, -0.388803, -0.106247,
		0.394744, 0.917860, 0.041349,
		36.779308, 35.904129, 21.567785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.101719, 35.281960, 21.950413>,  <36.502987, 35.261627, 21.538841>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.101719, 35.281960, 21.950413> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.991199, 35.666355, 21.945463>,  <36.924889, 35.896992, 21.942493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.991199, 35.666355, 21.945463>,  <37.101719, 35.281960, 21.950413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.991199, 35.666355, 21.945463> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123274, 0.048207, 0.991201,
		0.953133, 0.272344, -0.131785,
		-0.276300, 0.960992, -0.012374,
		36.908310, 35.954651, 21.941751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.483799, 35.493172, 22.520527>,  <37.101719, 35.281960, 21.950413>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.483799, 35.493172, 22.520527> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.190521, 35.759571, 22.465576>,  <37.014553, 35.919411, 22.432606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.190521, 35.759571, 22.465576>,  <37.483799, 35.493172, 22.520527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.190521, 35.759571, 22.465576> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033053, 0.166879, 0.985423,
		0.679215, 0.727048, -0.100341,
		-0.733195, 0.665998, -0.137378,
		36.970562, 35.959370, 22.424362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.769310, 36.053852, 22.933014>,  <37.483799, 35.493172, 22.520527>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.769310, 36.053852, 22.933014> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.375942, 36.098763, 22.876055>,  <37.139919, 36.125710, 22.841879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.375942, 36.098763, 22.876055>,  <37.769310, 36.053852, 22.933014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.375942, 36.098763, 22.876055> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106394, 0.278670, 0.954475,
		0.146844, 0.953802, -0.262105,
		-0.983421, 0.112273, -0.142399,
		37.080917, 36.132442, 22.833336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.557232, 36.640900, 23.353210>,  <37.769310, 36.053852, 22.933014>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.557232, 36.640900, 23.353210> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.190575, 36.500343, 23.277016>,  <36.970581, 36.416012, 23.231298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.190575, 36.500343, 23.277016>,  <37.557232, 36.640900, 23.353210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.190575, 36.500343, 23.277016> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272071, 0.199412, 0.941389,
		-0.292808, 0.914746, -0.278393,
		-0.916647, -0.351389, -0.190486,
		36.915581, 36.394928, 23.219870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.013817, 37.081455, 23.523254>,  <37.557232, 36.640900, 23.353210>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.013817, 37.081455, 23.523254> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.824215, 36.729404, 23.533808>,  <36.710453, 36.518173, 23.540140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.824215, 36.729404, 23.533808>,  <37.013817, 37.081455, 23.523254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.824215, 36.729404, 23.533808> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340139, 0.210659, 0.916476,
		-0.812173, 0.425440, -0.399219,
		-0.474005, -0.880127, 0.026383,
		36.682014, 36.465366, 23.541723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.369045, 37.201275, 23.701387>,  <37.013817, 37.081455, 23.523254>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.369045, 37.201275, 23.701387> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.368904, 36.812279, 23.794569>,  <36.368820, 36.578880, 23.850477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.368904, 36.812279, 23.794569>,  <36.369045, 37.201275, 23.701387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.368904, 36.812279, 23.794569> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283529, 0.223492, 0.932557,
		-0.958964, -0.065723, -0.275807,
		-0.000350, -0.972488, 0.232955,
		36.368797, 36.520531, 23.864456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.005184, 37.292606, 24.264912>,  <36.369045, 37.201275, 23.701387>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.005184, 37.292606, 24.264912> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.098034, 36.903713, 24.276852>,  <36.153744, 36.670380, 24.284016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.098034, 36.903713, 24.276852>,  <36.005184, 37.292606, 24.264912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.098034, 36.903713, 24.276852> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365952, -0.058855, 0.928771,
		-0.901221, -0.226511, -0.369451,
		0.232120, -0.972229, 0.029851,
		36.167671, 36.612045, 24.285807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.392170, 36.792217, 24.277481>,  <36.005184, 37.292606, 24.264912>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.392170, 36.792217, 24.277481> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.731789, 36.678638, 24.455694>,  <35.935558, 36.610493, 24.562622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.731789, 36.678638, 24.455694>,  <35.392170, 36.792217, 24.277481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.731789, 36.678638, 24.455694> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477742, -0.052568, 0.876926,
		-0.225583, -0.957397, -0.180288,
		0.849044, -0.283951, 0.445530,
		35.986504, 36.593452, 24.589354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.058228, 37.067772, 24.971888>,  <35.392170, 36.792217, 24.277481>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.058228, 37.067772, 24.971888> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.908073, 37.394615, 24.796879>,  <34.817982, 37.590721, 24.691874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.908073, 37.394615, 24.796879>,  <35.058228, 37.067772, 24.971888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.908073, 37.394615, 24.796879> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077024, -0.442910, -0.893251,
		-0.923664, -0.369011, 0.103324,
		-0.375383, 0.817106, -0.437523,
		34.795460, 37.639748, 24.665623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.525890, 36.819550, 24.387318>,  <35.058228, 37.067772, 24.971888>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.525890, 36.819550, 24.387318> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.665012, 37.182503, 24.292921>,  <34.748486, 37.400276, 24.236282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.665012, 37.182503, 24.292921>,  <34.525890, 36.819550, 24.387318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.665012, 37.182503, 24.292921> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007002, -0.249185, -0.968431,
		-0.937542, 0.338475, -0.080313,
		0.347803, 0.907382, -0.235991,
		34.769352, 37.454716, 24.222124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.179245, 37.049248, 23.860424>,  <34.525890, 36.819550, 24.387318>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.179245, 37.049248, 23.860424> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.449291, 37.342266, 23.825560>,  <34.611320, 37.518078, 23.804640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.449291, 37.342266, 23.825560>,  <34.179245, 37.049248, 23.860424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.449291, 37.342266, 23.825560> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146202, 0.017050, -0.989108,
		-0.723078, 0.680507, 0.118610,
		0.675117, 0.732543, -0.087163,
		34.651825, 37.562031, 23.799410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.863197, 37.599358, 23.405407>,  <34.179245, 37.049248, 23.860424>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.863197, 37.599358, 23.405407> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.260670, 37.643738, 23.398705>,  <34.499153, 37.670364, 23.394684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.260670, 37.643738, 23.398705>,  <33.863197, 37.599358, 23.405407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.260670, 37.643738, 23.398705> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020665, 0.034192, -0.999202,
		-0.110289, 0.993238, 0.036269,
		0.993685, 0.110950, -0.016755,
		34.558777, 37.677021, 23.393679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.932034, 38.176586, 22.960554>,  <33.863197, 37.599358, 23.405407>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.932034, 38.176586, 22.960554> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.294865, 38.008553, 22.949602>,  <34.512562, 37.907734, 22.943031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.294865, 38.008553, 22.949602>,  <33.932034, 38.176586, 22.960554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.294865, 38.008553, 22.949602> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007786, 0.081775, -0.996620,
		0.420900, 0.903795, 0.077446,
		0.907074, -0.420080, -0.027382,
		34.566986, 37.882530, 22.941387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.405960, 38.693962, 22.619616>,  <33.932034, 38.176586, 22.960554>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.405960, 38.693962, 22.619616> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.582264, 38.336231, 22.588869>,  <34.688046, 38.121593, 22.570421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.582264, 38.336231, 22.588869>,  <34.405960, 38.693962, 22.619616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.582264, 38.336231, 22.588869> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089246, 0.128869, -0.987638,
		0.893177, 0.428451, 0.136616,
		0.440760, -0.894328, -0.076865,
		34.714493, 38.067932, 22.565809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.023216, 38.828243, 22.185034>,  <34.405960, 38.693962, 22.619616>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.023216, 38.828243, 22.185034> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.971603, 38.432110, 22.164703>,  <34.940636, 38.194427, 22.152506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.971603, 38.432110, 22.164703>,  <35.023216, 38.828243, 22.185034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.971603, 38.432110, 22.164703> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061409, 0.043174, -0.997179,
		0.989737, -0.131789, 0.055245,
		-0.129032, -0.990337, -0.050824,
		34.932896, 38.135010, 22.149456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.582428, 38.610329, 21.730793>,  <35.023216, 38.828243, 22.185034>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.582428, 38.610329, 21.730793> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.315098, 38.313316, 21.748636>,  <35.154697, 38.135109, 21.759342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.315098, 38.313316, 21.748636>,  <35.582428, 38.610329, 21.730793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.315098, 38.313316, 21.748636> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121163, -0.167829, -0.978342,
		0.733933, -0.648448, 0.202131,
		-0.668327, -0.742528, 0.044607,
		35.114601, 38.090557, 21.762018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.887951, 37.990925, 21.419291>,  <35.582428, 38.610329, 21.730793>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.887951, 37.990925, 21.419291> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.490063, 37.956718, 21.396616>,  <35.251328, 37.936195, 21.383011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.490063, 37.956718, 21.396616>,  <35.887951, 37.990925, 21.419291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.490063, 37.956718, 21.396616> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066682, -0.118952, -0.990658,
		0.077977, -0.989210, 0.124026,
		-0.994722, -0.085519, -0.056687,
		35.191647, 37.931065, 21.379610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.764214, 37.329956, 21.103243>,  <35.887951, 37.990925, 21.419291>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.764214, 37.329956, 21.103243> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.417820, 37.524281, 21.055824>,  <35.209984, 37.640877, 21.027372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.417820, 37.524281, 21.055824>,  <35.764214, 37.329956, 21.103243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.417820, 37.524281, 21.055824> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167075, 0.057642, -0.984258,
		-0.471332, -0.872160, -0.131084,
		-0.865987, 0.485813, -0.118547,
		35.158024, 37.670025, 21.020260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.418369, 37.069695, 20.486814>,  <35.764214, 37.329956, 21.103243>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.418369, 37.069695, 20.486814> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.230824, 37.418201, 20.544857>,  <35.118298, 37.627304, 20.579683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.230824, 37.418201, 20.544857>,  <35.418369, 37.069695, 20.486814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.230824, 37.418201, 20.544857> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118931, 0.225063, -0.967058,
		-0.875226, -0.436162, -0.209145,
		-0.468865, 0.871269, 0.145108,
		35.090164, 37.679581, 20.588390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.930206, 37.148399, 19.903168>,  <35.418369, 37.069695, 20.486814>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.930206, 37.148399, 19.903168> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.940304, 37.517231, 20.057636>,  <34.946362, 37.738529, 20.150318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.940304, 37.517231, 20.057636>,  <34.930206, 37.148399, 19.903168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.940304, 37.517231, 20.057636> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148295, 0.385475, -0.910724,
		-0.988621, -0.034276, 0.146472,
		0.025246, 0.922081, 0.386172,
		34.947876, 37.793854, 20.173489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.512733, 37.508598, 19.439562>,  <34.930206, 37.148399, 19.903168>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.512733, 37.508598, 19.439562> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.726910, 37.790951, 19.625050>,  <34.855415, 37.960361, 19.736341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.726910, 37.790951, 19.625050>,  <34.512733, 37.508598, 19.439562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.726910, 37.790951, 19.625050> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045116, 0.524368, -0.850296,
		-0.843370, 0.476200, 0.248918,
		0.535436, 0.705884, 0.463720,
		34.887539, 38.002716, 19.764166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.236862, 38.085938, 19.226591>,  <34.512733, 37.508598, 19.439562>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.236862, 38.085938, 19.226591> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.604733, 38.196445, 19.338209>,  <34.825455, 38.262749, 19.405180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.604733, 38.196445, 19.338209>,  <34.236862, 38.085938, 19.226591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.604733, 38.196445, 19.338209> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156165, 0.394689, -0.905446,
		-0.360280, 0.876298, 0.319845,
		0.919680, 0.276265, 0.279046,
		34.880638, 38.279324, 19.421923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.294579, 38.736248, 19.079248>,  <34.236862, 38.085938, 19.226591>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.294579, 38.736248, 19.079248> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.683048, 38.642467, 19.096491>,  <34.916130, 38.586201, 19.106836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.683048, 38.642467, 19.096491>,  <34.294579, 38.736248, 19.079248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.683048, 38.642467, 19.096491> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153862, 0.478384, -0.864566,
		0.182073, 0.846276, 0.500666,
		0.971172, -0.234448, 0.043108,
		34.974400, 38.572132, 19.109423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.697495, 39.378708, 19.029093>,  <34.294579, 38.736248, 19.079248>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.697495, 39.378708, 19.029093> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.956985, 39.098049, 18.911215>,  <35.112679, 38.929653, 18.840488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.956985, 39.098049, 18.911215>,  <34.697495, 39.378708, 19.029093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.956985, 39.098049, 18.911215> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229864, 0.549808, -0.803041,
		0.725478, 0.453213, 0.517958,
		0.648725, -0.701648, -0.294696,
		35.151604, 38.887554, 18.822805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.324146, 39.818729, 18.818642>,  <34.697495, 39.378708, 19.029093>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.324146, 39.818729, 18.818642> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.366596, 39.450516, 18.668257>,  <35.392067, 39.229588, 18.578026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.366596, 39.450516, 18.668257>,  <35.324146, 39.818729, 18.818642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.366596, 39.450516, 18.668257> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129275, 0.387664, -0.912691,
		0.985914, 0.048257, 0.160143,
		0.106126, -0.920537, -0.375964,
		35.398434, 39.174355, 18.555468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.968445, 39.839294, 18.444094>,  <35.324146, 39.818729, 18.818642>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.968445, 39.839294, 18.444094> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.790371, 39.515163, 18.291679>,  <35.683529, 39.320686, 18.200232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.790371, 39.515163, 18.291679>,  <35.968445, 39.839294, 18.444094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.790371, 39.515163, 18.291679> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324451, 0.250640, -0.912092,
		0.834593, -0.529673, 0.151330,
		-0.445181, -0.810325, -0.381035,
		35.656818, 39.272064, 18.177368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.468517, 39.506203, 17.973804>,  <35.968445, 39.839294, 18.444094>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.468517, 39.506203, 17.973804> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.129887, 39.327324, 17.858341>,  <35.926708, 39.219997, 17.789064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.129887, 39.327324, 17.858341>,  <36.468517, 39.506203, 17.973804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.129887, 39.327324, 17.858341> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323367, -0.001356, -0.946273,
		0.422780, -0.894434, 0.145757,
		-0.846576, -0.447198, -0.288657,
		35.875916, 39.193165, 17.771744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.604614, 39.002342, 17.519844>,  <36.468517, 39.506203, 17.973804>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.604614, 39.002342, 17.519844> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.215397, 39.028740, 17.431450>,  <35.981869, 39.044579, 17.378412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.215397, 39.028740, 17.431450>,  <36.604614, 39.002342, 17.519844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.215397, 39.028740, 17.431450> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203520, -0.205027, -0.957363,
		-0.108486, -0.976529, 0.186069,
		-0.973042, 0.065992, -0.220986,
		35.923485, 39.048538, 17.365154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.515667, 38.566071, 17.104635>,  <36.604614, 39.002342, 17.519844>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.515667, 38.566071, 17.104635> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.187569, 38.778671, 17.020060>,  <35.990711, 38.906231, 16.969315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.187569, 38.778671, 17.020060>,  <36.515667, 38.566071, 17.104635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.187569, 38.778671, 17.020060> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217873, -0.051481, -0.974619,
		-0.528901, -0.845488, -0.073574,
		-0.820241, 0.531507, -0.211437,
		35.941498, 38.938122, 16.956629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.074333, 38.159519, 16.599663>,  <36.515667, 38.566071, 17.104635>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.074333, 38.159519, 16.599663> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.989815, 38.548992, 16.565495>,  <35.939102, 38.782677, 16.544994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.989815, 38.548992, 16.565495>,  <36.074333, 38.159519, 16.599663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.989815, 38.548992, 16.565495> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076043, -0.070753, -0.994591,
		-0.974459, -0.216651, -0.059092,
		-0.211298, 0.973682, -0.085421,
		35.926426, 38.841095, 16.539867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.573238, 38.181751, 16.153801>,  <36.074333, 38.159519, 16.599663>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.573238, 38.181751, 16.153801> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.685165, 38.565651, 16.144091>,  <35.752323, 38.795990, 16.138266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.685165, 38.565651, 16.144091>,  <35.573238, 38.181751, 16.153801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.685165, 38.565651, 16.144091> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018705, -0.019829, -0.999628,
		-0.959871, 0.280167, 0.012404,
		0.279817, 0.959747, -0.024273,
		35.769112, 38.853577, 16.136808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.088123, 38.600914, 15.758900>,  <35.573238, 38.181751, 16.153801>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.088123, 38.600914, 15.758900> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.425465, 38.815857, 15.760296>,  <35.627869, 38.944820, 15.761133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.425465, 38.815857, 15.760296>,  <35.088123, 38.600914, 15.758900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.425465, 38.815857, 15.760296> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202906, 0.324450, -0.923884,
		-0.497586, 0.778448, 0.382657,
		0.843349, 0.537355, 0.003490,
		35.678471, 38.977062, 15.761343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.861938, 39.194649, 15.533529>,  <35.088123, 38.600914, 15.758900>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.861938, 39.194649, 15.533529> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.258335, 39.198093, 15.480072>,  <35.496174, 39.200161, 15.447998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.258335, 39.198093, 15.480072>,  <34.861938, 39.194649, 15.533529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.258335, 39.198093, 15.480072> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121361, 0.479705, -0.868996,
		0.056621, 0.877388, 0.476430,
		0.990992, 0.008616, -0.133642,
		35.555634, 39.200680, 15.439980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.961079, 39.824013, 15.209543>,  <34.861938, 39.194649, 15.533529>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.961079, 39.824013, 15.209543> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.282963, 39.597191, 15.139241>,  <35.476093, 39.461098, 15.097060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.282963, 39.597191, 15.139241>,  <34.961079, 39.824013, 15.209543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.282963, 39.597191, 15.139241> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034856, 0.250409, -0.967512,
		0.592646, 0.784691, 0.181741,
		0.804708, -0.567058, -0.175755,
		35.524376, 39.427074, 15.086514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.409065, 40.274395, 14.727696>,  <34.961079, 39.824013, 15.209543>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.409065, 40.274395, 14.727696> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.522198, 39.891651, 14.701079>,  <35.590076, 39.662006, 14.685109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.522198, 39.891651, 14.701079>,  <35.409065, 40.274395, 14.727696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.522198, 39.891651, 14.701079> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154238, 0.023101, -0.987764,
		0.946687, 0.289634, -0.141051,
		0.282832, -0.956859, -0.066542,
		35.607048, 39.604595, 14.681117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.742363, 40.948650, 14.455666>,  <35.409065, 40.274395, 14.727696>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.742363, 40.948650, 14.455666> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.464668, 41.230793, 14.398393>,  <35.298050, 41.400078, 14.364029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.464668, 41.230793, 14.398393>,  <35.742363, 40.948650, 14.455666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.464668, 41.230793, 14.398393> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349967, -0.156984, 0.923515,
		0.628930, 0.691250, 0.355837,
		-0.694240, 0.705357, -0.143182,
		35.256397, 41.442402, 14.355438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.776756, 41.264980, 15.040938>,  <35.742363, 40.948650, 14.455666>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.776756, 41.264980, 15.040938> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.426514, 41.402149, 14.904865>,  <35.216370, 41.484451, 14.823221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.426514, 41.402149, 14.904865>,  <35.776756, 41.264980, 15.040938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.426514, 41.402149, 14.904865> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394282, -0.100575, 0.913469,
		0.279034, 0.933965, 0.223271,
		-0.875603, 0.342921, -0.340182,
		35.163834, 41.505024, 14.802811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.618793, 41.922611, 15.408782>,  <35.776756, 41.264980, 15.040938>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.618793, 41.922611, 15.408782> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.270920, 41.769318, 15.284347>,  <35.062195, 41.677341, 15.209685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.270920, 41.769318, 15.284347>,  <35.618793, 41.922611, 15.408782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.270920, 41.769318, 15.284347> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297436, -0.096091, 0.949894,
		-0.393921, 0.918641, -0.030417,
		-0.869689, -0.383230, -0.311089,
		35.010014, 41.654350, 15.191020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.055653, 42.352119, 15.793061>,  <35.618793, 41.922611, 15.408782>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.055653, 42.352119, 15.793061> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.928524, 42.002506, 15.646056>,  <34.852245, 41.792740, 15.557854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.928524, 42.002506, 15.646056>,  <35.055653, 42.352119, 15.793061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.928524, 42.002506, 15.646056> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290505, -0.279203, 0.915234,
		-0.902550, 0.397644, -0.165174,
		-0.317820, -0.874028, -0.367512,
		34.833179, 41.740299, 15.535803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.322887, 42.313362, 16.049849>,  <35.055653, 42.352119, 15.793061>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.322887, 42.313362, 16.049849> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.434204, 41.943226, 15.946854>,  <34.500996, 41.721146, 15.885056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.434204, 41.943226, 15.946854>,  <34.322887, 42.313362, 16.049849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.434204, 41.943226, 15.946854> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243930, -0.327377, 0.912865,
		-0.929006, -0.191233, -0.316825,
		0.278291, -0.925340, -0.257488,
		34.517693, 41.665623, 15.869607>
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
