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
	location <25.469, 94.9851, 44.8844>
	look_at <25.469, 29.3977, 32.8955>
	direction <0, -65.5874, -11.9889>
	angle 67.0682
}


# declare cpy_camera_pos = <25.469, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 28
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16351, -0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16351, 0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<4.355842, 14.674655, 14.769312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.218849, 14.902346, 15.068294>,  <4.136652, 15.038960, 15.247683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.218849, 14.902346, 15.068294>,  <4.355842, 14.674655, 14.769312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.218849, 14.902346, 15.068294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134354, 0.757717, -0.638603,
		-0.929868, -0.319134, -0.183028,
		-0.342484, 0.569226, 0.747453,
		4.116104, 15.073113, 15.292530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.839036, 15.181625, 14.581650>,  <4.355842, 14.674655, 14.769312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.839036, 15.181625, 14.581650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.063356, 15.355823, 14.863316>,  <4.197948, 15.460340, 15.032315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.063356, 15.355823, 14.863316>,  <3.839036, 15.181625, 14.581650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.063356, 15.355823, 14.863316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262345, 0.900133, -0.347758,
		-0.785289, 0.010289, 0.619044,
		0.560800, 0.435493, 0.704165,
		4.231596, 15.486470, 15.074565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.459437, 15.787555, 14.645932>,  <3.839036, 15.181625, 14.581650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.459437, 15.787555, 14.645932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.827897, 15.816165, 14.798965>,  <4.048972, 15.833331, 14.890784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.827897, 15.816165, 14.798965>,  <3.459437, 15.787555, 14.645932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.827897, 15.816165, 14.798965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081882, 0.925358, -0.370147,
		-0.380500, 0.372287, 0.846536,
		0.921149, 0.071524, 0.382582,
		4.104241, 15.837623, 14.913739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.598627, 16.471607, 14.973545>,  <3.459437, 15.787555, 14.645932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.598627, 16.471607, 14.973545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.975809, 16.345612, 14.930426>,  <4.202117, 16.270014, 14.904553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.975809, 16.345612, 14.930426>,  <3.598627, 16.471607, 14.973545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.975809, 16.345612, 14.930426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249762, 0.883397, -0.396521,
		0.220128, 0.346977, 0.911674,
		0.942954, -0.314987, -0.107799,
		4.258695, 16.251116, 14.898086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.033896, 16.889404, 15.401069>,  <3.598627, 16.471607, 14.973545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.033896, 16.889404, 15.401069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.229344, 16.735876, 15.087653>,  <4.346612, 16.643759, 14.899604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.229344, 16.735876, 15.087653>,  <4.033896, 16.889404, 15.401069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.229344, 16.735876, 15.087653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199354, 0.923399, -0.328013,
		0.849417, 0.004072, 0.527707,
		0.488620, -0.383820, -0.783539,
		4.375930, 16.620729, 14.852592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.637275, 17.141159, 15.372717>,  <4.033896, 16.889404, 15.401069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.637275, 17.141159, 15.372717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.564181, 17.031881, 14.994940>,  <4.520324, 16.966314, 14.768273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.564181, 17.031881, 14.994940>,  <4.637275, 17.141159, 15.372717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.564181, 17.031881, 14.994940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313126, 0.894423, -0.319311,
		0.931965, -0.354079, -0.077899,
		-0.182736, -0.273195, -0.944443,
		4.509360, 16.949923, 14.711607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.998785, 17.599400, 15.029358>,  <4.637275, 17.141159, 15.372717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.998785, 17.599400, 15.029358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.821552, 17.428425, 14.714149>,  <4.715212, 17.325840, 14.525024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.821552, 17.428425, 14.714149>,  <4.998785, 17.599400, 15.029358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.821552, 17.428425, 14.714149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252292, 0.784034, -0.567132,
		0.860248, -0.450097, -0.239552,
		-0.443081, -0.427438, -0.788020,
		4.688628, 17.300194, 14.477743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.519556, 17.659548, 14.485332>,  <4.998785, 17.599400, 15.029358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.519556, 17.659548, 14.485332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.161451, 17.596985, 14.318459>,  <4.946588, 17.559446, 14.218334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.161451, 17.596985, 14.318459>,  <5.519556, 17.659548, 14.485332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.161451, 17.596985, 14.318459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216906, 0.664896, -0.714749,
		0.389175, -0.730377, -0.561330,
		-0.895263, -0.156407, -0.417184,
		4.892872, 17.550062, 14.193303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.683460, 17.464159, 13.801735>,  <5.519556, 17.659548, 14.485332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.683460, 17.464159, 13.801735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.326213, 17.641335, 13.833096>,  <5.111865, 17.747641, 13.851912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.326213, 17.641335, 13.833096>,  <5.683460, 17.464159, 13.801735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.326213, 17.641335, 13.833096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250710, 0.634874, -0.730808,
		-0.373479, -0.633040, -0.678066,
		-0.893117, 0.442940, 0.078402,
		5.058278, 17.774216, 13.856616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.620244, 17.862249, 13.187732>,  <5.683460, 17.464159, 13.801735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.620244, 17.862249, 13.187732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.299935, 18.003695, 13.381112>,  <5.107750, 18.088562, 13.497140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.299935, 18.003695, 13.381112>,  <5.620244, 17.862249, 13.187732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.299935, 18.003695, 13.381112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052596, 0.845531, -0.531330,
		-0.596657, -0.400046, -0.695675,
		-0.800771, 0.353612, 0.483451,
		5.059704, 18.109777, 13.526148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.170949, 18.038464, 12.757336>,  <5.620244, 17.862249, 13.187732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.170949, 18.038464, 12.757336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.071860, 18.262403, 13.073615>,  <5.012407, 18.396767, 13.263383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.071860, 18.262403, 13.073615>,  <5.170949, 18.038464, 12.757336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.071860, 18.262403, 13.073615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199740, 0.828115, -0.523765,
		-0.948018, 0.028186, -0.316966,
		-0.247722, 0.559849, 0.790698,
		4.997543, 18.430359, 13.310824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.862825, 18.654039, 12.444942>,  <5.170949, 18.038464, 12.757336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.862825, 18.654039, 12.444942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.966371, 18.763769, 12.815397>,  <5.028499, 18.829607, 13.037671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.966371, 18.763769, 12.815397>,  <4.862825, 18.654039, 12.444942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.966371, 18.763769, 12.815397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075943, 0.950074, -0.302640,
		-0.962924, 0.148677, 0.225107,
		0.258864, 0.274324, 0.926140,
		5.044030, 18.846066, 13.093240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.522812, 19.282640, 12.539479>,  <4.862825, 18.654039, 12.444942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.522812, 19.282640, 12.539479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.785454, 19.281849, 12.841172>,  <4.943039, 19.281374, 13.022188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.785454, 19.281849, 12.841172>,  <4.522812, 19.282640, 12.539479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.785454, 19.281849, 12.841172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135052, 0.984144, -0.114986,
		-0.742046, 0.177361, 0.646460,
		0.656604, -0.001980, 0.754233,
		4.982435, 19.281256, 13.067442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.294651, 19.907078, 13.064719>,  <4.522812, 19.282640, 12.539479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.294651, 19.907078, 13.064719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.679853, 19.822407, 13.131428>,  <4.910975, 19.771605, 13.171453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.679853, 19.822407, 13.131428>,  <4.294651, 19.907078, 13.064719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.679853, 19.822407, 13.131428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195332, 0.974645, 0.109147,
		-0.185647, -0.072533, 0.979936,
		0.963006, -0.211676, 0.166771,
		4.968755, 19.758904, 13.181459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.465196, 20.331408, 13.615671>,  <4.294651, 19.907078, 13.064719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.465196, 20.331408, 13.615671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.819748, 20.245470, 13.451636>,  <5.032479, 20.193907, 13.353215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.819748, 20.245470, 13.451636>,  <4.465196, 20.331408, 13.615671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.819748, 20.245470, 13.451636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311152, 0.932364, 0.184072,
		0.342803, -0.290757, 0.893279,
		0.886381, -0.214845, -0.410086,
		5.085662, 20.181017, 13.328610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.026040, 20.499752, 14.152552>,  <4.465196, 20.331408, 13.615671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.026040, 20.499752, 14.152552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.221450, 20.481529, 13.804008>,  <5.338696, 20.470596, 13.594881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.221450, 20.481529, 13.804008>,  <5.026040, 20.499752, 14.152552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.221450, 20.481529, 13.804008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558896, 0.783221, 0.272396,
		0.670058, -0.620072, 0.408085,
		0.488525, -0.045556, -0.871360,
		5.368007, 20.467863, 13.542600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.780626, 20.652618, 14.221742>,  <5.026040, 20.499752, 14.152552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.780626, 20.652618, 14.221742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.722637, 20.717503, 13.831322>,  <5.687844, 20.756433, 13.597070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.722637, 20.717503, 13.831322>,  <5.780626, 20.652618, 14.221742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.722637, 20.717503, 13.831322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543756, 0.837211, 0.058372,
		0.826627, -0.522270, -0.209574,
		-0.144971, 0.162209, -0.976049,
		5.679146, 20.766165, 13.538507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.479847, 20.782181, 13.834394>,  <5.780626, 20.652618, 14.221742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.479847, 20.782181, 13.834394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.173774, 20.945301, 13.635118>,  <5.990130, 21.043173, 13.515552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.173774, 20.945301, 13.635118>,  <6.479847, 20.782181, 13.834394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.173774, 20.945301, 13.635118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488340, 0.871896, -0.036355,
		0.419547, -0.271106, -0.866304,
		-0.765183, 0.407798, -0.498193,
		5.944220, 21.067640, 13.485660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.791573, 21.117273, 13.325206>,  <6.479847, 20.782181, 13.834394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.791573, 21.117273, 13.325206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.429269, 21.285913, 13.307970>,  <6.211887, 21.387096, 13.297628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.429269, 21.285913, 13.307970>,  <6.791573, 21.117273, 13.325206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.429269, 21.285913, 13.307970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422135, 0.906525, -0.003769,
		0.037472, -0.021604, -0.999064,
		-0.905758, 0.421599, -0.043089,
		6.157542, 21.412394, 13.295043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.833466, 21.633631, 12.814654>,  <6.791573, 21.117273, 13.325206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.833466, 21.633631, 12.814654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.509364, 21.743345, 13.021827>,  <6.314902, 21.809174, 13.146130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.509364, 21.743345, 13.021827>,  <6.833466, 21.633631, 12.814654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.509364, 21.743345, 13.021827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237887, 0.961571, -0.137081,
		-0.535626, 0.012139, -0.844368,
		-0.810256, 0.274288, 0.517931,
		6.266287, 21.825632, 13.177206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.496177, 22.041279, 12.372106>,  <6.833466, 21.633631, 12.814654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.496177, 22.041279, 12.372106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.388976, 22.140778, 12.744407>,  <6.324656, 22.200478, 12.967787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.388976, 22.140778, 12.744407>,  <6.496177, 22.041279, 12.372106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.388976, 22.140778, 12.744407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212823, 0.957512, -0.194619,
		-0.939618, 0.145927, -0.309554,
		-0.268002, 0.248748, 0.930752,
		6.308576, 22.215403, 13.023632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.056478, 22.622835, 12.303192>,  <6.496177, 22.041279, 12.372106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.056478, 22.622835, 12.303192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.194799, 22.617476, 12.678476>,  <6.277792, 22.614260, 12.903647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.194799, 22.617476, 12.678476>,  <6.056478, 22.622835, 12.303192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.194799, 22.617476, 12.678476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012809, 0.999872, 0.009560,
		-0.938220, 0.008712, 0.345930,
		0.345802, -0.013401, 0.938212,
		6.298540, 22.613455, 12.959940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.666176, 23.164101, 12.609639>,  <6.056478, 22.622835, 12.303192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.666176, 23.164101, 12.609639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.967762, 23.107002, 12.866127>,  <6.148713, 23.072742, 13.020020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.967762, 23.107002, 12.866127>,  <5.666176, 23.164101, 12.609639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.967762, 23.107002, 12.866127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143053, 0.988358, 0.051817,
		-0.641152, 0.052660, 0.765605,
		0.753963, -0.142745, 0.641220,
		6.193951, 23.064178, 13.058493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.637918, 23.737123, 12.998312>,  <5.666176, 23.164101, 12.609639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.637918, 23.737123, 12.998312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.006219, 23.607105, 13.084620>,  <6.227200, 23.529095, 13.136406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.006219, 23.607105, 13.084620>,  <5.637918, 23.737123, 12.998312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.006219, 23.607105, 13.084620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312951, 0.945587, 0.089029,
		-0.232970, -0.014448, 0.972377,
		0.920753, -0.325048, 0.215772,
		6.282445, 23.509590, 13.149352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.714171, 24.060366, 13.698074>,  <5.637918, 23.737123, 12.998312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.714171, 24.060366, 13.698074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.036433, 23.957834, 13.484452>,  <6.229791, 23.896317, 13.356278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.036433, 23.957834, 13.484452>,  <5.714171, 24.060366, 13.698074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.036433, 23.957834, 13.484452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263076, 0.962574, -0.065132,
		0.530764, -0.088024, 0.842936,
		0.805655, -0.256326, -0.534056,
		6.278130, 23.880936, 13.324235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.420576, 24.307835, 14.031047>,  <5.714171, 24.060366, 13.698074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.420576, 24.307835, 14.031047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.409094, 24.304089, 13.631229>,  <6.402205, 24.301842, 13.391338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.409094, 24.304089, 13.631229>,  <6.420576, 24.307835, 14.031047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.409094, 24.304089, 13.631229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119760, 0.992721, -0.012741,
		0.992388, -0.120071, -0.027373,
		-0.028704, -0.009366, -0.999544,
		6.400483, 24.301279, 13.331367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.005320, 24.675415, 13.603744>,  <6.420576, 24.307835, 14.031047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.005320, 24.675415, 13.603744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.689095, 24.654758, 13.359663>,  <6.499360, 24.642365, 13.213215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.689095, 24.654758, 13.359663>,  <7.005320, 24.675415, 13.603744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.689095, 24.654758, 13.359663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000996, 0.996545, -0.083048,
		0.612381, -0.065047, -0.787882,
		-0.790562, -0.051642, -0.610201,
		6.451926, 24.639265, 13.176602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.930600, 25.399643, 13.240636>,  <7.005320, 24.675415, 13.603744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.930600, 25.399643, 13.240636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.611131, 25.195074, 13.113787>,  <6.419449, 25.072332, 13.037677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.611131, 25.195074, 13.113787>,  <6.930600, 25.399643, 13.240636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.611131, 25.195074, 13.113787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482343, -0.228964, -0.845530,
		0.359813, -0.828265, 0.429548,
		-0.798674, -0.511422, -0.317124,
		6.371529, 25.041647, 13.018650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.579036, 25.372877, 13.657309>,  <6.930600, 25.399643, 13.240636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.579036, 25.372877, 13.657309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.434394, 25.572716, 13.972178>,  <7.347609, 25.692619, 14.161100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.434394, 25.572716, 13.972178>,  <7.579036, 25.372877, 13.657309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.434394, 25.572716, 13.972178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024615, -0.849130, 0.527611,
		0.932006, 0.171411, 0.319347,
		-0.361605, 0.499597, 0.787175,
		7.325912, 25.722595, 14.208331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.444908, 24.900337, 14.122705>,  <7.579036, 25.372877, 13.657309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.444908, 24.900337, 14.122705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.268294, 25.178087, 14.349998>,  <7.162326, 25.344738, 14.486375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.268294, 25.178087, 14.349998>,  <7.444908, 24.900337, 14.122705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.268294, 25.178087, 14.349998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314919, -0.712953, 0.626517,
		0.840163, 0.097681, 0.533465,
		-0.441534, 0.694375, 0.568235,
		7.135834, 25.386400, 14.520469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.759157, 24.883692, 14.772159>,  <7.444908, 24.900337, 14.122705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.759157, 24.883692, 14.772159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.381168, 25.007675, 14.814027>,  <7.154375, 25.082066, 14.839148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.381168, 25.007675, 14.814027>,  <7.759157, 24.883692, 14.772159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.381168, 25.007675, 14.814027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170845, -0.740392, 0.650101,
		0.279000, 0.596444, 0.752604,
		-0.944971, 0.309957, 0.104670,
		7.097677, 25.100662, 14.845428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.566920, 24.878254, 15.437367>,  <7.759157, 24.883692, 14.772159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.566920, 24.878254, 15.437367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.188321, 24.864908, 15.308977>,  <6.961161, 24.856901, 15.231943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.188321, 24.864908, 15.308977>,  <7.566920, 24.878254, 15.437367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.188321, 24.864908, 15.308977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113574, -0.896564, 0.428105,
		-0.302058, 0.441656, 0.844808,
		-0.946499, -0.033364, -0.320976,
		6.904371, 24.854898, 15.212685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.022857, 24.461149, 15.784858>,  <7.566920, 24.878254, 15.437367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.022857, 24.461149, 15.784858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.215364, 24.460627, 16.135487>,  <7.330868, 24.460312, 16.345863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.215364, 24.460627, 16.135487>,  <7.022857, 24.461149, 15.784858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.215364, 24.460627, 16.135487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342001, -0.921028, 0.186395,
		0.807104, -0.389495, -0.443708,
		0.481267, -0.001308, 0.876573,
		7.359744, 24.460234, 16.398458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.597412, 23.870562, 15.806443>,  <7.022857, 24.461149, 15.784858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.597412, 23.870562, 15.806443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.394093, 23.957741, 16.139702>,  <7.272101, 24.010048, 16.339657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.394093, 23.957741, 16.139702>,  <7.597412, 23.870562, 15.806443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.394093, 23.957741, 16.139702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361655, -0.932024, 0.023171,
		0.781562, -0.289533, 0.552567,
		-0.508297, 0.217948, 0.833146,
		7.241603, 24.023125, 16.389647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.793236, 23.309948, 16.429794>,  <7.597412, 23.870562, 15.806443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.793236, 23.309948, 16.429794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.432877, 23.483547, 16.431969>,  <7.216661, 23.587706, 16.433273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.432877, 23.483547, 16.431969>,  <7.793236, 23.309948, 16.429794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.432877, 23.483547, 16.431969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432671, -0.898996, 0.067833,
		0.034324, 0.058760, 0.997682,
		-0.900898, 0.433996, 0.005434,
		7.162607, 23.613747, 16.433599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.390458, 23.050018, 16.927204>,  <7.793236, 23.309948, 16.429794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.390458, 23.050018, 16.927204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.157144, 23.156885, 16.620375>,  <7.017156, 23.221004, 16.436277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.157144, 23.156885, 16.620375>,  <7.390458, 23.050018, 16.927204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.157144, 23.156885, 16.620375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359271, -0.931819, -0.051356,
		-0.728494, 0.245632, 0.639500,
		-0.583284, 0.267167, -0.767074,
		6.982159, 23.237036, 16.390253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.706891, 22.842270, 17.090815>,  <7.390458, 23.050018, 16.927204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.706891, 22.842270, 17.090815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.759149, 22.834551, 16.694319>,  <6.790504, 22.829920, 16.456421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.759149, 22.834551, 16.694319>,  <6.706891, 22.842270, 17.090815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.759149, 22.834551, 16.694319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172870, -0.984938, -0.003610,
		-0.976242, 0.171827, -0.132013,
		0.130645, -0.019297, -0.991242,
		6.798342, 22.828762, 16.396946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.173827, 22.490564, 16.935051>,  <6.706891, 22.842270, 17.090815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.173827, 22.490564, 16.935051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.412933, 22.468122, 16.615170>,  <6.556397, 22.454657, 16.423241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.412933, 22.468122, 16.615170>,  <6.173827, 22.490564, 16.935051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.412933, 22.468122, 16.615170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136866, -0.990045, -0.032844,
		-0.789900, 0.129086, -0.599495,
		0.597767, -0.056107, -0.799704,
		6.592263, 22.451290, 16.375257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.881225, 21.975616, 16.456800>,  <6.173827, 22.490564, 16.935051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.881225, 21.975616, 16.456800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.266847, 22.014975, 16.358072>,  <6.498219, 22.038589, 16.298836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.266847, 22.014975, 16.358072>,  <5.881225, 21.975616, 16.456800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.266847, 22.014975, 16.358072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082251, -0.993792, -0.074911,
		-0.252657, 0.051917, -0.966162,
		0.964054, 0.098394, -0.246819,
		6.556063, 22.044493, 16.284027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.936806, 21.560926, 15.945687>,  <5.881225, 21.975616, 16.456800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.936806, 21.560926, 15.945687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.303603, 21.608667, 16.097940>,  <6.523681, 21.637312, 16.189293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.303603, 21.608667, 16.097940>,  <5.936806, 21.560926, 15.945687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.303603, 21.608667, 16.097940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292157, -0.850628, -0.437123,
		0.271606, 0.512043, -0.814888,
		0.916992, 0.119350, 0.380633,
		6.578701, 21.644472, 16.212130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.319179, 21.382101, 15.424391>,  <5.936806, 21.560926, 15.945687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.319179, 21.382101, 15.424391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.581919, 21.336634, 15.722552>,  <6.739563, 21.309353, 15.901449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.581919, 21.336634, 15.722552>,  <6.319179, 21.382101, 15.424391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.581919, 21.336634, 15.722552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238455, -0.906522, -0.348363,
		0.715323, 0.406567, -0.568345,
		0.656850, -0.113667, 0.745404,
		6.778974, 21.302534, 15.946174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.939438, 21.252029, 15.050006>,  <6.319179, 21.382101, 15.424391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.939438, 21.252029, 15.050006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.995766, 21.115780, 15.421844>,  <7.029563, 21.034031, 15.644946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.995766, 21.115780, 15.421844>,  <6.939438, 21.252029, 15.050006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.995766, 21.115780, 15.421844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566554, -0.742285, -0.357812,
		0.811903, 0.577053, 0.088452,
		0.140819, -0.340622, 0.929595,
		7.038012, 21.013594, 15.700722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.581184, 20.988806, 15.113220>,  <6.939438, 21.252029, 15.050006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.581184, 20.988806, 15.113220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.442318, 20.797436, 15.435856>,  <7.358998, 20.682613, 15.629437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.442318, 20.797436, 15.435856>,  <7.581184, 20.988806, 15.113220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.442318, 20.797436, 15.435856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287642, -0.872950, -0.393981,
		0.892602, 0.095232, 0.440672,
		-0.347165, -0.478424, 0.806589,
		7.338168, 20.653908, 15.677833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.080774, 20.523357, 15.326000>,  <7.581184, 20.988806, 15.113220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.080774, 20.523357, 15.326000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.726429, 20.389265, 15.454294>,  <7.513823, 20.308809, 15.531271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.726429, 20.389265, 15.454294>,  <8.080774, 20.523357, 15.326000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.726429, 20.389265, 15.454294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266362, -0.933511, -0.240016,
		0.379870, -0.127190, 0.916254,
		-0.885861, -0.335230, 0.320735,
		7.460671, 20.288696, 15.550514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.148952, 19.946407, 15.603013>,  <8.080774, 20.523357, 15.326000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.148952, 19.946407, 15.603013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.755556, 19.895926, 15.551135>,  <7.519518, 19.865637, 15.520008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.755556, 19.895926, 15.551135>,  <8.148952, 19.946407, 15.603013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.755556, 19.895926, 15.551135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163451, -0.927092, -0.337319,
		-0.077669, -0.352948, 0.932414,
		-0.983489, -0.126204, -0.129696,
		7.460509, 19.858065, 15.512226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.950356, 19.248470, 15.817670>,  <8.148952, 19.946407, 15.603013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.950356, 19.248470, 15.817670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.638565, 19.358759, 15.592673>,  <7.451491, 19.424932, 15.457675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.638565, 19.358759, 15.592673>,  <7.950356, 19.248470, 15.817670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.638565, 19.358759, 15.592673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097686, -0.940443, -0.325613,
		-0.618769, -0.198859, 0.759987,
		-0.779476, 0.275719, -0.562491,
		7.404722, 19.441475, 15.423926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.512395, 18.718681, 15.961663>,  <7.950356, 19.248470, 15.817670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.512395, 18.718681, 15.961663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.358190, 18.870083, 15.625065>,  <7.265667, 18.960924, 15.423106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.358190, 18.870083, 15.625065>,  <7.512395, 18.718681, 15.961663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.358190, 18.870083, 15.625065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232440, -0.922417, -0.308412,
		-0.892945, 0.076701, 0.443582,
		-0.385513, 0.378502, -0.841496,
		7.242536, 18.983633, 15.372616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.828395, 18.507631, 15.961654>,  <7.512395, 18.718681, 15.961663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.828395, 18.507631, 15.961654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.952619, 18.578880, 15.588168>,  <7.027153, 18.621630, 15.364077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.952619, 18.578880, 15.588168>,  <6.828395, 18.507631, 15.961654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.952619, 18.578880, 15.588168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152206, -0.960292, -0.233820,
		-0.938288, 0.214732, -0.271118,
		0.310561, 0.178125, -0.933715,
		7.045787, 18.632318, 15.308054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.323737, 18.152269, 15.533377>,  <6.828395, 18.507631, 15.961654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.323737, 18.152269, 15.533377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.651936, 18.200827, 15.309932>,  <6.848855, 18.229961, 15.175865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.651936, 18.200827, 15.309932>,  <6.323737, 18.152269, 15.533377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.651936, 18.200827, 15.309932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214294, -0.840619, -0.497432,
		-0.529964, 0.527849, -0.663712,
		0.820498, 0.121392, -0.558612,
		6.898085, 18.237244, 15.142348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.162336, 17.979940, 14.964116>,  <6.323737, 18.152269, 15.533377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.162336, 17.979940, 14.964116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.554428, 17.971268, 14.885447>,  <6.789683, 17.966064, 14.838245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.554428, 17.971268, 14.885447>,  <6.162336, 17.979940, 14.964116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.554428, 17.971268, 14.885447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167587, -0.619401, -0.766979,
		-0.105190, 0.784775, -0.610788,
		0.980229, -0.021681, -0.196673,
		6.848497, 17.964764, 14.826445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.185287, 18.153713, 14.279437>,  <6.162336, 17.979940, 14.964116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.185287, 18.153713, 14.279437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.514660, 17.948408, 14.376199>,  <6.712284, 17.825224, 14.434256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.514660, 17.948408, 14.376199>,  <6.185287, 18.153713, 14.279437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.514660, 17.948408, 14.376199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144276, -0.601709, -0.785577,
		0.548764, 0.611969, -0.569519,
		0.823433, -0.513264, 0.241904,
		6.761690, 17.794430, 14.448770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.454063, 17.833881, 13.652812>,  <6.185287, 18.153713, 14.279437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.454063, 17.833881, 13.652812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.640351, 17.617924, 13.933275>,  <6.752123, 17.488350, 14.101553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.640351, 17.617924, 13.933275>,  <6.454063, 17.833881, 13.652812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.640351, 17.617924, 13.933275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165885, -0.831546, -0.530107,
		0.869246, 0.130569, -0.476826,
		0.465718, -0.539892, 0.701159,
		6.780066, 17.455956, 14.143622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.797936, 17.312702, 13.396200>,  <6.454063, 17.833881, 13.652812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.797936, 17.312702, 13.396200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.826890, 17.138083, 13.754906>,  <6.844262, 17.033312, 13.970129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.826890, 17.138083, 13.754906>,  <6.797936, 17.312702, 13.396200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.826890, 17.138083, 13.754906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068017, -0.899191, -0.432239,
		0.995055, -0.029707, -0.094780,
		0.072385, -0.436548, 0.896765,
		6.848606, 17.007118, 14.023935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.297380, 16.665192, 13.307735>,  <6.797936, 17.312702, 13.396200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.297380, 16.665192, 13.307735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.104220, 16.618914, 13.654935>,  <6.988325, 16.591146, 13.863255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.104220, 16.618914, 13.654935>,  <7.297380, 16.665192, 13.307735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.104220, 16.618914, 13.654935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018651, -0.989650, -0.142286,
		0.875477, -0.084899, 0.475743,
		-0.482899, -0.115695, 0.867999,
		6.959351, 16.584206, 13.915335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.582633, 16.119410, 13.574047>,  <7.297380, 16.665192, 13.307735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.582633, 16.119410, 13.574047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.221971, 16.134466, 13.746372>,  <7.005573, 16.143499, 13.849767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.221971, 16.134466, 13.746372>,  <7.582633, 16.119410, 13.574047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.221971, 16.134466, 13.746372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062230, -0.997130, -0.043122,
		0.427952, -0.065690, 0.901411,
		-0.901657, 0.037640, 0.430812,
		6.951474, 16.145758, 13.875616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.607553, 15.558853, 14.042919>,  <7.582633, 16.119410, 13.574047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.607553, 15.558853, 14.042919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.228446, 15.669030, 13.978582>,  <7.000982, 15.735136, 13.939981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.228446, 15.669030, 13.978582>,  <7.607553, 15.558853, 14.042919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.228446, 15.669030, 13.978582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289118, -0.954841, 0.068472,
		-0.134718, 0.111398, 0.984602,
		-0.947767, 0.275442, -0.160842,
		6.944117, 15.751663, 13.930330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.843074, 15.213138, 13.520964>,  <7.607553, 15.558853, 14.042919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.843074, 15.213138, 13.520964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.970395, 14.839446, 13.585335>,  <8.046787, 14.615231, 13.623958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.970395, 14.839446, 13.585335>,  <7.843074, 15.213138, 13.520964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.970395, 14.839446, 13.585335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947901, 0.311336, -0.067482,
		0.012940, 0.174024, 0.984656,
		0.318302, -0.934230, 0.160929,
		8.065886, 14.559177, 13.633614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.341846, 15.242831, 14.067589>,  <7.843074, 15.213138, 13.520964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.341846, 15.242831, 14.067589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.399943, 14.924779, 13.832074>,  <8.434802, 14.733948, 13.690765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.399943, 14.924779, 13.832074>,  <8.341846, 15.242831, 14.067589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.399943, 14.924779, 13.832074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910657, 0.340084, -0.234621,
		0.386792, -0.502106, 0.773487,
		0.145246, -0.795131, -0.588787,
		8.443517, 14.686239, 13.655437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.832247, 14.642991, 14.184706>,  <8.341846, 15.242831, 14.067589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.832247, 14.642991, 14.184706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.803475, 14.778849, 13.809586>,  <8.786213, 14.860363, 13.584514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.803475, 14.778849, 13.809586>,  <8.832247, 14.642991, 14.184706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.803475, 14.778849, 13.809586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882378, 0.460023, 0.098930,
		0.465011, -0.820378, -0.332783,
		-0.071927, 0.339644, -0.937800,
		8.781898, 14.880742, 13.528246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.407228, 14.435669, 13.879128>,  <8.832247, 14.642991, 14.184706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.407228, 14.435669, 13.879128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.305152, 14.734066, 13.633080>,  <9.243906, 14.913104, 13.485452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.305152, 14.734066, 13.633080>,  <9.407228, 14.435669, 13.879128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.305152, 14.734066, 13.633080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958113, 0.280629, -0.057151,
		0.129987, -0.603940, -0.786359,
		-0.255191, 0.745992, -0.615121,
		9.228595, 14.957864, 13.448545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.689731, 14.294527, 13.210464>,  <9.407228, 14.435669, 13.879128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.689731, 14.294527, 13.210464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.666615, 14.674981, 13.331791>,  <9.652745, 14.903254, 13.404588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.666615, 14.674981, 13.331791>,  <9.689731, 14.294527, 13.210464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.666615, 14.674981, 13.331791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977055, -0.008503, 0.212817,
		0.204997, 0.308659, -0.928820,
		-0.057790, 0.951135, 0.303319,
		9.649278, 14.960321, 13.422787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.066745, 14.693137, 12.765316>,  <9.689731, 14.294527, 13.210464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.066745, 14.693137, 12.765316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.041573, 14.818620, 13.144289>,  <10.026469, 14.893909, 13.371673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.041573, 14.818620, 13.144289>,  <10.066745, 14.693137, 12.765316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.041573, 14.818620, 13.144289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994389, -0.061172, 0.086305,
		0.085031, 0.947547, -0.308097,
		-0.062931, 0.313707, 0.947432,
		10.022694, 14.912732, 13.428518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.636865, 15.197493, 12.785934>,  <10.066745, 14.693137, 12.765316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.636865, 15.197493, 12.785934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.584733, 15.069071, 13.161155>,  <10.553454, 14.992018, 13.386287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.584733, 15.069071, 13.161155>,  <10.636865, 15.197493, 12.785934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.584733, 15.069071, 13.161155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991461, -0.038023, 0.124736,
		-0.004380, 0.946297, 0.323268,
		-0.130329, -0.321054, 0.938050,
		10.545634, 14.972754, 13.442570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.124759, 15.521381, 13.199875>,  <10.636865, 15.197493, 12.785934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.124759, 15.521381, 13.199875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.057353, 15.158387, 13.353796>,  <11.016910, 14.940591, 13.446149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.057353, 15.158387, 13.353796>,  <11.124759, 15.521381, 13.199875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.057353, 15.158387, 13.353796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968931, -0.080802, 0.233762,
		-0.181043, 0.412239, 0.892907,
		-0.168515, -0.907486, 0.384802,
		11.006799, 14.886142, 13.469236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.512467, 15.572852, 13.875762>,  <11.124759, 15.521381, 13.199875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.512467, 15.572852, 13.875762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.798300, 15.424932, 14.113290>,  <11.969799, 15.336179, 14.255807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.798300, 15.424932, 14.113290>,  <11.512467, 15.572852, 13.875762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.798300, 15.424932, 14.113290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629067, 0.031650, 0.776707,
		-0.306023, -0.928571, -0.210014,
		0.714580, -0.369803, 0.593819,
		12.012674, 15.313992, 14.291435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.184999, 15.080663, 14.396701>,  <11.512467, 15.572852, 13.875762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.184999, 15.080663, 14.396701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.534328, 15.208387, 14.543859>,  <11.743926, 15.285022, 14.632154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.534328, 15.208387, 14.543859>,  <11.184999, 15.080663, 14.396701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.534328, 15.208387, 14.543859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385043, -0.010151, 0.922843,
		0.298410, -0.947595, 0.114084,
		0.873323, 0.319313, 0.367894,
		11.796326, 15.304181, 14.654227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.398681, 14.554258, 14.881005>,  <11.184999, 15.080663, 14.396701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.398681, 14.554258, 14.881005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.583189, 14.897984, 14.969378>,  <11.693894, 15.104218, 15.022402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.583189, 14.897984, 14.969378>,  <11.398681, 14.554258, 14.881005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.583189, 14.897984, 14.969378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383623, -0.031370, 0.922957,
		0.800039, -0.510487, 0.315182,
		0.461270, 0.859313, 0.220932,
		11.721570, 15.155777, 15.035658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.438171, 14.407144, 15.551146>,  <11.398681, 14.554258, 14.881005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.438171, 14.407144, 15.551146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.562145, 14.787408, 15.556607>,  <11.636529, 15.015566, 15.559884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.562145, 14.787408, 15.556607>,  <11.438171, 14.407144, 15.551146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.562145, 14.787408, 15.556607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232159, 0.061747, 0.970716,
		0.921978, -0.304028, 0.239841,
		0.309934, 0.950660, 0.013654,
		11.655126, 15.072606, 15.560703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.979588, 14.520228, 15.899028>,  <11.438171, 14.407144, 15.551146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.979588, 14.520228, 15.899028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.818249, 14.886174, 15.906310>,  <11.721445, 15.105742, 15.910680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.818249, 14.886174, 15.906310>,  <11.979588, 14.520228, 15.899028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.818249, 14.886174, 15.906310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081498, -0.055735, 0.995114,
		0.911410, 0.399894, 0.097040,
		-0.403348, 0.914865, 0.018207,
		11.697245, 15.160634, 15.911772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.245447, 14.846070, 16.525785>,  <11.979588, 14.520228, 15.899028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.245447, 14.846070, 16.525785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.929339, 15.063950, 16.413515>,  <11.739675, 15.194677, 16.346153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.929339, 15.063950, 16.413515>,  <12.245447, 14.846070, 16.525785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.929339, 15.063950, 16.413515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266352, 0.107160, 0.957900,
		0.551844, 0.831758, 0.060396,
		-0.790269, 0.544698, -0.280676,
		11.692259, 15.227359, 16.329311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.101727, 15.302053, 17.102390>,  <12.245447, 14.846070, 16.525785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.101727, 15.302053, 17.102390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.760929, 15.343935, 16.897202>,  <11.556450, 15.369063, 16.774088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.760929, 15.343935, 16.897202>,  <12.101727, 15.302053, 17.102390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.760929, 15.343935, 16.897202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521631, -0.086030, 0.848823,
		0.044744, 0.990775, 0.127913,
		-0.851997, 0.104703, -0.512970,
		11.505330, 15.375346, 16.743311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.777992, 15.863051, 17.370966>,  <12.101727, 15.302053, 17.102390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.777992, 15.863051, 17.370966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.475859, 15.647348, 17.222012>,  <11.294579, 15.517927, 17.132639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.475859, 15.647348, 17.222012>,  <11.777992, 15.863051, 17.370966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.475859, 15.647348, 17.222012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376565, -0.107919, 0.920083,
		-0.536349, 0.835198, -0.121550,
		-0.755334, -0.539257, -0.372388,
		11.249259, 15.485571, 17.110294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.268050, 16.043976, 17.858324>,  <11.777992, 15.863051, 17.370966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.268050, 16.043976, 17.858324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.104445, 15.737782, 17.659630>,  <11.006283, 15.554067, 17.540413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.104445, 15.737782, 17.659630>,  <11.268050, 16.043976, 17.858324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.104445, 15.737782, 17.659630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548667, -0.228671, 0.804160,
		-0.729160, 0.601454, -0.326465,
		-0.409012, -0.765482, -0.496736,
		10.981742, 15.508138, 17.510609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.534048, 16.106640, 17.997454>,  <11.268050, 16.043976, 17.858324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.534048, 16.106640, 17.997454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.596931, 15.724148, 17.898733>,  <10.634662, 15.494653, 17.839500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.596931, 15.724148, 17.898733>,  <10.534048, 16.106640, 17.997454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.596931, 15.724148, 17.898733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374079, -0.288946, 0.881235,
		-0.913975, -0.046214, -0.403130,
		0.157208, -0.956229, -0.246802,
		10.644094, 15.437279, 17.824692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.921793, 15.817567, 18.279642>,  <10.534048, 16.106640, 17.997454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.921793, 15.817567, 18.279642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.192793, 15.530523, 18.215105>,  <10.355392, 15.358297, 18.176384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.192793, 15.530523, 18.215105>,  <9.921793, 15.817567, 18.279642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.192793, 15.530523, 18.215105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168728, -0.365138, 0.915536,
		-0.715909, -0.593052, -0.368461,
		0.677499, -0.717609, -0.161341,
		10.396043, 15.315241, 18.166702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.653545, 15.303054, 18.634678>,  <9.921793, 15.817567, 18.279642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.653545, 15.303054, 18.634678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.030718, 15.182171, 18.578751>,  <10.257022, 15.109641, 18.545195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.030718, 15.182171, 18.578751>,  <9.653545, 15.303054, 18.634678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.030718, 15.182171, 18.578751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039384, -0.518172, 0.854369,
		-0.330646, -0.800106, -0.500503,
		0.942933, -0.302206, -0.139820,
		10.313598, 15.091509, 18.536804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.600562, 14.657207, 18.773155>,  <9.653545, 15.303054, 18.634678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.600562, 14.657207, 18.773155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.991021, 14.726516, 18.825481>,  <10.225297, 14.768101, 18.856878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.991021, 14.726516, 18.825481>,  <9.600562, 14.657207, 18.773155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.991021, 14.726516, 18.825481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019394, -0.530543, 0.847436,
		0.216242, -0.829759, -0.514528,
		0.976147, 0.173272, 0.130818,
		10.283865, 14.778498, 18.864727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.950140, 13.989680, 18.863844>,  <9.600562, 14.657207, 18.773155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.950140, 13.989680, 18.863844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.191396, 14.256312, 19.039066>,  <10.336149, 14.416291, 19.144199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.191396, 14.256312, 19.039066>,  <9.950140, 13.989680, 18.863844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.191396, 14.256312, 19.039066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013011, -0.540898, 0.840987,
		0.797529, -0.512933, -0.317565,
		0.603141, 0.666580, 0.438055,
		10.372338, 14.456286, 19.170483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.302244, 13.494185, 19.262215>,  <9.950140, 13.989680, 18.863844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.302244, 13.494185, 19.262215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.340880, 13.867747, 19.399906>,  <10.364062, 14.091885, 19.482521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.340880, 13.867747, 19.399906>,  <10.302244, 13.494185, 19.262215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.340880, 13.867747, 19.399906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088140, -0.336461, 0.937564,
		0.991414, -0.120901, 0.049815,
		0.096591, 0.933904, 0.344228,
		10.369858, 14.147919, 19.503174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.794308, 13.388226, 19.742575>,  <10.302244, 13.494185, 19.262215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.794308, 13.388226, 19.742575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.598464, 13.726553, 19.827307>,  <10.480958, 13.929549, 19.878145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.598464, 13.726553, 19.827307>,  <10.794308, 13.388226, 19.742575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.598464, 13.726553, 19.827307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121459, -0.306729, 0.944016,
		0.863441, 0.436471, 0.252910,
		-0.489610, 0.845819, 0.211829,
		10.451581, 13.980299, 19.890856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.008209, 13.597319, 20.479105>,  <10.794308, 13.388226, 19.742575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.008209, 13.597319, 20.479105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.648191, 13.764118, 20.428459>,  <10.432180, 13.864198, 20.398071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.648191, 13.764118, 20.428459>,  <11.008209, 13.597319, 20.479105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.648191, 13.764118, 20.428459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299269, -0.380212, 0.875144,
		0.316794, 0.825561, 0.467003,
		-0.900045, 0.416999, -0.126616,
		10.378178, 13.889218, 20.390474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.947171, 13.989001, 21.141777>,  <11.008209, 13.597319, 20.479105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.947171, 13.989001, 21.141777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.589061, 13.934146, 20.972225>,  <10.374194, 13.901233, 20.870495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.589061, 13.934146, 20.972225>,  <10.947171, 13.989001, 21.141777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.589061, 13.934146, 20.972225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397510, -0.183707, 0.899020,
		-0.201160, 0.973368, 0.109954,
		-0.895277, -0.137139, -0.423878,
		10.320477, 13.893004, 20.845062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.479314, 14.376704, 21.640236>,  <10.947171, 13.989001, 21.141777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.479314, 14.376704, 21.640236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.246188, 14.129944, 21.428667>,  <10.106313, 13.981888, 21.301725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.246188, 14.129944, 21.428667>,  <10.479314, 14.376704, 21.640236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.246188, 14.129944, 21.428667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563263, -0.162472, 0.810147,
		-0.585717, 0.770088, -0.252787,
		-0.582813, -0.616902, -0.528924,
		10.071344, 13.944873, 21.269989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.856810, 14.640704, 21.829762>,  <10.479314, 14.376704, 21.640236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.856810, 14.640704, 21.829762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.815805, 14.270835, 21.683081>,  <9.791203, 14.048913, 21.595072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.815805, 14.270835, 21.683081>,  <9.856810, 14.640704, 21.829762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.815805, 14.270835, 21.683081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703607, -0.193185, 0.683825,
		-0.703156, 0.328114, -0.630803,
		-0.102511, -0.924673, -0.366703,
		9.785052, 13.993433, 21.573071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.145571, 14.319927, 21.984461>,  <9.856810, 14.640704, 21.829762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.145571, 14.319927, 21.984461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.307290, 13.964930, 21.896011>,  <9.404322, 13.751931, 21.842941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.307290, 13.964930, 21.896011>,  <9.145571, 14.319927, 21.984461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.307290, 13.964930, 21.896011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508653, -0.419103, 0.752080,
		-0.760141, -0.191590, -0.620870,
		0.404299, -0.887494, -0.221124,
		9.428580, 13.698681, 21.829674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.633573, 13.855971, 22.078831>,  <9.145571, 14.319927, 21.984461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.633573, 13.855971, 22.078831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.951564, 13.613917, 22.061764>,  <9.142359, 13.468685, 22.051523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.951564, 13.613917, 22.061764>,  <8.633573, 13.855971, 22.078831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.951564, 13.613917, 22.061764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419417, -0.599088, 0.682043,
		-0.438291, -0.524313, -0.730066,
		0.794978, -0.605136, -0.042669,
		9.190057, 13.432377, 22.048964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.394463, 13.173236, 21.962595>,  <8.633573, 13.855971, 22.078831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.394463, 13.173236, 21.962595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.751253, 13.126617, 22.137316>,  <8.965327, 13.098646, 22.242149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.751253, 13.126617, 22.137316>,  <8.394463, 13.173236, 21.962595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.751253, 13.126617, 22.137316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426466, -0.537552, 0.727437,
		0.150025, -0.835138, -0.529186,
		0.891976, -0.116546, 0.436804,
		9.018846, 13.091654, 22.268356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.291246, 12.528864, 22.321592>,  <8.394463, 13.173236, 21.962595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.291246, 12.528864, 22.321592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.611389, 12.681113, 22.506874>,  <8.803474, 12.772463, 22.618042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.611389, 12.681113, 22.506874>,  <8.291246, 12.528864, 22.321592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.611389, 12.681113, 22.506874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301924, -0.411595, 0.859902,
		0.517951, -0.828079, -0.214503,
		0.800355, 0.380624, 0.463202,
		8.851496, 12.795300, 22.645834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.632153, 11.993689, 22.718889>,  <8.291246, 12.528864, 22.321592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.632153, 11.993689, 22.718889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.743420, 12.324636, 22.914064>,  <8.810180, 12.523205, 23.031170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.743420, 12.324636, 22.914064>,  <8.632153, 11.993689, 22.718889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.743420, 12.324636, 22.914064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144176, -0.466267, 0.872816,
		0.949651, -0.313137, -0.010413,
		0.278167, 0.827369, 0.487938,
		8.826870, 12.572847, 23.060446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.935627, 11.771680, 23.380295>,  <8.632153, 11.993689, 22.718889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.935627, 11.771680, 23.380295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.901000, 12.166498, 23.434330>,  <8.880223, 12.403389, 23.466751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.901000, 12.166498, 23.434330>,  <8.935627, 11.771680, 23.380295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.901000, 12.166498, 23.434330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070797, -0.129158, 0.989093,
		0.993727, 0.095188, -0.058699,
		-0.086568, 0.987045, 0.135086,
		8.875030, 12.462612, 23.474855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.443088, 11.929942, 23.790966>,  <8.935627, 11.771680, 23.380295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.443088, 11.929942, 23.790966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.198455, 12.241748, 23.845112>,  <9.051675, 12.428831, 23.877600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.198455, 12.241748, 23.845112>,  <9.443088, 11.929942, 23.790966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.198455, 12.241748, 23.845112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093482, -0.098699, 0.990717,
		0.785639, 0.618559, -0.012508,
		-0.611582, 0.779515, 0.135366,
		9.014980, 12.475602, 23.885721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.774973, 12.275270, 24.391745>,  <9.443088, 11.929942, 23.790966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.774973, 12.275270, 24.391745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.397170, 12.404634, 24.368721>,  <9.170488, 12.482253, 24.354908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.397170, 12.404634, 24.368721>,  <9.774973, 12.275270, 24.391745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.397170, 12.404634, 24.368721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111879, -0.151966, 0.982033,
		0.308852, 0.933977, 0.179716,
		-0.944507, 0.323410, -0.057557,
		9.113818, 12.501657, 24.351454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.719260, 12.705231, 24.850544>,  <9.774973, 12.275270, 24.391745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.719260, 12.705231, 24.850544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.343284, 12.597668, 24.766451>,  <9.117698, 12.533130, 24.715996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.343284, 12.597668, 24.766451>,  <9.719260, 12.705231, 24.850544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.343284, 12.597668, 24.766451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120476, -0.314911, 0.941444,
		-0.319367, 0.910231, 0.263601,
		-0.939942, -0.268908, -0.210233,
		9.061301, 12.516995, 24.703381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.315604, 12.970255, 25.464827>,  <9.719260, 12.705231, 24.850544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.315604, 12.970255, 25.464827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.093578, 12.682548, 25.297707>,  <8.960362, 12.509923, 25.197435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.093578, 12.682548, 25.297707>,  <9.315604, 12.970255, 25.464827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.093578, 12.682548, 25.297707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190264, -0.598749, 0.778010,
		-0.809754, 0.352355, 0.469196,
		-0.555066, -0.719268, -0.417798,
		8.927058, 12.466767, 25.172367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.876767, 12.702785, 25.974756>,  <9.315604, 12.970255, 25.464827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.876767, 12.702785, 25.974756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.903346, 12.425482, 25.687708>,  <8.919293, 12.259100, 25.515480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.903346, 12.425482, 25.687708>,  <8.876767, 12.702785, 25.974756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.903346, 12.425482, 25.687708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044274, -0.720548, 0.691989,
		-0.996807, -0.014209, -0.078572,
		0.066448, -0.693259, -0.717619,
		8.923281, 12.217505, 25.472422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.308871, 12.366175, 26.091595>,  <8.876767, 12.702785, 25.974756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.308871, 12.366175, 26.091595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.548651, 12.118371, 25.888865>,  <8.692518, 11.969689, 25.767227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.548651, 12.118371, 25.888865>,  <8.308871, 12.366175, 26.091595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.548651, 12.118371, 25.888865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048707, -0.660262, 0.749454,
		-0.798930, -0.424574, -0.425968,
		0.599449, -0.619508, -0.506823,
		8.728485, 11.932518, 25.736818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.045233, 11.682367, 26.269663>,  <8.308871, 12.366175, 26.091595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.045233, 11.682367, 26.269663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.410213, 11.621959, 26.117542>,  <8.629200, 11.585713, 26.026270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.410213, 11.621959, 26.117542>,  <8.045233, 11.682367, 26.269663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.410213, 11.621959, 26.117542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096104, -0.824311, 0.557921,
		-0.397745, -0.545623, -0.737627,
		0.912449, -0.151021, -0.380302,
		8.683948, 11.576653, 26.003452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.141097, 10.912450, 26.028246>,  <8.045233, 11.682367, 26.269663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.141097, 10.912450, 26.028246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.497908, 11.084839, 26.082727>,  <8.711994, 11.188272, 26.115417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.497908, 11.084839, 26.082727>,  <8.141097, 10.912450, 26.028246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.497908, 11.084839, 26.082727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255826, -0.729855, 0.633928,
		0.372617, -0.530635, -0.761304,
		0.892026, 0.430974, 0.136206,
		8.765515, 11.214131, 26.123589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.610943, 10.400467, 25.892038>,  <8.141097, 10.912450, 26.028246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.610943, 10.400467, 25.892038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.797873, 10.662434, 26.129589>,  <8.910032, 10.819613, 26.272120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.797873, 10.662434, 26.129589>,  <8.610943, 10.400467, 25.892038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.797873, 10.662434, 26.129589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330194, -0.752428, 0.569933,
		0.820108, -0.070251, -0.567880,
		0.467328, 0.654917, 0.593875,
		8.938072, 10.858909, 26.307753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.030006, 10.017710, 26.031448>,  <8.610943, 10.400467, 25.892038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.030006, 10.017710, 26.031448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.050307, 10.301196, 26.312916>,  <9.062488, 10.471288, 26.481796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.050307, 10.301196, 26.312916>,  <9.030006, 10.017710, 26.031448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.050307, 10.301196, 26.312916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137479, -0.702825, 0.697952,
		0.989204, 0.061316, -0.133104,
		0.050753, 0.708716, 0.703666,
		9.065533, 10.513811, 26.524015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.663321, 9.940512, 26.400871>,  <9.030006, 10.017710, 26.031448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.663321, 9.940512, 26.400871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.412576, 10.122152, 26.654118>,  <9.262129, 10.231136, 26.806065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.412576, 10.122152, 26.654118>,  <9.663321, 9.940512, 26.400871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.412576, 10.122152, 26.654118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217231, -0.678506, 0.701741,
		0.748235, 0.577427, 0.326684,
		-0.626861, 0.454102, 0.633116,
		9.224518, 10.258383, 26.844053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.979575, 10.050965, 26.955862>,  <9.663321, 9.940512, 26.400871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.979575, 10.050965, 26.955862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.603225, 10.064871, 27.090647>,  <9.377415, 10.073215, 27.171516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.603225, 10.064871, 27.090647>,  <9.979575, 10.050965, 26.955862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.603225, 10.064871, 27.090647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227617, -0.671818, 0.704877,
		0.250880, 0.739901, 0.624185,
		-0.940877, 0.034764, 0.336960,
		9.320962, 10.075300, 27.191734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.103060, 9.972898, 27.666285>,  <9.979575, 10.050965, 26.955862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.103060, 9.972898, 27.666285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.711386, 9.906435, 27.619659>,  <9.476381, 9.866557, 27.591684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.711386, 9.906435, 27.619659>,  <10.103060, 9.972898, 27.666285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.711386, 9.906435, 27.619659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072871, -0.823804, 0.562172,
		-0.189435, 0.541976, 0.818765,
		-0.979185, -0.166159, -0.116563,
		9.417630, 9.856587, 27.584690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.731466, 9.987303, 28.358019>,  <10.103060, 9.972898, 27.666285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.731466, 9.987303, 28.358019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.472869, 9.771358, 28.142391>,  <9.317711, 9.641790, 28.013014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.472869, 9.771358, 28.142391>,  <9.731466, 9.987303, 28.358019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.472869, 9.771358, 28.142391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133455, -0.615668, 0.776623,
		-0.751157, 0.574022, 0.325977,
		-0.646493, -0.539862, -0.539070,
		9.278921, 9.609399, 27.980671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.101890, 9.870649, 28.832705>,  <9.731466, 9.987303, 28.358019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.101890, 9.870649, 28.832705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.106651, 9.592520, 28.545265>,  <9.109509, 9.425642, 28.372803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.106651, 9.592520, 28.545265>,  <9.101890, 9.870649, 28.832705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.106651, 9.592520, 28.545265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235122, -0.700445, 0.673866,
		-0.971893, 0.160936, -0.171824,
		0.011904, -0.695325, -0.718597,
		9.110223, 9.383923, 28.329685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.457413, 9.574711, 28.513571>,  <9.101890, 9.870649, 28.832705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.457413, 9.574711, 28.513571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.763354, 9.333087, 28.603111>,  <8.946919, 9.188112, 28.656836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.763354, 9.333087, 28.603111>,  <8.457413, 9.574711, 28.513571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.763354, 9.333087, 28.603111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591876, -0.521754, 0.614375,
		-0.254324, -0.602399, -0.756594,
		0.764855, -0.604060, 0.223851,
		8.992811, 9.151869, 28.670267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.213624, 8.927013, 28.565655>,  <8.457413, 9.574711, 28.513571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.213624, 8.927013, 28.565655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.556554, 8.912838, 28.771076>,  <8.762312, 8.904333, 28.894329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.556554, 8.912838, 28.771076>,  <8.213624, 8.927013, 28.565655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.556554, 8.912838, 28.771076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474177, -0.442682, 0.761044,
		0.200371, -0.895978, -0.396327,
		0.857325, -0.035438, 0.513553,
		8.813751, 8.902206, 28.925142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.313688, 8.324712, 28.899555>,  <8.213624, 8.927013, 28.565655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.313688, 8.324712, 28.899555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.497329, 8.613438, 29.106712>,  <8.607512, 8.786673, 29.231007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.497329, 8.613438, 29.106712>,  <8.313688, 8.324712, 28.899555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.497329, 8.613438, 29.106712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556260, -0.220970, 0.801092,
		0.692677, -0.655864, 0.300068,
		0.459101, 0.721814, 0.517891,
		8.635059, 8.829982, 29.262079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.143296, 7.720790, 29.225889>,  <8.313688, 8.324712, 28.899555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.143296, 7.720790, 29.225889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.002282, 7.878253, 28.886301>,  <7.917674, 7.972731, 28.682549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.002282, 7.878253, 28.886301>,  <8.143296, 7.720790, 29.225889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.002282, 7.878253, 28.886301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137851, -0.919165, -0.368962,
		-0.925590, -0.013041, 0.378304,
		-0.352535, 0.393657, -0.848972,
		7.896521, 7.996350, 28.631609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.604616, 7.260993, 29.009949>,  <8.143296, 7.720790, 29.225889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.604616, 7.260993, 29.009949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.776203, 7.461411, 28.709299>,  <7.879155, 7.581662, 28.528910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.776203, 7.461411, 28.709299>,  <7.604616, 7.260993, 29.009949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.776203, 7.461411, 28.709299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124648, -0.856942, -0.500113,
		-0.894679, 0.120843, -0.430054,
		0.428966, 0.501046, -0.751625,
		7.904892, 7.611725, 28.483812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.206768, 7.147627, 28.359528>,  <7.604616, 7.260993, 29.009949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.206768, 7.147627, 28.359528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.592288, 7.224698, 28.285812>,  <7.823600, 7.270940, 28.241583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.592288, 7.224698, 28.285812>,  <7.206768, 7.147627, 28.359528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.592288, 7.224698, 28.285812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065285, -0.840709, -0.537537,
		-0.258505, 0.506048, -0.822855,
		0.963802, 0.192676, -0.184290,
		7.881429, 7.282500, 28.230526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.211192, 7.120046, 27.663145>,  <7.206768, 7.147627, 28.359528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.211192, 7.120046, 27.663145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.561382, 7.031613, 27.835035>,  <7.771497, 6.978553, 27.938169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.561382, 7.031613, 27.835035>,  <7.211192, 7.120046, 27.663145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.561382, 7.031613, 27.835035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018996, -0.872788, -0.487729,
		0.482888, 0.435158, -0.759906,
		0.875476, -0.221083, 0.429726,
		7.824025, 6.965288, 27.963953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.724580, 7.026911, 27.155584>,  <7.211192, 7.120046, 27.663145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.724580, 7.026911, 27.155584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.774612, 6.832963, 27.501823>,  <7.804631, 6.716594, 27.709566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.774612, 6.832963, 27.501823>,  <7.724580, 7.026911, 27.155584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.774612, 6.832963, 27.501823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068427, -0.866154, -0.495071,
		0.989784, 0.121154, -0.075160,
		0.125080, -0.484870, 0.865596,
		7.812136, 6.687502, 27.761501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.985323, 6.417698, 26.949854>,  <7.724580, 7.026911, 27.155584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.985323, 6.417698, 26.949854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.931376, 6.330647, 27.336521>,  <7.899007, 6.278417, 27.568521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.931376, 6.330647, 27.336521>,  <7.985323, 6.417698, 26.949854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.931376, 6.330647, 27.336521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085258, -0.974513, -0.207496,
		0.987189, 0.054431, 0.149985,
		-0.134868, -0.217626, 0.966669,
		7.890915, 6.265360, 27.626522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.595405, 6.072049, 27.366982>,  <7.985323, 6.417698, 26.949854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.595405, 6.072049, 27.366982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.208147, 5.986304, 27.418743>,  <7.975792, 5.934857, 27.449800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.208147, 5.986304, 27.418743>,  <8.595405, 6.072049, 27.366982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.208147, 5.986304, 27.418743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181174, -0.956439, -0.228911,
		0.172835, -0.198174, 0.964808,
		-0.968145, -0.214362, 0.129403,
		7.917704, 5.921995, 27.457563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.965721, 6.670624, 27.074219>,  <8.595405, 6.072049, 27.366982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.965721, 6.670624, 27.074219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.754168, 6.966681, 27.240337>,  <8.627235, 7.144314, 27.340008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.754168, 6.966681, 27.240337>,  <8.965721, 6.670624, 27.074219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.754168, 6.966681, 27.240337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364475, 0.639995, -0.676436,
		-0.766446, -0.206391, -0.608246,
		-0.528884, 0.740141, 0.415297,
		8.595502, 7.188723, 27.364927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.579203, 7.014067, 26.461514>,  <8.965721, 6.670624, 27.074219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.579203, 7.014067, 26.461514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.753542, 7.190751, 26.775183>,  <8.858146, 7.296762, 26.963385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.753542, 7.190751, 26.775183>,  <8.579203, 7.014067, 26.461514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.753542, 7.190751, 26.775183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454671, 0.643871, -0.615390,
		-0.776730, 0.624758, 0.079798,
		0.435849, 0.441710, 0.784173,
		8.884296, 7.323264, 27.010435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.422024, 7.673624, 26.466131>,  <8.579203, 7.014067, 26.461514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.422024, 7.673624, 26.466131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.764644, 7.675385, 26.672548>,  <8.970216, 7.676442, 26.796398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.764644, 7.675385, 26.672548>,  <8.422024, 7.673624, 26.466131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.764644, 7.675385, 26.672548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402346, 0.620501, -0.673124,
		-0.323170, 0.784193, 0.529719,
		0.856550, 0.004403, 0.516045,
		9.021608, 7.676706, 26.827362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.704492, 8.427869, 26.439396>,  <8.422024, 7.673624, 26.466131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.704492, 8.427869, 26.439396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.031201, 8.221425, 26.542555>,  <9.227227, 8.097559, 26.604450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.031201, 8.221425, 26.542555>,  <8.704492, 8.427869, 26.439396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.031201, 8.221425, 26.542555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571396, 0.661675, -0.485482,
		0.079918, 0.543891, 0.835342,
		0.816774, -0.516109, 0.257897,
		9.276234, 8.066592, 26.619925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.182297, 8.980296, 26.678801>,  <8.704492, 8.427869, 26.439396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.182297, 8.980296, 26.678801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.408044, 8.658782, 26.603521>,  <9.543492, 8.465874, 26.558353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.408044, 8.658782, 26.603521>,  <9.182297, 8.980296, 26.678801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.408044, 8.658782, 26.603521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656060, 0.575078, -0.488744,
		0.501072, 0.152364, 0.851887,
		0.564369, -0.803785, -0.188196,
		9.577354, 8.417646, 26.547062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.829049, 9.225577, 26.858124>,  <9.182297, 8.980296, 26.678801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.829049, 9.225577, 26.858124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.906497, 8.924015, 26.607002>,  <9.952966, 8.743077, 26.456329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.906497, 8.924015, 26.607002>,  <9.829049, 9.225577, 26.858124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.906497, 8.924015, 26.607002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578311, 0.604621, -0.547713,
		0.792507, -0.257017, 0.553059,
		0.193620, -0.753907, -0.627803,
		9.964583, 8.697843, 26.418661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.613287, 9.192595, 26.813236>,  <9.829049, 9.225577, 26.858124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.613287, 9.192595, 26.813236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.432266, 9.039238, 26.491190>,  <10.323653, 8.947225, 26.297962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.432266, 9.039238, 26.491190>,  <10.613287, 9.192595, 26.813236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.432266, 9.039238, 26.491190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587634, 0.550882, -0.592635,
		0.670733, -0.741310, -0.024009,
		-0.452552, -0.383391, -0.805113,
		10.296500, 8.924221, 26.249657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.038821, 9.265759, 26.215179>,  <10.613287, 9.192595, 26.813236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.038821, 9.265759, 26.215179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.736166, 9.120711, 25.997553>,  <10.554573, 9.033683, 25.866978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.736166, 9.120711, 25.997553>,  <11.038821, 9.265759, 26.215179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.736166, 9.120711, 25.997553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458613, 0.298749, -0.836913,
		0.466019, -0.882755, -0.059743,
		-0.756637, -0.362618, -0.544066,
		10.509174, 9.011926, 25.834333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.360770, 8.894479, 25.608847>,  <11.038821, 9.265759, 26.215179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.360770, 8.894479, 25.608847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.979968, 8.978964, 25.520235>,  <10.751487, 9.029655, 25.467068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.979968, 8.978964, 25.520235>,  <11.360770, 8.894479, 25.608847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.979968, 8.978964, 25.520235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274881, 0.271625, -0.922312,
		-0.134631, -0.938941, -0.316646,
		-0.952006, 0.211212, -0.221528,
		10.694366, 9.042328, 25.453777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.274198, 8.595574, 24.986080>,  <11.360770, 8.894479, 25.608847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.274198, 8.595574, 24.986080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.999007, 8.883856, 25.020201>,  <10.833893, 9.056825, 25.040672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.999007, 8.883856, 25.020201>,  <11.274198, 8.595574, 24.986080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.999007, 8.883856, 25.020201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304433, 0.393290, -0.867550,
		-0.658795, -0.570884, -0.489980,
		-0.687975, 0.720704, 0.085302,
		10.792615, 9.100067, 25.045792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.983269, 8.541470, 24.363375>,  <11.274198, 8.595574, 24.986080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.983269, 8.541470, 24.363375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.903809, 8.904116, 24.512285>,  <10.856133, 9.121703, 24.601631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.903809, 8.904116, 24.512285>,  <10.983269, 8.541470, 24.363375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.903809, 8.904116, 24.512285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415709, 0.421927, -0.805707,
		-0.887538, -0.005297, -0.460704,
		-0.198651, 0.906614, 0.372275,
		10.844213, 9.176100, 24.623968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.643065, 8.886975, 23.921955>,  <10.983269, 8.541470, 24.363375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.643065, 8.886975, 23.921955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.769056, 9.210865, 24.119999>,  <10.844650, 9.405199, 24.238825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.769056, 9.210865, 24.119999>,  <10.643065, 8.886975, 23.921955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.769056, 9.210865, 24.119999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282772, 0.417911, -0.863360,
		-0.905996, 0.411942, -0.097335,
		0.314977, 0.809725, 0.495112,
		10.863549, 9.453782, 24.268532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.209616, 9.556701, 23.677429>,  <10.643065, 8.886975, 23.921955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.209616, 9.556701, 23.677429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.551991, 9.659252, 23.857046>,  <10.757417, 9.720783, 23.964815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.551991, 9.659252, 23.857046>,  <10.209616, 9.556701, 23.677429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.551991, 9.659252, 23.857046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234059, 0.582254, -0.778586,
		-0.461068, 0.771524, 0.438367,
		0.855939, 0.256378, 0.449041,
		10.808773, 9.736166, 23.991758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.161781, 10.261344, 23.642494>,  <10.209616, 9.556701, 23.677429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.161781, 10.261344, 23.642494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.544711, 10.151557, 23.678715>,  <10.774468, 10.085685, 23.700447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.544711, 10.151557, 23.678715>,  <10.161781, 10.261344, 23.642494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.544711, 10.151557, 23.678715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238695, 0.574177, -0.783164,
		0.162961, 0.771355, 0.615187,
		0.957324, -0.274467, 0.090550,
		10.831908, 10.069217, 23.705879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.485162, 10.849526, 23.353725>,  <10.161781, 10.261344, 23.642494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.485162, 10.849526, 23.353725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.756755, 10.555867, 23.352566>,  <10.919711, 10.379672, 23.351870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.756755, 10.555867, 23.352566>,  <10.485162, 10.849526, 23.353725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.756755, 10.555867, 23.352566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537642, 0.499923, -0.678983,
		0.499923, 0.459460, 0.734148,
		0.678983, -0.734148, -0.002898,
		10.960450, 10.335623, 23.351696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.026436, 11.251660, 23.325718>,  <10.485162, 10.849526, 23.353725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.026436, 11.251660, 23.325718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.157329, 10.889437, 23.217731>,  <11.235864, 10.672102, 23.152941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.157329, 10.889437, 23.217731>,  <11.026436, 11.251660, 23.325718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.157329, 10.889437, 23.217731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483374, 0.405900, -0.775625,
		0.811954, 0.123315, 0.570548,
		0.327231, -0.905560, -0.269965,
		11.255498, 10.617768, 23.136742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.683379, 11.402297, 23.113190>,  <11.026436, 11.251660, 23.325718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.683379, 11.402297, 23.113190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.602563, 11.046577, 22.949078>,  <11.554073, 10.833146, 22.850611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.602563, 11.046577, 22.949078>,  <11.683379, 11.402297, 23.113190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.602563, 11.046577, 22.949078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446813, 0.289083, -0.846634,
		0.871514, -0.354372, 0.338944,
		-0.202041, -0.889298, -0.410278,
		11.541951, 10.779788, 22.825994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.364021, 11.050047, 22.860268>,  <11.683379, 11.402297, 23.113190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.364021, 11.050047, 22.860268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.047183, 10.927990, 22.648808>,  <11.857080, 10.854756, 22.521931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.047183, 10.927990, 22.648808>,  <12.364021, 11.050047, 22.860268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.047183, 10.927990, 22.648808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475869, 0.233696, -0.847900,
		0.382274, -0.923187, -0.039902,
		-0.792095, -0.305142, -0.528652,
		11.809554, 10.836448, 22.490211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.653787, 10.566675, 22.441339>,  <12.364021, 11.050047, 22.860268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.653787, 10.566675, 22.441339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.313776, 10.692619, 22.272429>,  <12.109770, 10.768186, 22.171082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.313776, 10.692619, 22.272429>,  <12.653787, 10.566675, 22.441339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.313776, 10.692619, 22.272429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466430, 0.077444, -0.881162,
		-0.244741, -0.945973, -0.212690,
		-0.850027, 0.314861, -0.422276,
		12.058768, 10.787078, 22.145746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.659197, 10.257059, 21.723843>,  <12.653787, 10.566675, 22.441339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.659197, 10.257059, 21.723843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.406409, 10.566376, 21.703308>,  <12.254737, 10.751966, 21.690987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.406409, 10.566376, 21.703308>,  <12.659197, 10.257059, 21.723843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.406409, 10.566376, 21.703308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320135, 0.200157, -0.925986,
		-0.705782, -0.601629, -0.374051,
		-0.631969, 0.773291, -0.051336,
		12.216819, 10.798363, 21.687908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.626249, 10.401345, 21.028545>,  <12.659197, 10.257059, 21.723843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.626249, 10.401345, 21.028545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.424198, 10.713978, 21.174957>,  <12.302968, 10.901557, 21.262804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.424198, 10.713978, 21.174957>,  <12.626249, 10.401345, 21.028545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.424198, 10.713978, 21.174957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135086, 0.490488, -0.860914,
		-0.852407, -0.385425, -0.353340,
		-0.505127, 0.781581, 0.366030,
		12.272660, 10.948452, 21.284767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.114442, 10.505319, 20.518604>,  <12.626249, 10.401345, 21.028545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.114442, 10.505319, 20.518604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.145505, 10.851825, 20.716009>,  <12.164143, 11.059729, 20.834452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.145505, 10.851825, 20.716009>,  <12.114442, 10.505319, 20.518604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.145505, 10.851825, 20.716009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025934, 0.493084, -0.869595,
		-0.996643, 0.080329, 0.015825,
		0.077657, 0.866265, 0.493512,
		12.168802, 11.111704, 20.864063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.568488, 10.910556, 20.308582>,  <12.114442, 10.505319, 20.518604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.568488, 10.910556, 20.308582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.852712, 11.154906, 20.448261>,  <12.023246, 11.301517, 20.532068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.852712, 11.154906, 20.448261>,  <11.568488, 10.910556, 20.308582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.852712, 11.154906, 20.448261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024595, 0.517533, -0.855310,
		-0.703209, 0.599159, 0.382761,
		0.710558, 0.610875, 0.349197,
		12.065879, 11.338169, 20.553020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.431602, 11.506881, 19.961597>,  <11.568488, 10.910556, 20.308582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.431602, 11.506881, 19.961597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.813333, 11.560125, 20.068588>,  <12.042371, 11.592072, 20.132782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.813333, 11.560125, 20.068588>,  <11.431602, 11.506881, 19.961597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.813333, 11.560125, 20.068588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196340, 0.395384, -0.897286,
		-0.225194, 0.908819, 0.351191,
		0.954326, 0.133111, 0.267475,
		12.099630, 11.600059, 20.148830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.616008, 12.096996, 19.685749>,  <11.431602, 11.506881, 19.961597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.616008, 12.096996, 19.685749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.983645, 11.961344, 19.766006>,  <12.204227, 11.879952, 19.814161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.983645, 11.961344, 19.766006>,  <11.616008, 12.096996, 19.685749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.983645, 11.961344, 19.766006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325296, 0.365654, -0.872055,
		0.222375, 0.866768, 0.446389,
		0.919093, -0.339132, 0.200644,
		12.259374, 11.859604, 19.826200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.066230, 12.633837, 19.394255>,  <11.616008, 12.096996, 19.685749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.066230, 12.633837, 19.394255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.301049, 12.311988, 19.429939>,  <12.441940, 12.118878, 19.451349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.301049, 12.311988, 19.429939>,  <12.066230, 12.633837, 19.394255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.301049, 12.311988, 19.429939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448028, 0.231127, -0.863627,
		0.674274, 0.546959, 0.496176,
		0.587048, -0.804622, 0.089210,
		12.477163, 12.070601, 19.456703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.790866, 12.885396, 19.302172>,  <12.066230, 12.633837, 19.394255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.790866, 12.885396, 19.302172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.781719, 12.493570, 19.222240>,  <12.776231, 12.258475, 19.174282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.781719, 12.493570, 19.222240>,  <12.790866, 12.885396, 19.302172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.781719, 12.493570, 19.222240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586594, 0.148711, -0.796111,
		0.809558, -0.135423, 0.571206,
		-0.022867, -0.979564, -0.199829,
		12.774859, 12.199701, 19.162292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.438668, 12.708984, 19.232172>,  <12.790866, 12.885396, 19.302172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.438668, 12.708984, 19.232172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.230141, 12.438954, 19.023365>,  <13.105024, 12.276937, 18.898081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.230141, 12.438954, 19.023365>,  <13.438668, 12.708984, 19.232172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.230141, 12.438954, 19.023365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657165, 0.072649, -0.750237,
		0.544391, -0.734162, 0.405763,
		-0.521318, -0.675076, -0.522015,
		13.073746, 12.236432, 18.866760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.972953, 12.358279, 18.824581>,  <13.438668, 12.708984, 19.232172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.972953, 12.358279, 18.824581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.620464, 12.279430, 18.652725>,  <13.408971, 12.232121, 18.549612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.620464, 12.279430, 18.652725>,  <13.972953, 12.358279, 18.824581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.620464, 12.279430, 18.652725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391914, 0.203502, -0.897213,
		0.264297, -0.959025, -0.102073,
		-0.881221, -0.197127, -0.429641,
		13.356098, 12.220294, 18.523832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.093443, 11.958324, 18.287058>,  <13.972953, 12.358279, 18.824581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.093443, 11.958324, 18.287058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.737677, 12.116317, 18.195032>,  <13.524217, 12.211112, 18.139816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.737677, 12.116317, 18.195032>,  <14.093443, 11.958324, 18.287058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.737677, 12.116317, 18.195032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331444, 0.210672, -0.919653,
		-0.314778, -0.894208, -0.318289,
		-0.889416, 0.394981, -0.230065,
		13.470852, 12.234811, 18.126013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.936098, 11.746791, 17.626780>,  <14.093443, 11.958324, 18.287058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.936098, 11.746791, 17.626780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.664394, 12.037677, 17.666304>,  <13.501372, 12.212209, 17.690018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.664394, 12.037677, 17.666304>,  <13.936098, 11.746791, 17.626780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.664394, 12.037677, 17.666304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050061, 0.180238, -0.982348,
		-0.732189, -0.662322, -0.158834,
		-0.679259, 0.727216, 0.098812,
		13.460616, 12.255841, 17.695948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.430995, 11.554585, 17.187508>,  <13.936098, 11.746791, 17.626780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.430995, 11.554585, 17.187508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.399491, 11.952774, 17.208784>,  <13.380589, 12.191688, 17.221550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.399491, 11.952774, 17.208784>,  <13.430995, 11.554585, 17.187508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.399491, 11.952774, 17.208784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116350, 0.043812, -0.992241,
		-0.990080, -0.084338, 0.112373,
		-0.078760, 0.995474, 0.053191,
		13.375863, 12.251416, 17.224741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.876500, 11.729241, 16.836620>,  <13.430995, 11.554585, 17.187508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.876500, 11.729241, 16.836620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.027462, 12.098584, 16.864840>,  <13.118039, 12.320189, 16.881771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.027462, 12.098584, 16.864840>,  <12.876500, 11.729241, 16.836620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.027462, 12.098584, 16.864840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270398, 0.182742, -0.945246,
		-0.885692, 0.337665, 0.318642,
		0.377406, 0.923357, 0.070549,
		13.140684, 12.375591, 16.886003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.360563, 12.263903, 16.500967>,  <12.876500, 11.729241, 16.836620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.360563, 12.263903, 16.500967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.726014, 12.426167, 16.511749>,  <12.945285, 12.523524, 16.518219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.726014, 12.426167, 16.511749>,  <12.360563, 12.263903, 16.500967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.726014, 12.426167, 16.511749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058933, 0.197744, -0.978481,
		-0.402259, 0.892378, 0.204571,
		0.913627, 0.405659, 0.026954,
		13.000102, 12.547864, 16.519835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.273078, 12.825982, 16.155851>,  <12.360563, 12.263903, 16.500967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.273078, 12.825982, 16.155851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.668785, 12.768504, 16.145254>,  <12.906209, 12.734017, 16.138895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.668785, 12.768504, 16.145254>,  <12.273078, 12.825982, 16.155851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.668785, 12.768504, 16.145254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024950, 0.344790, -0.938348,
		0.143971, 0.927616, 0.344674,
		0.989267, -0.143695, -0.026495,
		12.965566, 12.725396, 16.137306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.542901, 13.447768, 16.018002>,  <12.273078, 12.825982, 16.155851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.542901, 13.447768, 16.018002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.806754, 13.174835, 15.891950>,  <12.965066, 13.011075, 15.816319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.806754, 13.174835, 15.891950>,  <12.542901, 13.447768, 16.018002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.806754, 13.174835, 15.891950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016019, 0.431954, -0.901753,
		0.751418, 0.589777, 0.295861,
		0.659632, -0.682333, -0.315130,
		13.004643, 12.970135, 15.797411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.026970, 13.830920, 15.499186>,  <12.542901, 13.447768, 16.018002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.026970, 13.830920, 15.499186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.089965, 13.440566, 15.438725>,  <13.127762, 13.206354, 15.402448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.089965, 13.440566, 15.438725>,  <13.026970, 13.830920, 15.499186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.089965, 13.440566, 15.438725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132948, 0.172622, -0.975975,
		0.978531, 0.133608, 0.156928,
		0.157488, -0.975884, -0.151153,
		13.137211, 13.147800, 15.393378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.633971, 13.781981, 15.203153>,  <13.026970, 13.830920, 15.499186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.633971, 13.781981, 15.203153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.449213, 13.437733, 15.117376>,  <13.338358, 13.231184, 15.065910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.449213, 13.437733, 15.117376>,  <13.633971, 13.781981, 15.203153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.449213, 13.437733, 15.117376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093559, 0.193150, -0.976699,
		0.881987, -0.471194, -0.008696,
		-0.461894, -0.860621, -0.214440,
		13.310645, 13.179546, 15.053044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.085897, 13.283400, 14.908198>,  <13.633971, 13.781981, 15.203153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.085897, 13.283400, 14.908198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.702348, 13.257394, 14.797686>,  <13.472218, 13.241791, 14.731378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.702348, 13.257394, 14.797686>,  <14.085897, 13.283400, 14.908198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.702348, 13.257394, 14.797686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248969, 0.274732, -0.928729,
		0.136284, -0.959320, -0.247247,
		-0.958875, -0.065014, -0.276282,
		13.414685, 13.237889, 14.714801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.780495, 13.582603, 15.074825>,  <14.085897, 13.283400, 14.908198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.780495, 13.582603, 15.074825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.108652, 13.375691, 14.977358>,  <15.305547, 13.251544, 14.918878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.108652, 13.375691, 14.977358>,  <14.780495, 13.582603, 15.074825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.108652, 13.375691, 14.977358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120127, -0.260714, 0.957913,
		-0.559038, -0.815138, -0.151748,
		0.820394, -0.517281, -0.243669,
		15.354771, 13.220507, 14.904257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.706238, 12.907915, 15.363258>,  <14.780495, 13.582603, 15.074825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.706238, 12.907915, 15.363258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.086099, 13.015141, 15.298388>,  <15.314015, 13.079477, 15.259465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.086099, 13.015141, 15.298388>,  <14.706238, 12.907915, 15.363258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.086099, 13.015141, 15.298388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254289, -0.357085, 0.898792,
		0.183025, -0.894780, -0.407272,
		0.949652, 0.268066, -0.162177,
		15.370995, 13.095561, 15.249734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.120155, 12.486929, 15.746501>,  <14.706238, 12.907915, 15.363258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.120155, 12.486929, 15.746501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.406519, 12.755342, 15.669359>,  <15.578337, 12.916389, 15.623074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.406519, 12.755342, 15.669359>,  <15.120155, 12.486929, 15.746501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.406519, 12.755342, 15.669359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464260, -0.251211, 0.849327,
		0.521477, -0.697575, -0.491376,
		0.715908, 0.671031, -0.192855,
		15.621291, 12.956651, 15.611503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.742083, 12.107628, 15.830901>,  <15.120155, 12.486929, 15.746501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.742083, 12.107628, 15.830901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.777736, 12.501161, 15.893039>,  <15.799128, 12.737280, 15.930322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.777736, 12.501161, 15.893039>,  <15.742083, 12.107628, 15.830901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.777736, 12.501161, 15.893039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359614, -0.177232, 0.916115,
		0.928834, -0.025791, -0.369597,
		0.089132, 0.983831, 0.155344,
		15.804476, 12.796310, 15.939642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.366531, 12.168046, 16.196068>,  <15.742083, 12.107628, 15.830901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.366531, 12.168046, 16.196068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.171158, 12.513844, 16.243530>,  <16.053934, 12.721324, 16.272007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.171158, 12.513844, 16.243530>,  <16.366531, 12.168046, 16.196068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.171158, 12.513844, 16.243530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133988, -0.060063, 0.989161,
		0.862252, 0.499038, -0.086496,
		-0.488434, 0.864496, 0.118655,
		16.024628, 12.773193, 16.279127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.860136, 12.560844, 16.518742>,  <16.366531, 12.168046, 16.196068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.860136, 12.560844, 16.518742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.509569, 12.729940, 16.610987>,  <16.299229, 12.831398, 16.666334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.509569, 12.729940, 16.610987>,  <16.860136, 12.560844, 16.518742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.509569, 12.729940, 16.610987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144475, -0.226002, 0.963354,
		0.459368, 0.877618, 0.136997,
		-0.876418, 0.422741, 0.230612,
		16.246643, 12.856763, 16.680170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.061110, 12.977350, 17.040184>,  <16.860136, 12.560844, 16.518742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.061110, 12.977350, 17.040184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.665695, 12.919186, 17.056467>,  <16.428448, 12.884287, 17.066236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.665695, 12.919186, 17.056467>,  <17.061110, 12.977350, 17.040184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.665695, 12.919186, 17.056467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071612, -0.214118, 0.974179,
		-0.132940, 0.965924, 0.222076,
		-0.988533, -0.145410, 0.040707,
		16.369135, 12.875563, 17.068680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.858639, 13.279922, 17.740507>,  <17.061110, 12.977350, 17.040184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.858639, 13.279922, 17.740507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.571890, 13.023964, 17.629778>,  <16.399841, 12.870389, 17.563341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.571890, 13.023964, 17.629778>,  <16.858639, 13.279922, 17.740507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.571890, 13.023964, 17.629778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048559, -0.441906, 0.895746,
		-0.695513, 0.628692, 0.347862,
		-0.716871, -0.639895, -0.276823,
		16.356829, 12.831995, 17.546732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.522770, 13.198965, 18.338060>,  <16.858639, 13.279922, 17.740507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.522770, 13.198965, 18.338060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.367765, 12.901748, 18.119806>,  <16.274763, 12.723417, 17.988853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.367765, 12.901748, 18.119806>,  <16.522770, 13.198965, 18.338060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.367765, 12.901748, 18.119806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223052, -0.498724, 0.837570,
		-0.894473, 0.446274, 0.027524,
		-0.387512, -0.743044, -0.545637,
		16.251513, 12.678835, 17.956116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.780731, 13.038832, 18.675447>,  <16.522770, 13.198965, 18.338060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.780731, 13.038832, 18.675447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.915812, 12.725033, 18.467402>,  <15.996860, 12.536754, 18.342573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.915812, 12.725033, 18.467402>,  <15.780731, 13.038832, 18.675447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.915812, 12.725033, 18.467402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354543, -0.617898, 0.701785,
		-0.871928, -0.052590, -0.486802,
		0.337701, -0.784498, -0.520117,
		16.017122, 12.489683, 18.311367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.218322, 12.553289, 18.793718>,  <15.780731, 13.038832, 18.675447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.218322, 12.553289, 18.793718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.502007, 12.300570, 18.668592>,  <15.672217, 12.148939, 18.593517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.502007, 12.300570, 18.668592>,  <15.218322, 12.553289, 18.793718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.502007, 12.300570, 18.668592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253800, -0.642767, 0.722797,
		-0.657733, -0.433219, -0.616205,
		0.709206, -0.631801, -0.312819,
		15.714770, 12.111032, 18.574749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.895802, 11.926236, 18.712563>,  <15.218322, 12.553289, 18.793718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.895802, 11.926236, 18.712563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.284199, 11.847062, 18.766226>,  <15.517237, 11.799558, 18.798424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.284199, 11.847062, 18.766226>,  <14.895802, 11.926236, 18.712563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.284199, 11.847062, 18.766226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216011, -0.485490, 0.847136,
		-0.102546, -0.851541, -0.514162,
		0.970991, -0.197935, 0.134157,
		15.575496, 11.787682, 18.806473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.851961, 11.291091, 19.038713>,  <14.895802, 11.926236, 18.712563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.851961, 11.291091, 19.038713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.210786, 11.449612, 19.116919>,  <15.426081, 11.544724, 19.163841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.210786, 11.449612, 19.116919>,  <14.851961, 11.291091, 19.038713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.210786, 11.449612, 19.116919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081298, -0.286878, 0.954511,
		0.434362, -0.872150, -0.225129,
		0.897062, 0.396301, 0.195513,
		15.479904, 11.568501, 19.175573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.289213, 10.728942, 19.234573>,  <14.851961, 11.291091, 19.038713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.289213, 10.728942, 19.234573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.441885, 11.074195, 19.366829>,  <15.533488, 11.281347, 19.446182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.441885, 11.074195, 19.366829>,  <15.289213, 10.728942, 19.234573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.441885, 11.074195, 19.366829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112504, -0.311674, 0.943505,
		0.917422, -0.397316, -0.021854,
		0.381680, 0.863133, 0.330637,
		15.556389, 11.333135, 19.466021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.895304, 10.614268, 19.706779>,  <15.289213, 10.728942, 19.234573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.895304, 10.614268, 19.706779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.735458, 10.963246, 19.819313>,  <15.639551, 11.172633, 19.886833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.735458, 10.963246, 19.819313>,  <15.895304, 10.614268, 19.706779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.735458, 10.963246, 19.819313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112404, -0.351223, 0.929520,
		0.909767, 0.339825, 0.238419,
		-0.399613, 0.872446, 0.281333,
		15.615575, 11.224980, 19.903713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.986322, 10.514194, 20.404860>,  <15.895304, 10.614268, 19.706779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.986322, 10.514194, 20.404860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.766943, 10.844630, 20.353043>,  <15.635315, 11.042892, 20.321953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.766943, 10.844630, 20.353043>,  <15.986322, 10.514194, 20.404860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.766943, 10.844630, 20.353043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441139, -0.154238, 0.884085,
		0.710352, 0.542022, 0.449012,
		-0.548449, 0.826089, -0.129544,
		15.602408, 11.092457, 20.314178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.137735, 10.950780, 20.966297>,  <15.986322, 10.514194, 20.404860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.137735, 10.950780, 20.966297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.773671, 11.039172, 20.826141>,  <15.555232, 11.092208, 20.742048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.773671, 11.039172, 20.826141>,  <16.137735, 10.950780, 20.966297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.773671, 11.039172, 20.826141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354854, 0.020520, 0.934696,
		0.213740, 0.975062, 0.059740,
		-0.910161, 0.220981, -0.350391,
		15.500623, 11.105467, 20.721024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.909822, 11.492142, 21.412592>,  <16.137735, 10.950780, 20.966297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.909822, 11.492142, 21.412592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.594010, 11.303822, 21.255117>,  <15.404523, 11.190829, 21.160633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.594010, 11.303822, 21.255117>,  <15.909822, 11.492142, 21.412592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.594010, 11.303822, 21.255117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386450, -0.116944, 0.914866,
		-0.476758, 0.874455, -0.089610,
		-0.789530, -0.470799, -0.393687,
		15.357151, 11.162581, 21.137011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.354826, 11.881020, 21.689985>,  <15.909822, 11.492142, 21.412592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.354826, 11.881020, 21.689985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.215859, 11.521760, 21.582186>,  <15.132480, 11.306204, 21.517506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.215859, 11.521760, 21.582186>,  <15.354826, 11.881020, 21.689985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.215859, 11.521760, 21.582186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550712, -0.037186, 0.833867,
		-0.758959, 0.438115, -0.481703,
		-0.347417, -0.898150, -0.269498,
		15.111634, 11.252316, 21.501337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.561056, 11.914845, 21.861359>,  <15.354826, 11.881020, 21.689985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.561056, 11.914845, 21.861359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.645091, 11.530189, 21.790812>,  <14.695512, 11.299395, 21.748484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.645091, 11.530189, 21.790812>,  <14.561056, 11.914845, 21.861359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.645091, 11.530189, 21.790812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627635, -0.270972, 0.729828,
		-0.749625, -0.042632, -0.660488,
		0.210087, -0.961643, -0.176370,
		14.708117, 11.241695, 21.737900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.911324, 11.499489, 21.711329>,  <14.561056, 11.914845, 21.861359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.911324, 11.499489, 21.711329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.175166, 11.226858, 21.838055>,  <14.333471, 11.063280, 21.914091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.175166, 11.226858, 21.838055>,  <13.911324, 11.499489, 21.711329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.175166, 11.226858, 21.838055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586319, -0.202869, 0.784266,
		-0.470265, -0.703063, -0.533435,
		0.659606, -0.681577, 0.316817,
		14.373048, 11.022386, 21.933100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.559337, 10.777840, 21.796589>,  <13.911324, 11.499489, 21.711329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.559337, 10.777840, 21.796589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.887335, 10.772038, 22.025463>,  <14.084134, 10.768556, 22.162788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.887335, 10.772038, 22.025463>,  <13.559337, 10.777840, 21.796589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.887335, 10.772038, 22.025463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535624, -0.371864, 0.758171,
		0.201778, -0.928174, -0.312697,
		0.819995, -0.014506, 0.572186,
		14.133333, 10.767686, 22.197119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.495513, 10.184724, 22.208345>,  <13.559337, 10.777840, 21.796589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.495513, 10.184724, 22.208345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.794578, 10.383913, 22.384085>,  <13.974016, 10.503427, 22.489529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.794578, 10.383913, 22.384085>,  <13.495513, 10.184724, 22.208345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.794578, 10.383913, 22.384085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281462, -0.361603, 0.888832,
		0.601484, -0.788204, -0.130196,
		0.747661, 0.497973, 0.439348,
		14.018876, 10.533305, 22.515888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.007879, 9.707343, 22.620453>,  <13.495513, 10.184724, 22.208345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.007879, 9.707343, 22.620453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.036001, 10.069703, 22.787498>,  <14.052875, 10.287119, 22.887726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.036001, 10.069703, 22.787498>,  <14.007879, 9.707343, 22.620453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.036001, 10.069703, 22.787498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054100, -0.414572, 0.908407,
		0.996057, -0.086459, 0.019862,
		0.070306, 0.905900, 0.417615,
		14.057093, 10.341473, 22.912783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.477076, 9.668259, 23.255941>,  <14.007879, 9.707343, 22.620453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.477076, 9.668259, 23.255941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.276167, 10.009512, 23.312349>,  <14.155622, 10.214264, 23.346195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.276167, 10.009512, 23.312349>,  <14.477076, 9.668259, 23.255941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.276167, 10.009512, 23.312349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219220, -0.283387, 0.933614,
		0.836461, 0.438012, 0.329361,
		-0.502271, 0.853134, 0.141021,
		14.125485, 10.265452, 23.354656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.624279, 9.889554, 23.903206>,  <14.477076, 9.668259, 23.255941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.624279, 9.889554, 23.903206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.271532, 10.066103, 23.836874>,  <14.059884, 10.172032, 23.797075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.271532, 10.066103, 23.836874>,  <14.624279, 9.889554, 23.903206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.271532, 10.066103, 23.836874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306090, -0.268404, 0.913383,
		0.358633, 0.856241, 0.371797,
		-0.881868, 0.441373, -0.165828,
		14.006971, 10.198515, 23.787125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.427817, 10.422228, 24.427502>,  <14.624279, 9.889554, 23.903206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.427817, 10.422228, 24.427502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.050044, 10.355610, 24.314148>,  <13.823380, 10.315639, 24.246136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.050044, 10.355610, 24.314148>,  <14.427817, 10.422228, 24.427502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.050044, 10.355610, 24.314148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257048, -0.163125, 0.952532,
		-0.204866, 0.972447, 0.111251,
		-0.944434, -0.166545, -0.283385,
		13.766714, 10.305647, 24.229132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.068689, 10.713873, 24.933056>,  <14.427817, 10.422228, 24.427502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.068689, 10.713873, 24.933056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.804065, 10.483471, 24.740992>,  <13.645289, 10.345229, 24.625753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.804065, 10.483471, 24.740992>,  <14.068689, 10.713873, 24.933056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.804065, 10.483471, 24.740992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427172, -0.236790, 0.872613,
		-0.616327, 0.782399, -0.089402,
		-0.661562, -0.576005, -0.480160,
		13.605597, 10.310669, 24.596943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.414181, 10.957044, 25.188925>,  <14.068689, 10.713873, 24.933056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.414181, 10.957044, 25.188925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.420140, 10.568753, 25.093035>,  <13.423716, 10.335779, 25.035500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.420140, 10.568753, 25.093035>,  <13.414181, 10.957044, 25.188925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.420140, 10.568753, 25.093035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365832, -0.228421, 0.902214,
		-0.930562, 0.074258, -0.358526,
		0.014898, -0.970726, -0.239726,
		13.424610, 10.277535, 25.021116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.685551, 10.656388, 25.418442>,  <13.414181, 10.957044, 25.188925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.685551, 10.656388, 25.418442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.977763, 10.386909, 25.373804>,  <13.153090, 10.225221, 25.347021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.977763, 10.386909, 25.373804>,  <12.685551, 10.656388, 25.418442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.977763, 10.386909, 25.373804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308135, -0.471039, 0.826544,
		-0.609407, -0.569430, -0.551700,
		0.730531, -0.673699, -0.111593,
		13.196922, 10.184799, 25.340326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.373803, 10.001367, 25.760614>,  <12.685551, 10.656388, 25.418442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.373803, 10.001367, 25.760614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.748598, 9.872256, 25.707142>,  <12.973475, 9.794790, 25.675058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.748598, 9.872256, 25.707142>,  <12.373803, 10.001367, 25.760614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.748598, 9.872256, 25.707142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069277, -0.546701, 0.834457,
		-0.342426, -0.772614, -0.534613,
		0.936987, -0.322776, -0.133680,
		13.029695, 9.775423, 25.667038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.358935, 9.154702, 25.845215>,  <12.373803, 10.001367, 25.760614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.358935, 9.154702, 25.845215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.710342, 9.329258, 25.922956>,  <12.921186, 9.433991, 25.969601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.710342, 9.329258, 25.922956>,  <12.358935, 9.154702, 25.845215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.710342, 9.329258, 25.922956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035565, -0.345969, 0.937572,
		0.476386, -0.830584, -0.288419,
		0.878516, 0.436389, 0.194355,
		12.973897, 9.460175, 25.981262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.729519, 8.618180, 25.949341>,  <12.358935, 9.154702, 25.845215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.729519, 8.618180, 25.949341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.943683, 8.904685, 26.128363>,  <13.072181, 9.076588, 26.235775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.943683, 8.904685, 26.128363>,  <12.729519, 8.618180, 25.949341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.943683, 8.904685, 26.128363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284259, -0.346172, 0.894070,
		0.795319, -0.605916, 0.018260,
		0.535410, 0.716262, 0.447555,
		13.104305, 9.119563, 26.262629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.963742, 8.254043, 26.448336>,  <12.729519, 8.618180, 25.949341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.963742, 8.254043, 26.448336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.009863, 8.633782, 26.565258>,  <13.037536, 8.861627, 26.635410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.009863, 8.633782, 26.565258>,  <12.963742, 8.254043, 26.448336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.009863, 8.633782, 26.565258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110102, -0.280239, 0.953595,
		0.987210, -0.142134, 0.072214,
		0.115301, 0.949349, 0.292304,
		13.044454, 8.918587, 26.652948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.293275, 8.178571, 27.039654>,  <12.963742, 8.254043, 26.448336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.293275, 8.178571, 27.039654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.164283, 8.553418, 27.093042>,  <13.086887, 8.778327, 27.125074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.164283, 8.553418, 27.093042>,  <13.293275, 8.178571, 27.039654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.164283, 8.553418, 27.093042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025807, -0.132247, 0.990881,
		0.946224, 0.322984, 0.018463,
		-0.322480, 0.937119, 0.133471,
		13.067539, 8.834554, 27.133083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.583215, 8.391196, 27.629284>,  <13.293275, 8.178571, 27.039654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.583215, 8.391196, 27.629284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.300258, 8.673714, 27.618359>,  <13.130484, 8.843225, 27.611803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.300258, 8.673714, 27.618359>,  <13.583215, 8.391196, 27.629284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.300258, 8.673714, 27.618359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001851, 0.036794, 0.999321,
		0.706819, 0.706963, -0.024721,
		-0.707392, 0.706293, -0.027315,
		13.088040, 8.885602, 27.610165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.752382, 8.928843, 28.114332>,  <13.583215, 8.391196, 27.629284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.752382, 8.928843, 28.114332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.357352, 8.961077, 28.060366>,  <13.120335, 8.980417, 28.027987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.357352, 8.961077, 28.060366>,  <13.752382, 8.928843, 28.114332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.357352, 8.961077, 28.060366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127408, 0.091994, 0.987575,
		0.091994, 0.992494, -0.080584,
		-0.987575, 0.080584, -0.134915,
		13.061080, 8.985252, 28.019892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.719995, 9.348044, 28.672068>,  <13.752382, 8.928843, 28.114332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.719995, 9.348044, 28.672068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.357545, 9.230999, 28.549877>,  <13.140075, 9.160772, 28.476562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.357545, 9.230999, 28.549877>,  <13.719995, 9.348044, 28.672068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.357545, 9.230999, 28.549877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277197, -0.134758, 0.951316,
		-0.319532, 0.946688, 0.040996,
		-0.906124, -0.292612, -0.305478,
		13.085708, 9.143215, 28.458233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.313575, 9.799070, 28.837227>,  <13.719995, 9.348044, 28.672068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.313575, 9.799070, 28.837227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.044410, 10.071222, 28.953344>,  <13.882911, 10.234513, 29.023014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.044410, 10.071222, 28.953344>,  <14.313575, 9.799070, 28.837227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.044410, 10.071222, 28.953344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588991, 0.730234, -0.346191,
		-0.447524, -0.061977, -0.892122,
		-0.672914, 0.680380, 0.290293,
		13.842536, 10.275336, 29.040432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.029787, 10.320485, 28.314127>,  <14.313575, 9.799070, 28.837227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.029787, 10.320485, 28.314127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.040336, 10.478067, 28.681627>,  <14.046664, 10.572617, 28.902128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.040336, 10.478067, 28.681627>,  <14.029787, 10.320485, 28.314127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.040336, 10.478067, 28.681627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572938, 0.747184, -0.336834,
		-0.819174, 0.535270, -0.206009,
		0.026371, 0.393956, 0.918751,
		14.048246, 10.596254, 28.957253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.096029, 10.926783, 28.153795>,  <14.029787, 10.320485, 28.314127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.096029, 10.926783, 28.153795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.197427, 10.948250, 28.540134>,  <14.258265, 10.961130, 28.771938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.197427, 10.948250, 28.540134>,  <14.096029, 10.926783, 28.153795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.197427, 10.948250, 28.540134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708337, 0.669684, -0.223120,
		-0.658787, 0.740704, 0.131745,
		0.253493, 0.053669, 0.965847,
		14.273475, 10.964351, 28.829889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.062336, 11.530155, 28.334936>,  <14.096029, 10.926783, 28.153795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.062336, 11.530155, 28.334936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.338372, 11.374434, 28.578976>,  <14.503994, 11.281002, 28.725399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.338372, 11.374434, 28.578976>,  <14.062336, 11.530155, 28.334936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.338372, 11.374434, 28.578976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689564, 0.609621, -0.390978,
		-0.219719, 0.690511, 0.689142,
		0.690090, -0.389303, 0.610098,
		14.545400, 11.257644, 28.762005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.300711, 11.995840, 28.689655>,  <14.062336, 11.530155, 28.334936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.300711, 11.995840, 28.689655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.604872, 11.736289, 28.700592>,  <14.787368, 11.580559, 28.707153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.604872, 11.736289, 28.700592>,  <14.300711, 11.995840, 28.689655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.604872, 11.736289, 28.700592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627464, 0.723143, -0.288711,
		0.167566, 0.236692, 0.957026,
		0.760402, -0.648877, 0.027342,
		14.832993, 11.541626, 28.708794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.908046, 12.446321, 28.907822>,  <14.300711, 11.995840, 28.689655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.908046, 12.446321, 28.907822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.052865, 12.110728, 28.745325>,  <15.139757, 11.909373, 28.647827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.052865, 12.110728, 28.745325>,  <14.908046, 12.446321, 28.907822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.052865, 12.110728, 28.745325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651627, 0.539425, -0.533294,
		0.666560, -0.071640, 0.742001,
		0.362049, -0.838980, -0.406242,
		15.161480, 11.859035, 28.623453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.509864, 12.603890, 28.857338>,  <14.908046, 12.446321, 28.907822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.509864, 12.603890, 28.857338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.488325, 12.307216, 28.589905>,  <15.475402, 12.129211, 28.429445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.488325, 12.307216, 28.589905>,  <15.509864, 12.603890, 28.857338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.488325, 12.307216, 28.589905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719864, 0.435187, -0.540747,
		0.692023, -0.510406, 0.510480,
		-0.053846, -0.741686, -0.668582,
		15.472172, 12.084710, 28.389330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.281677, 12.439644, 28.583035>,  <15.509864, 12.603890, 28.857338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.281677, 12.439644, 28.583035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.024734, 12.314562, 28.303150>,  <15.870568, 12.239512, 28.135220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.024734, 12.314562, 28.303150>,  <16.281677, 12.439644, 28.583035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.024734, 12.314562, 28.303150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607708, 0.348463, -0.713628,
		0.466977, -0.883623, -0.033805,
		-0.642357, -0.312704, -0.699709,
		15.832027, 12.220751, 28.093237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.691015, 12.206231, 27.994753>,  <16.281677, 12.439644, 28.583035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.691015, 12.206231, 27.994753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.327839, 12.274656, 27.841717>,  <16.109932, 12.315712, 27.749895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.327839, 12.274656, 27.841717>,  <16.691015, 12.206231, 27.994753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.327839, 12.274656, 27.841717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410320, 0.177026, -0.894594,
		-0.085305, -0.969226, -0.230921,
		-0.907943, 0.171065, -0.382592,
		16.055456, 12.325975, 27.726938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.743309, 11.845368, 27.334417>,  <16.691015, 12.206231, 27.994753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.743309, 11.845368, 27.334417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.435192, 12.099631, 27.314056>,  <16.250322, 12.252189, 27.301840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.435192, 12.099631, 27.314056>,  <16.743309, 11.845368, 27.334417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.435192, 12.099631, 27.314056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235408, 0.209267, -0.949100,
		-0.592650, -0.743067, -0.310835,
		-0.770292, 0.635657, -0.050902,
		16.204105, 12.290328, 27.298786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.423418, 11.641317, 26.749170>,  <16.743309, 11.845368, 27.334417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.423418, 11.641317, 26.749170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.274160, 12.006552, 26.814939>,  <16.184607, 12.225693, 26.854401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.274160, 12.006552, 26.814939>,  <16.423418, 11.641317, 26.749170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.274160, 12.006552, 26.814939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111506, 0.220078, -0.969088,
		-0.921048, -0.343276, -0.183935,
		-0.373145, 0.913087, 0.164425,
		16.162216, 12.280478, 26.864267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.928426, 11.655505, 26.263142>,  <16.423418, 11.641317, 26.749170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.928426, 11.655505, 26.263142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.033474, 12.029222, 26.359577>,  <16.096502, 12.253453, 26.417439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.033474, 12.029222, 26.359577>,  <15.928426, 11.655505, 26.263142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.033474, 12.029222, 26.359577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044228, 0.237943, -0.970272,
		-0.963885, 0.265475, 0.021167,
		0.262620, 0.934294, 0.241091,
		16.112259, 12.309511, 26.431904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.652585, 12.092875, 25.726336>,  <15.928426, 11.655505, 26.263142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.652585, 12.092875, 25.726336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.909513, 12.346138, 25.899094>,  <16.063671, 12.498096, 26.002748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.909513, 12.346138, 25.899094>,  <15.652585, 12.092875, 25.726336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.909513, 12.346138, 25.899094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153920, 0.445470, -0.881967,
		-0.750820, 0.632984, 0.188679,
		0.642322, 0.633157, 0.431897,
		16.102211, 12.536085, 26.028664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.451496, 12.794672, 25.493217>,  <15.652585, 12.092875, 25.726336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.451496, 12.794672, 25.493217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.834065, 12.766219, 25.606491>,  <16.063606, 12.749147, 25.674456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.834065, 12.766219, 25.606491>,  <15.451496, 12.794672, 25.493217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.834065, 12.766219, 25.606491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289925, 0.116415, -0.949943,
		0.034606, 0.990650, 0.131966,
		0.956424, -0.071133, 0.283185,
		16.120993, 12.744879, 25.691446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.844930, 13.407248, 25.220610>,  <15.451496, 12.794672, 25.493217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.844930, 13.407248, 25.220610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.096521, 13.101823, 25.279066>,  <16.247477, 12.918568, 25.314140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.096521, 13.101823, 25.279066>,  <15.844930, 13.407248, 25.220610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.096521, 13.101823, 25.279066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358783, 0.118334, -0.925890,
		0.689681, 0.634799, 0.348383,
		0.628979, -0.763562, 0.146142,
		16.285215, 12.872754, 25.322908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.402006, 13.573530, 24.850693>,  <15.844930, 13.407248, 25.220610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.402006, 13.573530, 24.850693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.479519, 13.186069, 24.912863>,  <16.526026, 12.953591, 24.950165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.479519, 13.186069, 24.912863>,  <16.402006, 13.573530, 24.850693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.479519, 13.186069, 24.912863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508073, -0.036438, -0.860543,
		0.839232, 0.245726, 0.485086,
		0.193783, -0.968654, 0.155426,
		16.537653, 12.895473, 24.959490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.098364, 13.420389, 24.611420>,  <16.402006, 13.573530, 24.850693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.098364, 13.420389, 24.611420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.911724, 13.067303, 24.589159>,  <16.799740, 12.855451, 24.575802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.911724, 13.067303, 24.589159>,  <17.098364, 13.420389, 24.611420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.911724, 13.067303, 24.589159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390214, -0.148979, -0.908591,
		0.793738, -0.445663, 0.413962,
		-0.466598, -0.882717, -0.055654,
		16.771746, 12.802487, 24.572462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.570343, 12.966809, 24.238447>,  <17.098364, 13.420389, 24.611420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.570343, 12.966809, 24.238447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.213699, 12.791933, 24.191296>,  <16.999714, 12.687007, 24.163004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.213699, 12.791933, 24.191296>,  <17.570343, 12.966809, 24.238447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.213699, 12.791933, 24.191296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183143, -0.110099, -0.976902,
		0.414115, -0.892604, 0.178234,
		-0.891610, -0.437192, -0.117880,
		16.946217, 12.660775, 24.155931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.747395, 12.474339, 23.730728>,  <17.570343, 12.966809, 24.238447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.747395, 12.474339, 23.730728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.347841, 12.491017, 23.721857>,  <17.108109, 12.501024, 23.716536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.347841, 12.491017, 23.721857>,  <17.747395, 12.474339, 23.730728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.347841, 12.491017, 23.721857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017693, -0.104957, -0.994319,
		-0.043784, -0.993603, 0.104102,
		-0.998884, 0.041694, -0.022176,
		17.048176, 12.503526, 23.715204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.525169, 11.837220, 23.365746>,  <17.747395, 12.474339, 23.730728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.525169, 11.837220, 23.365746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.249649, 12.125687, 23.336145>,  <17.084337, 12.298766, 23.318386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.249649, 12.125687, 23.336145>,  <17.525169, 11.837220, 23.365746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.249649, 12.125687, 23.336145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057340, -0.155950, -0.986099,
		-0.722680, -0.674982, 0.148770,
		-0.688800, 0.721165, -0.073999,
		17.043009, 12.342036, 23.313946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.087858, 11.620316, 22.805634>,  <17.525169, 11.837220, 23.365746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.087858, 11.620316, 22.805634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.983721, 12.004292, 22.847071>,  <16.921238, 12.234678, 22.871933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.983721, 12.004292, 22.847071>,  <17.087858, 11.620316, 22.805634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.983721, 12.004292, 22.847071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026476, 0.100157, -0.994619,
		-0.965153, -0.261686, -0.000659,
		-0.260344, 0.959942, 0.103595,
		16.905617, 12.292275, 22.878149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.591642, 11.656196, 22.422264>,  <17.087858, 11.620316, 22.805634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.591642, 11.656196, 22.422264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.705185, 12.037310, 22.465395>,  <16.773310, 12.265978, 22.491274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.705185, 12.037310, 22.465395>,  <16.591642, 11.656196, 22.422264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.705185, 12.037310, 22.465395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054633, 0.128339, -0.990224,
		-0.957309, 0.275190, 0.088484,
		0.283856, 0.952785, 0.107825,
		16.790342, 12.323145, 22.497742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.113291, 12.055853, 22.025318>,  <16.591642, 11.656196, 22.422264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.113291, 12.055853, 22.025318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.458656, 12.255898, 22.051870>,  <16.665874, 12.375926, 22.067802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.458656, 12.255898, 22.051870>,  <16.113291, 12.055853, 22.025318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.458656, 12.255898, 22.051870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100014, 0.298643, -0.949110,
		-0.494486, 0.812834, 0.307871,
		0.863412, 0.500113, 0.066380,
		16.717680, 12.405932, 22.071785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.982322, 12.661660, 21.765335>,  <16.113291, 12.055853, 22.025318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.982322, 12.661660, 21.765335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.380411, 12.674852, 21.728580>,  <16.619265, 12.682768, 21.706528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.380411, 12.674852, 21.728580>,  <15.982322, 12.661660, 21.765335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.380411, 12.674852, 21.728580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097619, 0.349122, -0.931979,
		0.001343, 0.936497, 0.350674,
		0.995223, 0.032981, -0.091889,
		16.678978, 12.684747, 21.701014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.157885, 13.355118, 21.566439>,  <15.982322, 12.661660, 21.765335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.157885, 13.355118, 21.566439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.502947, 13.160928, 21.509678>,  <16.709984, 13.044414, 21.475622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.502947, 13.160928, 21.509678>,  <16.157885, 13.355118, 21.566439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.502947, 13.160928, 21.509678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179914, 0.556736, -0.810972,
		0.472708, 0.674061, 0.567617,
		0.862657, -0.485476, -0.141901,
		16.761744, 13.015285, 21.467108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.776363, 13.887327, 21.518154>,  <16.157885, 13.355118, 21.566439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.776363, 13.887327, 21.518154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.904715, 13.557817, 21.331209>,  <16.981726, 13.360110, 21.219042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.904715, 13.557817, 21.331209>,  <16.776363, 13.887327, 21.518154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.904715, 13.557817, 21.331209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306244, 0.557192, -0.771850,
		0.896243, 0.104544, 0.431068,
		0.320880, -0.823776, -0.467363,
		17.000978, 13.310683, 21.191000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.368351, 14.010494, 21.206442>,  <16.776363, 13.887327, 21.518154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.368351, 14.010494, 21.206442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.272743, 13.675458, 21.009947>,  <17.215380, 13.474436, 20.892050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.272743, 13.675458, 21.009947>,  <17.368351, 14.010494, 21.206442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.272743, 13.675458, 21.009947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439407, 0.357838, -0.823938,
		0.865906, -0.412788, 0.282514,
		-0.239017, -0.837591, -0.491236,
		17.201038, 13.424181, 20.862576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.954905, 13.804766, 20.988674>,  <17.368351, 14.010494, 21.206442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.954905, 13.804766, 20.988674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.712988, 13.617991, 20.730619>,  <17.567839, 13.505927, 20.575787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.712988, 13.617991, 20.730619>,  <17.954905, 13.804766, 20.988674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.712988, 13.617991, 20.730619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405001, 0.517174, -0.753993,
		0.685715, -0.717287, -0.123672,
		-0.604789, -0.466937, -0.645136,
		17.531551, 13.477911, 20.537079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.373259, 13.474244, 20.496376>,  <17.954905, 13.804766, 20.988674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.373259, 13.474244, 20.496376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.018040, 13.446906, 20.314516>,  <17.804909, 13.430503, 20.205400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.018040, 13.446906, 20.314516>,  <18.373259, 13.474244, 20.496376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.018040, 13.446906, 20.314516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423619, 0.262662, -0.866923,
		0.178670, -0.962464, -0.204303,
		-0.888045, -0.068346, -0.454648,
		17.751627, 13.426402, 20.178122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.460096, 13.037668, 19.898163>,  <18.373259, 13.474244, 20.496376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.460096, 13.037668, 19.898163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.148670, 13.282258, 19.841686>,  <17.961815, 13.429012, 19.807800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.148670, 13.282258, 19.841686>,  <18.460096, 13.037668, 19.898163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.148670, 13.282258, 19.841686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383334, 0.285247, -0.878458,
		-0.496881, -0.738060, -0.456483,
		-0.778566, 0.611475, -0.141190,
		17.915100, 13.465700, 19.799330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.234205, 12.876058, 19.143629>,  <18.460096, 13.037668, 19.898163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.234205, 12.876058, 19.143629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.086456, 13.221007, 19.282122>,  <17.997807, 13.427977, 19.365217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.086456, 13.221007, 19.282122>,  <18.234205, 12.876058, 19.143629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.086456, 13.221007, 19.282122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190359, 0.434896, -0.880130,
		-0.909576, -0.259186, -0.324799,
		-0.369371, 0.862373, 0.346233,
		17.975645, 13.479719, 19.385992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.826927, 12.990950, 18.566099>,  <18.234205, 12.876058, 19.143629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.826927, 12.990950, 18.566099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.895229, 13.336177, 18.756239>,  <17.936211, 13.543313, 18.870323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.895229, 13.336177, 18.756239>,  <17.826927, 12.990950, 18.566099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.895229, 13.336177, 18.756239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277500, 0.420781, -0.863676,
		-0.945430, 0.279385, -0.167652,
		0.170753, 0.863068, 0.475348,
		17.946455, 13.595098, 18.898844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.702765, 13.499062, 18.062775>,  <17.826927, 12.990950, 18.566099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.702765, 13.499062, 18.062775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.892122, 13.715108, 18.341105>,  <18.005737, 13.844735, 18.508102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.892122, 13.715108, 18.341105>,  <17.702765, 13.499062, 18.062775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.892122, 13.715108, 18.341105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320254, 0.630351, -0.707174,
		-0.820569, 0.557614, 0.125431,
		0.473396, 0.540115, 0.695825,
		18.034142, 13.877143, 18.549852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.470985, 14.190597, 18.002632>,  <17.702765, 13.499062, 18.062775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.470985, 14.190597, 18.002632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.828903, 14.191531, 18.181221>,  <18.043653, 14.192092, 18.288374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.828903, 14.191531, 18.181221>,  <17.470985, 14.190597, 18.002632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.828903, 14.191531, 18.181221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355397, 0.601557, -0.715418,
		-0.270248, 0.798827, 0.537440,
		0.894796, 0.002335, 0.446470,
		18.097342, 14.192232, 18.315163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.770666, 14.823601, 17.781300>,  <17.470985, 14.190597, 18.002632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.770666, 14.823601, 17.781300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.097179, 14.639097, 17.920397>,  <18.293087, 14.528395, 18.003855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.097179, 14.639097, 17.920397>,  <17.770666, 14.823601, 17.781300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.097179, 14.639097, 17.920397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569051, 0.538589, -0.621372,
		0.099324, 0.705097, 0.702121,
		0.816281, -0.461260, 0.347741,
		18.342064, 14.500719, 18.024719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.321129, 15.367296, 17.960428>,  <17.770666, 14.823601, 17.781300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.321129, 15.367296, 17.960428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.496140, 15.018939, 17.870882>,  <18.601145, 14.809924, 17.817154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.496140, 15.018939, 17.870882>,  <18.321129, 15.367296, 17.960428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.496140, 15.018939, 17.870882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572777, 0.461838, -0.677224,
		0.693180, 0.168077, 0.700893,
		0.437525, -0.870894, -0.223866,
		18.627398, 14.757671, 17.803722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.965439, 15.518921, 17.689190>,  <18.321129, 15.367296, 17.960428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.965439, 15.518921, 17.689190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.910053, 15.143169, 17.563719>,  <18.876822, 14.917718, 17.488436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.910053, 15.143169, 17.563719>,  <18.965439, 15.518921, 17.689190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.910053, 15.143169, 17.563719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555856, 0.188423, -0.809642,
		0.819666, -0.286465, 0.496070,
		-0.138464, -0.939380, -0.313677,
		18.868515, 14.861356, 17.469616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.692080, 15.314193, 17.551048>,  <18.965439, 15.518921, 17.689190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.692080, 15.314193, 17.551048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.440182, 15.075866, 17.351681>,  <19.289043, 14.932870, 17.232059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.440182, 15.075866, 17.351681>,  <19.692080, 15.314193, 17.551048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.440182, 15.075866, 17.351681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557444, 0.100234, -0.824142,
		0.540997, -0.796840, 0.269013,
		-0.629745, -0.595818, -0.498420,
		19.251259, 14.897120, 17.202154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.094746, 14.843974, 17.135208>,  <19.692080, 15.314193, 17.551048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.094746, 14.843974, 17.135208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.744083, 14.825316, 16.943668>,  <19.533686, 14.814122, 16.828745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.744083, 14.825316, 16.943668>,  <20.094746, 14.843974, 17.135208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.744083, 14.825316, 16.943668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475552, 0.066915, -0.877139,
		0.072943, -0.996669, -0.036486,
		-0.876658, -0.046630, -0.478849,
		19.481087, 14.811323, 16.800014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.179432, 14.429134, 16.599794>,  <20.094746, 14.843974, 17.135208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.179432, 14.429134, 16.599794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.848061, 14.624001, 16.489248>,  <19.649239, 14.740920, 16.422920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.848061, 14.624001, 16.489248>,  <20.179432, 14.429134, 16.599794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.848061, 14.624001, 16.489248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354631, 0.074312, -0.932049,
		-0.433525, -0.870142, -0.234326,
		-0.828428, 0.487165, -0.276363,
		19.599531, 14.770150, 16.406340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.888704, 14.104865, 16.006933>,  <20.179432, 14.429134, 16.599794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.888704, 14.104865, 16.006933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.729935, 14.471950, 16.000561>,  <19.634672, 14.692201, 15.996737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.729935, 14.471950, 16.000561>,  <19.888704, 14.104865, 16.006933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.729935, 14.471950, 16.000561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488799, 0.196658, -0.849942,
		-0.776869, -0.345152, -0.526636,
		-0.396926, 0.917712, -0.015932,
		19.610857, 14.747263, 15.995781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.649221, 14.034342, 15.364757>,  <19.888704, 14.104865, 16.006933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.649221, 14.034342, 15.364757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.650255, 14.429397, 15.427450>,  <19.650875, 14.666430, 15.465066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.650255, 14.429397, 15.427450>,  <19.649221, 14.034342, 15.364757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.650255, 14.429397, 15.427450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274817, 0.149998, -0.949724,
		-0.961493, 0.045529, -0.271031,
		0.002586, 0.987637, 0.156734,
		19.651031, 14.725688, 15.474470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.218569, 14.534019, 14.968287>,  <19.649221, 14.034342, 15.364757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.218569, 14.534019, 14.968287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.530855, 14.768151, 15.055805>,  <19.718227, 14.908630, 15.108316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.530855, 14.768151, 15.055805>,  <19.218569, 14.534019, 14.968287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.530855, 14.768151, 15.055805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136318, 0.182173, -0.973771,
		-0.609836, 0.790065, 0.062434,
		0.780716, 0.585330, 0.218796,
		19.765070, 14.943750, 15.121444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.700583, 14.780993, 14.528747>,  <19.218569, 14.534019, 14.968287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.700583, 14.780993, 14.528747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.398443, 15.038862, 14.481682>,  <19.217159, 15.193583, 14.453443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.398443, 15.038862, 14.481682>,  <19.700583, 14.780993, 14.528747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.398443, 15.038862, 14.481682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546447, 0.718728, 0.429914,
		0.361720, 0.260439, -0.895170,
		-0.755351, 0.644671, -0.117663,
		19.171839, 15.232264, 14.446383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.953346, 15.420552, 14.108737>,  <19.700583, 14.780993, 14.528747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.953346, 15.420552, 14.108737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.618151, 15.520884, 14.302587>,  <19.417034, 15.581082, 14.418897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.618151, 15.520884, 14.302587>,  <19.953346, 15.420552, 14.108737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.618151, 15.520884, 14.302587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413340, 0.871581, 0.263622,
		-0.356266, 0.421227, -0.834052,
		-0.837989, 0.250827, 0.484624,
		19.366755, 15.596131, 14.447974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.489183, 15.960892, 13.766473>,  <19.953346, 15.420552, 14.108737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.489183, 15.960892, 13.766473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.504885, 15.952248, 14.166071>,  <19.514305, 15.947062, 14.405830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.504885, 15.952248, 14.166071>,  <19.489183, 15.960892, 13.766473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.504885, 15.952248, 14.166071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510109, 0.860109, -0.001438,
		-0.859214, 0.509653, 0.044784,
		0.039252, -0.021609, 0.998996,
		19.516661, 15.945765, 14.465770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.396265, 16.663736, 13.912883>,  <19.489183, 15.960892, 13.766473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.396265, 16.663736, 13.912883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.588898, 16.456493, 14.195624>,  <19.704477, 16.332148, 14.365270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.588898, 16.456493, 14.195624>,  <19.396265, 16.663736, 13.912883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.588898, 16.456493, 14.195624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578268, 0.793905, 0.187936,
		-0.658547, 0.318245, 0.681935,
		0.481582, -0.518106, 0.706855,
		19.733372, 16.301062, 14.407681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.458797, 17.042240, 14.526347>,  <19.396265, 16.663736, 13.912883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.458797, 17.042240, 14.526347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.765465, 16.786028, 14.543960>,  <19.949465, 16.632299, 14.554527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.765465, 16.786028, 14.543960>,  <19.458797, 17.042240, 14.526347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.765465, 16.786028, 14.543960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606394, 0.744929, 0.278150,
		-0.210964, -0.186548, 0.959528,
		0.766668, -0.640532, 0.044031,
		19.995466, 16.593868, 14.557169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.752602, 16.894011, 15.234053>,  <19.458797, 17.042240, 14.526347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.752602, 16.894011, 15.234053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.995842, 16.899734, 14.916560>,  <20.141787, 16.903168, 14.726065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.995842, 16.899734, 14.916560>,  <19.752602, 16.894011, 15.234053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.995842, 16.899734, 14.916560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556049, 0.705921, 0.438731,
		0.566588, -0.708146, 0.421316,
		0.608101, 0.014307, -0.793730,
		20.178272, 16.904026, 14.678441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.480507, 17.001551, 15.472796>,  <19.752602, 16.894011, 15.234053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.480507, 17.001551, 15.472796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.526752, 17.080299, 15.083361>,  <20.554501, 17.127548, 14.849699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.526752, 17.080299, 15.083361>,  <20.480507, 17.001551, 15.472796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.526752, 17.080299, 15.083361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667994, 0.710001, 0.222896,
		0.735131, -0.676121, -0.049425,
		0.115613, 0.196873, -0.973588,
		20.561436, 17.139362, 14.791285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.166201, 17.258085, 15.399736>,  <20.480507, 17.001551, 15.472796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.166201, 17.258085, 15.399736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.964586, 17.403992, 15.086586>,  <20.843618, 17.491535, 14.898696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.964586, 17.403992, 15.086586>,  <21.166201, 17.258085, 15.399736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.964586, 17.403992, 15.086586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517243, 0.853396, 0.064609,
		0.691671, -0.372373, -0.618813,
		-0.504034, 0.364765, -0.782877,
		20.813375, 17.513422, 14.851723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.638592, 17.680954, 14.908855>,  <21.166201, 17.258085, 15.399736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.638592, 17.680954, 14.908855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.278099, 17.838236, 14.836009>,  <21.061802, 17.932606, 14.792301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.278099, 17.838236, 14.836009>,  <21.638592, 17.680954, 14.908855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.278099, 17.838236, 14.836009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397944, 0.917340, 0.011328,
		0.171516, -0.062262, -0.983212,
		-0.901234, 0.393206, -0.182115,
		21.007729, 17.956198, 14.781375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.826139, 18.051180, 14.441409>,  <21.638592, 17.680954, 14.908855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.826139, 18.051180, 14.441409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.469767, 18.182671, 14.566742>,  <21.255943, 18.261566, 14.641942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.469767, 18.182671, 14.566742>,  <21.826139, 18.051180, 14.441409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.469767, 18.182671, 14.566742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388515, 0.908974, 0.151069,
		-0.235150, 0.256327, -0.937550,
		-0.890932, 0.328728, 0.313332,
		21.202486, 18.281288, 14.660742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.661745, 18.602314, 14.036539>,  <21.826139, 18.051180, 14.441409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.661745, 18.602314, 14.036539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.412436, 18.659136, 14.344137>,  <21.262850, 18.693228, 14.528696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.412436, 18.659136, 14.344137>,  <21.661745, 18.602314, 14.036539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.412436, 18.659136, 14.344137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231829, 0.972722, 0.008211,
		-0.746851, 0.183393, -0.639203,
		-0.623272, 0.142053, 0.768995,
		21.225454, 18.701752, 14.574836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.311302, 19.203955, 13.902440>,  <21.661745, 18.602314, 14.036539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.311302, 19.203955, 13.902440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.247437, 19.170452, 14.295885>,  <21.209116, 19.150351, 14.531952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.247437, 19.170452, 14.295885>,  <21.311302, 19.203955, 13.902440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.247437, 19.170452, 14.295885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233827, 0.964830, 0.120115,
		-0.959079, 0.249173, -0.134465,
		-0.159665, -0.083758, 0.983612,
		21.199537, 19.145325, 14.590968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.868788, 19.735153, 14.050376>,  <21.311302, 19.203955, 13.902440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.868788, 19.735153, 14.050376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.059811, 19.617689, 14.381605>,  <21.174425, 19.547211, 14.580342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.059811, 19.617689, 14.381605>,  <20.868788, 19.735153, 14.050376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.059811, 19.617689, 14.381605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182953, 0.955067, 0.233183,
		-0.859341, 0.040140, 0.509826,
		0.477558, -0.293658, 0.828072,
		21.203077, 19.529593, 14.630027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.589020, 20.097010, 14.705257>,  <20.868788, 19.735153, 14.050376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.589020, 20.097010, 14.705257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.965042, 19.996912, 14.797932>,  <21.190655, 19.936853, 14.853536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.965042, 19.996912, 14.797932>,  <20.589020, 20.097010, 14.705257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.965042, 19.996912, 14.797932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192208, 0.949974, 0.246183,
		-0.281700, -0.186894, 0.941125,
		0.940054, -0.250242, 0.231685,
		21.247059, 19.921839, 14.867437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.614792, 20.335751, 15.329217>,  <20.589020, 20.097010, 14.705257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.614792, 20.335751, 15.329217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.995693, 20.297119, 15.213365>,  <21.224234, 20.273941, 15.143853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.995693, 20.297119, 15.213365>,  <20.614792, 20.335751, 15.329217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.995693, 20.297119, 15.213365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155717, 0.969620, 0.188648,
		0.262612, -0.224741, 0.938363,
		0.952253, -0.096578, -0.289630,
		21.281370, 20.268147, 15.126475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.921835, 20.765955, 15.839687>,  <20.614792, 20.335751, 15.329217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.921835, 20.765955, 15.839687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.189146, 20.722788, 15.545271>,  <21.349533, 20.696888, 15.368621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.189146, 20.722788, 15.545271>,  <20.921835, 20.765955, 15.839687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.189146, 20.722788, 15.545271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288261, 0.949687, 0.122478,
		0.685791, -0.294021, 0.665764,
		0.668279, -0.107919, -0.736041,
		21.389629, 20.690413, 15.324458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.630005, 20.875751, 16.146204>,  <20.921835, 20.765955, 15.839687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.630005, 20.875751, 16.146204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.655386, 20.943565, 15.752811>,  <21.670614, 20.984253, 15.516776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.655386, 20.943565, 15.752811>,  <21.630005, 20.875751, 16.146204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.655386, 20.943565, 15.752811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487313, 0.854730, 0.178779,
		0.870919, -0.490606, -0.028382,
		0.063451, 0.169533, -0.983480,
		21.674421, 20.994425, 15.457767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.308350, 21.204519, 16.100933>,  <21.630005, 20.875751, 16.146204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.308350, 21.204519, 16.100933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.119074, 21.286060, 15.758114>,  <22.005508, 21.334986, 15.552422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.119074, 21.286060, 15.758114>,  <22.308350, 21.204519, 16.100933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.119074, 21.286060, 15.758114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351425, 0.935781, 0.028553,
		0.807831, -0.287678, -0.514442,
		-0.473191, 0.203854, -0.857050,
		21.977118, 21.347216, 15.500999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.796724, 21.523600, 15.679190>,  <22.308350, 21.204519, 16.100933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.796724, 21.523600, 15.679190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.465418, 21.658516, 15.500210>,  <22.266634, 21.739466, 15.392822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.465418, 21.658516, 15.500210>,  <22.796724, 21.523600, 15.679190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.465418, 21.658516, 15.500210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523495, 0.750557, -0.403259,
		0.199821, -0.568243, -0.798230,
		-0.828266, 0.337290, -0.447449,
		22.216938, 21.759703, 15.365975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.947721, 21.722380, 14.977392>,  <22.796724, 21.523600, 15.679190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.947721, 21.722380, 14.977392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.602598, 21.909374, 15.054347>,  <22.395523, 22.021572, 15.100520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.602598, 21.909374, 15.054347>,  <22.947721, 21.722380, 14.977392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.602598, 21.909374, 15.054347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372224, 0.845000, -0.383958,
		-0.342064, -0.259671, -0.903085,
		-0.862810, 0.467488, 0.192388,
		22.343756, 22.049622, 15.112063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.920475, 22.181969, 14.476865>,  <22.947721, 21.722380, 14.977392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.920475, 22.181969, 14.476865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.651421, 22.307440, 14.744946>,  <22.489988, 22.382723, 14.905794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.651421, 22.307440, 14.744946>,  <22.920475, 22.181969, 14.476865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.651421, 22.307440, 14.744946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299026, 0.943685, -0.141568,
		-0.676866, 0.105184, -0.728553,
		-0.672634, 0.313679, 0.670201,
		22.449631, 22.401543, 14.946006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.711050, 22.731236, 14.124016>,  <22.920475, 22.181969, 14.476865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.711050, 22.731236, 14.124016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.621300, 22.802639, 14.507221>,  <22.567450, 22.845482, 14.737144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.621300, 22.802639, 14.507221>,  <22.711050, 22.731236, 14.124016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.621300, 22.802639, 14.507221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310074, 0.945065, -0.103474,
		-0.923856, 0.273839, -0.267400,
		-0.224375, 0.178509, 0.958014,
		22.553988, 22.856192, 14.794625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.287462, 23.331154, 14.100055>,  <22.711050, 22.731236, 14.124016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.287462, 23.331154, 14.100055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.411406, 23.301773, 14.479232>,  <22.485771, 23.284145, 14.706738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.411406, 23.301773, 14.479232>,  <22.287462, 23.331154, 14.100055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.411406, 23.301773, 14.479232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414898, 0.907522, -0.065299,
		-0.855482, 0.413533, 0.311676,
		0.309856, -0.073451, 0.947942,
		22.504362, 23.279737, 14.763615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.004101, 23.880669, 14.483106>,  <22.287462, 23.331154, 14.100055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.004101, 23.880669, 14.483106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.337580, 23.745834, 14.658066>,  <22.537668, 23.664934, 14.763041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.337580, 23.745834, 14.658066>,  <22.004101, 23.880669, 14.483106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.337580, 23.745834, 14.658066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349491, 0.935342, 0.054685,
		-0.427553, 0.107277, 0.897602,
		0.833699, -0.337085, 0.437401,
		22.587690, 23.644709, 14.789286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.018843, 24.255064, 15.121839>,  <22.004101, 23.880669, 14.483106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.018843, 24.255064, 15.121839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.392496, 24.119938, 15.075751>,  <22.616688, 24.038862, 15.048100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.392496, 24.119938, 15.075751>,  <22.018843, 24.255064, 15.121839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.392496, 24.119938, 15.075751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351351, 0.927135, 0.130277,
		0.062813, -0.162179, 0.984760,
		0.934134, -0.337814, -0.115218,
		22.672737, 24.018593, 15.041186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.461832, 24.708902, 15.549590>,  <22.018843, 24.255064, 15.121839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.461832, 24.708902, 15.549590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.705526, 24.534649, 15.284545>,  <22.851744, 24.430098, 15.125518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.705526, 24.534649, 15.284545>,  <22.461832, 24.708902, 15.549590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.705526, 24.534649, 15.284545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491737, 0.863076, -0.115300,
		0.622113, -0.255586, 0.740034,
		0.609237, -0.435632, -0.662612,
		22.888298, 24.403959, 15.085761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.207989, 24.906595, 15.757065>,  <22.461832, 24.708902, 15.549590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.207989, 24.906595, 15.757065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.230299, 24.801853, 15.371667>,  <23.243685, 24.739008, 15.140429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.230299, 24.801853, 15.371667>,  <23.207989, 24.906595, 15.757065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.230299, 24.801853, 15.371667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445154, 0.870298, -0.210758,
		0.893715, -0.417148, 0.165106,
		0.055774, -0.261855, -0.963494,
		23.247032, 24.723297, 15.082619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.868719, 24.955883, 15.665851>,  <23.207989, 24.906595, 15.757065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.868719, 24.955883, 15.665851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.658928, 24.998573, 15.327968>,  <23.533052, 25.024187, 15.125237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.658928, 24.998573, 15.327968>,  <23.868719, 24.955883, 15.665851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.658928, 24.998573, 15.327968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579877, 0.771220, -0.262607,
		0.623430, -0.627558, -0.466375,
		-0.524479, 0.106724, -0.844708,
		23.501585, 25.030590, 15.074555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.393740, 25.076273, 15.103271>,  <23.868719, 24.955883, 15.665851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.393740, 25.076273, 15.103271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.028913, 25.218555, 15.021673>,  <23.810019, 25.303925, 14.972714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.028913, 25.218555, 15.021673>,  <24.393740, 25.076273, 15.103271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.028913, 25.218555, 15.021673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410007, 0.798217, -0.441298,
		0.005859, -0.486130, -0.873867,
		-0.912063, 0.355706, -0.203993,
		23.755295, 25.325268, 14.960475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.400330, 25.080524, 14.340370>,  <24.393740, 25.076273, 15.103271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.400330, 25.080524, 14.340370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.692501, 24.849966, 14.193814>,  <24.867804, 24.711632, 14.105881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.692501, 24.849966, 14.193814>,  <24.400330, 25.080524, 14.340370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.692501, 24.849966, 14.193814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656435, -0.444344, -0.609632,
		0.188585, 0.685805, -0.702928,
		0.730431, -0.576394, -0.366389,
		24.911631, 24.677048, 14.083898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.349815, 24.939865, 13.566361>,  <24.400330, 25.080524, 14.340370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.349815, 24.939865, 13.566361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.586514, 24.635723, 13.673463>,  <24.728533, 24.453238, 13.737724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.586514, 24.635723, 13.673463>,  <24.349815, 24.939865, 13.566361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.586514, 24.635723, 13.673463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408103, -0.569008, -0.713921,
		0.695189, 0.313189, -0.647012,
		0.591747, -0.760357, 0.267755,
		24.764038, 24.407616, 13.753789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.607203, 24.673513, 12.983896>,  <24.349815, 24.939865, 13.566361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.607203, 24.673513, 12.983896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.609516, 24.380684, 13.256377>,  <24.610905, 24.204987, 13.419866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.609516, 24.380684, 13.256377>,  <24.607203, 24.673513, 12.983896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.609516, 24.380684, 13.256377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304687, -0.650114, -0.696073,
		0.952435, -0.203527, -0.226813,
		0.005785, -0.732072, 0.681203,
		24.611252, 24.161062, 13.460738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.529587, 24.154156, 12.549120>,  <24.607203, 24.673513, 12.983896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.529587, 24.154156, 12.549120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.544125, 23.989920, 12.913558>,  <24.552847, 23.891378, 13.132221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.544125, 23.989920, 12.913558>,  <24.529587, 24.154156, 12.549120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.544125, 23.989920, 12.913558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409329, -0.837826, -0.361245,
		0.911663, -0.359809, -0.198516,
		0.036343, -0.410592, 0.911095,
		24.555027, 23.866741, 13.186887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.896606, 23.425308, 12.669423>,  <24.529587, 24.154156, 12.549120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.896606, 23.425308, 12.669423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.598465, 23.487022, 12.928852>,  <24.419580, 23.524052, 13.084510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.598465, 23.487022, 12.928852>,  <24.896606, 23.425308, 12.669423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.598465, 23.487022, 12.928852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496112, -0.778228, -0.385011,
		0.445336, -0.608734, 0.656597,
		-0.745351, 0.154286, 0.648573,
		24.374859, 23.533308, 13.123424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.824495, 22.738880, 12.997254>,  <24.896606, 23.425308, 12.669423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.824495, 22.738880, 12.997254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.481289, 22.944330, 12.997573>,  <24.275366, 23.067600, 12.997764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.481289, 22.944330, 12.997573>,  <24.824495, 22.738880, 12.997254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.481289, 22.944330, 12.997573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499368, -0.833838, -0.235257,
		-0.120170, -0.202252, 0.971933,
		-0.858016, 0.513623, 0.000796,
		24.223885, 23.098417, 12.997811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.535547, 22.487413, 13.539380>,  <24.824495, 22.738880, 12.997254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.535547, 22.487413, 13.539380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.309586, 22.588421, 13.225152>,  <24.174009, 22.649025, 13.036615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.309586, 22.588421, 13.225152>,  <24.535547, 22.487413, 13.539380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.309586, 22.588421, 13.225152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387614, -0.921655, -0.017531,
		-0.728451, 0.294595, 0.618525,
		-0.564903, 0.252519, -0.785569,
		24.140116, 22.664177, 12.989481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.800718, 22.292894, 13.613967>,  <24.535547, 22.487413, 13.539380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.800718, 22.292894, 13.613967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.871481, 22.291050, 13.220280>,  <23.913939, 22.289944, 12.984068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.871481, 22.291050, 13.220280>,  <23.800718, 22.292894, 13.613967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.871481, 22.291050, 13.220280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408475, -0.910146, -0.069157,
		-0.895462, 0.414263, -0.162893,
		0.176906, -0.004610, -0.984217,
		23.924553, 22.289667, 12.925014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.144180, 21.941748, 13.279340>,  <23.800718, 22.292894, 13.613967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.144180, 21.941748, 13.279340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.467028, 21.890322, 13.048852>,  <23.660736, 21.859467, 12.910559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.467028, 21.890322, 13.048852>,  <23.144180, 21.941748, 13.279340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.467028, 21.890322, 13.048852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343997, -0.895619, -0.282014,
		-0.479817, 0.425837, -0.767097,
		0.807119, -0.128564, -0.576221,
		23.709164, 21.851753, 12.875986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.980465, 21.684759, 12.530123>,  <23.144180, 21.941748, 13.279340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.980465, 21.684759, 12.530123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.359335, 21.577881, 12.601077>,  <23.586657, 21.513754, 12.643649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.359335, 21.577881, 12.601077>,  <22.980465, 21.684759, 12.530123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.359335, 21.577881, 12.601077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175278, -0.894446, -0.411393,
		0.268584, 0.358569, -0.894031,
		0.947175, -0.267198, 0.177385,
		23.643488, 21.497721, 12.654292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.030243, 21.160458, 12.077039>,  <22.980465, 21.684759, 12.530123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.030243, 21.160458, 12.077039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.358154, 21.128239, 12.303835>,  <23.554901, 21.108908, 12.439913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.358154, 21.128239, 12.303835>,  <23.030243, 21.160458, 12.077039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.358154, 21.128239, 12.303835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029834, -0.994722, -0.098173,
		0.571906, 0.063564, -0.817853,
		0.819776, -0.080545, 0.566991,
		23.604088, 21.104074, 12.473932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.454334, 20.546251, 11.680639>,  <23.030243, 21.160458, 12.077039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.454334, 20.546251, 11.680639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.570465, 20.580738, 12.061853>,  <23.640144, 20.601431, 12.290582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.570465, 20.580738, 12.061853>,  <23.454334, 20.546251, 11.680639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.570465, 20.580738, 12.061853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000417, -0.995944, 0.089973,
		0.956927, -0.025725, -0.289187,
		0.290328, 0.086218, 0.953035,
		23.657564, 20.606604, 12.347764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.022558, 20.116365, 11.770487>,  <23.454334, 20.546251, 11.680639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.022558, 20.116365, 11.770487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.855146, 20.162785, 12.130790>,  <23.754700, 20.190636, 12.346972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.855146, 20.162785, 12.130790>,  <24.022558, 20.116365, 11.770487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.855146, 20.162785, 12.130790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134841, -0.972871, 0.187990,
		0.898137, 0.200139, 0.391528,
		-0.418531, 0.116047, 0.900758,
		23.729588, 20.197599, 12.401017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.451698, 19.674404, 12.172507>,  <24.022558, 20.116365, 11.770487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.451698, 19.674404, 12.172507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.126287, 19.748545, 12.392987>,  <23.931042, 19.793028, 12.525275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.126287, 19.748545, 12.392987>,  <24.451698, 19.674404, 12.172507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.126287, 19.748545, 12.392987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034949, -0.961716, 0.271811,
		0.580479, 0.201861, 0.788858,
		-0.813525, 0.185350, 0.551201,
		23.882231, 19.804150, 12.558348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.486017, 19.232285, 12.774963>,  <24.451698, 19.674404, 12.172507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.486017, 19.232285, 12.774963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.097948, 19.328911, 12.783036>,  <23.865107, 19.386887, 12.787880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.097948, 19.328911, 12.783036>,  <24.486017, 19.232285, 12.774963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.097948, 19.328911, 12.783036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223869, -0.924796, 0.307630,
		0.092978, 0.293936, 0.951292,
		-0.970174, 0.241567, 0.020183,
		23.806896, 19.401381, 12.789091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.260555, 18.999699, 13.391529>,  <24.486017, 19.232285, 12.774963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.260555, 18.999699, 13.391529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.929655, 19.029112, 13.168730>,  <23.731115, 19.046761, 13.035050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.929655, 19.029112, 13.168730>,  <24.260555, 18.999699, 13.391529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.929655, 19.029112, 13.168730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337781, -0.857311, 0.388487,
		-0.448954, 0.509520, 0.734050,
		-0.827251, 0.073535, -0.556999,
		23.681480, 19.051172, 13.001630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.771437, 18.816208, 13.823431>,  <24.260555, 18.999699, 13.391529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.771437, 18.816208, 13.823431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.579796, 18.777411, 13.474477>,  <23.464811, 18.754131, 13.265104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.579796, 18.777411, 13.474477>,  <23.771437, 18.816208, 13.823431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.579796, 18.777411, 13.474477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435294, -0.836800, 0.332094,
		-0.762222, 0.538850, 0.358691,
		-0.479101, -0.096993, -0.872385,
		23.436066, 18.748312, 13.212761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.130672, 18.857943, 13.988382>,  <23.771437, 18.816208, 13.823431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.130672, 18.857943, 13.988382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.154436, 18.652678, 13.645889>,  <23.168695, 18.529518, 13.440393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.154436, 18.652678, 13.645889>,  <23.130672, 18.857943, 13.988382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.154436, 18.652678, 13.645889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480775, -0.766420, 0.425976,
		-0.874829, 0.386348, -0.292250,
		0.059411, -0.513163, -0.856233,
		23.172260, 18.498728, 13.389020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.503239, 18.526344, 13.925833>,  <23.130672, 18.857943, 13.988382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.503239, 18.526344, 13.925833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.735619, 18.323076, 13.671508>,  <22.875048, 18.201115, 13.518913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.735619, 18.323076, 13.671508>,  <22.503239, 18.526344, 13.925833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.735619, 18.323076, 13.671508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425226, -0.855568, 0.295274,
		-0.694030, 0.098824, -0.713131,
		0.580952, -0.508171, -0.635812,
		22.909904, 18.170626, 13.480764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.072475, 18.005466, 13.574584>,  <22.503239, 18.526344, 13.925833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.072475, 18.005466, 13.574584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.448441, 17.870810, 13.551830>,  <22.674019, 17.790014, 13.538177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.448441, 17.870810, 13.551830>,  <22.072475, 18.005466, 13.574584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.448441, 17.870810, 13.551830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302610, -0.898584, 0.317765,
		-0.158090, -0.281457, -0.946462,
		0.939912, -0.336644, -0.056885,
		22.730413, 17.769815, 13.534765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.105875, 17.340891, 13.168075>,  <22.072475, 18.005466, 13.574584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.105875, 17.340891, 13.168075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.420527, 17.333139, 13.414924>,  <22.609318, 17.328489, 13.563033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.420527, 17.333139, 13.414924>,  <22.105875, 17.340891, 13.168075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.420527, 17.333139, 13.414924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240867, -0.929945, 0.277822,
		0.568506, -0.367187, -0.736189,
		0.786628, -0.019379, 0.617123,
		22.656515, 17.327326, 13.600060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.180367, 16.663965, 13.189299>,  <22.105875, 17.340891, 13.168075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.180367, 16.663965, 13.189299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.445627, 16.793272, 13.459329>,  <22.604784, 16.870855, 13.621346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.445627, 16.793272, 13.459329>,  <22.180367, 16.663965, 13.189299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.445627, 16.793272, 13.459329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022514, -0.910131, 0.413709,
		0.748145, -0.259153, -0.610834,
		0.663153, 0.323267, 0.675075,
		22.644573, 16.890251, 13.661851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.809975, 16.223490, 13.178663>,  <22.180367, 16.663965, 13.189299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.809975, 16.223490, 13.178663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.754971, 16.384085, 13.540856>,  <22.721968, 16.480442, 13.758172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.754971, 16.384085, 13.540856>,  <22.809975, 16.223490, 13.178663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.754971, 16.384085, 13.540856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008793, -0.913636, 0.406437,
		0.990461, 0.063851, 0.122104,
		-0.137510, 0.401487, 0.905483,
		22.713718, 16.504530, 13.812501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.155296, 15.704977, 13.669975>,  <22.809975, 16.223490, 13.178663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.155296, 15.704977, 13.669975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.930256, 15.933060, 13.909423>,  <22.795231, 16.069910, 14.053091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.930256, 15.933060, 13.909423>,  <23.155296, 15.704977, 13.669975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.930256, 15.933060, 13.909423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009819, -0.728638, 0.684829,
		0.826671, 0.379407, 0.415531,
		-0.562601, 0.570208, 0.598618,
		22.761477, 16.104122, 14.089008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.376139, 15.576365, 14.414156>,  <23.155296, 15.704977, 13.669975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.376139, 15.576365, 14.414156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.010983, 15.736671, 14.445186>,  <22.791889, 15.832855, 14.463803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.010983, 15.736671, 14.445186>,  <23.376139, 15.576365, 14.414156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.010983, 15.736671, 14.445186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253945, -0.706346, 0.660747,
		0.319600, 0.583490, 0.746589,
		-0.912890, 0.400768, 0.077573,
		22.737116, 15.856902, 14.468457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.227266, 15.708739, 15.107944>,  <23.376139, 15.576365, 14.414156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.227266, 15.708739, 15.107944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.868828, 15.682943, 14.932284>,  <22.653765, 15.667466, 14.826889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.868828, 15.682943, 14.932284>,  <23.227266, 15.708739, 15.107944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.868828, 15.682943, 14.932284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329422, -0.566459, 0.755385,
		-0.297473, 0.821563, 0.486358,
		-0.896098, -0.064489, -0.439147,
		22.599998, 15.663596, 14.800540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.733349, 15.248749, 15.519190>,  <23.227266, 15.708739, 15.107944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.733349, 15.248749, 15.519190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.031048, 15.510696, 15.571716>,  <24.209667, 15.667865, 15.603232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.031048, 15.510696, 15.571716>,  <23.733349, 15.248749, 15.519190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.031048, 15.510696, 15.571716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602375, -0.573196, -0.555509,
		-0.288516, 0.492537, -0.821076,
		0.744247, 0.654869, 0.131316,
		24.254322, 15.707157, 15.611111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.016190, 15.540818, 14.951125>,  <23.733349, 15.248749, 15.519190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.016190, 15.540818, 14.951125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.277275, 15.464197, 15.244320>,  <24.433928, 15.418224, 15.420237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.277275, 15.464197, 15.244320>,  <24.016190, 15.540818, 14.951125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.277275, 15.464197, 15.244320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466241, -0.661029, -0.587928,
		0.597145, 0.725499, -0.342155,
		0.652716, -0.191552, 0.732987,
		24.473089, 15.406732, 15.464216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.659222, 15.445420, 14.593674>,  <24.016190, 15.540818, 14.951125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.659222, 15.445420, 14.593674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.687033, 15.283018, 14.958162>,  <24.703718, 15.185576, 15.176856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.687033, 15.283018, 14.958162>,  <24.659222, 15.445420, 14.593674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.687033, 15.283018, 14.958162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450676, -0.802121, -0.391781,
		0.889976, 0.437905, 0.127208,
		0.069526, -0.406006, 0.911222,
		24.707891, 15.161217, 15.231529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.357468, 15.296162, 14.764617>,  <24.659222, 15.445420, 14.593674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.357468, 15.296162, 14.764617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.115982, 15.047664, 14.964450>,  <24.971090, 14.898564, 15.084350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.115982, 15.047664, 14.964450>,  <25.357468, 15.296162, 14.764617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.115982, 15.047664, 14.964450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395669, -0.777539, -0.488752,
		0.692079, -0.097398, 0.715220,
		-0.603716, -0.621246, 0.499581,
		24.934868, 14.861290, 15.114325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.773584, 14.783401, 15.096609>,  <25.357468, 15.296162, 14.764617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.773584, 14.783401, 15.096609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.407721, 14.671495, 14.979901>,  <25.188202, 14.604352, 14.909877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.407721, 14.671495, 14.979901>,  <25.773584, 14.783401, 15.096609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.407721, 14.671495, 14.979901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388528, -0.807640, -0.443580,
		-0.111548, -0.519086, 0.847412,
		-0.914660, -0.279763, -0.291770,
		25.133322, 14.587566, 14.892370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.543526, 14.721327, 15.263720>,  <25.773584, 14.783401, 15.096609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.543526, 14.721327, 15.263720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.872063, 14.876042, 15.096010>,  <27.069185, 14.968872, 14.995384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.872063, 14.876042, 15.096010>,  <26.543526, 14.721327, 15.263720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.872063, 14.876042, 15.096010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109866, -0.613982, -0.781636,
		-0.559756, 0.688055, -0.461794,
		0.821342, 0.386790, -0.419274,
		27.118465, 14.992080, 14.970228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<12.449483, 15.959261, 24.073359> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.111006, 15.774538, 23.967007>,  <11.907920, 15.663705, 23.903194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.111006, 15.774538, 23.967007>,  <12.449483, 15.959261, 24.073359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.111006, 15.774538, 23.967007> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139070, 0.290277, -0.946783,
		0.514409, -0.838138, -0.181407,
		-0.846193, -0.461806, -0.265881,
		11.857148, 15.635996, 23.887243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.657017, 15.576287, 23.470015>,  <12.449483, 15.959261, 24.073359>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.657017, 15.576287, 23.470015> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.258644, 15.586762, 23.435524>,  <12.019621, 15.593047, 23.414829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.258644, 15.586762, 23.435524>,  <12.657017, 15.576287, 23.470015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.258644, 15.586762, 23.435524> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088233, 0.088715, -0.992141,
		-0.018333, -0.995713, -0.090665,
		-0.995931, 0.026189, -0.086229,
		11.959865, 15.594619, 23.409655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.477479, 15.090522, 22.884382>,  <12.657017, 15.576287, 23.470015>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.477479, 15.090522, 22.884382> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.167441, 15.338910, 22.931074>,  <11.981419, 15.487943, 22.959089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.167441, 15.338910, 22.931074>,  <12.477479, 15.090522, 22.884382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.167441, 15.338910, 22.931074> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013288, 0.200723, -0.979558,
		-0.631707, -0.757698, -0.163830,
		-0.775094, 0.620970, 0.116730,
		11.934914, 15.525201, 22.966093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.135646, 15.002005, 22.264318>,  <12.477479, 15.090522, 22.884382>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.135646, 15.002005, 22.264318> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.013177, 15.356022, 22.404581>,  <11.939695, 15.568432, 22.488739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.013177, 15.356022, 22.404581>,  <12.135646, 15.002005, 22.264318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.013177, 15.356022, 22.404581> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098361, 0.336962, -0.936366,
		-0.946881, -0.321179, -0.016115,
		-0.306171, 0.885043, 0.350654,
		11.921326, 15.621534, 22.509777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.538639, 15.100226, 22.016806>,  <12.135646, 15.002005, 22.264318>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.538639, 15.100226, 22.016806> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.658380, 15.472659, 22.100210>,  <11.730224, 15.696118, 22.150253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.658380, 15.472659, 22.100210>,  <11.538639, 15.100226, 22.016806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.658380, 15.472659, 22.100210> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117805, 0.252926, -0.960287,
		-0.946842, 0.262901, 0.185400,
		0.299352, 0.931081, 0.208510,
		11.748185, 15.751984, 22.162764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.232336, 15.438786, 21.550283>,  <11.538639, 15.100226, 22.016806>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.232336, 15.438786, 21.550283> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.496142, 15.706317, 21.687517>,  <11.654427, 15.866836, 21.769857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.496142, 15.706317, 21.687517>,  <11.232336, 15.438786, 21.550283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.496142, 15.706317, 21.687517> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062217, 0.406281, -0.911628,
		-0.749110, 0.622580, 0.226337,
		0.659517, 0.668828, 0.343085,
		11.693997, 15.906965, 21.790443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.953067, 16.163532, 21.385633>,  <11.232336, 15.438786, 21.550283>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.953067, 16.163532, 21.385633> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.350186, 16.193836, 21.422752>,  <11.588458, 16.212019, 21.445024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.350186, 16.193836, 21.422752>,  <10.953067, 16.163532, 21.385633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.350186, 16.193836, 21.422752> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057250, 0.380419, -0.923040,
		-0.105230, 0.921706, 0.373342,
		0.992799, 0.075758, 0.092799,
		11.648026, 16.216564, 21.450592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.094688, 16.786377, 20.946478>,  <10.953067, 16.163532, 21.385633>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.094688, 16.786377, 20.946478> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.438644, 16.589363, 21.000143>,  <11.645018, 16.471155, 21.032343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.438644, 16.589363, 21.000143>,  <11.094688, 16.786377, 20.946478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.438644, 16.589363, 21.000143> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269552, 0.214899, -0.938701,
		0.433510, 0.843344, 0.317553,
		0.859890, -0.492533, 0.134164,
		11.696611, 16.441603, 21.040392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.524524, 17.215218, 20.815573>,  <11.094688, 16.786377, 20.946478>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.524524, 17.215218, 20.815573> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.719433, 16.871464, 20.753572>,  <11.836378, 16.665213, 20.716372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.719433, 16.871464, 20.753572>,  <11.524524, 17.215218, 20.815573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.719433, 16.871464, 20.753572> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245546, 0.305178, -0.920094,
		0.838017, 0.410277, 0.359723,
		0.487273, -0.859383, -0.155002,
		11.865615, 16.613649, 20.707071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.239604, 17.366127, 20.592346>,  <11.524524, 17.215218, 20.815573>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.239604, 17.366127, 20.592346> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.149818, 16.992205, 20.482254>,  <12.095947, 16.767851, 20.416199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.149818, 16.992205, 20.482254>,  <12.239604, 17.366127, 20.592346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.149818, 16.992205, 20.482254> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401472, 0.168643, -0.900211,
		0.887939, -0.312563, 0.337444,
		-0.224465, -0.934807, -0.275229,
		12.082479, 16.711763, 20.399685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.886756, 17.028824, 20.366356>,  <12.239604, 17.366127, 20.592346>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.886756, 17.028824, 20.366356> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.607734, 16.803150, 20.189669>,  <12.440320, 16.667746, 20.083656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.607734, 16.803150, 20.189669>,  <12.886756, 17.028824, 20.366356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.607734, 16.803150, 20.189669> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515401, 0.033190, -0.856306,
		0.497773, -0.824983, 0.267628,
		-0.697556, -0.564182, -0.441718,
		12.398467, 16.633896, 20.057154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.160238, 16.406813, 20.116917>,  <12.886756, 17.028824, 20.366356>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.160238, 16.406813, 20.116917> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.823953, 16.409801, 19.900345>,  <12.622182, 16.411594, 19.770401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.823953, 16.409801, 19.900345>,  <13.160238, 16.406813, 20.116917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.823953, 16.409801, 19.900345> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537842, -0.104205, -0.836581,
		-0.062666, -0.994528, 0.083591,
		-0.840713, 0.007467, -0.541429,
		12.571739, 16.412043, 19.737917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.072115, 15.737378, 19.732508>,  <13.160238, 16.406813, 20.116917>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.072115, 15.737378, 19.732508> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.834086, 15.982755, 19.524824>,  <12.691269, 16.129980, 19.400213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.834086, 15.982755, 19.524824>,  <13.072115, 15.737378, 19.732508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.834086, 15.982755, 19.524824> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403737, -0.330427, -0.853121,
		-0.694901, -0.717292, -0.051041,
		-0.595071, 0.613441, -0.519211,
		12.655565, 16.166786, 19.369061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.993051, 15.383488, 19.154713>,  <13.072115, 15.737378, 19.732508>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.993051, 15.383488, 19.154713> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.865320, 15.746849, 19.046761>,  <12.788682, 15.964866, 18.981989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.865320, 15.746849, 19.046761>,  <12.993051, 15.383488, 19.154713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.865320, 15.746849, 19.046761> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378278, -0.138928, -0.915207,
		-0.868871, -0.394340, -0.299265,
		-0.319327, 0.908402, -0.269881,
		12.769522, 16.019369, 18.965796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.481449, 15.291545, 18.647585>,  <12.993051, 15.383488, 19.154713>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.481449, 15.291545, 18.647585> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.637126, 15.659582, 18.629879>,  <12.730533, 15.880404, 18.619255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.637126, 15.659582, 18.629879>,  <12.481449, 15.291545, 18.647585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.637126, 15.659582, 18.629879> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217323, -0.138412, -0.966236,
		-0.895153, 0.366432, -0.253826,
		0.389193, 0.920092, -0.044266,
		12.753883, 15.935610, 18.616600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.266079, 15.567039, 18.029650>,  <12.481449, 15.291545, 18.647585>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.266079, 15.567039, 18.029650> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.607871, 15.746091, 18.135094>,  <12.812946, 15.853521, 18.198360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.607871, 15.746091, 18.135094>,  <12.266079, 15.567039, 18.029650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.607871, 15.746091, 18.135094> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343024, -0.105101, -0.933428,
		-0.390123, 0.888022, -0.243354,
		0.854481, 0.447628, 0.263611,
		12.864216, 15.880380, 18.214176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.580305, 15.815413, 17.448887>,  <12.266079, 15.567039, 18.029650>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.580305, 15.815413, 17.448887> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.892574, 15.877375, 17.691063>,  <13.079936, 15.914552, 17.836369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.892574, 15.877375, 17.691063>,  <12.580305, 15.815413, 17.448887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.892574, 15.877375, 17.691063> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607897, 0.036489, -0.793177,
		-0.144957, 0.987256, -0.065679,
		0.780672, 0.154903, 0.605439,
		13.126776, 15.923845, 17.872694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.036031, 16.297033, 17.041523>,  <12.580305, 15.815413, 17.448887>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.036031, 16.297033, 17.041523> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.252912, 16.093155, 17.308725>,  <13.383039, 15.970828, 17.469046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.252912, 16.093155, 17.308725>,  <13.036031, 16.297033, 17.041523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.252912, 16.093155, 17.308725> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764044, -0.031752, -0.644382,
		0.349648, 0.859770, 0.372213,
		0.542201, -0.509694, 0.668004,
		13.415572, 15.940247, 17.509127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.634854, 16.607376, 16.852394>,  <13.036031, 16.297033, 17.041523>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.634854, 16.607376, 16.852394> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.734107, 16.304939, 17.094635>,  <13.793658, 16.123476, 17.239979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.734107, 16.304939, 17.094635>,  <13.634854, 16.607376, 16.852394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.734107, 16.304939, 17.094635> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783589, -0.210913, -0.584383,
		0.569577, 0.619547, 0.540133,
		0.248131, -0.756094, 0.605602,
		13.808546, 16.078112, 17.276316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.373684, 16.721468, 17.005779>,  <13.634854, 16.607376, 16.852394>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.373684, 16.721468, 17.005779> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.275472, 16.336720, 17.053972>,  <14.216544, 16.105869, 17.082888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.275472, 16.336720, 17.053972>,  <14.373684, 16.721468, 17.005779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.275472, 16.336720, 17.053972> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744301, -0.266686, -0.612286,
		0.621073, -0.060659, 0.781402,
		-0.245529, -0.961873, 0.120483,
		14.201813, 16.048157, 17.090117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.030701, 16.386763, 17.076441>,  <14.373684, 16.721468, 17.005779>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.030701, 16.386763, 17.076441> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.794826, 16.077829, 16.981977>,  <14.653300, 15.892470, 16.925299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.794826, 16.077829, 16.981977>,  <15.030701, 16.386763, 17.076441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.794826, 16.077829, 16.981977> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610524, -0.234866, -0.756372,
		0.528704, -0.590206, 0.610024,
		-0.589689, -0.772331, -0.236161,
		14.617919, 15.846130, 16.911129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.563112, 15.838552, 16.882160>,  <15.030701, 16.386763, 17.076441>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.563112, 15.838552, 16.882160> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.198050, 15.742764, 16.749666>,  <14.979013, 15.685292, 16.670170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.198050, 15.742764, 16.749666>,  <15.563112, 15.838552, 16.882160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.198050, 15.742764, 16.749666> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398910, -0.345245, -0.849516,
		0.089075, -0.907447, 0.410616,
		-0.912654, -0.239469, -0.331237,
		14.924254, 15.670924, 16.650295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.347542, 15.812494, 16.737461>,  <15.563112, 15.838552, 16.882160>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.347542, 15.812494, 16.737461> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.668283, 16.043484, 16.798847>,  <16.860729, 16.182077, 16.835680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.668283, 16.043484, 16.798847>,  <16.347542, 15.812494, 16.737461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.668283, 16.043484, 16.798847> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036172, -0.209456, 0.977149,
		0.596423, -0.789083, -0.147065,
		0.801855, 0.577474, 0.153467,
		16.908840, 16.216726, 16.844887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.828077, 15.460970, 17.207684>,  <16.347542, 15.812494, 16.737461>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.828077, 15.460970, 17.207684> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.913794, 15.851007, 17.230566>,  <16.965223, 16.085030, 17.244295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.913794, 15.851007, 17.230566>,  <16.828077, 15.460970, 17.207684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.913794, 15.851007, 17.230566> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122877, -0.031192, 0.991932,
		0.969010, -0.219593, 0.113132,
		0.214292, 0.975093, 0.057208,
		16.978081, 16.143536, 17.247728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.337490, 15.465921, 17.737902>,  <16.828077, 15.460970, 17.207684>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.337490, 15.465921, 17.737902> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.205183, 15.842013, 17.705498>,  <17.125799, 16.067669, 17.686056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.205183, 15.842013, 17.705498>,  <17.337490, 15.465921, 17.737902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.205183, 15.842013, 17.705498> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039009, 0.072145, 0.996631,
		0.942906, 0.332813, 0.012814,
		-0.330767, 0.940229, -0.081008,
		17.105953, 16.124083, 17.681194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.810068, 15.886559, 18.213209>,  <17.337490, 15.465921, 17.737902>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.810068, 15.886559, 18.213209> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.465376, 16.078770, 18.148081>,  <17.258560, 16.194096, 18.109003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.465376, 16.078770, 18.148081>,  <17.810068, 15.886559, 18.213209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.465376, 16.078770, 18.148081> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084769, 0.180049, 0.979998,
		0.500232, 0.858299, -0.114420,
		-0.861732, 0.480527, -0.162823,
		17.206856, 16.222927, 18.099234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.998373, 16.529001, 18.533888>,  <17.810068, 15.886559, 18.213209>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.998373, 16.529001, 18.533888> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.598953, 16.542351, 18.516968>,  <17.359303, 16.550360, 18.506815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.598953, 16.542351, 18.516968>,  <17.998373, 16.529001, 18.533888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.598953, 16.542351, 18.516968> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037065, 0.144333, 0.988835,
		0.039105, 0.988966, -0.142886,
		-0.998547, 0.033372, -0.042301,
		17.299389, 16.552362, 18.504278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.857197, 17.067305, 19.029655>,  <17.998373, 16.529001, 18.533888>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.857197, 17.067305, 19.029655> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.518810, 16.857368, 18.991953>,  <17.315779, 16.731407, 18.969332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.518810, 16.857368, 18.991953>,  <17.857197, 17.067305, 19.029655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.518810, 16.857368, 18.991953> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060284, -0.081499, 0.994848,
		-0.529817, 0.847291, 0.037306,
		-0.845967, -0.524838, -0.094258,
		17.265020, 16.699917, 18.963675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.411615, 17.313869, 19.535435>,  <17.857197, 17.067305, 19.029655>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.411615, 17.313869, 19.535435> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.216520, 16.979650, 19.434259>,  <17.099464, 16.779119, 19.373554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.216520, 16.979650, 19.434259>,  <17.411615, 17.313869, 19.535435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.216520, 16.979650, 19.434259> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213738, -0.166628, 0.962575,
		-0.846422, 0.523545, -0.097318,
		-0.487735, -0.835545, -0.252939,
		17.070200, 16.728987, 19.358377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.830044, 17.403671, 19.866940>,  <17.411615, 17.313869, 19.535435>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.830044, 17.403671, 19.866940> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.819138, 17.015972, 19.769108>,  <16.812593, 16.783354, 19.710409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.819138, 17.015972, 19.769108>,  <16.830044, 17.403671, 19.866940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.819138, 17.015972, 19.769108> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434706, -0.208827, 0.876026,
		-0.900160, 0.130207, -0.415643,
		-0.027267, -0.969246, -0.244579,
		16.810957, 16.725199, 19.695734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.110313, 17.201887, 20.001457>,  <16.830044, 17.403671, 19.866940>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.110313, 17.201887, 20.001457> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.368202, 16.897287, 20.028149>,  <16.522936, 16.714527, 20.044163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.368202, 16.897287, 20.028149>,  <16.110313, 17.201887, 20.001457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.368202, 16.897287, 20.028149> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388272, -0.251034, 0.886694,
		-0.658465, -0.597581, -0.457516,
		0.644723, -0.761498, 0.066727,
		16.561619, 16.668839, 20.048166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.652980, 16.631907, 20.116055>,  <16.110313, 17.201887, 20.001457>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.652980, 16.631907, 20.116055> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.022591, 16.552952, 20.247026>,  <16.244358, 16.505579, 20.325609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.022591, 16.552952, 20.247026>,  <15.652980, 16.631907, 20.116055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.022591, 16.552952, 20.247026> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380149, -0.383103, 0.841854,
		-0.040732, -0.902369, -0.429035,
		0.924028, -0.197388, 0.327430,
		16.299799, 16.493734, 20.345255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.489069, 16.156105, 20.620523>,  <15.652980, 16.631907, 20.116055>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.489069, 16.156105, 20.620523> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.883483, 16.203959, 20.666866>,  <16.120131, 16.232670, 20.694672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.883483, 16.203959, 20.666866>,  <15.489069, 16.156105, 20.620523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.883483, 16.203959, 20.666866> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076806, -0.290603, 0.953756,
		0.147771, -0.949335, -0.277356,
		0.986035, 0.119635, 0.115857,
		16.179293, 16.239849, 20.701624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.699328, 15.602909, 21.045763>,  <15.489069, 16.156105, 20.620523>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.699328, 15.602909, 21.045763> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.958107, 15.904128, 21.093731>,  <16.113375, 16.084860, 21.122513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.958107, 15.904128, 21.093731>,  <15.699328, 15.602909, 21.045763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.958107, 15.904128, 21.093731> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071310, -0.096829, 0.992743,
		0.759195, -0.650802, -0.008944,
		0.646946, 0.753047, 0.119921,
		16.152191, 16.130043, 21.129707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.269535, 15.388173, 21.546221>,  <15.699328, 15.602909, 21.045763>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.269535, 15.388173, 21.546221> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.260834, 15.787991, 21.554598>,  <16.255613, 16.027882, 21.559624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.260834, 15.787991, 21.554598>,  <16.269535, 15.388173, 21.546221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.260834, 15.787991, 21.554598> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047374, -0.019895, 0.998679,
		0.998640, 0.022715, -0.046920,
		-0.021752, 0.999544, 0.020944,
		16.254309, 16.087854, 21.560881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.823505, 15.664238, 21.979641>,  <16.269535, 15.388173, 21.546221>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.823505, 15.664238, 21.979641> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.561491, 15.966462, 21.976719>,  <16.404282, 16.147797, 21.974966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.561491, 15.966462, 21.976719>,  <16.823505, 15.664238, 21.979641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.561491, 15.966462, 21.976719> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059319, -0.041784, 0.997364,
		0.753264, 0.653744, 0.072189,
		-0.655037, 0.755561, -0.007305,
		16.364981, 16.193130, 21.974527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.917551, 16.003170, 22.583418>,  <16.823505, 15.664238, 21.979641>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.917551, 16.003170, 22.583418> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.539570, 16.081614, 22.478645>,  <16.312782, 16.128679, 22.415781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.539570, 16.081614, 22.478645>,  <16.917551, 16.003170, 22.583418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.539570, 16.081614, 22.478645> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282016, -0.082172, 0.955884,
		0.165935, 0.977133, 0.132955,
		-0.944951, 0.196111, -0.261932,
		16.256084, 16.140448, 22.400066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.734800, 16.466780, 23.065062>,  <16.917551, 16.003170, 22.583418>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.734800, 16.466780, 23.065062> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.396475, 16.318380, 22.911720>,  <16.193480, 16.229340, 22.819715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.396475, 16.318380, 22.911720>,  <16.734800, 16.466780, 23.065062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.396475, 16.318380, 22.911720> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388064, -0.065223, 0.919322,
		-0.366073, 0.926340, -0.088805,
		-0.845812, -0.371001, -0.383355,
		16.142731, 16.207081, 22.796713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.209532, 16.487080, 23.624750>,  <16.734800, 16.466780, 23.065062>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.209532, 16.487080, 23.624750> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.995152, 16.265282, 23.370098>,  <15.866526, 16.132204, 23.217306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.995152, 16.265282, 23.370098>,  <16.209532, 16.487080, 23.624750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.995152, 16.265282, 23.370098> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633441, -0.234412, 0.737430,
		-0.558133, 0.798492, -0.225606,
		-0.535947, -0.554492, -0.636631,
		15.834369, 16.098934, 23.179110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.492813, 16.724024, 23.749533>,  <16.209532, 16.487080, 23.624750>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.492813, 16.724024, 23.749533> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.464646, 16.357531, 23.591766>,  <15.447746, 16.137634, 23.497107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.464646, 16.357531, 23.591766>,  <15.492813, 16.724024, 23.749533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.464646, 16.357531, 23.591766> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640214, -0.261704, 0.722245,
		-0.764963, 0.303368, -0.568155,
		-0.070417, -0.916231, -0.394414,
		15.443521, 16.082661, 23.473442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<14.742641, 16.568943, 23.739374> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.911234, 16.209015, 23.694338>,  <15.012389, 15.993058, 23.667316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.911234, 16.209015, 23.694338>,  <14.742641, 16.568943, 23.739374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.911234, 16.209015, 23.694338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631087, -0.380209, 0.676144,
		-0.651217, -0.213925, -0.728116,
		0.421480, -0.899821, -0.112594,
		15.037678, 15.939069, 23.660561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.211346, 16.125866, 23.489841>,  <14.742641, 16.568943, 23.739374>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.211346, 16.125866, 23.489841> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.504745, 15.919799, 23.667191>,  <14.680785, 15.796159, 23.773600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.504745, 15.919799, 23.667191>,  <14.211346, 16.125866, 23.489841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.504745, 15.919799, 23.667191> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675840, -0.483479, 0.556316,
		-0.072235, -0.707707, -0.702803,
		0.733500, -0.515168, 0.443373,
		14.724795, 15.765248, 23.800203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.879329, 15.556124, 23.665979>,  <14.211346, 16.125866, 23.489841>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.879329, 15.556124, 23.665979> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.196762, 15.541544, 23.908926>,  <14.387222, 15.532796, 24.054695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.196762, 15.541544, 23.908926>,  <13.879329, 15.556124, 23.665979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.196762, 15.541544, 23.908926> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534071, -0.520006, 0.666605,
		0.291537, -0.853385, -0.432135,
		0.793583, -0.036450, 0.607369,
		14.434837, 15.530609, 24.091137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.934532, 14.851590, 23.869377>,  <13.879329, 15.556124, 23.665979>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.934532, 14.851590, 23.869377> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.135023, 15.064342, 24.142397>,  <14.255318, 15.191993, 24.306210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.135023, 15.064342, 24.142397>,  <13.934532, 14.851590, 23.869377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.135023, 15.064342, 24.142397> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421128, -0.539135, 0.729373,
		0.755925, -0.653023, -0.046240,
		0.501227, 0.531879, 0.682552,
		14.285391, 15.223906, 24.347162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.012385, 14.303820, 24.333296>,  <13.934532, 14.851590, 23.869377>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.012385, 14.303820, 24.333296> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.079659, 14.658191, 24.506199>,  <14.120024, 14.870813, 24.609940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.079659, 14.658191, 24.506199>,  <14.012385, 14.303820, 24.333296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.079659, 14.658191, 24.506199> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318671, -0.366093, 0.874314,
		0.932825, -0.284794, 0.220748,
		0.168185, 0.885928, 0.432256,
		14.130115, 14.923969, 24.635876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.326411, 14.126539, 24.928551>,  <14.012385, 14.303820, 24.333296>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.326411, 14.126539, 24.928551> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.196832, 14.498020, 25.000740>,  <14.119084, 14.720908, 25.044054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.196832, 14.498020, 25.000740>,  <14.326411, 14.126539, 24.928551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.196832, 14.498020, 25.000740> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401985, -0.307803, 0.862360,
		0.856426, 0.206812, 0.473036,
		-0.323949, 0.928701, 0.180476,
		14.099648, 14.776630, 25.054882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.444884, 14.135967, 25.621429>,  <14.326411, 14.126539, 24.928551>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.444884, 14.135967, 25.621429> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.222404, 14.464103, 25.568237>,  <14.088915, 14.660984, 25.536322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.222404, 14.464103, 25.568237>,  <14.444884, 14.135967, 25.621429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.222404, 14.464103, 25.568237> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473047, -0.180955, 0.862254,
		0.683276, 0.542494, 0.488707,
		-0.556201, 0.820339, -0.132983,
		14.055543, 14.710204, 25.528343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.606590, 14.620122, 26.103617>,  <14.444884, 14.135967, 25.621429>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.606590, 14.620122, 26.103617> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.231728, 14.695456, 25.986132>,  <14.006810, 14.740656, 25.915640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.231728, 14.695456, 25.986132>,  <14.606590, 14.620122, 26.103617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.231728, 14.695456, 25.986132> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282451, 0.084701, 0.955535,
		0.204838, 0.978446, -0.026183,
		-0.937157, 0.188335, -0.293713,
		13.950581, 14.751956, 25.898018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.375317, 15.250167, 26.514561>,  <14.606590, 14.620122, 26.103617>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.375317, 15.250167, 26.514561> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.082525, 15.029214, 26.355021>,  <13.906851, 14.896642, 26.259296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.082525, 15.029214, 26.355021>,  <14.375317, 15.250167, 26.514561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.082525, 15.029214, 26.355021> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467739, -0.018246, 0.883678,
		-0.495407, 0.833391, -0.245015,
		-0.731978, -0.552383, -0.398849,
		13.862932, 14.863499, 26.235365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.910623, 15.520914, 26.824261>,  <14.375317, 15.250167, 26.514561>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.910623, 15.520914, 26.824261> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.747540, 15.191117, 26.667295>,  <13.649690, 14.993239, 26.573116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.747540, 15.191117, 26.667295>,  <13.910623, 15.520914, 26.824261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.747540, 15.191117, 26.667295> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449665, -0.192740, 0.872154,
		-0.794717, 0.532039, -0.292163,
		-0.407709, -0.824491, -0.392413,
		13.625227, 14.943769, 26.549572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.114963, 15.522234, 26.911304>,  <13.910623, 15.520914, 26.824261>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.114963, 15.522234, 26.911304> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.227348, 15.138386, 26.916803>,  <13.294780, 14.908077, 26.920103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.227348, 15.138386, 26.916803>,  <13.114963, 15.522234, 26.911304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.227348, 15.138386, 26.916803> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463548, -0.123150, 0.877472,
		-0.840347, -0.252911, -0.479430,
		0.280964, -0.959620, 0.013747,
		13.311638, 14.850500, 26.920927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.614311, 15.188428, 27.378958>,  <13.114963, 15.522234, 26.911304>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.614311, 15.188428, 27.378958> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.892403, 14.906122, 27.324472>,  <13.059258, 14.736738, 27.291782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.892403, 14.906122, 27.324472>,  <12.614311, 15.188428, 27.378958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.892403, 14.906122, 27.324472> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170826, -0.346305, 0.922438,
		-0.698195, -0.618036, -0.361324,
		0.695228, -0.705765, -0.136211,
		13.100971, 14.694392, 27.283609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.307317, 14.464218, 27.550657>,  <12.614311, 15.188428, 27.378958>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.307317, 14.464218, 27.550657> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.703722, 14.431553, 27.593035>,  <12.941566, 14.411954, 27.618462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.703722, 14.431553, 27.593035>,  <12.307317, 14.464218, 27.550657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.703722, 14.431553, 27.593035> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133255, -0.533639, 0.835148,
		-0.011665, -0.841760, -0.539725,
		0.991013, -0.081663, 0.105944,
		13.001026, 14.407054, 27.624817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.441256, 13.838833, 27.805285>,  <12.307317, 14.464218, 27.550657>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.441256, 13.838833, 27.805285> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.808247, 13.978817, 27.880930>,  <13.028441, 14.062808, 27.926317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.808247, 13.978817, 27.880930>,  <12.441256, 13.838833, 27.805285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.808247, 13.978817, 27.880930> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055620, -0.583596, 0.810137,
		0.393881, -0.732764, -0.554901,
		0.917477, 0.349961, 0.189111,
		13.083489, 14.083805, 27.937664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.817261, 13.248256, 28.073179>,  <12.441256, 13.838833, 27.805285>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.817261, 13.248256, 28.073179> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.980515, 13.581229, 28.223103>,  <13.078467, 13.781013, 28.313057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.980515, 13.581229, 28.223103>,  <12.817261, 13.248256, 28.073179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.980515, 13.581229, 28.223103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077987, -0.440850, 0.894187,
		0.909584, -0.335719, -0.244845,
		0.408135, 0.832433, 0.374808,
		13.102955, 13.830959, 28.335545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.317993, 12.955286, 28.432728>,  <12.817261, 13.248256, 28.073179>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.317993, 12.955286, 28.432728> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.285414, 13.314225, 28.606224>,  <13.265866, 13.529589, 28.710321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.285414, 13.314225, 28.606224>,  <13.317993, 12.955286, 28.432728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.285414, 13.314225, 28.606224> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204636, -0.410860, 0.888436,
		0.975444, 0.161121, -0.150166,
		-0.081449, 0.897348, 0.433742,
		13.260980, 13.583429, 28.736347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.637446, 13.093273, 29.066936>,  <13.317993, 12.955286, 28.432728>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.637446, 13.093273, 29.066936> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.448142, 13.442905, 29.110769>,  <13.334559, 13.652684, 29.137070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.448142, 13.442905, 29.110769>,  <13.637446, 13.093273, 29.066936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.448142, 13.442905, 29.110769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132440, -0.193581, 0.972104,
		0.870910, 0.445545, 0.207377,
		-0.473261, 0.874080, 0.109583,
		13.306164, 13.705130, 29.143644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.915481, 13.673104, 29.607754>,  <13.637446, 13.093273, 29.066936>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.915481, 13.673104, 29.607754> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.520533, 13.724414, 29.570559>,  <13.283564, 13.755199, 29.548243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.520533, 13.724414, 29.570559>,  <13.915481, 13.673104, 29.607754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.520533, 13.724414, 29.570559> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112451, -0.153969, 0.981656,
		0.111603, 0.979714, 0.166449,
		-0.987370, 0.128274, -0.092987,
		13.224321, 13.762896, 29.542662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.743419, 14.072158, 30.238739>,  <13.915481, 13.673104, 29.607754>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.743419, 14.072158, 30.238739> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.433469, 13.860343, 30.100662>,  <13.247499, 13.733253, 30.017817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.433469, 13.860343, 30.100662>,  <13.743419, 14.072158, 30.238739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.433469, 13.860343, 30.100662> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137720, -0.391548, 0.909793,
		-0.616930, 0.752516, 0.230472,
		-0.774875, -0.529538, -0.345194,
		13.201006, 13.701482, 29.997105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.192038, 14.141833, 30.891140>,  <13.743419, 14.072158, 30.238739>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.192038, 14.141833, 30.891140> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.054823, 13.850316, 30.654097>,  <12.972494, 13.675406, 30.511869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.054823, 13.850316, 30.654097>,  <13.192038, 14.141833, 30.891140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.054823, 13.850316, 30.654097> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518047, -0.379483, 0.766564,
		-0.783552, 0.569959, -0.247373,
		-0.343036, -0.728793, -0.592610,
		12.951912, 13.631679, 30.476313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.581904, 14.015038, 31.186705>,  <13.192038, 14.141833, 30.891140>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.581904, 14.015038, 31.186705> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.626219, 13.693022, 30.953592>,  <12.652807, 13.499812, 30.813725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.626219, 13.693022, 30.953592>,  <12.581904, 14.015038, 31.186705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.626219, 13.693022, 30.953592> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351665, -0.580210, 0.734635,
		-0.929547, 0.123557, -0.347384,
		0.110787, -0.805040, -0.582783,
		12.659454, 13.451509, 30.778757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.928957, 13.670062, 31.152727>,  <12.581904, 14.015038, 31.186705>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.928957, 13.670062, 31.152727> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.182043, 13.375638, 31.056488>,  <12.333895, 13.198983, 30.998745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.182043, 13.375638, 31.056488>,  <11.928957, 13.670062, 31.152727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.182043, 13.375638, 31.056488> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505417, -0.627913, 0.591844,
		-0.586703, -0.252871, -0.769309,
		0.632719, -0.736059, -0.240593,
		12.371858, 13.154819, 30.984308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.435934, 13.072713, 31.143726>,  <11.928957, 13.670062, 31.152727>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.435934, 13.072713, 31.143726> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.789229, 12.889262, 31.182821>,  <12.001206, 12.779192, 31.206278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.789229, 12.889262, 31.182821>,  <11.435934, 13.072713, 31.143726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.789229, 12.889262, 31.182821> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468274, -0.851660, 0.235362,
		-0.024705, -0.253648, -0.966981,
		0.883238, -0.458626, 0.097737,
		12.054201, 12.751675, 31.212143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.176764, 12.463760, 31.112871>,  <11.435934, 13.072713, 31.143726>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.176764, 12.463760, 31.112871> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.890830, 12.198938, 31.202930>,  <10.719269, 12.040045, 31.256966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.890830, 12.198938, 31.202930>,  <11.176764, 12.463760, 31.112871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.890830, 12.198938, 31.202930> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333490, 0.039753, -0.941915,
		0.614649, -0.748401, -0.249205,
		-0.714837, -0.662055, 0.225150,
		10.676379, 12.000322, 31.270475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.284326, 11.967230, 30.667440>,  <11.176764, 12.463760, 31.112871>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.284326, 11.967230, 30.667440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.904031, 11.994969, 30.788298>,  <10.675854, 12.011613, 30.860813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.904031, 11.994969, 30.788298>,  <11.284326, 11.967230, 30.667440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.904031, 11.994969, 30.788298> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272324, 0.278870, -0.920908,
		-0.148123, -0.957822, -0.246247,
		-0.950736, 0.069349, 0.302144,
		10.618810, 12.015774, 30.878941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.984168, 11.499387, 30.232122>,  <11.284326, 11.967230, 30.667440>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.984168, 11.499387, 30.232122> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.680333, 11.718275, 30.372738>,  <10.498033, 11.849607, 30.457108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.680333, 11.718275, 30.372738>,  <10.984168, 11.499387, 30.232122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.680333, 11.718275, 30.372738> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332238, 0.138202, -0.933016,
		-0.559148, -0.825500, 0.076831,
		-0.759586, 0.547220, 0.351538,
		10.452457, 11.882441, 30.478199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.379404, 11.225597, 29.961447>,  <10.984168, 11.499387, 30.232122>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.379404, 11.225597, 29.961447> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.333723, 11.617113, 30.029480>,  <10.306314, 11.852022, 30.070299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.333723, 11.617113, 30.029480>,  <10.379404, 11.225597, 29.961447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.333723, 11.617113, 30.029480> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370000, 0.116981, -0.921637,
		-0.921986, -0.168185, 0.348792,
		-0.114203, 0.978789, 0.170083,
		10.299462, 11.910750, 30.080505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.760151, 11.418061, 29.636848>,  <10.379404, 11.225597, 29.961447>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.760151, 11.418061, 29.636848> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.929092, 11.777966, 29.680752>,  <10.030457, 11.993908, 29.707094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.929092, 11.777966, 29.680752>,  <9.760151, 11.418061, 29.636848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.929092, 11.777966, 29.680752> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115533, 0.173540, -0.978027,
		-0.899038, 0.400392, 0.177247,
		0.422354, 0.899761, 0.109761,
		10.055799, 12.047894, 29.713680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.381083, 11.798054, 29.223560>,  <9.760151, 11.418061, 29.636848>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.381083, 11.798054, 29.223560> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.696925, 12.038537, 29.272673>,  <9.886430, 12.182827, 29.302141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.696925, 12.038537, 29.272673>,  <9.381083, 11.798054, 29.223560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.696925, 12.038537, 29.272673> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044161, 0.255255, -0.965865,
		-0.612027, 0.757228, 0.228100,
		0.789603, 0.601208, 0.122783,
		9.933806, 12.218900, 29.309507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.142050, 12.342642, 28.851780>,  <9.381083, 11.798054, 29.223560>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.142050, 12.342642, 28.851780> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.536212, 12.402422, 28.884371>,  <9.772710, 12.438291, 28.903925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.536212, 12.402422, 28.884371>,  <9.142050, 12.342642, 28.851780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.536212, 12.402422, 28.884371> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069027, 0.086694, -0.993841,
		-0.155595, 0.984961, 0.075113,
		0.985406, 0.149451, 0.081478,
		9.831834, 12.447257, 28.908813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.329495, 12.874952, 28.434849>,  <9.142050, 12.342642, 28.851780>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.329495, 12.874952, 28.434849> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.711264, 12.757460, 28.456022>,  <9.940325, 12.686964, 28.468725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.711264, 12.757460, 28.456022>,  <9.329495, 12.874952, 28.434849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.711264, 12.757460, 28.456022> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131682, 0.255260, -0.957864,
		0.267843, 0.921176, 0.282304,
		0.954422, -0.293731, 0.052932,
		9.997590, 12.669340, 28.471903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.724789, 13.440217, 28.013119>,  <9.329495, 12.874952, 28.434849>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.724789, 13.440217, 28.013119> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.955479, 13.113551, 28.021599>,  <10.093892, 12.917552, 28.026686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.955479, 13.113551, 28.021599>,  <9.724789, 13.440217, 28.013119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.955479, 13.113551, 28.021599> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529223, 0.353715, -0.771238,
		0.622344, 0.456011, 0.636194,
		0.576724, -0.816664, 0.021199,
		10.128496, 12.868552, 28.027958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.487964, 13.652413, 28.092590>,  <9.724789, 13.440217, 28.013119>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.487964, 13.652413, 28.092590> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.492290, 13.281907, 27.941904>,  <10.494884, 13.059604, 27.851492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.492290, 13.281907, 27.941904>,  <10.487964, 13.652413, 28.092590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.492290, 13.281907, 27.941904> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634274, 0.297602, -0.713534,
		0.773033, -0.231225, 0.590724,
		0.010814, -0.926266, -0.376716,
		10.495534, 13.004027, 27.828890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.157735, 13.472222, 27.961620>,  <10.487964, 13.652413, 28.092590>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.157735, 13.472222, 27.961620> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.933008, 13.234937, 27.730984>,  <10.798172, 13.092566, 27.592602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.933008, 13.234937, 27.730984>,  <11.157735, 13.472222, 27.961620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.933008, 13.234937, 27.730984> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573107, 0.223539, -0.788403,
		0.596582, -0.773387, 0.214387,
		-0.561817, -0.593214, -0.576593,
		10.764463, 13.056973, 27.558006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.594240, 13.097829, 27.556749>,  <11.157735, 13.472222, 27.961620>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.594240, 13.097829, 27.556749> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.250628, 13.066602, 27.354376>,  <11.044460, 13.047865, 27.232952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.250628, 13.066602, 27.354376>,  <11.594240, 13.097829, 27.556749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.250628, 13.066602, 27.354376> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426610, 0.437114, -0.791793,
		0.282965, -0.896012, -0.342190,
		-0.859031, -0.078068, -0.505935,
		10.992918, 13.043181, 27.202595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.767991, 12.908613, 26.818962>,  <11.594240, 13.097829, 27.556749>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.767991, 12.908613, 26.818962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.398656, 13.061778, 26.807484>,  <11.177054, 13.153677, 26.800596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.398656, 13.061778, 26.807484>,  <11.767991, 12.908613, 26.818962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.398656, 13.061778, 26.807484> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215347, 0.454508, -0.864319,
		-0.317917, -0.804239, -0.502124,
		-0.923339, 0.382912, -0.028694,
		11.121655, 13.176652, 26.798876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.488916, 12.654677, 26.214928>,  <11.767991, 12.908613, 26.818962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.488916, 12.654677, 26.214928> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.302811, 12.998894, 26.297873>,  <11.191148, 13.205423, 26.347639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.302811, 12.998894, 26.297873>,  <11.488916, 12.654677, 26.214928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.302811, 12.998894, 26.297873> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299762, 0.373595, -0.877821,
		-0.832870, -0.346260, -0.431777,
		-0.465264, 0.860541, 0.207360,
		11.163232, 13.257056, 26.360081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.317775, 12.900023, 25.532185>,  <11.488916, 12.654677, 26.214928>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.317775, 12.900023, 25.532185> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.246948, 13.226976, 25.751469>,  <11.204453, 13.423148, 25.883039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.246948, 13.226976, 25.751469>,  <11.317775, 12.900023, 25.532185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.246948, 13.226976, 25.751469> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097257, 0.568815, -0.816695,
		-0.979382, -0.091291, -0.180214,
		-0.177066, 0.817383, 0.548209,
		11.193829, 13.472191, 25.915932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.798453, 13.335880, 25.125431>,  <11.317775, 12.900023, 25.532185>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.798453, 13.335880, 25.125431> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.945007, 13.606922, 25.380497>,  <11.032940, 13.769547, 25.533537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.945007, 13.606922, 25.380497>,  <10.798453, 13.335880, 25.125431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.945007, 13.606922, 25.380497> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008698, 0.682795, -0.730558,
		-0.930423, 0.273211, 0.244271,
		0.366384, 0.677604, 0.637665,
		11.054922, 13.810204, 25.571796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.582676, 14.036741, 24.833147>,  <10.798453, 13.335880, 25.125431>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.582676, 14.036741, 24.833147> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.878961, 14.141037, 25.080812>,  <11.056731, 14.203615, 25.229412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.878961, 14.141037, 25.080812>,  <10.582676, 14.036741, 24.833147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.878961, 14.141037, 25.080812> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249312, 0.749123, -0.613725,
		-0.623851, 0.608957, 0.489879,
		0.740711, 0.260741, 0.619162,
		11.101174, 14.219259, 25.266562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.513242, 14.726709, 25.202177>,  <10.582676, 14.036741, 24.833147>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.513242, 14.726709, 25.202177> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.898042, 14.631804, 25.148123>,  <11.128922, 14.574860, 25.115690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.898042, 14.631804, 25.148123>,  <10.513242, 14.726709, 25.202177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.898042, 14.631804, 25.148123> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114523, 0.799882, -0.589129,
		0.247871, 0.551266, 0.796659,
		0.962000, -0.237264, -0.135135,
		11.186642, 14.560624, 25.107582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.719770, 15.277694, 25.107252>,  <10.513242, 14.726709, 25.202177>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.719770, 15.277694, 25.107252> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.042459, 15.073348, 24.988447>,  <11.236073, 14.950741, 24.917164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.042459, 15.073348, 24.988447>,  <10.719770, 15.277694, 25.107252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.042459, 15.073348, 24.988447> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168084, 0.680231, -0.713466,
		0.566523, 0.525645, 0.634626,
		0.806722, -0.510865, -0.297014,
		11.284476, 14.920089, 24.899343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.380203, 15.814516, 25.063009>,  <10.719770, 15.277694, 25.107252>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.380203, 15.814516, 25.063009> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.447360, 15.501868, 24.822716>,  <11.487654, 15.314280, 24.678539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.447360, 15.501868, 24.822716>,  <11.380203, 15.814516, 25.063009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.447360, 15.501868, 24.822716> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166951, 0.623127, -0.764094,
		0.971566, 0.027992, 0.235110,
		0.167892, -0.781619, -0.600736,
		11.497727, 15.267383, 24.642494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.932551, 16.057259, 24.641296>,  <11.380203, 15.814516, 25.063009>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.932551, 16.057259, 24.641296> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.776805, 15.746381, 24.443563>,  <11.683357, 15.559855, 24.324923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.776805, 15.746381, 24.443563>,  <11.932551, 16.057259, 24.641296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.776805, 15.746381, 24.443563> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209256, 0.448015, -0.869192,
		0.896998, -0.441876, -0.011810,
		-0.389366, -0.777192, -0.494334,
		11.659995, 15.513223, 24.295263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<20.922564, 24.424692, 16.248367> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.073757, 24.546606, 16.598049>,  <21.164473, 24.619755, 16.807859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.073757, 24.546606, 16.598049>,  <20.922564, 24.424692, 16.248367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.073757, 24.546606, 16.598049> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683107, 0.729158, 0.041145,
		-0.624894, -0.612729, 0.483810,
		0.377984, 0.304783, 0.874206,
		21.187153, 24.638041, 16.860312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.443134, 24.914738, 16.478874>,  <20.922564, 24.424692, 16.248367>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.443134, 24.914738, 16.478874> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.831476, 24.965158, 16.560415>,  <22.064482, 24.995411, 16.609339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.831476, 24.965158, 16.560415>,  <21.443134, 24.914738, 16.478874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.831476, 24.965158, 16.560415> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095648, 0.576102, -0.811762,
		-0.219763, 0.807600, 0.547254,
		0.970853, 0.126051, 0.203851,
		22.122732, 25.002974, 16.621571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.642015, 25.698320, 16.635277>,  <21.443134, 24.914738, 16.478874>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.642015, 25.698320, 16.635277> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.959604, 25.506943, 16.485235>,  <22.150158, 25.392117, 16.395210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.959604, 25.506943, 16.485235>,  <21.642015, 25.698320, 16.635277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.959604, 25.506943, 16.485235> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020730, 0.595327, -0.803216,
		0.607602, 0.645507, 0.462754,
		0.793971, -0.478442, -0.375103,
		22.197796, 25.363409, 16.372704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.058331, 26.186783, 16.257204>,  <21.642015, 25.698320, 16.635277>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.058331, 26.186783, 16.257204> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.149078, 25.829504, 16.101908>,  <22.203527, 25.615137, 16.008730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.149078, 25.829504, 16.101908>,  <22.058331, 26.186783, 16.257204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.149078, 25.829504, 16.101908> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067722, 0.412136, -0.908602,
		0.971568, 0.179842, 0.153990,
		0.226870, -0.893197, -0.388239,
		22.217140, 25.561544, 15.985436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.657412, 26.229496, 15.818279>,  <22.058331, 26.186783, 16.257204>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.657412, 26.229496, 15.818279> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.366730, 25.971645, 15.723324>,  <22.192320, 25.816935, 15.666350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.366730, 25.971645, 15.723324>,  <22.657412, 26.229496, 15.818279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.366730, 25.971645, 15.723324> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035922, 0.380759, -0.923977,
		0.686009, -0.662932, -0.299856,
		-0.726706, -0.644627, -0.237390,
		22.148718, 25.778257, 15.652107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.875305, 25.716839, 15.264071>,  <22.657412, 26.229496, 15.818279>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.875305, 25.716839, 15.264071> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.492765, 25.828175, 15.299664>,  <22.263241, 25.894976, 15.321019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.492765, 25.828175, 15.299664>,  <22.875305, 25.716839, 15.264071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.492765, 25.828175, 15.299664> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015162, 0.351361, -0.936117,
		-0.291825, -0.893908, -0.340245,
		-0.956352, 0.278342, 0.088982,
		22.205860, 25.911676, 15.326358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.504017, 25.902199, 14.813375>,  <22.875305, 25.716839, 15.264071>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.504017, 25.902199, 14.813375> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.847731, 25.699682, 14.784254>,  <24.053959, 25.578173, 14.766782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.847731, 25.699682, 14.784254>,  <23.504017, 25.902199, 14.813375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.847731, 25.699682, 14.784254> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456087, -0.693960, -0.557139,
		0.231554, 0.511944, -0.827222,
		0.859283, -0.506293, -0.072801,
		24.105516, 25.547794, 14.762414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.543787, 25.703005, 14.011216>,  <23.504017, 25.902199, 14.813375>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.543787, 25.703005, 14.011216> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.739401, 25.487005, 14.285222>,  <23.856770, 25.357407, 14.449626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.739401, 25.487005, 14.285222>,  <23.543787, 25.703005, 14.011216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.739401, 25.487005, 14.285222> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398617, -0.836883, -0.375140,
		0.775853, -0.089602, -0.624519,
		0.489036, -0.539998, 0.685015,
		23.886112, 25.325006, 14.490726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.411057, 25.053799, 13.840425>,  <23.543787, 25.703005, 14.011216>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.411057, 25.053799, 13.840425> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.517054, 24.980085, 14.219015>,  <23.580652, 24.935858, 14.446170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.517054, 24.980085, 14.219015>,  <23.411057, 25.053799, 13.840425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.517054, 24.980085, 14.219015> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344706, -0.934809, -0.085503,
		0.900532, -0.303599, -0.311240,
		0.264992, -0.184284, 0.946477,
		23.596552, 24.924801, 14.502958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.536772, 24.356180, 13.891558>,  <23.411057, 25.053799, 13.840425>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.536772, 24.356180, 13.891558> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.442724, 24.462702, 14.265467>,  <23.386295, 24.526615, 14.489812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.442724, 24.462702, 14.265467>,  <23.536772, 24.356180, 13.891558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.442724, 24.462702, 14.265467> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418160, -0.895895, 0.150052,
		0.877417, -0.355604, 0.322001,
		-0.235120, 0.266306, 0.934772,
		23.372189, 24.542593, 14.545898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.766249, 23.777079, 14.366947>,  <23.536772, 24.356180, 13.891558>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.766249, 23.777079, 14.366947> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.492876, 23.976036, 14.580684>,  <23.328852, 24.095411, 14.708926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.492876, 23.976036, 14.580684>,  <23.766249, 23.777079, 14.366947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.492876, 23.976036, 14.580684> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350435, -0.865642, 0.357574,
		0.640404, 0.057125, 0.765911,
		-0.683431, 0.497394, 0.534342,
		23.287848, 24.125254, 14.740986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.855902, 23.433582, 14.950768>,  <23.766249, 23.777079, 14.366947>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.855902, 23.433582, 14.950768> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.503836, 23.617937, 14.996188>,  <23.292597, 23.728550, 15.023440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.503836, 23.617937, 14.996188>,  <23.855902, 23.433582, 14.950768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.503836, 23.617937, 14.996188> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446666, -0.885140, 0.130449,
		0.160630, 0.064098, 0.984931,
		-0.880164, 0.460889, 0.113550,
		23.239786, 23.756205, 15.030253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.568457, 23.137348, 15.549043>,  <23.855902, 23.433582, 14.950768>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.568457, 23.137348, 15.549043> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.283716, 23.288013, 15.311929>,  <23.112873, 23.378412, 15.169661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.283716, 23.288013, 15.311929>,  <23.568457, 23.137348, 15.549043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.283716, 23.288013, 15.311929> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525751, -0.845410, 0.094165,
		-0.465677, 0.378689, 0.799837,
		-0.711850, 0.376665, -0.592784,
		23.070162, 23.401012, 15.134093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.008831, 23.016163, 15.953662>,  <23.568457, 23.137348, 15.549043>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.008831, 23.016163, 15.953662> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.848366, 23.112419, 15.600128>,  <22.752087, 23.170174, 15.388008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.848366, 23.112419, 15.600128>,  <23.008831, 23.016163, 15.953662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.848366, 23.112419, 15.600128> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647545, -0.756950, 0.087819,
		-0.647885, 0.607552, 0.459485,
		-0.401162, 0.240641, -0.883833,
		22.728018, 23.184610, 15.334978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.277004, 23.015100, 16.055027>,  <23.008831, 23.016163, 15.953662>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.277004, 23.015100, 16.055027> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.333267, 22.969006, 15.661695>,  <22.367025, 22.941349, 15.425695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.333267, 22.969006, 15.661695>,  <22.277004, 23.015100, 16.055027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.333267, 22.969006, 15.661695> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725155, -0.688199, -0.023077,
		-0.674067, 0.716312, -0.180363,
		0.140656, -0.115236, -0.983329,
		22.375463, 22.934435, 15.366695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.657162, 23.027912, 15.804047>,  <22.277004, 23.015100, 16.055027>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.657162, 23.027912, 15.804047> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.869017, 22.832972, 15.526349>,  <21.996130, 22.716007, 15.359731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.869017, 22.832972, 15.526349>,  <21.657162, 23.027912, 15.804047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.869017, 22.832972, 15.526349> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762718, -0.631750, -0.138394,
		-0.371143, 0.602811, -0.706308,
		0.529636, -0.487350, -0.694245,
		22.027908, 22.686766, 15.318075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.203060, 22.482412, 15.533727>,  <21.657162, 23.027912, 15.804047>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.203060, 22.482412, 15.533727> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.551229, 22.370886, 15.371428>,  <21.760130, 22.303970, 15.274050>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.551229, 22.370886, 15.371428>,  <21.203060, 22.482412, 15.533727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.551229, 22.370886, 15.371428> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325391, -0.944301, -0.049150,
		-0.369441, 0.174807, -0.912664,
		0.870421, -0.278815, -0.405744,
		21.812355, 22.287241, 15.249705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.002571, 22.088938, 14.890462>,  <21.203060, 22.482412, 15.533727>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.002571, 22.088938, 14.890462> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.365339, 21.979239, 15.018389>,  <21.583000, 21.913420, 15.095144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.365339, 21.979239, 15.018389>,  <21.002571, 22.088938, 14.890462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.365339, 21.979239, 15.018389> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179679, -0.938398, -0.295170,
		0.381065, 0.210231, -0.900329,
		0.906921, -0.274249, 0.319816,
		21.637415, 21.896963, 15.114333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.357651, 21.689428, 14.364786>,  <21.002571, 22.088938, 14.890462>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.357651, 21.689428, 14.364786> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.538971, 21.590673, 14.707380>,  <21.647764, 21.531422, 14.912936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.538971, 21.590673, 14.707380>,  <21.357651, 21.689428, 14.364786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.538971, 21.590673, 14.707380> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066406, -0.967560, -0.243757,
		0.888880, 0.053619, -0.454991,
		0.453301, -0.246885, 0.856485,
		21.674961, 21.516607, 14.964326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.907921, 21.273560, 14.212781>,  <21.357651, 21.689428, 14.364786>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.907921, 21.273560, 14.212781> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.837755, 21.182131, 14.595819>,  <21.795656, 21.127274, 14.825641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.837755, 21.182131, 14.595819>,  <21.907921, 21.273560, 14.212781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.837755, 21.182131, 14.595819> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034176, -0.970674, -0.237956,
		0.983902, -0.074468, 0.162458,
		-0.175414, -0.228573, 0.957593,
		21.785131, 21.113560, 14.883097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.346170, 20.621300, 14.407323>,  <21.907921, 21.273560, 14.212781>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.346170, 20.621300, 14.407323> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.059296, 20.646297, 14.684951>,  <21.887171, 20.661295, 14.851528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.059296, 20.646297, 14.684951>,  <22.346170, 20.621300, 14.407323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.059296, 20.646297, 14.684951> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090329, -0.995905, -0.003669,
		0.690999, -0.065326, 0.719897,
		-0.717189, 0.062493, 0.694071,
		21.844139, 20.665045, 14.893172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.585381, 20.067240, 14.870180>,  <22.346170, 20.621300, 14.407323>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.585381, 20.067240, 14.870180> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.198896, 20.142122, 14.941056>,  <21.967007, 20.187052, 14.983582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.198896, 20.142122, 14.941056>,  <22.585381, 20.067240, 14.870180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.198896, 20.142122, 14.941056> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194436, -0.980616, -0.024215,
		0.169222, -0.057849, 0.983879,
		-0.966208, 0.187204, 0.177190,
		21.909035, 20.198284, 14.994213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.408075, 19.572962, 15.397151>,  <22.585381, 20.067240, 14.870180>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.408075, 19.572962, 15.397151> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.071287, 19.667759, 15.203277>,  <21.869215, 19.724636, 15.086952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.071287, 19.667759, 15.203277>,  <22.408075, 19.572962, 15.397151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.071287, 19.667759, 15.203277> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246554, -0.968081, -0.045052,
		-0.479892, 0.081568, 0.873527,
		-0.841971, 0.236992, -0.484685,
		21.818695, 19.738857, 15.057871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.811783, 19.230070, 15.799791>,  <22.408075, 19.572962, 15.397151>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.811783, 19.230070, 15.799791> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.627237, 19.321692, 15.456939>,  <21.516510, 19.376665, 15.251226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.627237, 19.321692, 15.456939>,  <21.811783, 19.230070, 15.799791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.627237, 19.321692, 15.456939> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482770, -0.875363, 0.025933,
		-0.744363, 0.425762, 0.514443,
		-0.461365, 0.229054, -0.857133,
		21.488829, 19.390408, 15.199799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.062922, 19.006815, 15.858260>,  <21.811783, 19.230070, 15.799791>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.062922, 19.006815, 15.858260> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.107826, 19.051392, 15.463296>,  <21.134769, 19.078138, 15.226317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.107826, 19.051392, 15.463296>,  <21.062922, 19.006815, 15.858260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.107826, 19.051392, 15.463296> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545290, -0.823798, -0.154972,
		-0.830696, 0.555822, -0.031712,
		0.112261, 0.111443, -0.987410,
		21.141504, 19.084824, 15.167073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.424988, 18.819258, 15.589869>,  <21.062922, 19.006815, 15.858260>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.424988, 18.819258, 15.589869> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.683052, 18.797726, 15.285008>,  <20.837891, 18.784805, 15.102093>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.683052, 18.797726, 15.285008>,  <20.424988, 18.819258, 15.589869>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.683052, 18.797726, 15.285008> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369321, -0.895210, -0.249401,
		-0.668858, 0.442381, -0.597434,
		0.645159, -0.053831, -0.762150,
		20.876600, 18.781576, 15.056363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.019712, 18.748716, 14.958633>,  <20.424988, 18.819258, 15.589869>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.019712, 18.748716, 14.958633> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.375895, 18.581173, 14.887470>,  <20.589603, 18.480646, 14.844772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.375895, 18.581173, 14.887470>,  <20.019712, 18.748716, 14.958633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.375895, 18.581173, 14.887470> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454098, -0.792229, -0.407637,
		0.029798, 0.443769, -0.895646,
		0.890453, -0.418858, -0.177908,
		20.643030, 18.455515, 14.834098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.800097, 18.270231, 14.573867>,  <20.019712, 18.748716, 14.958633>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.800097, 18.270231, 14.573867> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.190332, 18.189030, 14.607364>,  <20.424475, 18.140308, 14.627462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.190332, 18.189030, 14.607364>,  <19.800097, 18.270231, 14.573867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.190332, 18.189030, 14.607364> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136524, -0.859382, -0.492771,
		0.172002, 0.469310, -0.866120,
		0.975590, -0.203004, 0.083743,
		20.483009, 18.128128, 14.632486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.040779, 17.964956, 13.886604>,  <19.800097, 18.270231, 14.573867>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.040779, 17.964956, 13.886604> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.276621, 17.854431, 14.190187>,  <20.418127, 17.788116, 14.372337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.276621, 17.854431, 14.190187>,  <20.040779, 17.964956, 13.886604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.276621, 17.854431, 14.190187> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036813, -0.947880, -0.316492,
		0.806852, 0.158666, -0.569048,
		0.589606, -0.276311, 0.758958,
		20.453503, 17.771538, 14.417875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.592531, 17.637653, 13.622356>,  <20.040779, 17.964956, 13.886604>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.592531, 17.637653, 13.622356> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.558105, 17.489059, 13.992133>,  <20.537451, 17.399904, 14.213999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.558105, 17.489059, 13.992133>,  <20.592531, 17.637653, 13.622356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.558105, 17.489059, 13.992133> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072837, -0.923056, -0.377707,
		0.993623, -0.099841, 0.052384,
		-0.086064, -0.371484, 0.924442,
		20.532286, 17.377615, 14.269465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.882399, 17.001272, 13.507457>,  <20.592531, 17.637653, 13.622356>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.882399, 17.001272, 13.507457> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.670158, 16.991253, 13.846357>,  <20.542814, 16.985241, 14.049698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.670158, 16.991253, 13.846357>,  <20.882399, 17.001272, 13.507457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.670158, 16.991253, 13.846357> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171632, -0.975683, -0.136329,
		0.830064, -0.217752, 0.513398,
		-0.530600, -0.025047, 0.847252,
		20.510979, 16.983740, 14.100533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.080572, 16.550913, 13.982515>,  <20.882399, 17.001272, 13.507457>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.080572, 16.550913, 13.982515> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.681133, 16.557098, 14.002769>,  <20.441469, 16.560810, 14.014922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.681133, 16.557098, 14.002769>,  <21.080572, 16.550913, 13.982515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.681133, 16.557098, 14.002769> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032982, -0.929852, -0.366452,
		0.041415, -0.367608, 0.929058,
		-0.998597, 0.015466, 0.050634,
		20.381554, 16.561739, 14.017960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.738024, 15.940286, 14.328999>,  <21.080572, 16.550913, 13.982515>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.738024, 15.940286, 14.328999> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.493366, 16.090393, 14.050411>,  <20.346573, 16.180458, 13.883259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.493366, 16.090393, 14.050411>,  <20.738024, 15.940286, 14.328999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.493366, 16.090393, 14.050411> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118992, -0.913963, -0.387960,
		-0.782135, -0.154419, 0.603672,
		-0.611642, 0.375269, -0.696468,
		20.309874, 16.202974, 13.841471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.422909, 15.778005, 14.337328>,  <20.738024, 15.940286, 14.328999>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.422909, 15.778005, 14.337328> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.788042, 15.719501, 14.489822>,  <22.007122, 15.684400, 14.581319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.788042, 15.719501, 14.489822>,  <21.422909, 15.778005, 14.337328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.788042, 15.719501, 14.489822> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292462, 0.885738, -0.360464,
		-0.284955, 0.440541, 0.851307,
		0.912834, -0.146258, 0.381237,
		22.061892, 15.675624, 14.604194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.572687, 16.342855, 14.659570>,  <21.422909, 15.778005, 14.337328>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.572687, 16.342855, 14.659570> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.932304, 16.180302, 14.594368>,  <22.148075, 16.082769, 14.555247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.932304, 16.180302, 14.594368>,  <21.572687, 16.342855, 14.659570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.932304, 16.180302, 14.594368> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357614, 0.896313, -0.262173,
		0.252645, 0.177413, 0.951155,
		0.899046, -0.406383, -0.163004,
		22.202019, 16.058386, 14.545466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.043716, 16.781961, 14.995588>,  <21.572687, 16.342855, 14.659570>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.043716, 16.781961, 14.995588> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.247299, 16.586361, 14.712225>,  <22.369448, 16.469000, 14.542207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.247299, 16.586361, 14.712225>,  <22.043716, 16.781961, 14.995588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.247299, 16.586361, 14.712225> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388398, 0.864892, -0.317976,
		0.768188, -0.113308, 0.630118,
		0.508955, -0.489002, -0.708408,
		22.399986, 16.439661, 14.499702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.669346, 17.121189, 14.996293>,  <22.043716, 16.781961, 14.995588>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.669346, 17.121189, 14.996293> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.666002, 16.927448, 14.646359>,  <22.663996, 16.811203, 14.436399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.666002, 16.927448, 14.646359>,  <22.669346, 17.121189, 14.996293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.666002, 16.927448, 14.646359> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348395, 0.818637, -0.456567,
		0.937311, -0.308604, 0.161903,
		-0.008359, -0.484351, -0.874834,
		22.663494, 16.782143, 14.383909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.286081, 17.301113, 14.728152>,  <22.669346, 17.121189, 14.996293>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.286081, 17.301113, 14.728152> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.097160, 17.166594, 14.402248>,  <22.983809, 17.085882, 14.206706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.097160, 17.166594, 14.402248>,  <23.286081, 17.301113, 14.728152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.097160, 17.166594, 14.402248> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281694, 0.818289, -0.501050,
		0.835215, -0.466158, -0.291741,
		-0.472297, -0.336303, -0.814761,
		22.955469, 17.065704, 14.157821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.808767, 17.307489, 14.173701>,  <23.286081, 17.301113, 14.728152>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.808767, 17.307489, 14.173701> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.446520, 17.336279, 14.006526>,  <23.229172, 17.353552, 13.906220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.446520, 17.336279, 14.006526>,  <23.808767, 17.307489, 14.173701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.446520, 17.336279, 14.006526> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304154, 0.796993, -0.521816,
		0.295537, -0.599684, -0.743664,
		-0.905620, 0.071973, -0.417938,
		23.174833, 17.357870, 13.881145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.992004, 17.440834, 13.520367>,  <23.808767, 17.307489, 14.173701>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.992004, 17.440834, 13.520367> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.606314, 17.546785, 13.524470>,  <23.374899, 17.610355, 13.526933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.606314, 17.546785, 13.524470>,  <23.992004, 17.440834, 13.520367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.606314, 17.546785, 13.524470> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206348, 0.774335, -0.598186,
		-0.166389, -0.574670, -0.801292,
		-0.964228, 0.264877, 0.010258,
		23.317045, 17.626247, 13.527548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.858603, 17.518194, 12.841116>,  <23.992004, 17.440834, 13.520367>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.858603, 17.518194, 12.841116> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.573521, 17.729965, 13.025184>,  <23.402472, 17.857029, 13.135624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.573521, 17.729965, 13.025184>,  <23.858603, 17.518194, 12.841116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.573521, 17.729965, 13.025184> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235550, 0.798551, -0.553924,
		-0.660733, -0.286392, -0.693839,
		-0.712705, 0.529430, 0.460169,
		23.359709, 17.888794, 13.163235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.422480, 17.889938, 12.269111>,  <23.858603, 17.518194, 12.841116>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.422480, 17.889938, 12.269111> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.357090, 18.055256, 12.627432>,  <23.317856, 18.154448, 12.842424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.357090, 18.055256, 12.627432>,  <23.422480, 17.889938, 12.269111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.357090, 18.055256, 12.627432> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108284, 0.910049, -0.400108,
		-0.980587, 0.031593, -0.193524,
		-0.163476, 0.413296, 0.895802,
		23.308046, 18.179245, 12.896173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.081606, 18.475670, 12.019512>,  <23.422480, 17.889938, 12.269111>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.081606, 18.475670, 12.019512> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.194454, 18.574007, 12.390450>,  <23.262163, 18.633009, 12.613013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.194454, 18.574007, 12.390450>,  <23.081606, 18.475670, 12.019512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.194454, 18.574007, 12.390450> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230240, 0.921012, -0.314208,
		-0.931341, 0.302157, 0.203235,
		0.282122, 0.245842, 0.927345,
		23.279091, 18.647760, 12.668653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.618248, 19.148930, 12.257516>,  <23.081606, 18.475670, 12.019512>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.618248, 19.148930, 12.257516> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.954782, 19.120226, 12.471807>,  <23.156704, 19.103004, 12.600381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.954782, 19.120226, 12.471807>,  <22.618248, 19.148930, 12.257516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.954782, 19.120226, 12.471807> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191602, 0.966379, -0.171463,
		-0.505411, 0.246905, 0.826800,
		0.841337, -0.071757, 0.535727,
		23.207184, 19.098700, 12.632524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.588779, 19.704456, 12.686526>,  <22.618248, 19.148930, 12.257516>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.588779, 19.704456, 12.686526> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.972757, 19.593538, 12.702599>,  <23.203144, 19.526987, 12.712242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.972757, 19.593538, 12.702599>,  <22.588779, 19.704456, 12.686526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.972757, 19.593538, 12.702599> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277620, 0.960687, -0.002638,
		-0.037869, 0.013688, 0.999189,
		0.959944, -0.277295, 0.040181,
		23.260740, 19.510349, 12.714653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.770695, 20.106916, 13.186378>,  <22.588779, 19.704456, 12.686526>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.770695, 20.106916, 13.186378> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.100384, 19.994843, 12.989542>,  <23.298197, 19.927597, 12.871441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.100384, 19.994843, 12.989542>,  <22.770695, 20.106916, 13.186378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.100384, 19.994843, 12.989542> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378150, 0.919184, 0.110017,
		0.421494, -0.276762, 0.863565,
		0.824224, -0.280186, -0.492088,
		23.347651, 19.910788, 12.841915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.343473, 20.339081, 13.616374>,  <22.770695, 20.106916, 13.186378>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.343473, 20.339081, 13.616374> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.511728, 20.294212, 13.256267>,  <23.612680, 20.267292, 13.040202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.511728, 20.294212, 13.256267>,  <23.343473, 20.339081, 13.616374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.511728, 20.294212, 13.256267> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445289, 0.890100, 0.097151,
		0.790431, -0.441745, 0.424358,
		0.420638, -0.112171, -0.900268,
		23.637920, 20.260561, 12.986186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.989176, 20.669596, 13.612326>,  <23.343473, 20.339081, 13.616374>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.989176, 20.669596, 13.612326> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.889980, 20.651827, 13.225228>,  <23.830463, 20.641165, 12.992970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.889980, 20.651827, 13.225228>,  <23.989176, 20.669596, 13.612326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.889980, 20.651827, 13.225228> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383662, 0.912767, -0.140214,
		0.889553, -0.406058, -0.209313,
		-0.247989, -0.044423, -0.967744,
		23.815584, 20.638500, 12.934905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.495531, 20.897438, 13.390415>,  <23.989176, 20.669596, 13.612326>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.495531, 20.897438, 13.390415> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.211403, 20.953722, 13.114547>,  <24.040926, 20.987492, 12.949025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.211403, 20.953722, 13.114547>,  <24.495531, 20.897438, 13.390415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.211403, 20.953722, 13.114547> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366158, 0.910672, -0.191324,
		0.601144, -0.388430, -0.698389,
		-0.710320, 0.140708, -0.689672,
		23.998306, 20.995934, 12.907645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.871481, 21.148817, 12.737576>,  <24.495531, 20.897438, 13.390415>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.871481, 21.148817, 12.737576> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.487303, 21.259998, 12.730837>,  <24.256796, 21.326708, 12.726793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.487303, 21.259998, 12.730837>,  <24.871481, 21.148817, 12.737576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.487303, 21.259998, 12.730837> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266387, 0.899490, -0.346347,
		-0.081113, -0.337136, -0.937955,
		-0.960447, 0.277953, -0.016848,
		24.199169, 21.343384, 12.725782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.817764, 21.631430, 12.248507>,  <24.871481, 21.148817, 12.737576>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.817764, 21.631430, 12.248507> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.464966, 21.694294, 12.426220>,  <24.253286, 21.732012, 12.532847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.464966, 21.694294, 12.426220>,  <24.817764, 21.631430, 12.248507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.464966, 21.694294, 12.426220> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045574, 0.966779, -0.251517,
		-0.469051, -0.201589, -0.859856,
		-0.881994, 0.157161, 0.444282,
		24.200367, 21.741442, 12.559505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.407770, 22.049709, 11.808439>,  <24.817764, 21.631430, 12.248507>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.407770, 22.049709, 11.808439> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.229446, 22.147615, 12.152845>,  <24.122452, 22.206360, 12.359488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.229446, 22.147615, 12.152845>,  <24.407770, 22.049709, 11.808439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.229446, 22.147615, 12.152845> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027938, 0.957615, -0.286692,
		-0.894693, -0.151864, -0.420073,
		-0.445807, 0.244766, 0.861015,
		24.095705, 22.221045, 12.411150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<16.893728, 17.181753, 21.284678> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.678221, 16.848490, 21.234755>,  <16.548916, 16.648531, 21.204802>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.678221, 16.848490, 21.234755>,  <16.893728, 17.181753, 21.284678>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.678221, 16.848490, 21.234755> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342810, -0.081490, -0.935863,
		0.769552, -0.546999, 0.329519,
		-0.538769, -0.833158, -0.124806,
		16.516590, 16.598543, 21.197313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.376589, 16.630959, 20.963985>,  <16.893728, 17.181753, 21.284678>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.376589, 16.630959, 20.963985> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.997921, 16.527458, 20.887182>,  <16.770721, 16.465359, 20.841101>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.997921, 16.527458, 20.887182>,  <17.376589, 16.630959, 20.963985>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.997921, 16.527458, 20.887182> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246239, -0.196643, -0.949051,
		0.207811, -0.945716, 0.249870,
		-0.946668, -0.258751, -0.192008,
		16.713921, 16.449833, 20.829580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.491907, 16.076698, 20.618372>,  <17.376589, 16.630959, 20.963985>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.491907, 16.076698, 20.618372> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.118240, 16.202991, 20.551867>,  <16.894041, 16.278767, 20.511963>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.118240, 16.202991, 20.551867>,  <17.491907, 16.076698, 20.618372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.118240, 16.202991, 20.551867> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080575, -0.267264, -0.960249,
		-0.347622, -0.910429, 0.224228,
		-0.934166, 0.315736, -0.166264,
		16.837990, 16.297712, 20.501987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.399603, 15.645416, 20.104000>,  <17.491907, 16.076698, 20.618372>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.399603, 15.645416, 20.104000> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.137896, 15.947857, 20.097775>,  <16.980871, 16.129322, 20.094038>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.137896, 15.947857, 20.097775>,  <17.399603, 15.645416, 20.104000>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.137896, 15.947857, 20.097775> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046523, 0.019697, -0.998723,
		-0.754830, -0.654157, -0.048063,
		-0.654269, 0.756102, -0.015565,
		16.941614, 16.174688, 20.093105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.118534, 15.493277, 19.532148>,  <17.399603, 15.645416, 20.104000>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.118534, 15.493277, 19.532148> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.993023, 15.868703, 19.589615>,  <16.917717, 16.093958, 19.624094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.993023, 15.868703, 19.589615>,  <17.118534, 15.493277, 19.532148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.993023, 15.868703, 19.589615> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111993, 0.186834, -0.975987,
		-0.942869, -0.290153, -0.163737,
		-0.313778, 0.938565, 0.143665,
		16.898890, 16.150272, 19.632713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.533381, 15.603879, 19.199953>,  <17.118534, 15.493277, 19.532148>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.533381, 15.603879, 19.199953> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.709219, 15.960722, 19.241713>,  <16.814722, 16.174828, 19.266768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.709219, 15.960722, 19.241713>,  <16.533381, 15.603879, 19.199953>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.709219, 15.960722, 19.241713> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181080, 0.201869, -0.962527,
		-0.879754, 0.404217, 0.250283,
		0.439595, 0.892108, 0.104399,
		16.841097, 16.228355, 19.273033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.137445, 15.999897, 18.881927>,  <16.533381, 15.603879, 19.199953>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.137445, 15.999897, 18.881927> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.477592, 16.209946, 18.895321>,  <16.681681, 16.335974, 18.903357>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.477592, 16.209946, 18.895321>,  <16.137445, 15.999897, 18.881927>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.477592, 16.209946, 18.895321> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043930, 0.134260, -0.989972,
		-0.524350, 0.840370, 0.137239,
		0.850369, 0.525121, 0.033482,
		16.732702, 16.367481, 18.905365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.987507, 16.573006, 18.481544>,  <16.137445, 15.999897, 18.881927>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.987507, 16.573006, 18.481544> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.387310, 16.574604, 18.469114>,  <16.627192, 16.575563, 18.461657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.387310, 16.574604, 18.469114>,  <15.987507, 16.573006, 18.481544>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.387310, 16.574604, 18.469114> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030572, -0.092995, -0.995197,
		-0.006865, 0.995659, -0.092827,
		0.999509, 0.003995, -0.031078,
		16.687162, 16.575802, 18.459791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.198099, 17.055407, 17.971312>,  <15.987507, 16.573006, 18.481544>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.198099, 17.055407, 17.971312> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.511631, 16.808346, 17.996975>,  <16.699751, 16.660110, 18.012373>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.511631, 16.808346, 17.996975>,  <16.198099, 17.055407, 17.971312>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.511631, 16.808346, 17.996975> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170370, 0.114546, -0.978700,
		0.597144, 0.778067, 0.195014,
		0.783832, -0.617650, 0.064158,
		16.746780, 16.623051, 18.016222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.604536, 17.343607, 17.590275>,  <16.198099, 17.055407, 17.971312>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.604536, 17.343607, 17.590275> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.751127, 16.972162, 17.613499>,  <16.839083, 16.749294, 17.627432>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.751127, 16.972162, 17.613499>,  <16.604536, 17.343607, 17.590275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.751127, 16.972162, 17.613499> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232087, 0.030810, -0.972207,
		0.901016, 0.369766, 0.226810,
		0.366478, -0.928614, 0.058058,
		16.861071, 16.693579, 17.630917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.236639, 17.419872, 17.275461>,  <16.604536, 17.343607, 17.590275>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.236639, 17.419872, 17.275461> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.167858, 17.025917, 17.283716>,  <17.126589, 16.789543, 17.288670>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.167858, 17.025917, 17.283716>,  <17.236639, 17.419872, 17.275461>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.167858, 17.025917, 17.283716> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194618, -0.054499, -0.979364,
		0.965689, -0.164390, 0.201049,
		-0.171954, -0.984889, 0.020636,
		17.116272, 16.730450, 17.289907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.825850, 17.101580, 16.993837>,  <17.236639, 17.419872, 17.275461>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.825850, 17.101580, 16.993837> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.539684, 16.825306, 16.951614>,  <17.367985, 16.659542, 16.926281>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.539684, 16.825306, 16.951614>,  <17.825850, 17.101580, 16.993837>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.539684, 16.825306, 16.951614> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263598, -0.126895, -0.956250,
		0.647071, -0.711937, 0.272845,
		-0.715413, -0.690683, -0.105555,
		17.325060, 16.618101, 16.919949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.159010, 16.579504, 16.636913>,  <17.825850, 17.101580, 16.993837>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.159010, 16.579504, 16.636913> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.768953, 16.505192, 16.588610>,  <17.534920, 16.460604, 16.559628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.768953, 16.505192, 16.588610>,  <18.159010, 16.579504, 16.636913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.768953, 16.505192, 16.588610> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148108, -0.141157, -0.978846,
		0.164807, -0.972399, 0.165164,
		-0.975143, -0.185783, -0.120757,
		17.476410, 16.449457, 16.552383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.247309, 16.155514, 16.053610>,  <18.159010, 16.579504, 16.636913>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.247309, 16.155514, 16.053610> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.863119, 16.258266, 16.096506>,  <17.632605, 16.319918, 16.122244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.863119, 16.258266, 16.096506>,  <18.247309, 16.155514, 16.053610>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.863119, 16.258266, 16.096506> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229016, -0.510203, -0.829002,
		-0.158242, -0.820795, 0.548867,
		-0.960474, 0.256883, 0.107240,
		17.574976, 16.335331, 16.128677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.931545, 15.805491, 15.746851>,  <18.247309, 16.155514, 16.053610>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.931545, 15.805491, 15.746851> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.163443, 15.488863, 15.824116>,  <19.302582, 15.298886, 15.870475>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.163443, 15.488863, 15.824116>,  <18.931545, 15.805491, 15.746851>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.163443, 15.488863, 15.824116> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619292, -0.274019, 0.735792,
		-0.529502, -0.546195, -0.649075,
		0.579745, -0.791571, 0.193161,
		19.337366, 15.251392, 15.882064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.491922, 15.428074, 16.192795>,  <18.931545, 15.805491, 15.746851>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.491922, 15.428074, 16.192795> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.832493, 15.225376, 16.246883>,  <19.036835, 15.103758, 16.279337>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.832493, 15.225376, 16.246883>,  <18.491922, 15.428074, 16.192795>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.832493, 15.225376, 16.246883> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408987, -0.480097, 0.776039,
		-0.328333, -0.716044, -0.616019,
		0.851427, -0.506742, 0.135221,
		19.087921, 15.073353, 16.287449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.249249, 14.726487, 16.323029>,  <18.491922, 15.428074, 16.192795>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.249249, 14.726487, 16.323029> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.632208, 14.747340, 16.436636>,  <18.861984, 14.759852, 16.504801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.632208, 14.747340, 16.436636>,  <18.249249, 14.726487, 16.323029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.632208, 14.747340, 16.436636> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254377, -0.313222, 0.914978,
		0.136662, -0.948248, -0.286617,
		0.957401, 0.052134, 0.284018,
		18.919428, 14.762980, 16.521841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.447294, 14.041011, 16.638685>,  <18.249249, 14.726487, 16.323029>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.447294, 14.041011, 16.638685> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.709549, 14.296011, 16.800541>,  <18.866901, 14.449011, 16.897654>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.709549, 14.296011, 16.800541>,  <18.447294, 14.041011, 16.638685>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.709549, 14.296011, 16.800541> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245170, -0.327121, 0.912625,
		0.714163, -0.697557, -0.058178,
		0.655639, 0.637500, 0.404638,
		18.906240, 14.487261, 16.921932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.824760, 13.611085, 17.157772>,  <18.447294, 14.041011, 16.638685>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.824760, 13.611085, 17.157772> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.828447, 14.000504, 17.249094>,  <18.830660, 14.234155, 17.303886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.828447, 14.000504, 17.249094>,  <18.824760, 13.611085, 17.157772>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.828447, 14.000504, 17.249094> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253269, -0.218596, 0.942375,
		0.967352, -0.066510, 0.244554,
		0.009219, 0.973546, 0.228304,
		18.831213, 14.292567, 17.317585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.326157, 13.675986, 17.720999>,  <18.824760, 13.611085, 17.157772>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.326157, 13.675986, 17.720999> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.104630, 14.007365, 17.754366>,  <18.971712, 14.206193, 17.774387>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.104630, 14.007365, 17.754366>,  <19.326157, 13.675986, 17.720999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.104630, 14.007365, 17.754366> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285727, -0.283196, 0.915511,
		0.782077, 0.483192, 0.393550,
		-0.553819, 0.828448, 0.083420,
		18.938484, 14.255899, 17.779392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.335676, 13.814816, 18.476261>,  <19.326157, 13.675986, 17.720999>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.335676, 13.814816, 18.476261> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.033094, 14.018758, 18.312393>,  <18.851545, 14.141123, 18.214073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.033094, 14.018758, 18.312393>,  <19.335676, 13.814816, 18.476261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.033094, 14.018758, 18.312393> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579773, -0.232809, 0.780809,
		0.302723, 0.828160, 0.471708,
		-0.756453, 0.509853, -0.409669,
		18.806158, 14.171714, 18.189493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.171799, 14.314075, 18.973377>,  <19.335676, 13.814816, 18.476261>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.171799, 14.314075, 18.973377> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.842224, 14.276857, 18.749781>,  <18.644480, 14.254527, 18.615623>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.842224, 14.276857, 18.749781>,  <19.171799, 14.314075, 18.973377>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.842224, 14.276857, 18.749781> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524397, -0.248709, 0.814341,
		-0.214795, 0.964099, 0.156129,
		-0.823936, -0.093043, -0.558992,
		18.595043, 14.248944, 18.582083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.694084, 14.666050, 19.316120>,  <19.171799, 14.314075, 18.973377>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.694084, 14.666050, 19.316120> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.472809, 14.426711, 19.084270>,  <18.340044, 14.283108, 18.945162>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.472809, 14.426711, 19.084270>,  <18.694084, 14.666050, 19.316120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.472809, 14.426711, 19.084270> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503930, -0.313688, 0.804770,
		-0.663352, 0.737279, -0.127996,
		-0.553189, -0.598347, -0.579623,
		18.306852, 14.247207, 18.910383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.225088, 14.560810, 19.724749>,  <18.694084, 14.666050, 19.316120>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.225088, 14.560810, 19.724749> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.123228, 14.286575, 19.451948>,  <18.062111, 14.122035, 19.288269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.123228, 14.286575, 19.451948>,  <18.225088, 14.560810, 19.724749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.123228, 14.286575, 19.451948> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508134, -0.505176, 0.697565,
		-0.822771, 0.524183, -0.219725,
		-0.254652, -0.685586, -0.682000,
		18.046833, 14.080899, 19.247349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.378532, 14.560951, 19.693357>,  <18.225088, 14.560810, 19.724749>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.378532, 14.560951, 19.693357> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.550076, 14.221067, 19.570671>,  <17.653002, 14.017138, 19.497059>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.550076, 14.221067, 19.570671>,  <17.378532, 14.560951, 19.693357>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.550076, 14.221067, 19.570671> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532927, -0.512120, 0.673589,
		-0.729431, -0.125416, -0.672460,
		0.428858, -0.849708, -0.306718,
		17.678734, 13.966155, 19.478655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.820608, 14.160142, 19.659073>,  <17.378532, 14.560951, 19.693357>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.820608, 14.160142, 19.659073> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.150665, 13.935352, 19.682119>,  <17.348700, 13.800478, 19.695948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.150665, 13.935352, 19.682119>,  <16.820608, 14.160142, 19.659073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.150665, 13.935352, 19.682119> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455894, -0.602194, 0.655381,
		-0.333611, -0.567051, -0.753098,
		0.825145, -0.561975, 0.057617,
		17.398209, 13.766760, 19.699404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.623459, 13.479005, 19.524071>,  <16.820608, 14.160142, 19.659073>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.623459, 13.479005, 19.524071> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.970848, 13.457632, 19.721209>,  <17.179281, 13.444808, 19.839491>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.970848, 13.457632, 19.721209>,  <16.623459, 13.479005, 19.524071>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.970848, 13.457632, 19.721209> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446786, -0.515121, 0.731459,
		0.214791, -0.855450, -0.471242,
		0.868474, -0.053433, 0.492846,
		17.231390, 13.441602, 19.869062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.721170, 12.838062, 19.721794>,  <16.623459, 13.479005, 19.524071>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.721170, 12.838062, 19.721794> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.968983, 13.041276, 19.961155>,  <17.117670, 13.163204, 20.104771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.968983, 13.041276, 19.961155>,  <16.721170, 12.838062, 19.721794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.968983, 13.041276, 19.961155> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270748, -0.577245, 0.770379,
		0.736803, -0.639289, -0.220071,
		0.619530, 0.508034, 0.598402,
		17.154842, 13.193686, 20.140675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.612257, 12.145352, 19.481752>,  <16.721170, 12.838062, 19.721794>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.612257, 12.145352, 19.481752> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.276924, 11.945064, 19.395519>,  <16.075724, 11.824890, 19.343779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.276924, 11.945064, 19.395519>,  <16.612257, 12.145352, 19.481752>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.276924, 11.945064, 19.395519> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153669, 0.162371, -0.974691,
		0.523055, -0.850242, -0.059175,
		-0.838332, -0.500723, -0.215585,
		16.025425, 11.794847, 19.330843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.830784, 11.608654, 18.935537>,  <16.612257, 12.145352, 19.481752>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.830784, 11.608654, 18.935537> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.435150, 11.638437, 18.884682>,  <16.197769, 11.656307, 18.854168>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.435150, 11.638437, 18.884682>,  <16.830784, 11.608654, 18.935537>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.435150, 11.638437, 18.884682> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144921, 0.335971, -0.930656,
		-0.026579, -0.938925, -0.343095,
		-0.989086, 0.074458, -0.127140,
		16.138424, 11.660774, 18.846540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.597233, 11.269559, 18.221281>,  <16.830784, 11.608654, 18.935537>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.597233, 11.269559, 18.221281> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.352543, 11.564263, 18.336500>,  <16.205729, 11.741086, 18.405632>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.352543, 11.564263, 18.336500>,  <16.597233, 11.269559, 18.221281>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.352543, 11.564263, 18.336500> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000596, 0.364556, -0.931182,
		-0.791069, -0.569457, -0.223448,
		-0.611727, 0.736762, 0.288049,
		16.169025, 11.785292, 18.422915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.335087, 11.432660, 17.622799>,  <16.597233, 11.269559, 18.221281>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.335087, 11.432660, 17.622799> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.213755, 11.738708, 17.849985>,  <16.140955, 11.922337, 17.986296>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.213755, 11.738708, 17.849985>,  <16.335087, 11.432660, 17.622799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.213755, 11.738708, 17.849985> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068846, 0.576891, -0.813914,
		-0.950395, -0.285987, -0.122313,
		-0.303330, 0.765120, 0.567964,
		16.122755, 11.968244, 18.020374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.828176, 11.630401, 17.311132>,  <16.335087, 11.432660, 17.622799>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.828176, 11.630401, 17.311132> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.933025, 11.954643, 17.520592>,  <15.995935, 12.149189, 17.646267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.933025, 11.954643, 17.520592>,  <15.828176, 11.630401, 17.311132>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.933025, 11.954643, 17.520592> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194318, 0.575842, -0.794133,
		-0.945268, 0.106408, 0.308458,
		0.262125, 0.810607, 0.523647,
		16.011663, 12.197825, 17.677687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.283243, 12.087602, 17.234867>,  <15.828176, 11.630401, 17.311132>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.283243, 12.087602, 17.234867> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.619843, 12.295516, 17.293793>,  <15.821802, 12.420265, 17.329149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.619843, 12.295516, 17.293793>,  <15.283243, 12.087602, 17.234867>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.619843, 12.295516, 17.293793> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257984, 0.626184, -0.735757,
		-0.474684, 0.581133, 0.661029,
		0.841498, 0.519787, 0.147316,
		15.872293, 12.451452, 17.337988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.040654, 12.696806, 17.169992>,  <15.283243, 12.087602, 17.234867>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.040654, 12.696806, 17.169992> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.433829, 12.766922, 17.147699>,  <15.669734, 12.808991, 17.134323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.433829, 12.766922, 17.147699>,  <15.040654, 12.696806, 17.169992>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.433829, 12.766922, 17.147699> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153437, 0.614304, -0.774008,
		-0.101438, 0.769353, 0.630719,
		0.982938, 0.175290, -0.055734,
		15.728711, 12.819509, 17.130980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.099047, 13.356014, 16.920198>,  <15.040654, 12.696806, 17.169992>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.099047, 13.356014, 16.920198> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.454135, 13.192718, 16.835073>,  <15.667188, 13.094740, 16.783998>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.454135, 13.192718, 16.835073>,  <15.099047, 13.356014, 16.920198>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.454135, 13.192718, 16.835073> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041163, 0.390019, -0.919886,
		0.458537, 0.825363, 0.329424,
		0.887721, -0.408242, -0.212813,
		15.720451, 13.070245, 16.771229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.405092, 13.862876, 16.542143>,  <15.099047, 13.356014, 16.920198>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.405092, 13.862876, 16.542143> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.595515, 13.523473, 16.449705>,  <15.709769, 13.319831, 16.394241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.595515, 13.523473, 16.449705>,  <15.405092, 13.862876, 16.542143>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.595515, 13.523473, 16.449705> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057660, 0.232102, -0.970981,
		0.877522, 0.475567, 0.061569,
		0.476056, -0.848507, -0.231096,
		15.738332, 13.268921, 16.380377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.041136, 14.053546, 16.165531>,  <15.405092, 13.862876, 16.542143>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.041136, 14.053546, 16.165531> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.932674, 13.680221, 16.071383>,  <15.867598, 13.456225, 16.014893>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.932674, 13.680221, 16.071383>,  <16.041136, 14.053546, 16.165531>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.932674, 13.680221, 16.071383> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138175, 0.204257, -0.969116,
		0.952566, -0.295304, 0.073576,
		-0.271155, -0.933314, -0.235372,
		15.851328, 13.400227, 16.000771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.409088, 13.943865, 15.564158>,  <16.041136, 14.053546, 16.165531>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.409088, 13.943865, 15.564158> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.147909, 13.640916, 15.561356>,  <15.991202, 13.459146, 15.559674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.147909, 13.640916, 15.561356>,  <16.409088, 13.943865, 15.564158>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.147909, 13.640916, 15.561356> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047538, 0.050211, -0.997607,
		0.755910, -0.651051, -0.068789,
		-0.652947, -0.757371, -0.007006,
		15.952025, 13.413705, 15.559254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.693327, 13.358987, 15.156709>,  <16.409088, 13.943865, 15.564158>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.693327, 13.358987, 15.156709> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.293459, 13.363828, 15.165751>,  <16.053537, 13.366733, 15.171176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.293459, 13.363828, 15.165751>,  <16.693327, 13.358987, 15.156709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.293459, 13.363828, 15.165751> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022617, -0.000827, -0.999744,
		-0.012074, -0.999927, 0.001101,
		-0.999672, 0.012096, 0.022605,
		15.993558, 13.367458, 15.172532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<12.668841, 10.085178, 23.590061> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.005883, 10.150216, 23.795422>,  <13.208109, 10.189239, 23.918638>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.005883, 10.150216, 23.795422>,  <12.668841, 10.085178, 23.590061>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.005883, 10.150216, 23.795422> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320910, 0.613986, -0.721137,
		-0.432473, 0.772389, 0.465170,
		0.842605, 0.162594, 0.513400,
		13.258665, 10.198995, 23.949442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.849111, 10.852540, 23.612110>,  <12.668841, 10.085178, 23.590061>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.849111, 10.852540, 23.612110> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.192213, 10.652603, 23.660128>,  <13.398075, 10.532640, 23.688938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.192213, 10.652603, 23.660128>,  <12.849111, 10.852540, 23.612110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.192213, 10.652603, 23.660128> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354029, 0.405086, -0.842953,
		0.372716, 0.765547, 0.524424,
		0.857757, -0.499843, 0.120044,
		13.449540, 10.502650, 23.696140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.340107, 11.279325, 23.284472>,  <12.849111, 10.852540, 23.612110>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.340107, 11.279325, 23.284472> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.575461, 10.958678, 23.326832>,  <13.716674, 10.766291, 23.352249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.575461, 10.958678, 23.326832>,  <13.340107, 11.279325, 23.284472>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.575461, 10.958678, 23.326832> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605747, 0.350234, -0.714427,
		0.535605, 0.484509, 0.691649,
		0.588386, -0.801615, 0.105903,
		13.751977, 10.718194, 23.358603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.178529, 11.524266, 23.435909>,  <13.340107, 11.279325, 23.284472>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.178529, 11.524266, 23.435909> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.124091, 11.164294, 23.270208>,  <14.091429, 10.948311, 23.170788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.124091, 11.164294, 23.270208>,  <14.178529, 11.524266, 23.435909>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.124091, 11.164294, 23.270208> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542278, 0.282271, -0.791364,
		0.829104, -0.332341, 0.449596,
		-0.136095, -0.899929, -0.414253,
		14.083262, 10.894316, 23.145933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.782659, 11.232519, 23.306698>,  <14.178529, 11.524266, 23.435909>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.782659, 11.232519, 23.306698> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.568378, 10.995310, 23.066248>,  <14.439810, 10.852984, 22.921978>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.568378, 10.995310, 23.066248>,  <14.782659, 11.232519, 23.306698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.568378, 10.995310, 23.066248> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674381, 0.127952, -0.727213,
		0.508169, -0.794954, 0.331380,
		-0.535701, -0.593023, -0.601123,
		14.407668, 10.817403, 22.885912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.240261, 10.767999, 22.895702>,  <14.782659, 11.232519, 23.306698>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.240261, 10.767999, 22.895702> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.892838, 10.776531, 22.697651>,  <14.684383, 10.781651, 22.578819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.892838, 10.776531, 22.697651>,  <15.240261, 10.767999, 22.895702>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.892838, 10.776531, 22.697651> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494328, 0.108460, -0.862482,
		0.035299, -0.993872, -0.104752,
		-0.868559, 0.021337, -0.495128,
		14.632270, 10.782930, 22.549112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.299606, 10.261679, 22.393709>,  <15.240261, 10.767999, 22.895702>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.299606, 10.261679, 22.393709> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.011440, 10.505606, 22.261572>,  <14.838541, 10.651962, 22.182289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.011440, 10.505606, 22.261572>,  <15.299606, 10.261679, 22.393709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.011440, 10.505606, 22.261572> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453882, 0.054405, -0.889400,
		-0.524400, -0.790672, -0.315979,
		-0.720414, 0.609818, -0.330341,
		14.795316, 10.688551, 22.162470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.115284, 10.038380, 21.697426>,  <15.299606, 10.261679, 22.393709>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.115284, 10.038380, 21.697426> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.979964, 10.414595, 21.709723>,  <14.898772, 10.640324, 21.717100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.979964, 10.414595, 21.709723>,  <15.115284, 10.038380, 21.697426>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.979964, 10.414595, 21.709723> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195972, 0.102364, -0.975252,
		-0.920407, -0.323901, -0.218948,
		-0.338298, 0.940537, 0.030741,
		14.878475, 10.696755, 21.718945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.689942, 10.072467, 21.076473>,  <15.115284, 10.038380, 21.697426>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.689942, 10.072467, 21.076473> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.815532, 10.428495, 21.208651>,  <14.890885, 10.642113, 21.287956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.815532, 10.428495, 21.208651>,  <14.689942, 10.072467, 21.076473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.815532, 10.428495, 21.208651> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268591, 0.250556, -0.930097,
		-0.910648, 0.380780, -0.160397,
		0.313974, 0.890072, 0.330443,
		14.909724, 10.695517, 21.307783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.315251, 10.574445, 20.641031>,  <14.689942, 10.072467, 21.076473>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.315251, 10.574445, 20.641031> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.629832, 10.769098, 20.793179>,  <14.818581, 10.885891, 20.884466>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.629832, 10.769098, 20.793179>,  <14.315251, 10.574445, 20.641031>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.629832, 10.769098, 20.793179> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278044, 0.270969, -0.921557,
		-0.551530, 0.830519, 0.077799,
		0.786452, 0.486635, 0.380368,
		14.865767, 10.915089, 20.907290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.311506, 11.344939, 20.304995>,  <14.315251, 10.574445, 20.641031>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.311506, 11.344939, 20.304995> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.680928, 11.280286, 20.444090>,  <14.902581, 11.241494, 20.527546>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.680928, 11.280286, 20.444090>,  <14.311506, 11.344939, 20.304995>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.680928, 11.280286, 20.444090> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378212, 0.234345, -0.895566,
		0.063263, 0.958622, 0.277562,
		0.923555, -0.161634, 0.347737,
		14.957994, 11.231795, 20.548410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.679110, 12.078994, 20.057100>,  <14.311506, 11.344939, 20.304995>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.679110, 12.078994, 20.057100> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.957882, 11.813039, 20.164589>,  <15.125146, 11.653466, 20.229082>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.957882, 11.813039, 20.164589>,  <14.679110, 12.078994, 20.057100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.957882, 11.813039, 20.164589> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526601, 0.220116, -0.821121,
		0.486803, 0.713774, 0.503536,
		0.696931, -0.664887, 0.268721,
		15.166962, 11.613572, 20.245205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.335463, 12.419854, 20.100466>,  <14.679110, 12.078994, 20.057100>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.335463, 12.419854, 20.100466> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.406655, 12.034073, 20.022337>,  <15.449371, 11.802604, 19.975460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.406655, 12.034073, 20.022337>,  <15.335463, 12.419854, 20.100466>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.406655, 12.034073, 20.022337> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453736, 0.256565, -0.853404,
		0.873182, 0.063266, 0.483271,
		0.177982, -0.964454, -0.195322,
		15.460050, 11.744737, 19.963739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.130148, 12.380490, 20.010933>,  <15.335463, 12.419854, 20.100466>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.130148, 12.380490, 20.010933> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.952413, 12.069944, 19.832127>,  <15.845772, 11.883617, 19.724842>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.952413, 12.069944, 19.832127>,  <16.130148, 12.380490, 20.010933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.952413, 12.069944, 19.832127> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413761, 0.264724, -0.871047,
		0.794585, -0.571997, 0.203603,
		-0.444338, -0.776364, -0.447016,
		15.819111, 11.837035, 19.698021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.925102, 12.326967, 20.149490>,  <16.130148, 12.380490, 20.010933>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.925102, 12.326967, 20.149490> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.998964, 12.657812, 20.361826>,  <17.043282, 12.856319, 20.489227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.998964, 12.657812, 20.361826>,  <16.925102, 12.326967, 20.149490>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.998964, 12.657812, 20.361826> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027395, -0.535584, 0.844037,
		0.982421, -0.170399, -0.076240,
		0.184656, 0.827112, 0.530837,
		17.054361, 12.905946, 20.521078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.497311, 12.211854, 20.602188>,  <16.925102, 12.326967, 20.149490>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.497311, 12.211854, 20.602188> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.327955, 12.532817, 20.770418>,  <17.226341, 12.725395, 20.871357>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.327955, 12.532817, 20.770418>,  <17.497311, 12.211854, 20.602188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.327955, 12.532817, 20.770418> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008770, -0.467846, 0.883767,
		0.905906, 0.370488, 0.205118,
		-0.423389, 0.802408, 0.420575,
		17.200939, 12.773540, 20.896591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.879679, 12.387468, 21.113956>,  <17.497311, 12.211854, 20.602188>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.879679, 12.387468, 21.113956> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.527813, 12.557794, 21.198692>,  <17.316694, 12.659988, 21.249535>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.527813, 12.557794, 21.198692>,  <17.879679, 12.387468, 21.113956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.527813, 12.557794, 21.198692> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088479, -0.291126, 0.952585,
		0.467295, 0.856697, 0.218417,
		-0.879663, 0.425813, 0.211841,
		17.263914, 12.685537, 21.262245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.003153, 12.595771, 21.739195>,  <17.879679, 12.387468, 21.113956>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.003153, 12.595771, 21.739195> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.603788, 12.616590, 21.730566>,  <17.364170, 12.629081, 21.725389>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.603788, 12.616590, 21.730566>,  <18.003153, 12.595771, 21.739195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.603788, 12.616590, 21.730566> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022151, -0.010581, 0.999699,
		0.051803, 0.998588, 0.011717,
		-0.998412, 0.052047, -0.021572,
		17.304264, 12.632204, 21.724094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.748474, 13.219918, 22.164305>,  <18.003153, 12.595771, 21.739195>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.748474, 13.219918, 22.164305> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.428247, 12.980674, 22.149567>,  <17.236111, 12.837128, 22.140724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.428247, 12.980674, 22.149567>,  <17.748474, 13.219918, 22.164305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.428247, 12.980674, 22.149567> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093957, 0.064560, 0.993481,
		-0.591832, 0.798809, -0.107881,
		-0.800567, -0.598110, -0.036845,
		17.188078, 12.801241, 22.138514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.207237, 13.566444, 22.599018>,  <17.748474, 13.219918, 22.164305>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.207237, 13.566444, 22.599018> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.071466, 13.190860, 22.576601>,  <16.990004, 12.965509, 22.563150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.071466, 13.190860, 22.576601>,  <17.207237, 13.566444, 22.599018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.071466, 13.190860, 22.576601> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016552, -0.053610, 0.998425,
		-0.940487, 0.339819, 0.002655,
		-0.339426, -0.938962, -0.056044,
		16.969639, 12.909171, 22.559788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.477398, 13.503235, 22.920509>,  <17.207237, 13.566444, 22.599018>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.477398, 13.503235, 22.920509> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.657364, 13.146128, 22.929825>,  <16.765343, 12.931864, 22.935415>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.657364, 13.146128, 22.929825>,  <16.477398, 13.503235, 22.920509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.657364, 13.146128, 22.929825> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219937, -0.085486, 0.971761,
		-0.865567, -0.442331, -0.234814,
		0.449914, -0.892769, 0.023291,
		16.792337, 12.878297, 22.936811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.038673, 13.128489, 23.332773>,  <16.477398, 13.503235, 22.920509>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.038673, 13.128489, 23.332773> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.354025, 12.882993, 23.315905>,  <16.543236, 12.735695, 23.305784>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.354025, 12.882993, 23.315905>,  <16.038673, 13.128489, 23.332773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.354025, 12.882993, 23.315905> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099072, -0.194316, 0.975923,
		-0.607160, -0.765219, -0.213999,
		0.788379, -0.613743, -0.042169,
		16.590538, 12.698870, 23.303253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.760165, 12.599504, 23.715237>,  <16.038673, 13.128489, 23.332773>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.760165, 12.599504, 23.715237> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.159323, 12.588390, 23.738684>,  <16.398817, 12.581722, 23.752752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.159323, 12.588390, 23.738684>,  <15.760165, 12.599504, 23.715237>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.159323, 12.588390, 23.738684> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060864, -0.088413, 0.994223,
		-0.022437, -0.995697, -0.089918,
		0.997894, -0.027780, 0.058619,
		16.458691, 12.580055, 23.756269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.829484, 12.072557, 24.061172>,  <15.760165, 12.599504, 23.715237>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.829484, 12.072557, 24.061172> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.182402, 12.257675, 24.095530>,  <16.394152, 12.368746, 24.116144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.182402, 12.257675, 24.095530>,  <15.829484, 12.072557, 24.061172>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.182402, 12.257675, 24.095530> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066961, -0.057216, 0.996114,
		0.465910, -0.884617, -0.019492,
		0.882295, 0.462794, 0.085892,
		16.447090, 12.396513, 24.121298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.078871, 11.742470, 24.726627>,  <15.829484, 12.072557, 24.061172>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.078871, 11.742470, 24.726627> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.288322, 12.073340, 24.645050>,  <16.413994, 12.271863, 24.596104>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.288322, 12.073340, 24.645050>,  <16.078871, 11.742470, 24.726627>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.288322, 12.073340, 24.645050> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052860, 0.207378, 0.976832,
		0.850305, -0.522278, 0.064865,
		0.523629, 0.827176, -0.203942,
		16.445412, 12.321493, 24.583868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.683620, 11.622701, 25.108706>,  <16.078871, 11.742470, 24.726627>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.683620, 11.622701, 25.108706> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.651499, 12.017081, 25.050119>,  <16.632225, 12.253710, 25.014969>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.651499, 12.017081, 25.050119>,  <16.683620, 11.622701, 25.108706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.651499, 12.017081, 25.050119> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008964, 0.147647, 0.989000,
		0.996730, 0.078110, -0.020695,
		-0.080307, 0.985951, -0.146464,
		16.627407, 12.312866, 25.006180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.248194, 12.056661, 25.575207>,  <16.683620, 11.622701, 25.108706>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.248194, 12.056661, 25.575207> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.926205, 12.278990, 25.492182>,  <16.733011, 12.412387, 25.442368>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.926205, 12.278990, 25.492182>,  <17.248194, 12.056661, 25.575207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.926205, 12.278990, 25.492182> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114671, 0.197492, 0.973575,
		0.582127, 0.807501, -0.095238,
		-0.804972, 0.555823, -0.207562,
		16.684713, 12.445737, 25.429913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.349960, 12.584576, 26.086544>,  <17.248194, 12.056661, 25.575207>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.349960, 12.584576, 26.086544> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.976830, 12.635080, 25.951553>,  <16.752951, 12.665383, 25.870558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.976830, 12.635080, 25.951553>,  <17.349960, 12.584576, 26.086544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.976830, 12.635080, 25.951553> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309681, 0.197875, 0.930023,
		0.184205, 0.972062, -0.145483,
		-0.932827, 0.126261, -0.337479,
		16.696981, 12.672958, 25.850309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<8.076818, 13.360593, 23.924473> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.389152, 13.111011, 23.936956>,  <8.576552, 12.961261, 23.944447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.389152, 13.111011, 23.936956>,  <8.076818, 13.360593, 23.924473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.389152, 13.111011, 23.936956> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202329, 0.205306, -0.957555,
		0.591066, 0.754008, 0.286555,
		0.780836, -0.623957, 0.031208,
		8.623403, 12.923823, 23.946320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.617100, 13.704676, 23.614683>,  <8.076818, 13.360593, 23.924473>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.617100, 13.704676, 23.614683> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.703774, 13.314825, 23.592239>,  <8.755779, 13.080914, 23.578773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.703774, 13.314825, 23.592239>,  <8.617100, 13.704676, 23.614683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.703774, 13.314825, 23.592239> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345497, 0.130315, -0.929328,
		0.913060, 0.181987, 0.364968,
		0.216687, -0.974627, -0.056110,
		8.768781, 13.022437, 23.575407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.360391, 13.667665, 23.644026>,  <8.617100, 13.704676, 23.614683>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.360391, 13.667665, 23.644026> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.197475, 13.350178, 23.463303>,  <9.099727, 13.159686, 23.354868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.197475, 13.350178, 23.463303>,  <9.360391, 13.667665, 23.644026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.197475, 13.350178, 23.463303> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403941, 0.287130, -0.868555,
		0.819115, -0.536255, 0.203670,
		-0.407287, -0.793717, -0.451808,
		9.075290, 13.112062, 23.327761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.875406, 13.380491, 23.199730>,  <9.360391, 13.667665, 23.644026>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.875406, 13.380491, 23.199730> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.550967, 13.207277, 23.042452>,  <9.356304, 13.103349, 22.948086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.550967, 13.207277, 23.042452>,  <9.875406, 13.380491, 23.199730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.550967, 13.207277, 23.042452> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325101, 0.225072, -0.918505,
		0.486242, -0.872825, -0.041775,
		-0.811097, -0.433035, -0.393196,
		9.307638, 13.077367, 22.924494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.172997, 12.879010, 22.730833>,  <9.875406, 13.380491, 23.199730>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.172997, 12.879010, 22.730833> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.797727, 12.953790, 22.614300>,  <9.572564, 12.998657, 22.544380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.797727, 12.953790, 22.614300>,  <10.172997, 12.879010, 22.730833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.797727, 12.953790, 22.614300> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314258, 0.107093, -0.943278,
		-0.145144, -0.976515, -0.159222,
		-0.938177, 0.186948, -0.291334,
		9.516273, 13.009874, 22.526899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.245248, 12.756367, 22.017933>,  <10.172997, 12.879010, 22.730833>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.245248, 12.756367, 22.017933> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.903998, 12.961778, 22.054745>,  <9.699248, 13.085025, 22.076832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.903998, 12.961778, 22.054745>,  <10.245248, 12.756367, 22.017933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.903998, 12.961778, 22.054745> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151995, 0.413400, -0.897774,
		-0.499077, -0.751924, -0.430735,
		-0.853123, 0.513528, 0.092029,
		9.648062, 13.115836, 22.082354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.899206, 12.576815, 21.459541>,  <10.245248, 12.756367, 22.017933>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.899206, 12.576815, 21.459541> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.771906, 12.932606, 21.590719>,  <9.695526, 13.146080, 21.669426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.771906, 12.932606, 21.590719>,  <9.899206, 12.576815, 21.459541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.771906, 12.932606, 21.590719> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115082, 0.379621, -0.917957,
		-0.940996, -0.254399, -0.223177,
		-0.318250, 0.889477, 0.327945,
		9.676431, 13.199449, 21.689102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.439258, 12.816491, 21.017282>,  <9.899206, 12.576815, 21.459541>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.439258, 12.816491, 21.017282> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.574346, 13.158775, 21.174103>,  <9.655398, 13.364146, 21.268196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.574346, 13.158775, 21.174103>,  <9.439258, 12.816491, 21.017282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.574346, 13.158775, 21.174103> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242158, 0.323512, -0.914712,
		-0.909563, 0.403855, -0.097961,
		0.337719, 0.855711, 0.392052,
		9.675661, 13.415488, 21.291718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.267266, 13.322392, 20.500010>,  <9.439258, 12.816491, 21.017282>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.267266, 13.322392, 20.500010> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.512617, 13.527118, 20.740614>,  <9.659827, 13.649954, 20.884975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.512617, 13.527118, 20.740614>,  <9.267266, 13.322392, 20.500010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.512617, 13.527118, 20.740614> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369052, 0.487604, -0.791228,
		-0.698261, 0.707310, 0.110199,
		0.613377, 0.511815, 0.601510,
		9.696630, 13.680662, 20.921066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.102527, 14.036914, 20.366655>,  <9.267266, 13.322392, 20.500010>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.102527, 14.036914, 20.366655> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.472642, 13.990085, 20.510952>,  <9.694711, 13.961987, 20.597530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.472642, 13.990085, 20.510952>,  <9.102527, 14.036914, 20.366655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.472642, 13.990085, 20.510952> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367795, 0.509131, -0.778147,
		-0.092565, 0.852690, 0.514152,
		0.925288, -0.117073, 0.360743,
		9.750229, 13.954963, 20.619175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.316383, 14.648095, 20.241524>,  <9.102527, 14.036914, 20.366655>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.316383, 14.648095, 20.241524> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.632363, 14.408228, 20.292713>,  <9.821952, 14.264308, 20.323427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.632363, 14.408228, 20.292713>,  <9.316383, 14.648095, 20.241524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.632363, 14.408228, 20.292713> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489457, 0.490971, -0.720680,
		0.369338, 0.631938, 0.681355,
		0.789950, -0.599668, 0.127972,
		9.869349, 14.228328, 20.331104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.856884, 15.003667, 20.423582>,  <9.316383, 14.648095, 20.241524>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.856884, 15.003667, 20.423582> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.033769, 14.687852, 20.253368>,  <10.139899, 14.498363, 20.151241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.033769, 14.687852, 20.253368>,  <9.856884, 15.003667, 20.423582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.033769, 14.687852, 20.253368> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370361, 0.592847, -0.715098,
		0.816872, 0.158625, 0.554579,
		0.442213, -0.789538, -0.425532,
		10.166432, 14.450991, 20.125710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.567776, 15.212387, 20.261042>,  <9.856884, 15.003667, 20.423582>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.567776, 15.212387, 20.261042> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.496543, 14.904497, 20.015829>,  <10.453803, 14.719763, 19.868702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.496543, 14.904497, 20.015829>,  <10.567776, 15.212387, 20.261042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.496543, 14.904497, 20.015829> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277978, 0.558265, -0.781709,
		0.943936, -0.309618, 0.114550,
		-0.178082, -0.769725, -0.613033,
		10.443118, 14.673579, 19.831919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.087846, 15.297261, 19.795088>,  <10.567776, 15.212387, 20.261042>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.087846, 15.297261, 19.795088> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.847309, 15.044714, 19.599226>,  <10.702987, 14.893186, 19.481709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.847309, 15.044714, 19.599226>,  <11.087846, 15.297261, 19.795088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.847309, 15.044714, 19.599226> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165027, 0.501480, -0.849284,
		0.781763, -0.591517, -0.197368,
		-0.601343, -0.631368, -0.489655,
		10.666906, 14.855304, 19.452330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.803450, 15.479631, 20.181229>,  <11.087846, 15.297261, 19.795088>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.803450, 15.479631, 20.181229> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.902507, 15.863190, 20.236647>,  <11.961941, 16.093325, 20.269897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.902507, 15.863190, 20.236647>,  <11.803450, 15.479631, 20.181229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.902507, 15.863190, 20.236647> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060472, -0.158017, 0.985583,
		0.966962, -0.235694, -0.097118,
		0.247642, 0.958894, 0.138543,
		11.976799, 16.150858, 20.278210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.390866, 15.437988, 20.568947>,  <11.803450, 15.479631, 20.181229>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.390866, 15.437988, 20.568947> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.264218, 15.815104, 20.610704>,  <12.188230, 16.041374, 20.635759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.264218, 15.815104, 20.610704>,  <12.390866, 15.437988, 20.568947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.264218, 15.815104, 20.610704> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020358, -0.103274, 0.994445,
		0.948334, 0.316985, 0.013505,
		-0.316619, 0.942791, 0.104392,
		12.169232, 16.097942, 20.642021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.799217, 15.795084, 20.997234>,  <12.390866, 15.437988, 20.568947>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.799217, 15.795084, 20.997234> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.448208, 15.983816, 21.031477>,  <12.237602, 16.097055, 21.052023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.448208, 15.983816, 21.031477>,  <12.799217, 15.795084, 20.997234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.448208, 15.983816, 21.031477> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083400, -0.025631, 0.996186,
		0.472226, 0.881316, -0.016859,
		-0.877523, 0.471831, 0.085606,
		12.184951, 16.125366, 21.057159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.911885, 16.194717, 21.610434>,  <12.799217, 15.795084, 20.997234>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.911885, 16.194717, 21.610434> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.517258, 16.195322, 21.545099>,  <12.280481, 16.195684, 21.505899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.517258, 16.195322, 21.545099>,  <12.911885, 16.194717, 21.610434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.517258, 16.195322, 21.545099> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162614, 0.085161, 0.983008,
		0.015396, 0.996366, -0.083771,
		-0.986570, 0.001512, -0.163335,
		12.221287, 16.195776, 21.496099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.695548, 16.701433, 22.105087>,  <12.911885, 16.194717, 21.610434>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.695548, 16.701433, 22.105087> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.374181, 16.478956, 22.020073>,  <12.181360, 16.345470, 21.969065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.374181, 16.478956, 22.020073>,  <12.695548, 16.701433, 22.105087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.374181, 16.478956, 22.020073> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233233, -0.034453, 0.971810,
		-0.547834, 0.830340, -0.102042,
		-0.803418, -0.556191, -0.212538,
		12.133156, 16.312099, 21.956312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.232861, 16.801525, 22.632050>,  <12.695548, 16.701433, 22.105087>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.232861, 16.801525, 22.632050> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.062258, 16.482763, 22.460918>,  <11.959896, 16.291506, 22.358240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.062258, 16.482763, 22.460918>,  <12.232861, 16.801525, 22.632050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.062258, 16.482763, 22.460918> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317492, -0.311005, 0.895810,
		-0.846930, 0.517902, -0.120364,
		-0.426508, -0.796902, -0.427829,
		11.934305, 16.243692, 22.332569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.511767, 16.784853, 22.845711>,  <12.232861, 16.801525, 22.632050>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.511767, 16.784853, 22.845711> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.631116, 16.411768, 22.764692>,  <11.702725, 16.187918, 22.716080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.631116, 16.411768, 22.764692>,  <11.511767, 16.784853, 22.845711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.631116, 16.411768, 22.764692> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256710, -0.282817, 0.924183,
		-0.919280, -0.223753, -0.323820,
		0.298371, -0.932710, -0.202549,
		11.720627, 16.131954, 22.703928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.961761, 16.322971, 23.151352>,  <11.511767, 16.784853, 22.845711>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.961761, 16.322971, 23.151352> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.267591, 16.072565, 23.089996>,  <11.451090, 15.922322, 23.053183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.267591, 16.072565, 23.089996>,  <10.961761, 16.322971, 23.151352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.267591, 16.072565, 23.089996> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263818, -0.521100, 0.811699,
		-0.588066, -0.580139, -0.563575,
		0.764577, -0.626014, -0.153390,
		11.496964, 15.884761, 23.043980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.670861, 15.687366, 23.368269>,  <10.961761, 16.322971, 23.151352>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.670861, 15.687366, 23.368269> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.068041, 15.640731, 23.376825>,  <11.306349, 15.612750, 23.381960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.068041, 15.640731, 23.376825>,  <10.670861, 15.687366, 23.368269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.068041, 15.640731, 23.376825> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076135, -0.488992, 0.868960,
		-0.090849, -0.864462, -0.494421,
		0.992950, -0.116587, 0.021391,
		11.365926, 15.605755, 23.383244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.782351, 14.994146, 23.457506>,  <10.670861, 15.687366, 23.368269>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.782351, 14.994146, 23.457506> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.116489, 15.180644, 23.573996>,  <11.316973, 15.292542, 23.643888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.116489, 15.180644, 23.573996>,  <10.782351, 14.994146, 23.457506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.116489, 15.180644, 23.573996> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037673, -0.479964, 0.876479,
		0.548429, -0.743136, -0.383372,
		0.835348, 0.466244, 0.291222,
		11.367094, 15.320518, 23.661362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.241407, 14.447116, 23.657410>,  <10.782351, 14.994146, 23.457506>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.241407, 14.447116, 23.657410> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.362540, 14.780770, 23.841805>,  <11.435220, 14.980963, 23.952442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.362540, 14.780770, 23.841805>,  <11.241407, 14.447116, 23.657410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.362540, 14.780770, 23.841805> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165790, -0.522434, 0.836407,
		0.938513, -0.176863, -0.296500,
		0.302831, 0.834136, 0.460989,
		11.453389, 15.031011, 23.980101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.798878, 14.266216, 23.898142>,  <11.241407, 14.447116, 23.657410>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.798878, 14.266216, 23.898142> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.699018, 14.584764, 24.118494>,  <11.639101, 14.775893, 24.250706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.699018, 14.584764, 24.118494>,  <11.798878, 14.266216, 23.898142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.699018, 14.584764, 24.118494> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140282, -0.533148, 0.834311,
		0.958121, 0.285565, 0.021385,
		-0.249651, 0.796370, 0.550880,
		11.624123, 14.823675, 24.283758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.261645, 14.194184, 24.449881>,  <11.798878, 14.266216, 23.898142>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.261645, 14.194184, 24.449881> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.972238, 14.434239, 24.586323>,  <11.798593, 14.578272, 24.668188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.972238, 14.434239, 24.586323>,  <12.261645, 14.194184, 24.449881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.972238, 14.434239, 24.586323> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016706, -0.478773, 0.877780,
		0.690101, 0.640790, 0.336376,
		-0.723520, 0.600137, 0.341107,
		11.755181, 14.614281, 24.688654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.463338, 14.299788, 25.091053>,  <12.261645, 14.194184, 24.449881>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.463338, 14.299788, 25.091053> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.072473, 14.384285, 25.100231>,  <11.837954, 14.434983, 25.105738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.072473, 14.384285, 25.100231>,  <12.463338, 14.299788, 25.091053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.072473, 14.384285, 25.100231> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101662, -0.559611, 0.822496,
		0.186589, 0.801381, 0.568308,
		-0.977164, 0.211244, 0.022947,
		11.779324, 14.447659, 25.107115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.796075, 14.918648, 25.369263>,  <12.463338, 14.299788, 25.091053>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.796075, 14.918648, 25.369263> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.148845, 14.895148, 25.556349>,  <13.360507, 14.881048, 25.668600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.148845, 14.895148, 25.556349>,  <12.796075, 14.918648, 25.369263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.148845, 14.895148, 25.556349> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448262, 0.411492, -0.793559,
		-0.145840, 0.909518, 0.389240,
		0.881925, -0.058749, 0.467715,
		13.413423, 14.877523, 25.696663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.080534, 15.524916, 25.194286>,  <12.796075, 14.918648, 25.369263>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.080534, 15.524916, 25.194286> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.381252, 15.296958, 25.326965>,  <13.561684, 15.160184, 25.406572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.381252, 15.296958, 25.326965>,  <13.080534, 15.524916, 25.194286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.381252, 15.296958, 25.326965> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568973, 0.306404, -0.763143,
		0.333276, 0.762456, 0.554607,
		0.751796, -0.569893, 0.331699,
		13.606791, 15.125990, 25.426476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.602561, 15.953186, 25.193653>,  <13.080534, 15.524916, 25.194286>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.602561, 15.953186, 25.193653> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.760992, 15.587362, 25.160898>,  <13.856050, 15.367868, 25.141245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.760992, 15.587362, 25.160898>,  <13.602561, 15.953186, 25.193653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.760992, 15.587362, 25.160898> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549704, 0.307608, -0.776661,
		0.735491, 0.262604, 0.624573,
		0.396078, -0.914558, -0.081889,
		13.879815, 15.312995, 25.136332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.296610, 16.054867, 25.296350>,  <13.602561, 15.953186, 25.193653>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.296610, 16.054867, 25.296350> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.258086, 15.709896, 25.097574>,  <14.234972, 15.502914, 24.978310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.258086, 15.709896, 25.097574>,  <14.296610, 16.054867, 25.296350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.258086, 15.709896, 25.097574> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638741, 0.329349, -0.695369,
		0.763370, -0.384386, 0.519147,
		-0.096309, -0.862425, -0.496939,
		14.229194, 15.451169, 24.948492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.956810, 15.824698, 25.264614>,  <14.296610, 16.054867, 25.296350>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.956810, 15.824698, 25.264614> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.744443, 15.635405, 24.983423>,  <14.617023, 15.521829, 24.814709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.744443, 15.635405, 24.983423>,  <14.956810, 15.824698, 25.264614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.744443, 15.635405, 24.983423> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735078, 0.155572, -0.659892,
		0.421648, -0.867091, 0.265268,
		-0.530918, -0.473235, -0.702976,
		14.585168, 15.493434, 24.772530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.391397, 15.309446, 24.877209>,  <14.956810, 15.824698, 25.264614>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.391397, 15.309446, 24.877209> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.090741, 15.369396, 24.620281>,  <14.910347, 15.405366, 24.466125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.090741, 15.369396, 24.620281>,  <15.391397, 15.309446, 24.877209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.090741, 15.369396, 24.620281> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657645, 0.095893, -0.747200,
		-0.050394, -0.984044, -0.170642,
		-0.751640, 0.149876, -0.642319,
		14.865249, 15.414359, 24.427586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.622491, 14.943870, 24.282467>,  <15.391397, 15.309446, 24.877209>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.622491, 14.943870, 24.282467> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.344086, 15.200605, 24.153715>,  <15.177042, 15.354647, 24.076464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.344086, 15.200605, 24.153715>,  <15.622491, 14.943870, 24.282467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.344086, 15.200605, 24.153715> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553918, 0.194720, -0.809481,
		-0.456881, -0.741704, -0.491055,
		-0.696014, 0.641840, -0.321879,
		15.135282, 15.393157, 24.057152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.490035, 14.727021, 23.639181>,  <15.622491, 14.943870, 24.282467>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.490035, 14.727021, 23.639181> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.334861, 15.095655, 23.633728>,  <15.241756, 15.316836, 23.630457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.334861, 15.095655, 23.633728>,  <15.490035, 14.727021, 23.639181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.334861, 15.095655, 23.633728> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475183, 0.187306, -0.859720,
		-0.789752, -0.339993, -0.510584,
		-0.387935, 0.921586, -0.013633,
		15.218480, 15.372131, 23.629639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.444466, 14.846264, 22.930952>,  <15.490035, 14.727021, 23.639181>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.444466, 14.846264, 22.930952> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.455439, 15.209645, 23.097786>,  <15.462023, 15.427674, 23.197886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.455439, 15.209645, 23.097786>,  <15.444466, 14.846264, 22.930952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.455439, 15.209645, 23.097786> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428531, 0.366269, -0.825959,
		-0.903111, 0.201391, -0.379253,
		0.027432, 0.908454, 0.417084,
		15.463668, 15.482182, 23.222912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.221319, 15.230711, 22.379971>,  <15.444466, 14.846264, 22.930952>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.221319, 15.230711, 22.379971> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.414536, 15.486199, 22.619539>,  <15.530465, 15.639492, 22.763281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.414536, 15.486199, 22.619539>,  <15.221319, 15.230711, 22.379971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.414536, 15.486199, 22.619539> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416240, 0.434278, -0.798841,
		-0.770335, 0.635168, -0.056087,
		0.483041, 0.638721, 0.598922,
		15.559447, 15.677815, 22.799215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.102812, 15.814255, 22.076401>,  <15.221319, 15.230711, 22.379971>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.102812, 15.814255, 22.076401> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.409562, 15.902028, 22.317648>,  <15.593613, 15.954692, 22.462397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.409562, 15.902028, 22.317648>,  <15.102812, 15.814255, 22.076401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.409562, 15.902028, 22.317648> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419977, 0.539019, -0.730122,
		-0.485304, 0.813208, 0.321205,
		0.766877, 0.219432, 0.603117,
		15.639626, 15.967857, 22.498583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.039241, 16.555437, 22.164366>,  <15.102812, 15.814255, 22.076401>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.039241, 16.555437, 22.164366> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.410880, 16.427671, 22.238930>,  <15.633863, 16.351011, 22.283669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.410880, 16.427671, 22.238930>,  <15.039241, 16.555437, 22.164366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.410880, 16.427671, 22.238930> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297326, 0.345370, -0.890122,
		0.219936, 0.882437, 0.415853,
		0.929099, -0.319414, 0.186412,
		15.689610, 16.331848, 22.294853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.416607, 17.057592, 21.892988>,  <15.039241, 16.555437, 22.164366>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.416607, 17.057592, 21.892988> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.710689, 16.788160, 21.923357>,  <15.887137, 16.626501, 21.941578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.710689, 16.788160, 21.923357>,  <15.416607, 17.057592, 21.892988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.710689, 16.788160, 21.923357> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299512, 0.222334, -0.927825,
		0.608084, 0.704881, 0.365207,
		0.735205, -0.673580, 0.075923,
		15.931250, 16.586086, 21.946135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.126261, 17.367847, 21.745634>,  <15.416607, 17.057592, 21.892988>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.126261, 17.367847, 21.745634> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.171450, 16.976864, 21.674295>,  <16.198563, 16.742273, 21.631493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.171450, 16.976864, 21.674295>,  <16.126261, 17.367847, 21.745634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.171450, 16.976864, 21.674295> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402711, 0.209136, -0.891115,
		0.908329, 0.028851, 0.417261,
		0.112974, -0.977461, -0.178346,
		16.205341, 16.683626, 21.620792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<3.801555, 24.290388, 9.171429> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.980962, 24.546707, 8.922202>,  <4.088605, 24.700499, 8.772666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.980962, 24.546707, 8.922202>,  <3.801555, 24.290388, 9.171429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.980962, 24.546707, 8.922202> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051773, 0.677321, 0.733864,
		0.892274, -0.361408, 0.270613,
		0.448516, 0.640797, -0.623067,
		4.115517, 24.738947, 8.735282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.337893, 24.612864, 9.479515>,  <3.801555, 24.290388, 9.171429>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.337893, 24.612864, 9.479515> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.180699, 24.852776, 9.200710>,  <4.086383, 24.996723, 9.033427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.180699, 24.852776, 9.200710>,  <4.337893, 24.612864, 9.479515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.180699, 24.852776, 9.200710> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018780, 0.752604, 0.658205,
		0.919353, 0.271755, -0.284498,
		-0.392985, 0.599780, -0.697013,
		4.062804, 25.032709, 8.991607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.804995, 25.239622, 9.210541>,  <4.337893, 24.612864, 9.479515>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.804995, 25.239622, 9.210541> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.409164, 25.290810, 9.236957>,  <4.171666, 25.321522, 9.252806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.409164, 25.290810, 9.236957>,  <4.804995, 25.239622, 9.210541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.409164, 25.290810, 9.236957> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140414, 0.755694, 0.639695,
		0.031956, 0.642301, -0.765786,
		-0.989577, 0.127969, 0.066039,
		4.112291, 25.329201, 9.256768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.986334, 24.996660, 9.915257>,  <4.804995, 25.239622, 9.210541>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.986334, 24.996660, 9.915257> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.189328, 25.309734, 10.059403>,  <5.311124, 25.497580, 10.145892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.189328, 25.309734, 10.059403>,  <4.986334, 24.996660, 9.915257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.189328, 25.309734, 10.059403> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261951, -0.258292, 0.929875,
		0.820879, -0.566295, 0.073946,
		0.507484, 0.782685, 0.360368,
		5.341573, 25.544540, 10.167514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.535464, 24.741842, 10.443679>,  <4.986334, 24.996660, 9.915257>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.535464, 24.741842, 10.443679> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.405872, 25.116854, 10.494400>,  <5.328116, 25.341860, 10.524833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.405872, 25.116854, 10.494400>,  <5.535464, 24.741842, 10.443679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.405872, 25.116854, 10.494400> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322646, -0.235490, 0.916757,
		0.889346, 0.256100, 0.378784,
		-0.323982, 0.937527, 0.126802,
		5.308677, 25.398111, 10.532440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.867948, 25.198553, 10.874467>,  <5.535464, 24.741842, 10.443679>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.867948, 25.198553, 10.874467> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.134146, 25.399483, 11.095296>,  <6.293866, 25.520041, 11.227793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.134146, 25.399483, 11.095296>,  <5.867948, 25.198553, 10.874467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.134146, 25.399483, 11.095296> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055460, -0.770880, 0.634562,
		0.744337, -0.391681, -0.540877,
		0.665497, 0.502325, 0.552072,
		6.333795, 25.550180, 11.260918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.624893, 24.851700, 10.877216>,  <5.867948, 25.198553, 10.874467>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.624893, 24.851700, 10.877216> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.510853, 25.040188, 11.211083>,  <6.442429, 25.153280, 11.411404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.510853, 25.040188, 11.211083>,  <6.624893, 24.851700, 10.877216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.510853, 25.040188, 11.211083> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136387, -0.842003, 0.521948,
		0.948744, 0.262646, 0.175787,
		-0.285101, 0.471221, 0.834667,
		6.425323, 25.181555, 11.461483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.129940, 24.738384, 11.443435>,  <6.624893, 24.851700, 10.877216>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.129940, 24.738384, 11.443435> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.754375, 24.790192, 11.570975>,  <6.529036, 24.821276, 11.647500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.754375, 24.790192, 11.570975>,  <7.129940, 24.738384, 11.443435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.754375, 24.790192, 11.570975> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024816, -0.898590, 0.438088,
		0.343259, 0.419239, 0.840483,
		-0.938913, 0.129520, 0.318853,
		6.472701, 24.829048, 11.666631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.587505, 24.541729, 12.008831>,  <7.129940, 24.738384, 11.443435>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.587505, 24.541729, 12.008831> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.835874, 24.422041, 12.298637>,  <7.984895, 24.350227, 12.472521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.835874, 24.422041, 12.298637>,  <7.587505, 24.541729, 12.008831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.835874, 24.422041, 12.298637> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739767, -0.529347, 0.415375,
		0.259231, -0.793888, -0.550037,
		0.620921, -0.299222, 0.724515,
		8.022151, 24.332273, 12.515992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.032412, 24.018007, 12.319607>,  <7.587505, 24.541729, 12.008831>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.032412, 24.018007, 12.319607> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.912691, 24.063528, 12.698546>,  <6.840859, 24.090839, 12.925910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.912691, 24.063528, 12.698546>,  <7.032412, 24.018007, 12.319607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.912691, 24.063528, 12.698546> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112275, -0.990165, 0.083471,
		0.947530, -0.081380, 0.309135,
		-0.299301, 0.113800, 0.947348,
		6.822901, 24.097668, 12.982751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.479069, 23.627470, 12.853821>,  <7.032412, 24.018007, 12.319607>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.479069, 23.627470, 12.853821> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.107621, 23.673380, 12.994953>,  <6.884752, 23.700926, 13.079633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.107621, 23.673380, 12.994953>,  <7.479069, 23.627470, 12.853821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.107621, 23.673380, 12.994953> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099490, -0.993154, 0.061218,
		0.357441, 0.021745, 0.933683,
		-0.928621, 0.114774, 0.352831,
		6.829034, 23.707811, 13.100802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.455533, 23.055241, 13.365548>,  <7.479069, 23.627470, 12.853821>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.455533, 23.055241, 13.365548> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.084785, 23.198149, 13.319464>,  <6.862337, 23.283894, 13.291813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.084785, 23.198149, 13.319464>,  <7.455533, 23.055241, 13.365548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.084785, 23.198149, 13.319464> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373244, -0.909856, 0.181250,
		-0.040069, 0.210996, 0.976665,
		-0.926867, 0.357272, -0.115210,
		6.806726, 23.305330, 13.284901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.092334, 22.812592, 13.969443>,  <7.455533, 23.055241, 13.365548>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.092334, 22.812592, 13.969443> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.820378, 22.908342, 13.692186>,  <6.657205, 22.965794, 13.525832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.820378, 22.908342, 13.692186>,  <7.092334, 22.812592, 13.969443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.820378, 22.908342, 13.692186> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497839, -0.844691, 0.196604,
		-0.538429, 0.478743, 0.693469,
		-0.679890, 0.239379, -0.693143,
		6.616412, 22.980156, 13.484243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.419940, 22.837114, 14.269154>,  <7.092334, 22.812592, 13.969443>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.419940, 22.837114, 14.269154> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.408700, 22.742954, 13.880556>,  <6.401957, 22.686459, 13.647398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.408700, 22.742954, 13.880556>,  <6.419940, 22.837114, 14.269154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.408700, 22.742954, 13.880556> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532504, -0.818969, 0.213842,
		-0.845961, 0.523332, -0.102340,
		-0.028097, -0.235398, -0.971493,
		6.400271, 22.672335, 13.589108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.803039, 22.544376, 14.185739>,  <6.419940, 22.837114, 14.269154>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.803039, 22.544376, 14.185739> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.940839, 22.442547, 13.824294>,  <6.023519, 22.381449, 13.607428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.940839, 22.442547, 13.824294>,  <5.803039, 22.544376, 14.185739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.940839, 22.442547, 13.824294> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452373, -0.888426, 0.077828,
		-0.822604, 0.381957, -0.421226,
		0.344501, -0.254573, -0.903611,
		6.044189, 22.366175, 13.553211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.239028, 22.303211, 13.824086>,  <5.803039, 22.544376, 14.185739>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.239028, 22.303211, 13.824086> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.561559, 22.156090, 13.638806>,  <5.755078, 22.067818, 13.527638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.561559, 22.156090, 13.638806>,  <5.239028, 22.303211, 13.824086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.561559, 22.156090, 13.638806> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422199, -0.906375, -0.015252,
		-0.414222, 0.207861, -0.886123,
		0.806330, -0.367803, -0.463199,
		5.803458, 22.045750, 13.499846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.970395, 21.933098, 13.312708>,  <5.239028, 22.303211, 13.824086>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.970395, 21.933098, 13.312708> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.340163, 21.780628, 13.307745>,  <5.562024, 21.689146, 13.304767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.340163, 21.780628, 13.307745>,  <4.970395, 21.933098, 13.312708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.340163, 21.780628, 13.307745> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378981, -0.914490, -0.141708,
		0.042669, 0.135700, -0.989831,
		0.924420, -0.381174, -0.012408,
		5.617489, 21.666277, 13.304023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.171764, 21.632059, 12.575928>,  <4.970395, 21.933098, 13.312708>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.171764, 21.632059, 12.575928> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.399371, 21.456923, 12.854357>,  <5.535935, 21.351841, 13.021414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.399371, 21.456923, 12.854357>,  <5.171764, 21.632059, 12.575928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.399371, 21.456923, 12.854357> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386557, -0.889531, -0.243533,
		0.725806, -0.130497, -0.675408,
		0.569016, -0.437841, 0.696071,
		5.570076, 21.325571, 13.063178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.494431, 21.062284, 12.243168>,  <5.171764, 21.632059, 12.575928>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.494431, 21.062284, 12.243168> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.549299, 20.967358, 12.627848>,  <5.582220, 20.910402, 12.858656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.549299, 20.967358, 12.627848>,  <5.494431, 21.062284, 12.243168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.549299, 20.967358, 12.627848> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071400, -0.970720, -0.229358,
		0.987971, -0.037204, -0.150098,
		0.137170, -0.237316, 0.961699,
		5.590450, 20.896162, 12.916357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.829214, 20.383488, 12.300273>,  <5.494431, 21.062284, 12.243168>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.829214, 20.383488, 12.300273> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.707712, 20.407263, 12.680631>,  <5.634810, 20.421528, 12.908845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.707712, 20.407263, 12.680631>,  <5.829214, 20.383488, 12.300273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.707712, 20.407263, 12.680631> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130604, -0.991228, 0.020240,
		0.943756, -0.118042, 0.308853,
		-0.303755, 0.059439, 0.950894,
		5.616585, 20.425095, 12.965899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.323800, 20.026772, 12.819345>,  <5.829214, 20.383488, 12.300273>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.323800, 20.026772, 12.819345> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.958089, 20.049328, 12.979803>,  <5.738662, 20.062860, 13.076078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.958089, 20.049328, 12.979803>,  <6.323800, 20.026772, 12.819345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.958089, 20.049328, 12.979803> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007461, -0.992440, 0.122501,
		0.405021, 0.109007, 0.907786,
		-0.914277, 0.056389, 0.401146,
		5.683806, 20.066244, 13.100146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.245994, 19.486351, 13.442643>,  <6.323800, 20.026772, 12.819345>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.245994, 19.486351, 13.442643> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.863900, 19.567556, 13.356561>,  <5.634644, 19.616280, 13.304912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.863900, 19.567556, 13.356561>,  <6.245994, 19.486351, 13.442643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.863900, 19.567556, 13.356561> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234137, -0.963414, 0.130433,
		-0.180852, 0.174982, 0.967819,
		-0.955234, 0.203013, -0.215205,
		5.577330, 19.628460, 13.291999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.927277, 19.218208, 14.001691>,  <6.245994, 19.486351, 13.442643>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.927277, 19.218208, 14.001691> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.638604, 19.252619, 13.726948>,  <5.465401, 19.273266, 13.562101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.638604, 19.252619, 13.726948>,  <5.927277, 19.218208, 14.001691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.638604, 19.252619, 13.726948> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444465, -0.818280, 0.364513,
		-0.530685, 0.568347, 0.628773,
		-0.721682, 0.086026, -0.686859,
		5.422100, 19.278427, 13.520890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.345983, 19.240318, 14.391917>,  <5.927277, 19.218208, 14.001691>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.345983, 19.240318, 14.391917> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.259573, 19.104412, 14.025771>,  <5.207727, 19.022869, 13.806084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.259573, 19.104412, 14.025771>,  <5.345983, 19.240318, 14.391917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.259573, 19.104412, 14.025771> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594380, -0.698014, 0.399362,
		-0.774626, 0.630346, -0.051161,
		-0.216025, -0.339765, -0.915365,
		5.194766, 19.002483, 13.751162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.721108, 19.097422, 14.327846>,  <5.345983, 19.240318, 14.391917>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.721108, 19.097422, 14.327846> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.809118, 18.868387, 14.011938>,  <4.861924, 18.730967, 13.822393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.809118, 18.868387, 14.011938>,  <4.721108, 19.097422, 14.327846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.809118, 18.868387, 14.011938> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591553, -0.722077, 0.358705,
		-0.775664, 0.388267, -0.497588,
		0.220024, -0.572585, -0.789770,
		4.875125, 18.696611, 13.775007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.063764, 18.703491, 14.143859>,  <4.721108, 19.097422, 14.327846>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.063764, 18.703491, 14.143859> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.353064, 18.504879, 13.951872>,  <4.526644, 18.385712, 13.836679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.353064, 18.504879, 13.951872>,  <4.063764, 18.703491, 14.143859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.353064, 18.504879, 13.951872> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419076, -0.867980, 0.266433,
		-0.548894, 0.008445, -0.835850,
		0.723250, -0.496528, -0.479968,
		4.570038, 18.355921, 13.807881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.800105, 18.211351, 13.810277>,  <4.063764, 18.703491, 14.143859>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.800105, 18.211351, 13.810277> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.170738, 18.060928, 13.808202>,  <4.393117, 17.970675, 13.806956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.170738, 18.060928, 13.808202>,  <3.800105, 18.211351, 13.810277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.170738, 18.060928, 13.808202> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366041, -0.904903, 0.217173,
		-0.086364, -0.199330, -0.976119,
		0.926582, -0.376056, -0.005188,
		4.448712, 17.948112, 13.806645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.685252, 17.595175, 13.573085>,  <3.800105, 18.211351, 13.810277>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.685252, 17.595175, 13.573085> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.036930, 17.568714, 13.761825>,  <4.247937, 17.552837, 13.875069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.036930, 17.568714, 13.761825>,  <3.685252, 17.595175, 13.573085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.036930, 17.568714, 13.761825> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239228, -0.917727, 0.317093,
		0.412054, -0.391665, -0.822685,
		0.879194, -0.066150, 0.471850,
		4.300688, 17.548870, 13.903379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.112884, 16.970293, 13.420281>,  <3.685252, 17.595175, 13.573085>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.112884, 16.970293, 13.420281> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.248924, 17.085598, 13.778329>,  <4.330548, 17.154781, 13.993157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.248924, 17.085598, 13.778329>,  <4.112884, 16.970293, 13.420281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.248924, 17.085598, 13.778329> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136137, -0.926740, 0.350172,
		0.930483, -0.240952, -0.275941,
		0.340100, 0.288263, 0.895118,
		4.350954, 17.172077, 14.046865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.518418, 16.497828, 13.495937>,  <4.112884, 16.970293, 13.420281>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.518418, 16.497828, 13.495937> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.474957, 16.640110, 13.867241>,  <4.448880, 16.725479, 14.090023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.474957, 16.640110, 13.867241>,  <4.518418, 16.497828, 13.495937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.474957, 16.640110, 13.867241> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019437, -0.932849, 0.359742,
		0.993890, 0.057130, 0.094444,
		-0.108654, 0.355708, 0.928260,
		4.442360, 16.746822, 14.145719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.988338, 16.116316, 13.788355>,  <4.518418, 16.497828, 13.495937>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.988338, 16.116316, 13.788355> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.766430, 16.271118, 14.082962>,  <4.633286, 16.364000, 14.259727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.766430, 16.271118, 14.082962>,  <4.988338, 16.116316, 13.788355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.766430, 16.271118, 14.082962> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035718, -0.873339, 0.485803,
		0.831238, 0.295815, 0.470677,
		-0.554768, 0.387006, 0.736518,
		4.600000, 16.387220, 14.303918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.701305, 16.024651, 13.861727>,  <4.988338, 16.116316, 13.788355>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.701305, 16.024651, 13.861727> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.085378, 15.927642, 13.917196>,  <6.315822, 15.869436, 13.950479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.085378, 15.927642, 13.917196>,  <5.701305, 16.024651, 13.861727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.085378, 15.927642, 13.917196> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156640, 0.878372, 0.451582,
		-0.231328, -0.411879, 0.881387,
		0.960183, -0.242524, 0.138675,
		6.373433, 15.854885, 13.958798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.803180, 16.126036, 14.584130>,  <5.701305, 16.024651, 13.861727>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.803180, 16.126036, 14.584130> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.149822, 16.157398, 14.387012>,  <6.357808, 16.176216, 14.268742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.149822, 16.157398, 14.387012>,  <5.803180, 16.126036, 14.584130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.149822, 16.157398, 14.387012> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152732, 0.898502, 0.411542,
		0.475044, -0.431911, 0.766672,
		0.866606, 0.078405, -0.492794,
		6.409804, 16.180920, 14.239174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.328080, 16.410673, 15.032798>,  <5.803180, 16.126036, 14.584130>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.328080, 16.410673, 15.032798> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.541090, 16.459040, 14.697704>,  <6.668895, 16.488060, 14.496648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.541090, 16.459040, 14.697704>,  <6.328080, 16.410673, 15.032798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.541090, 16.459040, 14.697704> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417513, 0.823427, 0.384254,
		0.736275, -0.554390, 0.388010,
		0.532524, 0.120917, -0.837733,
		6.700847, 16.495316, 14.446384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.923565, 16.578609, 15.236896>,  <6.328080, 16.410673, 15.032798>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.923565, 16.578609, 15.236896> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.888497, 16.724131, 14.865959>,  <6.867456, 16.811443, 14.643397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.888497, 16.724131, 14.865959>,  <6.923565, 16.578609, 15.236896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.888497, 16.724131, 14.865959> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266656, 0.905522, 0.330036,
		0.959796, -0.218347, -0.176398,
		-0.087670, 0.363805, -0.927340,
		6.862196, 16.833273, 14.587757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.586607, 16.837696, 15.016988>,  <6.923565, 16.578609, 15.236896>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.586607, 16.837696, 15.016988> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.321186, 17.020742, 14.780249>,  <7.161933, 17.130569, 14.638205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.321186, 17.020742, 14.780249>,  <7.586607, 16.837696, 15.016988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.321186, 17.020742, 14.780249> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395911, 0.886043, 0.241211,
		0.634786, -0.074263, -0.769111,
		-0.663552, 0.457617, -0.591849,
		7.122120, 17.158028, 14.602694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.944308, 17.336859, 14.720616>,  <7.586607, 16.837696, 15.016988>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.944308, 17.336859, 14.720616> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.569226, 17.458437, 14.653294>,  <7.344177, 17.531384, 14.612900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.569226, 17.458437, 14.653294>,  <7.944308, 17.336859, 14.720616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.569226, 17.458437, 14.653294> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238137, 0.915006, 0.325660,
		0.252986, 0.265293, -0.930386,
		-0.937704, 0.303947, -0.168307,
		7.287915, 17.549622, 14.602801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.087082, 17.958193, 14.771032>,  <7.944308, 17.336859, 14.720616>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.087082, 17.958193, 14.771032> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.690684, 17.949625, 14.718166>,  <7.452845, 17.944485, 14.686447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.690684, 17.949625, 14.718166>,  <8.087082, 17.958193, 14.771032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.690684, 17.949625, 14.718166> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052504, 0.970225, 0.236445,
		0.123165, 0.241255, -0.962614,
		-0.990996, -0.021420, -0.132165,
		7.393385, 17.943199, 14.678517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.988464, 18.629417, 14.456175>,  <8.087082, 17.958193, 14.771032>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.988464, 18.629417, 14.456175> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.647940, 18.476845, 14.600273>,  <7.443625, 18.385302, 14.686732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.647940, 18.476845, 14.600273>,  <7.988464, 18.629417, 14.456175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.647940, 18.476845, 14.600273> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316631, 0.921004, 0.226928,
		-0.418346, 0.079121, -0.904835,
		-0.851311, -0.381433, 0.360247,
		7.392546, 18.362415, 14.708347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.427279, 18.900490, 14.092586>,  <7.988464, 18.629417, 14.456175>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.427279, 18.900490, 14.092586> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.312192, 18.803865, 14.463286>,  <7.243140, 18.745892, 14.685707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.312192, 18.803865, 14.463286>,  <7.427279, 18.900490, 14.092586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.312192, 18.803865, 14.463286> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253742, 0.952314, 0.169446,
		-0.923490, -0.186404, -0.335290,
		-0.287716, -0.241559, 0.926752,
		7.225877, 18.731398, 14.741312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.811842, 19.197947, 14.205917>,  <7.427279, 18.900490, 14.092586>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.811842, 19.197947, 14.205917> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.997136, 19.151518, 14.557358>,  <7.108312, 19.123661, 14.768222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.997136, 19.151518, 14.557358>,  <6.811842, 19.197947, 14.205917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.997136, 19.151518, 14.557358> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298152, 0.913187, 0.277840,
		-0.834577, -0.390661, 0.388413,
		0.463235, -0.116073, 0.878602,
		7.136106, 19.116695, 14.820938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.515164, 19.769501, 14.587929>,  <6.811842, 19.197947, 14.205917>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.515164, 19.769501, 14.587929> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.778999, 19.639727, 14.859130>,  <6.937300, 19.561863, 15.021851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.778999, 19.639727, 14.859130>,  <6.515164, 19.769501, 14.587929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.778999, 19.639727, 14.859130> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193375, 0.798434, 0.570184,
		-0.726326, -0.507195, 0.463900,
		0.659588, -0.324433, 0.678002,
		6.976875, 19.542397, 15.062531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.215708, 19.857632, 15.209100>,  <6.515164, 19.769501, 14.587929>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.215708, 19.857632, 15.209100> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.606612, 19.844036, 15.292824>,  <6.841154, 19.835878, 15.343059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.606612, 19.844036, 15.292824>,  <6.215708, 19.857632, 15.209100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.606612, 19.844036, 15.292824> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090536, 0.825707, 0.556786,
		-0.191753, -0.563074, 0.803852,
		0.977258, -0.033988, 0.209310,
		6.899789, 19.833839, 15.355617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.285961, 19.939905, 15.959898>,  <6.215708, 19.857632, 15.209100>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.285961, 19.939905, 15.959898> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.636519, 20.064985, 15.813393>,  <6.846854, 20.140034, 15.725490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.636519, 20.064985, 15.813393>,  <6.285961, 19.939905, 15.959898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.636519, 20.064985, 15.813393> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063953, 0.829357, 0.555047,
		0.477327, -0.463017, 0.746843,
		0.876396, 0.312701, -0.366263,
		6.899438, 20.158796, 15.703513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.636680, 20.075232, 16.584885>,  <6.285961, 19.939905, 15.959898>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.636680, 20.075232, 16.584885> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.827044, 20.263605, 16.287771>,  <6.941263, 20.376629, 16.109503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.827044, 20.263605, 16.287771>,  <6.636680, 20.075232, 16.584885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.827044, 20.263605, 16.287771> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024246, 0.837213, 0.546340,
		0.879161, -0.278017, 0.387019,
		0.475909, 0.470937, -0.742785,
		6.969817, 20.404886, 16.064936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.206955, 20.539759, 16.918198>,  <6.636680, 20.075232, 16.584885>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.206955, 20.539759, 16.918198> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.145232, 20.685705, 16.550924>,  <7.108198, 20.773273, 16.330561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.145232, 20.685705, 16.550924>,  <7.206955, 20.539759, 16.918198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.145232, 20.685705, 16.550924> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063790, 0.931055, 0.359259,
		0.985961, -0.003134, -0.166945,
		-0.154309, 0.364865, -0.918184,
		7.098939, 20.795164, 16.275469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.558537, 21.163012, 16.978731>,  <7.206955, 20.539759, 16.918198>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.558537, 21.163012, 16.978731> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.324776, 21.201405, 16.656424>,  <7.184520, 21.224440, 16.463039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.324776, 21.201405, 16.656424>,  <7.558537, 21.163012, 16.978731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.324776, 21.201405, 16.656424> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144498, 0.964800, 0.219728,
		0.798495, 0.244841, -0.549962,
		-0.584402, 0.095983, -0.805767,
		7.149456, 21.230200, 16.414694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.811865, 21.805773, 16.545595>,  <7.558537, 21.163012, 16.978731>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.811865, 21.805773, 16.545595> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.425108, 21.756197, 16.456369>,  <7.193054, 21.726452, 16.402834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.425108, 21.756197, 16.456369>,  <7.811865, 21.805773, 16.545595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.425108, 21.756197, 16.456369> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121162, 0.992288, -0.026159,
		0.224587, 0.001734, -0.974453,
		-0.966892, -0.123942, -0.223065,
		7.135040, 21.719015, 16.389450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.743996, 22.065756, 15.873748>,  <7.811865, 21.805773, 16.545595>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.743996, 22.065756, 15.873748> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.374451, 22.057152, 16.026594>,  <7.152723, 22.051989, 16.118301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.374451, 22.057152, 16.026594>,  <7.743996, 22.065756, 15.873748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.374451, 22.057152, 16.026594> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132583, 0.954584, -0.266817,
		-0.359023, -0.297165, -0.884757,
		-0.923864, -0.021510, 0.382117,
		7.097291, 22.050699, 16.141230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.352318, 22.313543, 15.311091>,  <7.743996, 22.065756, 15.873748>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.352318, 22.313543, 15.311091> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.143151, 22.372492, 15.646910>,  <7.017651, 22.407862, 15.848401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.143151, 22.372492, 15.646910>,  <7.352318, 22.313543, 15.311091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.143151, 22.372492, 15.646910> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131055, 0.959328, -0.250027,
		-0.842248, -0.240770, -0.482335,
		-0.522917, 0.147373, 0.839547,
		6.986276, 22.416704, 15.898774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.764217, 22.679756, 15.140214>,  <7.352318, 22.313543, 15.311091>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.764217, 22.679756, 15.140214> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.833051, 22.728743, 15.531190>,  <6.874352, 22.758135, 15.765776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.833051, 22.728743, 15.531190>,  <6.764217, 22.679756, 15.140214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.833051, 22.728743, 15.531190> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199272, 0.976056, -0.087210,
		-0.964716, -0.179768, 0.192368,
		0.172084, 0.122466, 0.977440,
		6.884676, 22.765482, 15.824422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.305114, 23.274303, 15.297895>,  <6.764217, 22.679756, 15.140214>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.305114, 23.274303, 15.297895> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.564799, 23.275126, 15.602138>,  <6.720610, 23.275618, 15.784682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.564799, 23.275126, 15.602138>,  <6.305114, 23.274303, 15.297895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.564799, 23.275126, 15.602138> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105471, 0.990579, 0.087349,
		-0.753259, -0.136930, 0.643313,
		0.649213, 0.002054, 0.760604,
		6.759563, 23.275742, 15.830318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<17.102777, 13.239099, 26.438118> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.787352, 13.016741, 26.332932>,  <16.598097, 12.883327, 26.269819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.787352, 13.016741, 26.332932>,  <17.102777, 13.239099, 26.438118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.787352, 13.016741, 26.332932> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305236, -0.017406, 0.952118,
		-0.533854, 0.831071, -0.155953,
		-0.788563, -0.555894, -0.262965,
		16.550783, 12.849973, 26.254042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.489836, 13.480502, 26.820757>,  <17.102777, 13.239099, 26.438118>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.489836, 13.480502, 26.820757> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.353945, 13.128379, 26.688307>,  <16.272409, 12.917105, 26.608837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.353945, 13.128379, 26.688307>,  <16.489836, 13.480502, 26.820757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.353945, 13.128379, 26.688307> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477934, -0.141640, 0.866901,
		-0.810040, 0.452767, -0.372610,
		-0.339727, -0.880307, -0.331127,
		16.252028, 12.864286, 26.588968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.816562, 13.505871, 27.110382>,  <16.489836, 13.480502, 26.820757>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.816562, 13.505871, 27.110382> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.906190, 13.124055, 27.031750>,  <15.959967, 12.894965, 26.984570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.906190, 13.124055, 27.031750>,  <15.816562, 13.505871, 27.110382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.906190, 13.124055, 27.031750> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544847, -0.289938, 0.786815,
		-0.808043, -0.069196, -0.585045,
		0.224071, -0.954540, -0.196581,
		15.973412, 12.837692, 26.972776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.189549, 13.121751, 27.199860>,  <15.816562, 13.505871, 27.110382>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.189549, 13.121751, 27.199860> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.497109, 12.866852, 27.220680>,  <15.681645, 12.713912, 27.233173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.497109, 12.866852, 27.220680>,  <15.189549, 13.121751, 27.199860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.497109, 12.866852, 27.220680> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397894, -0.413190, 0.819118,
		-0.500476, -0.650529, -0.571258,
		0.768898, -0.637250, 0.052050,
		15.727779, 12.675677, 27.236296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.934494, 12.457582, 27.210630>,  <15.189549, 13.121751, 27.199860>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.934494, 12.457582, 27.210630> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.299029, 12.441228, 27.374479>,  <15.517751, 12.431416, 27.472788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.299029, 12.441228, 27.374479>,  <14.934494, 12.457582, 27.210630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.299029, 12.441228, 27.374479> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382960, -0.449225, 0.807180,
		0.151012, -0.892483, -0.425053,
		0.911338, -0.040884, 0.409623,
		15.572431, 12.428963, 27.497366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.225399, 11.662766, 27.103968>,  <14.934494, 12.457582, 27.210630>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.225399, 11.662766, 27.103968> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.384293, 11.811496, 27.439575>,  <15.479629, 11.900734, 27.640940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.384293, 11.811496, 27.439575>,  <15.225399, 11.662766, 27.103968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.384293, 11.811496, 27.439575> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440538, -0.724760, 0.529763,
		0.805066, -0.580059, -0.124096,
		0.397233, 0.371826, 0.839018,
		15.503463, 11.923043, 27.691280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.431953, 11.098822, 27.526514>,  <15.225399, 11.662766, 27.103968>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.431953, 11.098822, 27.526514> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.473971, 11.372907, 27.814806>,  <15.499183, 11.537357, 27.987782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.473971, 11.372907, 27.814806>,  <15.431953, 11.098822, 27.526514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.473971, 11.372907, 27.814806> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435733, -0.619752, 0.652720,
		0.893925, -0.382610, 0.233468,
		0.105045, 0.685212, 0.720728,
		15.505485, 11.578470, 28.031025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.634766, 10.756087, 28.173328>,  <15.431953, 11.098822, 27.526514>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.634766, 10.756087, 28.173328> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.477897, 11.102201, 28.298216>,  <15.383775, 11.309870, 28.373148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.477897, 11.102201, 28.298216>,  <15.634766, 10.756087, 28.173328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.477897, 11.102201, 28.298216> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493594, -0.484350, 0.722337,
		0.776251, 0.129172, 0.617049,
		-0.392173, 0.865286, 0.312219,
		15.360245, 11.361787, 28.391882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.756773, 10.683628, 28.886734>,  <15.634766, 10.756087, 28.173328>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.756773, 10.683628, 28.886734> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.466237, 10.946010, 28.804607>,  <15.291915, 11.103438, 28.755331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.466237, 10.946010, 28.804607>,  <15.756773, 10.683628, 28.886734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.466237, 10.946010, 28.804607> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640937, -0.538499, 0.547009,
		0.248250, 0.528909, 0.811558,
		-0.726341, 0.655953, -0.205315,
		15.248335, 11.142796, 28.743013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.476600, 10.773747, 29.533262>,  <15.756773, 10.683628, 28.886734>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.476600, 10.773747, 29.533262> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.182467, 10.923010, 29.306973>,  <15.005988, 11.012568, 29.171198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.182467, 10.923010, 29.306973>,  <15.476600, 10.773747, 29.533262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.182467, 10.923010, 29.306973> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664255, -0.562353, 0.492467,
		-0.134369, 0.737911, 0.661386,
		-0.735330, 0.373157, -0.565724,
		14.961868, 11.034957, 29.137255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.779263, 10.880133, 30.022461>,  <15.476600, 10.773747, 29.533262>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.779263, 10.880133, 30.022461> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.628435, 10.916314, 29.653759>,  <14.537938, 10.938023, 29.432537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.628435, 10.916314, 29.653759>,  <14.779263, 10.880133, 30.022461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.628435, 10.916314, 29.653759> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899750, -0.271848, 0.341392,
		-0.219697, 0.958080, 0.183892,
		-0.377072, 0.090454, -0.921757,
		14.515314, 10.943450, 29.377232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.159710, 11.111157, 30.166340>,  <14.779263, 10.880133, 30.022461>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.159710, 11.111157, 30.166340> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.175628, 10.942586, 29.803946>,  <14.185179, 10.841443, 29.586508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.175628, 10.942586, 29.803946>,  <14.159710, 11.111157, 30.166340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.175628, 10.942586, 29.803946> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735983, -0.625626, 0.258688,
		-0.675829, 0.656498, -0.335061,
		0.039795, -0.421429, -0.905988,
		14.187566, 10.816157, 29.532148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.600179, 11.361452, 29.838451>,  <14.159710, 11.111157, 30.166340>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.600179, 11.361452, 29.838451> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.744758, 11.002237, 29.738144>,  <13.831505, 10.786708, 29.677959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.744758, 11.002237, 29.738144>,  <13.600179, 11.361452, 29.838451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.744758, 11.002237, 29.738144> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719140, -0.439691, 0.538061,
		-0.593459, -0.014144, -0.804740,
		0.361447, -0.898038, -0.250767,
		13.853191, 10.732826, 29.662914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.412034, 11.583127, 30.552664>,  <13.600179, 11.361452, 29.838451>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.412034, 11.583127, 30.552664> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.238676, 11.322858, 30.303251>,  <13.134662, 11.166697, 30.153603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.238676, 11.322858, 30.303251>,  <13.412034, 11.583127, 30.552664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.238676, 11.322858, 30.303251> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662117, -0.239472, 0.710109,
		-0.611367, 0.720609, -0.327036,
		-0.433395, -0.650673, -0.623533,
		13.108658, 11.127656, 30.116192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.295026, 12.340711, 30.516476>,  <13.412034, 11.583127, 30.552664>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.295026, 12.340711, 30.516476> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.982536, 12.564484, 30.627274>,  <12.795043, 12.698748, 30.693752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.982536, 12.564484, 30.627274>,  <13.295026, 12.340711, 30.516476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.982536, 12.564484, 30.627274> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025341, 0.471778, -0.881353,
		-0.623737, -0.681514, -0.382741,
		-0.781223, 0.559432, 0.276995,
		12.748169, 12.732313, 30.710373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.835479, 12.395517, 29.934668>,  <13.295026, 12.340711, 30.516476>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.835479, 12.395517, 29.934668> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.798088, 12.711720, 30.176779>,  <12.775654, 12.901441, 30.322046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.798088, 12.711720, 30.176779>,  <12.835479, 12.395517, 29.934668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.798088, 12.711720, 30.176779> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123298, 0.612453, -0.780832,
		-0.987957, 0.001640, -0.154718,
		-0.093477, 0.790505, 0.605279,
		12.770045, 12.948872, 30.358362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.391047, 12.846709, 29.561403>,  <12.835479, 12.395517, 29.934668>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.391047, 12.846709, 29.561403> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.568611, 13.075378, 29.837414>,  <12.675150, 13.212580, 30.003019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.568611, 13.075378, 29.837414>,  <12.391047, 12.846709, 29.561403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.568611, 13.075378, 29.837414> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198199, 0.688342, -0.697784,
		-0.873877, 0.446516, 0.192257,
		0.443910, 0.571672, 0.690025,
		12.701784, 13.246881, 30.044422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.027368, 13.427949, 29.547976>,  <12.391047, 12.846709, 29.561403>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.027368, 13.427949, 29.547976> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.402300, 13.485020, 29.675131>,  <12.627259, 13.519262, 29.751425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.402300, 13.485020, 29.675131>,  <12.027368, 13.427949, 29.547976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.402300, 13.485020, 29.675131> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187873, 0.561400, -0.805937,
		-0.293452, 0.815153, 0.499412,
		0.937331, 0.142678, 0.317889,
		12.683499, 13.527823, 29.770498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.036572, 14.189727, 29.459869>,  <12.027368, 13.427949, 29.547976>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.036572, 14.189727, 29.459869> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.406148, 14.040217, 29.492424>,  <12.627894, 13.950512, 29.511957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.406148, 14.040217, 29.492424>,  <12.036572, 14.189727, 29.459869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.406148, 14.040217, 29.492424> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241564, 0.405134, -0.881767,
		0.296610, 0.834362, 0.464611,
		0.923942, -0.373774, 0.081385,
		12.683331, 13.928085, 29.516840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.438389, 14.654294, 29.155342>,  <12.036572, 14.189727, 29.459869>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.438389, 14.654294, 29.155342> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.693276, 14.346225, 29.144123>,  <12.846209, 14.161384, 29.137392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.693276, 14.346225, 29.144123>,  <12.438389, 14.654294, 29.155342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.693276, 14.346225, 29.144123> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298172, 0.279930, -0.912542,
		0.710666, 0.573126, 0.408020,
		0.637218, -0.770173, -0.028047,
		12.884441, 14.115173, 29.135710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.117810, 14.878555, 29.103354>,  <12.438389, 14.654294, 29.155342>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.117810, 14.878555, 29.103354> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.182411, 14.496257, 29.004995>,  <13.221171, 14.266877, 28.945980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.182411, 14.496257, 29.004995>,  <13.117810, 14.878555, 29.103354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.182411, 14.496257, 29.004995> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382435, 0.290308, -0.877191,
		0.909758, 0.047630, 0.412397,
		0.161503, -0.955747, -0.245895,
		13.230862, 14.209533, 28.931227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.786502, 14.824312, 28.829168>,  <13.117810, 14.878555, 29.103354>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.786502, 14.824312, 28.829168> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.566101, 14.521832, 28.687998>,  <13.433861, 14.340343, 28.603296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.566101, 14.521832, 28.687998>,  <13.786502, 14.824312, 28.829168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.566101, 14.521832, 28.687998> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197741, 0.292559, -0.935579,
		0.810737, -0.585294, -0.011669,
		-0.551003, -0.756201, -0.352924,
		13.400801, 14.294971, 28.582121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.274342, 14.476163, 28.280413>,  <13.786502, 14.824312, 28.829168>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.274342, 14.476163, 28.280413> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.904943, 14.369186, 28.170408>,  <13.683305, 14.305000, 28.104406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.904943, 14.369186, 28.170408>,  <14.274342, 14.476163, 28.280413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.904943, 14.369186, 28.170408> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202822, 0.268097, -0.941800,
		0.325610, -0.925525, -0.193342,
		-0.923494, -0.267445, -0.275012,
		13.627895, 14.288954, 28.087904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.279240, 14.105272, 27.684597>,  <14.274342, 14.476163, 28.280413>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.279240, 14.105272, 27.684597> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.886488, 14.179932, 27.671486>,  <13.650837, 14.224728, 27.663618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.886488, 14.179932, 27.671486>,  <14.279240, 14.105272, 27.684597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.886488, 14.179932, 27.671486> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053679, 0.108049, -0.992695,
		-0.181743, -0.976467, -0.116110,
		-0.981880, 0.186648, -0.032779,
		13.591924, 14.235926, 27.661652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.163745, 13.926370, 27.068745>,  <14.279240, 14.105272, 27.684597>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.163745, 13.926370, 27.068745> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.823500, 14.121184, 27.147993>,  <13.619352, 14.238073, 27.195541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.823500, 14.121184, 27.147993>,  <14.163745, 13.926370, 27.068745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.823500, 14.121184, 27.147993> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052124, 0.296839, -0.953504,
		-0.523201, -0.821391, -0.227109,
		-0.850614, 0.487036, 0.198120,
		13.568316, 14.267295, 27.207430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.579807, 13.598423, 26.769581>,  <14.163745, 13.926370, 27.068745>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.579807, 13.598423, 26.769581> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.504099, 13.991009, 26.781618>,  <13.458674, 14.226560, 26.788841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.504099, 13.991009, 26.781618>,  <13.579807, 13.598423, 26.769581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.504099, 13.991009, 26.781618> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087097, 0.047309, -0.995076,
		-0.978055, -0.185717, -0.094437,
		-0.189270, 0.981464, 0.030095,
		13.447318, 14.285448, 26.790648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.106797, 13.735514, 26.265915>,  <13.579807, 13.598423, 26.769581>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.106797, 13.735514, 26.265915> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.246428, 14.102760, 26.340973>,  <13.330206, 14.323108, 26.386007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.246428, 14.102760, 26.340973>,  <13.106797, 13.735514, 26.265915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.246428, 14.102760, 26.340973> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131105, 0.150421, -0.979890,
		-0.927878, 0.366657, -0.067861,
		0.349076, 0.918116, 0.187643,
		13.351151, 14.378195, 26.397266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.847144, 14.140438, 25.713125>,  <13.106797, 13.735514, 26.265915>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.847144, 14.140438, 25.713125> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.162056, 14.328057, 25.873219>,  <13.351003, 14.440629, 25.969275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.162056, 14.328057, 25.873219>,  <12.847144, 14.140438, 25.713125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.162056, 14.328057, 25.873219> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276204, 0.312064, -0.909026,
		-0.551274, 0.826203, 0.116129,
		0.787279, 0.469047, 0.400233,
		13.398240, 14.468771, 25.993288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.205189, 14.384133, 25.992533>,  <12.847144, 14.140438, 25.713125>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.205189, 14.384133, 25.992533> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.866964, 14.341419, 25.783297>,  <11.664030, 14.315790, 25.657755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.866964, 14.341419, 25.783297>,  <12.205189, 14.384133, 25.992533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.866964, 14.341419, 25.783297> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323170, -0.677519, 0.660704,
		-0.424958, 0.727712, 0.538373,
		-0.845560, -0.106786, -0.523092,
		11.613297, 14.309383, 25.626369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.716140, 14.587150, 26.367964>,  <12.205189, 14.384133, 25.992533>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.716140, 14.587150, 26.367964> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.511224, 14.353218, 26.116398>,  <11.388274, 14.212859, 25.965458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.511224, 14.353218, 26.116398>,  <11.716140, 14.587150, 26.367964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.511224, 14.353218, 26.116398> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435192, -0.454546, 0.777172,
		-0.740384, 0.671836, -0.021653,
		-0.512289, -0.584829, -0.628916,
		11.357537, 14.177770, 25.927723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.005072, 14.569891, 26.622007>,  <11.716140, 14.587150, 26.367964>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.005072, 14.569891, 26.622007> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.087490, 14.242308, 26.407772>,  <11.136941, 14.045758, 26.279232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.087490, 14.242308, 26.407772>,  <11.005072, 14.569891, 26.622007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.087490, 14.242308, 26.407772> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241606, -0.572964, 0.783160,
		-0.948246, -0.031967, -0.315922,
		0.206047, -0.818957, -0.535587,
		11.149304, 13.996620, 26.247095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.452498, 14.242327, 26.956303>,  <11.005072, 14.569891, 26.622007>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.452498, 14.242327, 26.956303> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.652070, 13.969164, 26.742870>,  <10.771813, 13.805266, 26.614811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.652070, 13.969164, 26.742870>,  <10.452498, 14.242327, 26.956303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.652070, 13.969164, 26.742870> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511183, -0.729075, 0.455128,
		-0.699826, 0.045675, -0.712852,
		0.498934, -0.682908, -0.533574,
		10.801749, 13.764292, 26.582796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.015539, 13.740800, 26.592422>,  <10.452498, 14.242327, 26.956303>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.015539, 13.740800, 26.592422> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.361480, 13.559384, 26.678522>,  <10.569044, 13.450535, 26.730181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.361480, 13.559384, 26.678522>,  <10.015539, 13.740800, 26.592422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.361480, 13.559384, 26.678522> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498815, -0.727913, 0.470453,
		-0.056687, -0.514242, -0.855770,
		0.864852, -0.453540, 0.215248,
		10.620935, 13.423323, 26.743097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.804244, 13.094577, 26.631651>,  <10.015539, 13.740800, 26.592422>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.804244, 13.094577, 26.631651> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.163963, 13.077376, 26.805737>,  <10.379795, 13.067057, 26.910189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.163963, 13.077376, 26.805737>,  <9.804244, 13.094577, 26.631651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.163963, 13.077376, 26.805737> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374693, -0.588966, 0.716047,
		0.225537, -0.807013, -0.545768,
		0.899299, -0.043001, 0.435216,
		10.433753, 13.064476, 26.936302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.892201, 12.396952, 26.736782>,  <9.804244, 13.094577, 26.631651>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.892201, 12.396952, 26.736782> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.157766, 12.587243, 26.967573>,  <10.317105, 12.701418, 27.106049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.157766, 12.587243, 26.967573>,  <9.892201, 12.396952, 26.736782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.157766, 12.587243, 26.967573> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151130, -0.670278, 0.726558,
		0.732380, -0.569569, -0.373108,
		0.663912, 0.475729, 0.576978,
		10.356940, 12.729961, 27.140667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.909369, 11.750040, 26.336914>,  <9.892201, 12.396952, 26.736782>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.909369, 11.750040, 26.336914> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.575672, 11.546114, 26.252884>,  <9.375455, 11.423759, 26.202465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.575672, 11.546114, 26.252884>,  <9.909369, 11.750040, 26.336914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.575672, 11.546114, 26.252884> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111617, 0.529231, -0.841104,
		0.539999, -0.678226, -0.498407,
		-0.834231, -0.509827, -0.210083,
		9.325400, 11.393169, 26.189861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.946507, 11.530144, 25.666620>,  <9.909369, 11.750040, 26.336914>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.946507, 11.530144, 25.666620> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.554640, 11.534784, 25.746733>,  <9.319519, 11.537569, 25.794800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.554640, 11.534784, 25.746733>,  <9.946507, 11.530144, 25.666620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.554640, 11.534784, 25.746733> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150647, 0.616747, -0.772612,
		-0.132487, -0.787076, -0.602461,
		-0.979670, 0.011602, 0.200281,
		9.260738, 11.538265, 25.806816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.617744, 11.371224, 25.075043>,  <9.946507, 11.530144, 25.666620>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.617744, 11.371224, 25.075043> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.357373, 11.575183, 25.300005>,  <9.201151, 11.697558, 25.434982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.357373, 11.575183, 25.300005>,  <9.617744, 11.371224, 25.075043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.357373, 11.575183, 25.300005> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224823, 0.578128, -0.784362,
		-0.725085, -0.637004, -0.261683,
		-0.650928, 0.509896, 0.562405,
		9.162095, 11.728151, 25.468727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.906982, 11.229875, 24.664316>,  <9.617744, 11.371224, 25.075043>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.906982, 11.229875, 24.664316> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.865376, 11.541459, 24.911669>,  <8.840411, 11.728410, 25.060081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.865376, 11.541459, 24.911669>,  <8.906982, 11.229875, 24.664316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<8.865376, 11.541459, 24.911669> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343444, 0.555378, -0.757365,
		-0.933395, -0.291159, 0.209761,
		-0.104017, 0.778962, 0.618384,
		8.834170, 11.775147, 25.097183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.251044, 11.530530, 24.568699>,  <8.906982, 11.229875, 24.664316>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.251044, 11.530530, 24.568699> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.456439, 11.823875, 24.746918>,  <8.579676, 11.999883, 24.853849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.456439, 11.823875, 24.746918>,  <8.251044, 11.530530, 24.568699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<8.456439, 11.823875, 24.746918> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432187, 0.669588, -0.604042,
		-0.741314, 0.117608, 0.660774,
		0.513486, 0.733362, 0.445546,
		8.610485, 12.043884, 24.880581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.799066, 12.023540, 24.558758>,  <8.251044, 11.530530, 24.568699>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.799066, 12.023540, 24.558758> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.159828, 12.191953, 24.597326>,  <8.376286, 12.293000, 24.620466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.159828, 12.191953, 24.597326>,  <7.799066, 12.023540, 24.558758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<8.159828, 12.191953, 24.597326> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220498, 0.640751, -0.735404,
		-0.371409, 0.642005, 0.670734,
		0.901907, 0.421032, 0.096420,
		8.430400, 12.318262, 24.626253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.817666, 12.747317, 24.354670>,  <7.799066, 12.023540, 24.558758>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.817666, 12.747317, 24.354670> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.213634, 12.691758, 24.343626>,  <8.451216, 12.658422, 24.337000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.213634, 12.691758, 24.343626>,  <7.817666, 12.747317, 24.354670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<8.213634, 12.691758, 24.343626> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045132, 0.494230, -0.868159,
		0.134231, 0.858163, 0.495518,
		0.989922, -0.138898, -0.027611,
		8.510611, 12.650089, 24.335342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<12.385605, 8.279786, 28.799067> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.498617, 8.662795, 28.776003>,  <12.566424, 8.892601, 28.762165>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.498617, 8.662795, 28.776003>,  <12.385605, 8.279786, 28.799067>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.498617, 8.662795, 28.776003> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035255, -0.070435, -0.996893,
		-0.958610, 0.279621, -0.053658,
		0.282532, 0.957523, -0.057661,
		12.583377, 8.950052, 28.758705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.972238, 8.534491, 28.170521>,  <12.385605, 8.279786, 28.799067>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.972238, 8.534491, 28.170521> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.302761, 8.745950, 28.248230>,  <12.501076, 8.872826, 28.294855>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.302761, 8.745950, 28.248230>,  <11.972238, 8.534491, 28.170521>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.302761, 8.745950, 28.248230> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008923, 0.332606, -0.943024,
		-0.563145, 0.780963, 0.270118,
		0.826310, 0.528649, 0.194274,
		12.550654, 8.904545, 28.306513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.807189, 9.061981, 27.831299>,  <11.972238, 8.534491, 28.170521>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.807189, 9.061981, 27.831299> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.200815, 9.064984, 27.902357>,  <12.436991, 9.066786, 27.944992>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.200815, 9.064984, 27.902357>,  <11.807189, 9.061981, 27.831299>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.200815, 9.064984, 27.902357> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173822, 0.169573, -0.970068,
		-0.037407, 0.985489, 0.165566,
		0.984066, 0.007508, 0.177643,
		12.496035, 9.067237, 27.955650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.102265, 9.675650, 27.469860>,  <11.807189, 9.061981, 27.831299>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.102265, 9.675650, 27.469860> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.432940, 9.454236, 27.510239>,  <12.631344, 9.321387, 27.534466>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.432940, 9.454236, 27.510239>,  <12.102265, 9.675650, 27.469860>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.432940, 9.454236, 27.510239> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193183, 0.110724, -0.974895,
		0.528461, 0.825433, 0.198467,
		0.826686, -0.553535, 0.100946,
		12.680945, 9.288176, 27.540522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.503816, 10.029472, 27.121206>,  <12.102265, 9.675650, 27.469860>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.503816, 10.029472, 27.121206> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.672531, 9.667279, 27.139956>,  <12.773760, 9.449964, 27.151205>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.672531, 9.667279, 27.139956>,  <12.503816, 10.029472, 27.121206>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.672531, 9.667279, 27.139956> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302010, 0.091560, -0.948898,
		0.854918, 0.414390, 0.312083,
		0.421788, -0.905482, 0.046873,
		12.799067, 9.395635, 27.154016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.168932, 10.100825, 27.093433>,  <12.503816, 10.029472, 27.121206>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.168932, 10.100825, 27.093433> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.115367, 9.728512, 26.957369>,  <13.083228, 9.505124, 26.875731>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.115367, 9.728512, 26.957369>,  <13.168932, 10.100825, 27.093433>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.115367, 9.728512, 26.957369> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447100, 0.249589, -0.858957,
		0.884403, -0.267112, 0.382730,
		-0.133913, -0.930783, -0.340163,
		13.075193, 9.449277, 26.855320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.818665, 10.031535, 26.826973>,  <13.168932, 10.100825, 27.093433>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.818665, 10.031535, 26.826973> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.613777, 9.730790, 26.660921>,  <13.490845, 9.550343, 26.561289>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.613777, 9.730790, 26.660921>,  <13.818665, 10.031535, 26.826973>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.613777, 9.730790, 26.660921> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302357, 0.294551, -0.906543,
		0.803874, -0.589865, 0.076457,
		-0.512217, -0.751864, -0.415132,
		13.460112, 9.505231, 26.536381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.205339, 9.891319, 26.196726>,  <13.818665, 10.031535, 26.826973>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.205339, 9.891319, 26.196726> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.840650, 9.744676, 26.122583>,  <13.621836, 9.656690, 26.078098>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.840650, 9.744676, 26.122583>,  <14.205339, 9.891319, 26.196726>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.840650, 9.744676, 26.122583> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025643, 0.399531, -0.916361,
		0.410021, -0.840214, -0.354857,
		-0.911716, -0.366628, -0.185362,
		13.567132, 9.634692, 26.066977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.214418, 9.314795, 25.665001>,  <14.205339, 9.891319, 26.196726>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.214418, 9.314795, 25.665001> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.852865, 9.484249, 25.641239>,  <13.635933, 9.585921, 25.626982>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.852865, 9.484249, 25.641239>,  <14.214418, 9.314795, 25.665001>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.852865, 9.484249, 25.641239> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126630, 0.132326, -0.983084,
		-0.408607, -0.896116, -0.173252,
		-0.903883, 0.423634, -0.059406,
		13.581700, 9.611340, 25.623417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.862092, 9.122224, 25.002146>,  <14.214418, 9.314795, 25.665001>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.862092, 9.122224, 25.002146> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.671642, 9.454562, 25.117386>,  <13.557373, 9.653965, 25.186529>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.671642, 9.454562, 25.117386>,  <13.862092, 9.122224, 25.002146>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.671642, 9.454562, 25.117386> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000682, 0.327268, -0.944932,
		-0.879378, -0.450100, -0.155253,
		-0.476123, 0.830846, 0.288099,
		13.528806, 9.703816, 25.203815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.267520, 9.134838, 24.512703>,  <13.862092, 9.122224, 25.002146>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.267520, 9.134838, 24.512703> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.282989, 9.511003, 24.647833>,  <13.292270, 9.736703, 24.728910>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.282989, 9.511003, 24.647833>,  <13.267520, 9.134838, 24.512703>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.282989, 9.511003, 24.647833> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172264, 0.339290, -0.924774,
		-0.984292, -0.022434, 0.175120,
		0.038670, 0.940414, 0.337825,
		13.294590, 9.793128, 24.749180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.695100, 9.525891, 24.141943>,  <13.267520, 9.134838, 24.512703>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.695100, 9.525891, 24.141943> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.973459, 9.785560, 24.264778>,  <13.140475, 9.941360, 24.338480>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.973459, 9.785560, 24.264778>,  <12.695100, 9.525891, 24.141943>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.973459, 9.785560, 24.264778> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049271, 0.383451, -0.922246,
		-0.716448, 0.656920, 0.234858,
		0.695898, 0.649170, 0.307090,
		13.182229, 9.980310, 24.356905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.083505, 9.811226, 23.933031>,  <12.695100, 9.525891, 24.141943>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.083505, 9.811226, 23.933031> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.697801, 9.893364, 23.866056>,  <11.466378, 9.942647, 23.825871>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.697801, 9.893364, 23.866056>,  <12.083505, 9.811226, 23.933031>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.697801, 9.893364, 23.866056> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216974, -0.249285, 0.943811,
		0.152066, 0.946409, 0.284930,
		-0.964260, 0.205344, -0.167439,
		11.408523, 9.954967, 23.815825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.895636, 10.053720, 24.613085>,  <12.083505, 9.811226, 23.933031>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.895636, 10.053720, 24.613085> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.554493, 9.973718, 24.420156>,  <11.349808, 9.925716, 24.304399>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.554493, 9.973718, 24.420156>,  <11.895636, 10.053720, 24.613085>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.554493, 9.973718, 24.420156> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424842, -0.271213, 0.863685,
		-0.303553, 0.941510, 0.146335,
		-0.852857, -0.200005, -0.482321,
		11.298635, 9.913716, 24.275459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.320251, 10.367428, 25.015593>,  <11.895636, 10.053720, 24.613085>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.320251, 10.367428, 25.015593> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.182235, 10.068036, 24.789062>,  <11.099425, 9.888401, 24.653145>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.182235, 10.068036, 24.789062>,  <11.320251, 10.367428, 25.015593>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.182235, 10.068036, 24.789062> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451949, -0.396333, 0.799163,
		-0.822612, 0.531694, -0.201524,
		-0.345039, -0.748480, -0.566327,
		11.078723, 9.843493, 24.619164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.549686, 10.366332, 25.145315>,  <11.320251, 10.367428, 25.015593>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.549686, 10.366332, 25.145315> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.652272, 10.014942, 24.984066>,  <10.713823, 9.804109, 24.887316>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.652272, 10.014942, 24.984066>,  <10.549686, 10.366332, 25.145315>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.652272, 10.014942, 24.984066> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614612, -0.470112, 0.633441,
		-0.745975, 0.085310, -0.660488,
		0.256465, -0.878474, -0.403124,
		10.729212, 9.751400, 24.863129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.938701, 10.042167, 25.033104>,  <10.549686, 10.366332, 25.145315>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.938701, 10.042167, 25.033104> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.201085, 9.740739, 25.050303>,  <10.358516, 9.559882, 25.060621>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.201085, 9.740739, 25.050303>,  <9.938701, 10.042167, 25.033104>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.201085, 9.740739, 25.050303> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623491, -0.508863, 0.593564,
		-0.425410, -0.416164, -0.803638,
		0.655961, -0.753569, 0.042999,
		10.397874, 9.514668, 25.063202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.540278, 9.365706, 24.969193>,  <9.938701, 10.042167, 25.033104>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.540278, 9.365706, 24.969193> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.893568, 9.258335, 25.123005>,  <10.105541, 9.193913, 25.215292>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.893568, 9.258335, 25.123005>,  <9.540278, 9.365706, 24.969193>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.893568, 9.258335, 25.123005> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468771, -0.528255, 0.707955,
		0.013095, -0.805538, -0.592399,
		0.883223, -0.268429, 0.384530,
		10.158535, 9.177807, 25.238363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.426790, 8.745511, 25.135908>,  <9.540278, 9.365706, 24.969193>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.426790, 8.745511, 25.135908> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.775301, 8.814729, 25.319616>,  <9.984407, 8.856259, 25.429842>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.775301, 8.814729, 25.319616>,  <9.426790, 8.745511, 25.135908>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.775301, 8.814729, 25.319616> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259538, -0.631780, 0.730407,
		0.416551, -0.755586, -0.505545,
		0.871278, 0.173044, 0.459272,
		10.036684, 8.866642, 25.457397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.789585, 8.128037, 25.276854>,  <9.426790, 8.745511, 25.135908>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.789585, 8.128037, 25.276854> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.906637, 8.377027, 25.567204>,  <9.976869, 8.526420, 25.741413>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.906637, 8.377027, 25.567204>,  <9.789585, 8.128037, 25.276854>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.906637, 8.377027, 25.567204> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153314, -0.718742, 0.678163,
		0.943855, -0.309738, -0.114891,
		0.292630, 0.622473, 0.725875,
		9.994426, 8.563768, 25.784966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.170890, 7.696491, 25.690439>,  <9.789585, 8.128037, 25.276854>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.170890, 7.696491, 25.690439> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.118032, 8.022592, 25.915972>,  <10.086318, 8.218252, 26.051291>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.118032, 8.022592, 25.915972>,  <10.170890, 7.696491, 25.690439>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.118032, 8.022592, 25.915972> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319253, -0.573512, 0.754428,
		0.938411, -0.080313, 0.336056,
		-0.132143, 0.815251, 0.563831,
		10.078390, 8.267167, 26.085121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.411527, 7.485085, 26.308235>,  <10.170890, 7.696491, 25.690439>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.411527, 7.485085, 26.308235> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.137455, 7.764300, 26.391443>,  <9.973012, 7.931829, 26.441368>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.137455, 7.764300, 26.391443>,  <10.411527, 7.485085, 26.308235>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.137455, 7.764300, 26.391443> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412519, -0.607270, 0.679008,
		0.600298, 0.379429, 0.704042,
		-0.685179, 0.698038, 0.208021,
		9.931901, 7.973711, 26.453850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.366447, 7.416786, 26.943447>,  <10.411527, 7.485085, 26.308235>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.366447, 7.416786, 26.943447> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.039291, 7.630963, 26.859201>,  <9.842998, 7.759470, 26.808655>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.039291, 7.630963, 26.859201>,  <10.366447, 7.416786, 26.943447>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.039291, 7.630963, 26.859201> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504294, -0.490855, 0.710457,
		0.277029, 0.687286, 0.671485,
		-0.817889, 0.535443, -0.210613,
		9.793924, 7.791596, 26.796017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.118456, 7.739681, 27.527452>,  <10.366447, 7.416786, 26.943447>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.118456, 7.739681, 27.527452> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.795232, 7.706701, 27.294132>,  <9.601297, 7.686913, 27.154140>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.795232, 7.706701, 27.294132>,  <10.118456, 7.739681, 27.527452>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.795232, 7.706701, 27.294132> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449134, -0.554503, 0.700575,
		-0.381205, 0.828087, 0.411040,
		-0.808060, -0.082450, -0.583302,
		9.552814, 7.681966, 27.119143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.599228, 7.917619, 27.916206>,  <10.118456, 7.739681, 27.527452>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.599228, 7.917619, 27.916206> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.418982, 7.702894, 27.630892>,  <9.310834, 7.574059, 27.459703>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.418982, 7.702894, 27.630892>,  <9.599228, 7.917619, 27.916206>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.418982, 7.702894, 27.630892> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470117, -0.536543, 0.700793,
		-0.758904, 0.651117, -0.010589,
		-0.450617, -0.536813, -0.713286,
		9.283796, 7.541850, 27.416906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.845102, 7.976954, 27.945072>,  <9.599228, 7.917619, 27.916206>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.845102, 7.976954, 27.945072> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.965784, 7.619699, 27.811638>,  <9.038194, 7.405346, 27.731577>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.965784, 7.619699, 27.811638>,  <8.845102, 7.976954, 27.945072>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.965784, 7.619699, 27.811638> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661687, -0.448059, 0.601176,
		-0.686399, 0.039351, -0.726160,
		0.301706, -0.893138, -0.333586,
		9.056295, 7.351758, 27.711563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.927166, 8.533763, 27.340414>,  <8.845102, 7.976954, 27.945072>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.927166, 8.533763, 27.340414> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.995789, 8.792254, 27.637857>,  <9.036962, 8.947350, 27.816324>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.995789, 8.792254, 27.637857>,  <8.927166, 8.533763, 27.340414>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.995789, 8.792254, 27.637857> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430557, 0.728081, -0.533402,
		-0.886109, -0.228658, 0.403145,
		0.171555, 0.646230, 0.743610,
		9.047256, 8.986123, 27.860941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.394063, 9.039195, 27.269411>,  <8.927166, 8.533763, 27.340414>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.394063, 9.039195, 27.269411> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.653774, 9.220898, 27.513407>,  <8.809601, 9.329919, 27.659805>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.653774, 9.220898, 27.513407>,  <8.394063, 9.039195, 27.269411>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.653774, 9.220898, 27.513407> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209369, 0.877805, -0.430841,
		-0.731165, 0.152022, 0.665047,
		0.649278, 0.454256, 0.609991,
		8.848557, 9.357175, 27.696404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.107180, 9.613002, 27.600935>,  <8.394063, 9.039195, 27.269411>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.107180, 9.613002, 27.600935> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.499900, 9.687147, 27.584408>,  <8.735532, 9.731634, 27.574492>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.499900, 9.687147, 27.584408>,  <8.107180, 9.613002, 27.600935>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.499900, 9.687147, 27.584408> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181538, 0.852132, -0.490831,
		-0.055772, 0.489399, 0.870275,
		0.981801, 0.185363, -0.041319,
		8.794440, 9.742756, 27.572012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.202774, 10.259397, 27.848543>,  <8.107180, 9.613002, 27.600935>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.202774, 10.259397, 27.848543> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.526331, 10.193103, 27.622898>,  <8.720466, 10.153327, 27.487511>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.526331, 10.193103, 27.622898>,  <8.202774, 10.259397, 27.848543>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.526331, 10.193103, 27.622898> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023731, 0.967870, -0.250327,
		0.587477, 0.189101, 0.786836,
		0.808893, -0.165734, -0.564114,
		8.768999, 10.143383, 27.453665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.505543, 10.938677, 27.690834>,  <8.202774, 10.259397, 27.848543>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.505543, 10.938677, 27.690834> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.751737, 10.738797, 27.447039>,  <8.899453, 10.618869, 27.300760>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.751737, 10.738797, 27.447039>,  <8.505543, 10.938677, 27.690834>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.751737, 10.738797, 27.447039> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175971, 0.840924, -0.511743,
		0.768253, 0.207718, 0.605509,
		0.615485, -0.499700, -0.609490,
		8.936382, 10.588887, 27.264193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.038662, 11.263014, 27.530140>,  <8.505543, 10.938677, 27.690834>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.038662, 11.263014, 27.530140> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.059036, 11.027966, 27.207127>,  <9.071260, 10.886938, 27.013319>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.059036, 11.027966, 27.207127>,  <9.038662, 11.263014, 27.530140>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.059036, 11.027966, 27.207127> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426986, 0.743770, -0.514286,
		0.902823, -0.318610, 0.288788,
		0.050936, -0.587618, -0.807534,
		9.074317, 10.851682, 26.964867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.619614, 11.649796, 27.062143>,  <9.038662, 11.263014, 27.530140>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.619614, 11.649796, 27.062143> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.411134, 11.403709, 26.825548>,  <9.286046, 11.256057, 26.683592>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.411134, 11.403709, 26.825548>,  <9.619614, 11.649796, 27.062143>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.411134, 11.403709, 26.825548> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073802, 0.722962, -0.686935,
		0.850237, -0.314378, -0.422212,
		-0.521200, -0.615218, -0.591488,
		9.254774, 11.219144, 26.648102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.343523, 11.825577, 27.300406>,  <9.619614, 11.649796, 27.062143>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.343523, 11.825577, 27.300406> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.415847, 12.184121, 27.462317>,  <10.459241, 12.399248, 27.559464>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.415847, 12.184121, 27.462317>,  <10.343523, 11.825577, 27.300406>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.415847, 12.184121, 27.462317> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307471, -0.339415, 0.888965,
		0.934221, -0.285191, 0.214235,
		0.180810, 0.896361, 0.404777,
		10.470090, 12.453030, 27.583750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.681273, 11.691046, 27.980211>,  <10.343523, 11.825577, 27.300406>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.681273, 11.691046, 27.980211> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.505726, 12.049729, 28.003212>,  <10.400397, 12.264939, 28.017012>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.505726, 12.049729, 28.003212>,  <10.681273, 11.691046, 27.980211>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.505726, 12.049729, 28.003212> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367029, -0.237309, 0.899430,
		0.820172, 0.373628, 0.433266,
		-0.438870, 0.896709, 0.057502,
		10.374064, 12.318742, 28.020462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.905418, 11.840341, 28.638462>,  <10.681273, 11.691046, 27.980211>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.905418, 11.840341, 28.638462> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.648850, 12.140569, 28.574932>,  <10.494909, 12.320705, 28.536814>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.648850, 12.140569, 28.574932>,  <10.905418, 11.840341, 28.638462>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.648850, 12.140569, 28.574932> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074040, 0.145497, 0.986584,
		0.763609, 0.644575, -0.037752,
		-0.641420, 0.750569, -0.158827,
		10.456425, 12.365740, 28.527285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.105535, 12.526740, 28.965555>,  <10.905418, 11.840341, 28.638462>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.105535, 12.526740, 28.965555> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.706065, 12.516982, 28.947414>,  <10.466384, 12.511127, 28.936531>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.706065, 12.516982, 28.947414>,  <11.105535, 12.526740, 28.965555>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.706065, 12.516982, 28.947414> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045351, -0.000522, 0.998971,
		-0.024394, 0.999702, -0.000585,
		-0.998673, -0.024395, -0.045350,
		10.406464, 12.509664, 28.933809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.952529, 12.970116, 29.419796>,  <11.105535, 12.526740, 28.965555>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.952529, 12.970116, 29.419796> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.624818, 12.743519, 29.384314>,  <10.428191, 12.607561, 29.363024>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.624818, 12.743519, 29.384314>,  <10.952529, 12.970116, 29.419796>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.624818, 12.743519, 29.384314> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123566, 0.023364, 0.992061,
		-0.559923, 0.823736, -0.089141,
		-0.819279, -0.566492, -0.088704,
		10.379034, 12.573571, 29.357702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.540193, 13.228187, 29.926195>,  <10.952529, 12.970116, 29.419796>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.540193, 13.228187, 29.926195> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.379911, 12.870091, 29.848236>,  <10.283743, 12.655234, 29.801460>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.379911, 12.870091, 29.848236>,  <10.540193, 13.228187, 29.926195>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.379911, 12.870091, 29.848236> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126484, -0.156634, 0.979524,
		-0.907435, 0.417151, -0.050469,
		-0.400704, -0.895238, -0.194898,
		10.259700, 12.601520, 29.789766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.014885, 13.155406, 30.362638>,  <10.540193, 13.228187, 29.926195>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.014885, 13.155406, 30.362638> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.110402, 12.776644, 30.276522>,  <10.167712, 12.549387, 30.224852>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.110402, 12.776644, 30.276522>,  <10.014885, 13.155406, 30.362638>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.110402, 12.776644, 30.276522> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083298, -0.240860, 0.966979,
		-0.967491, -0.212974, -0.136390,
		0.238793, -0.946904, -0.215290,
		10.182040, 12.492573, 30.211935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.531416, 12.713880, 30.807625>,  <10.014885, 13.155406, 30.362638>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.531416, 12.713880, 30.807625> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.835905, 12.479687, 30.696091>,  <10.018599, 12.339171, 30.629169>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.835905, 12.479687, 30.696091>,  <9.531416, 12.713880, 30.807625>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.835905, 12.479687, 30.696091> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162119, -0.244512, 0.955998,
		-0.627898, -0.772933, -0.091210,
		0.761224, -0.585482, -0.278836,
		10.064272, 12.304042, 30.612440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.417754, 11.954851, 31.153631>,  <9.531416, 12.713880, 30.807625>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.417754, 11.954851, 31.153631> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.807631, 12.024221, 31.097200>,  <10.041556, 12.065844, 31.063341>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.807631, 12.024221, 31.097200>,  <9.417754, 11.954851, 31.153631>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.807631, 12.024221, 31.097200> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209314, -0.486248, 0.848381,
		0.078533, -0.856438, -0.510242,
		0.974690, 0.173427, -0.141078,
		10.100038, 12.076249, 31.054876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<13.805799, 15.271500, 16.105349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.149183, 15.308855, 16.307070>,  <14.355214, 15.331268, 16.428102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.149183, 15.308855, 16.307070>,  <13.805799, 15.271500, 16.105349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.149183, 15.308855, 16.307070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499226, 0.377502, 0.779914,
		-0.117541, -0.921288, 0.370693,
		0.858463, 0.093388, 0.504303,
		14.406722, 15.336871, 16.458361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.904693, 14.822560, 16.650713>,  <13.805799, 15.271500, 16.105349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.904693, 14.822560, 16.650713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.117617, 15.153616, 16.721888>,  <14.245371, 15.352249, 16.764591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.117617, 15.153616, 16.721888>,  <13.904693, 14.822560, 16.650713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.117617, 15.153616, 16.721888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517718, 0.151967, 0.841946,
		0.669788, -0.540295, 0.509377,
		0.532308, 0.827639, 0.177935,
		14.277309, 15.401908, 16.775269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.897247, 14.768503, 17.310879>,  <13.904693, 14.822560, 16.650713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.897247, 14.768503, 17.310879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.005959, 15.148431, 17.248938>,  <14.071185, 15.376388, 17.211773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.005959, 15.148431, 17.248938>,  <13.897247, 14.768503, 17.310879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.005959, 15.148431, 17.248938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511715, 0.278904, 0.812626,
		0.815037, -0.141614, 0.561837,
		0.271778, 0.949820, -0.154851,
		14.087492, 15.433376, 17.202482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.220118, 14.928215, 17.885466>,  <13.897247, 14.768503, 17.310879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.220118, 14.928215, 17.885466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.084438, 15.265567, 17.718777>,  <14.003031, 15.467978, 17.618763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.084438, 15.265567, 17.718777>,  <14.220118, 14.928215, 17.885466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.084438, 15.265567, 17.718777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403097, 0.269945, 0.874438,
		0.849975, 0.464587, 0.248398,
		-0.339199, 0.843379, -0.416720,
		13.982678, 15.518580, 17.593761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.111197, 15.379932, 18.482479>,  <14.220118, 14.928215, 17.885466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.111197, 15.379932, 18.482479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.906191, 15.557880, 18.188700>,  <13.783187, 15.664649, 18.012432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.906191, 15.557880, 18.188700>,  <14.111197, 15.379932, 18.482479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.906191, 15.557880, 18.188700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629269, 0.387382, 0.673762,
		0.584250, 0.807481, 0.081404,
		-0.512516, 0.444871, -0.734451,
		13.752436, 15.691341, 17.968365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.186430, 16.091413, 18.612846>,  <14.111197, 15.379932, 18.482479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.186430, 16.091413, 18.612846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.856464, 16.040243, 18.392609>,  <13.658485, 16.009541, 18.260466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.856464, 16.040243, 18.392609>,  <14.186430, 16.091413, 18.612846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.856464, 16.040243, 18.392609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556472, 0.354870, 0.751269,
		0.099282, 0.926122, -0.363924,
		-0.824913, -0.127926, -0.550594,
		13.608991, 16.001865, 18.227430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.809269, 16.691473, 18.545567>,  <14.186430, 16.091413, 18.612846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.809269, 16.691473, 18.545567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.548151, 16.395771, 18.479399>,  <13.391480, 16.218349, 18.439697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.548151, 16.395771, 18.479399>,  <13.809269, 16.691473, 18.545567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.548151, 16.395771, 18.479399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662235, 0.450867, 0.598467,
		-0.367837, 0.500223, -0.783883,
		-0.652794, -0.739254, -0.165419,
		13.352313, 16.173994, 18.429773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.208686, 17.153727, 18.473753>,  <13.809269, 16.691473, 18.545567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.208686, 17.153727, 18.473753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.048070, 16.787796, 18.491007>,  <12.951700, 16.568237, 18.501360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.048070, 16.787796, 18.491007>,  <13.208686, 17.153727, 18.473753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.048070, 16.787796, 18.491007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633951, 0.311632, 0.707808,
		-0.660963, 0.256868, -0.705087,
		-0.401540, -0.914825, 0.043135,
		12.927608, 16.513348, 18.503948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.478688, 17.292013, 18.705935>,  <13.208686, 17.153727, 18.473753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.478688, 17.292013, 18.705935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.547419, 16.901640, 18.759651>,  <12.588656, 16.667416, 18.791882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.547419, 16.901640, 18.759651>,  <12.478688, 17.292013, 18.705935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.547419, 16.901640, 18.759651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565633, 0.013874, 0.824540,
		-0.806558, -0.217638, -0.549635,
		0.171826, -0.975931, 0.134293,
		12.598967, 16.608860, 18.799940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.822140, 16.952274, 18.783691>,  <12.478688, 17.292013, 18.705935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.822140, 16.952274, 18.783691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.089390, 16.713264, 18.961037>,  <12.249740, 16.569859, 19.067444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.089390, 16.713264, 18.961037>,  <11.822140, 16.952274, 18.783691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.089390, 16.713264, 18.961037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517062, 0.055618, 0.854139,
		-0.535029, -0.799918, -0.271798,
		0.668125, -0.597526, 0.443364,
		12.289827, 16.534006, 19.094046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.455173, 16.468504, 19.119442>,  <11.822140, 16.952274, 18.783691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.455173, 16.468504, 19.119442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.811486, 16.482790, 19.300653>,  <12.025273, 16.491362, 19.409380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.811486, 16.482790, 19.300653>,  <11.455173, 16.468504, 19.119442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.811486, 16.482790, 19.300653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453600, 0.009567, 0.891154,
		0.027496, -0.999316, 0.024724,
		0.890781, 0.035718, 0.453027,
		12.078720, 16.493505, 19.436562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.463327, 15.860204, 19.541504>,  <11.455173, 16.468504, 19.119442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.463327, 15.860204, 19.541504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.718276, 16.128345, 19.693495>,  <11.871245, 16.289230, 19.784689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.718276, 16.128345, 19.693495>,  <11.463327, 15.860204, 19.541504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.718276, 16.128345, 19.693495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326582, -0.211633, 0.921171,
		0.697928, -0.711221, 0.084038,
		0.637370, 0.670356, 0.379977,
		11.909487, 16.329453, 19.807487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.527522, 15.230551, 19.094765>,  <11.463327, 15.860204, 19.541504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.527522, 15.230551, 19.094765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.153162, 15.100411, 19.040741>,  <10.928546, 15.022328, 19.008327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.153162, 15.100411, 19.040741>,  <11.527522, 15.230551, 19.094765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.153162, 15.100411, 19.040741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103306, 0.113049, -0.988204,
		0.336779, -0.938812, -0.072192,
		-0.935899, -0.325348, -0.135057,
		10.872392, 15.002807, 19.000223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.519930, 14.680491, 18.674751>,  <11.527522, 15.230551, 19.094765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.519930, 14.680491, 18.674751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.147871, 14.815966, 18.618019>,  <10.924635, 14.897250, 18.583979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.147871, 14.815966, 18.618019>,  <11.519930, 14.680491, 18.674751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.147871, 14.815966, 18.618019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122123, -0.078930, -0.989371,
		-0.346281, -0.937583, 0.032055,
		-0.930148, 0.338686, -0.141832,
		10.868827, 14.917571, 18.575470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.212888, 14.183681, 18.194983>,  <11.519930, 14.680491, 18.674751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.212888, 14.183681, 18.194983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.976980, 14.504636, 18.158430>,  <10.835436, 14.697208, 18.136499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.976980, 14.504636, 18.158430>,  <11.212888, 14.183681, 18.194983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.976980, 14.504636, 18.158430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155323, 0.001661, -0.987862,
		-0.792494, -0.596804, -0.125608,
		-0.589769, 0.802385, -0.091381,
		10.800050, 14.745352, 18.131016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.883152, 14.223640, 17.551140>,  <11.212888, 14.183681, 18.194983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.883152, 14.223640, 17.551140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.818481, 14.610506, 17.629578>,  <10.779679, 14.842626, 17.676641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.818481, 14.610506, 17.629578>,  <10.883152, 14.223640, 17.551140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.818481, 14.610506, 17.629578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212373, 0.228153, -0.950181,
		-0.963721, -0.111976, -0.242287,
		-0.161676, 0.967165, 0.196096,
		10.769979, 14.900656, 17.688406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.544907, 14.459942, 16.891705>,  <10.883152, 14.223640, 17.551140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.544907, 14.459942, 16.891705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.680709, 14.772624, 17.100960>,  <10.762191, 14.960233, 17.226513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.680709, 14.772624, 17.100960>,  <10.544907, 14.459942, 16.891705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.680709, 14.772624, 17.100960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310720, 0.431744, -0.846788,
		-0.887800, 0.450040, -0.096311,
		0.339506, 0.781704, 0.523139,
		10.782560, 15.007135, 17.257902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.184923, 14.955122, 16.631586>,  <10.544907, 14.459942, 16.891705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.184923, 14.955122, 16.631586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.521606, 15.117858, 16.773577>,  <10.723617, 15.215500, 16.858770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.521606, 15.117858, 16.773577>,  <10.184923, 14.955122, 16.631586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.521606, 15.117858, 16.773577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198347, 0.378489, -0.904104,
		-0.502181, 0.831401, 0.237882,
		0.841708, 0.406840, 0.354976,
		10.774119, 15.239910, 16.880070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.398581, 15.328709, 16.078991>,  <10.184923, 14.955122, 16.631586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.398581, 15.328709, 16.078991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.739572, 15.352186, 16.286774>,  <10.944166, 15.366273, 16.411444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.739572, 15.352186, 16.286774>,  <10.398581, 15.328709, 16.078991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.739572, 15.352186, 16.286774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502510, 0.181896, -0.845221,
		-0.144097, 0.981564, 0.125568,
		0.852479, 0.058695, 0.519456,
		10.995316, 15.369795, 16.442610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.673592, 15.976009, 15.948777>,  <10.398581, 15.328709, 16.078991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.673592, 15.976009, 15.948777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.978213, 15.741251, 16.058752>,  <11.160986, 15.600396, 16.124737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.978213, 15.741251, 16.058752>,  <10.673592, 15.976009, 15.948777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.978213, 15.741251, 16.058752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434290, 0.147231, -0.888659,
		0.481070, 0.796164, 0.367007,
		0.761553, -0.586895, 0.274938,
		11.206679, 15.565183, 16.141233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.301735, 16.402876, 15.941697>,  <10.673592, 15.976009, 15.948777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.301735, 16.402876, 15.941697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.376196, 16.011499, 15.905916>,  <11.420873, 15.776673, 15.884447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.376196, 16.011499, 15.905916>,  <11.301735, 16.402876, 15.941697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.376196, 16.011499, 15.905916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604939, 0.185879, -0.774273,
		0.774207, 0.090019, 0.626498,
		0.186152, -0.978440, -0.089453,
		11.432041, 15.717967, 15.879080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.717294, 16.373236, 15.371470>,  <11.301735, 16.402876, 15.941697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.717294, 16.373236, 15.371470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.719669, 15.980571, 15.447681>,  <11.721095, 15.744971, 15.493408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.719669, 15.980571, 15.447681>,  <11.717294, 16.373236, 15.371470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.719669, 15.980571, 15.447681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602938, -0.148485, -0.783848,
		0.797765, 0.119532, 0.591001,
		0.005940, -0.981664, 0.190527,
		11.721451, 15.686071, 15.504839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.350142, 16.202093, 15.408413>,  <11.717294, 16.373236, 15.371470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.350142, 16.202093, 15.408413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.150305, 15.872859, 15.300385>,  <12.030403, 15.675319, 15.235568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.150305, 15.872859, 15.300385>,  <12.350142, 16.202093, 15.408413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.150305, 15.872859, 15.300385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447857, 0.021452, -0.893848,
		0.741507, -0.567511, 0.357908,
		-0.499591, -0.823086, -0.270070,
		12.000427, 15.625933, 15.219363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.889271, 15.762656, 15.152545>,  <12.350142, 16.202093, 15.408413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.889271, 15.762656, 15.152545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.536656, 15.660558, 14.993678>,  <12.325088, 15.599298, 14.898357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.536656, 15.660558, 14.993678>,  <12.889271, 15.762656, 15.152545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.536656, 15.660558, 14.993678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451795, -0.211935, -0.866582,
		0.137018, -0.943363, 0.302148,
		-0.881537, -0.255246, -0.397168,
		12.272195, 15.583984, 14.874528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.760353, 14.988057, 14.963633>,  <12.889271, 15.762656, 15.152545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.760353, 14.988057, 14.963633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.615778, 15.286941, 14.740548>,  <12.529033, 15.466270, 14.606698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.615778, 15.286941, 14.740548>,  <12.760353, 14.988057, 14.963633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.615778, 15.286941, 14.740548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580565, -0.287693, -0.761694,
		-0.729594, -0.599092, -0.329821,
		-0.361437, 0.747210, -0.557710,
		12.507347, 15.511104, 14.573235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.627829, 14.703820, 14.234010>,  <12.760353, 14.988057, 14.963633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.627829, 14.703820, 14.234010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.747091, 15.083459, 14.274640>,  <12.818649, 15.311242, 14.299018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.747091, 15.083459, 14.274640>,  <12.627829, 14.703820, 14.234010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.747091, 15.083459, 14.274640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628074, -0.114941, -0.769618,
		-0.718767, 0.293263, -0.630373,
		0.298156, 0.949097, 0.101575,
		12.836538, 15.368188, 14.305113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.993428, 14.098073, 13.952374>,  <12.627829, 14.703820, 14.234010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.993428, 14.098073, 13.952374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.794980, 13.979750, 13.625850>,  <12.675911, 13.908756, 13.429935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.794980, 13.979750, 13.625850>,  <12.993428, 14.098073, 13.952374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.794980, 13.979750, 13.625850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585483, -0.808237, -0.062951,
		-0.641151, -0.509167, 0.574173,
		-0.496121, -0.295807, -0.816310,
		12.646144, 13.891007, 13.380957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.746203, 13.470925, 14.054519>,  <12.993428, 14.098073, 13.952374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.746203, 13.470925, 14.054519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.904753, 13.574165, 13.702093>,  <12.999883, 13.636109, 13.490638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.904753, 13.574165, 13.702093>,  <12.746203, 13.470925, 14.054519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.904753, 13.574165, 13.702093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544882, -0.838512, -0.000502,
		-0.738912, -0.479877, -0.472998,
		0.396374, 0.258099, -0.881063,
		13.023664, 13.651595, 13.437774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.873068, 12.769390, 13.637475>,  <12.746203, 13.470925, 14.054519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.873068, 12.769390, 13.637475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.093024, 13.071679, 13.495206>,  <13.224998, 13.253053, 13.409844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.093024, 13.071679, 13.495206>,  <12.873068, 12.769390, 13.637475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.093024, 13.071679, 13.495206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717281, -0.645454, -0.262485,
		-0.427936, -0.110780, -0.896994,
		0.549890, 0.755723, -0.355673,
		13.257991, 13.298396, 13.388504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.931910, 12.550591, 14.389008>,  <12.873068, 12.769390, 13.637475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.931910, 12.550591, 14.389008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.589671, 12.404293, 14.242481>,  <12.384328, 12.316515, 14.154565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.589671, 12.404293, 14.242481>,  <12.931910, 12.550591, 14.389008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.589671, 12.404293, 14.242481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447998, 0.168658, 0.877982,
		-0.259334, 0.915307, -0.308155,
		-0.855596, -0.365743, -0.366317,
		12.332993, 12.294570, 14.132586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.819310, 11.961197, 14.895740>,  <12.931910, 12.550591, 14.389008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.819310, 11.961197, 14.895740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.988230, 12.322666, 14.924131>,  <13.089581, 12.539548, 14.941167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.988230, 12.322666, 14.924131>,  <12.819310, 11.961197, 14.895740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.988230, 12.322666, 14.924131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404338, -0.257877, 0.877502,
		0.811279, -0.341868, -0.474291,
		0.422299, 0.903673, 0.070980,
		13.114920, 12.593768, 14.945425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.452903, 11.824410, 15.148932>,  <12.819310, 11.961197, 14.895740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.452903, 11.824410, 15.148932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.361724, 12.206459, 15.224600>,  <13.307016, 12.435688, 15.270000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.361724, 12.206459, 15.224600>,  <13.452903, 11.824410, 15.148932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.361724, 12.206459, 15.224600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296299, -0.117026, 0.947899,
		0.927495, 0.272121, -0.256325,
		-0.227947, 0.955120, 0.189171,
		13.293340, 12.492995, 15.281351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.933776, 12.085478, 15.544154>,  <13.452903, 11.824410, 15.148932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.933776, 12.085478, 15.544154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.641482, 12.347710, 15.620304>,  <13.466106, 12.505049, 15.665995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.641482, 12.347710, 15.620304>,  <13.933776, 12.085478, 15.544154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.641482, 12.347710, 15.620304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152183, -0.115418, 0.981590,
		0.665484, 0.746253, -0.015428,
		-0.730734, 0.655580, 0.190376,
		13.422262, 12.544384, 15.677417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.250604, 12.539124, 15.993064>,  <13.933776, 12.085478, 15.544154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.250604, 12.539124, 15.993064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.858137, 12.588640, 16.052378>,  <13.622657, 12.618350, 16.087967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.858137, 12.588640, 16.052378>,  <14.250604, 12.539124, 15.993064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.858137, 12.588640, 16.052378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148050, -0.011146, 0.988917,
		0.124070, 0.992246, -0.007391,
		-0.981167, 0.123789, 0.148285,
		13.563787, 12.625777, 16.096863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.211980, 12.986588, 16.454369>,  <14.250604, 12.539124, 15.993064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.211980, 12.986588, 16.454369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.835553, 12.852830, 16.474667>,  <13.609697, 12.772575, 16.486845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.835553, 12.852830, 16.474667>,  <14.211980, 12.986588, 16.454369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.835553, 12.852830, 16.474667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083127, -0.083237, 0.993057,
		-0.327849, 0.938750, 0.106129,
		-0.941066, -0.334395, 0.050746,
		13.553233, 12.752512, 16.489891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.716906, 13.533926, 16.778534>,  <14.211980, 12.986588, 16.454369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.716906, 13.533926, 16.778534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.580987, 13.159998, 16.819815>,  <13.499435, 12.935641, 16.844584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.580987, 13.159998, 16.819815>,  <13.716906, 13.533926, 16.778534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.580987, 13.159998, 16.819815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100484, 0.145188, 0.984288,
		-0.935115, 0.324089, -0.143269,
		-0.339798, -0.934819, 0.103202,
		13.479048, 12.879552, 16.850775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.176172, 13.535486, 17.304304>,  <13.716906, 13.533926, 16.778534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.176172, 13.535486, 17.304304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.246652, 13.141792, 17.298155>,  <13.288939, 12.905576, 17.294466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.246652, 13.141792, 17.298155>,  <13.176172, 13.535486, 17.304304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.246652, 13.141792, 17.298155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277297, -0.064613, 0.958609,
		-0.944490, -0.164642, -0.284310,
		0.176197, -0.984235, -0.015372,
		13.299511, 12.846521, 17.293543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.641419, 13.246791, 17.748344>,  <13.176172, 13.535486, 17.304304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.641419, 13.246791, 17.748344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.881557, 12.927485, 17.728916>,  <13.025639, 12.735901, 17.717258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.881557, 12.927485, 17.728916>,  <12.641419, 13.246791, 17.748344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.881557, 12.927485, 17.728916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333712, -0.305239, 0.891889,
		-0.726791, -0.519230, -0.449639,
		0.600343, -0.798267, -0.048571,
		13.061660, 12.688004, 17.714344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.246074, 12.697213, 17.955051>,  <12.641419, 13.246791, 17.748344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.246074, 12.697213, 17.955051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.613165, 12.541892, 17.988514>,  <12.833420, 12.448699, 18.008591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.613165, 12.541892, 17.988514>,  <12.246074, 12.697213, 17.955051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.613165, 12.541892, 17.988514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246589, -0.391837, 0.886373,
		-0.311399, -0.834078, -0.455350,
		0.917728, -0.388300, 0.083657,
		12.888483, 12.425401, 18.013611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.207823, 11.971014, 18.000383>,  <12.246074, 12.697213, 17.955051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.207823, 11.971014, 18.000383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.551135, 12.055729, 18.187361>,  <12.757122, 12.106558, 18.299547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.551135, 12.055729, 18.187361>,  <12.207823, 11.971014, 18.000383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.551135, 12.055729, 18.187361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313365, -0.505041, 0.804199,
		0.406396, -0.836708, -0.367100,
		0.858280, 0.211787, 0.467442,
		12.808619, 12.119265, 18.327593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.526587, 11.275899, 18.269939>,  <12.207823, 11.971014, 18.000383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.526587, 11.275899, 18.269939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.640085, 11.598309, 18.477713>,  <12.708184, 11.791755, 18.602377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.640085, 11.598309, 18.477713>,  <12.526587, 11.275899, 18.269939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.640085, 11.598309, 18.477713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199832, -0.480100, 0.854150,
		0.937846, -0.346162, 0.024842,
		0.283747, 0.806025, 0.519433,
		12.725209, 11.840117, 18.633543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.816820, 10.917335, 18.866404>,  <12.526587, 11.275899, 18.269939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.816820, 10.917335, 18.866404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.819238, 11.307469, 18.954659>,  <12.820688, 11.541551, 19.007610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.819238, 11.307469, 18.954659>,  <12.816820, 10.917335, 18.866404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.819238, 11.307469, 18.954659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100074, -0.218943, 0.970592,
		0.994962, -0.027946, 0.096282,
		0.006044, 0.975338, 0.220636,
		12.821051, 11.600071, 19.020849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.257880, 10.999145, 19.450928>,  <12.816820, 10.917335, 18.866404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.257880, 10.999145, 19.450928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.017173, 11.318383, 19.463045>,  <12.872748, 11.509926, 19.470316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.017173, 11.318383, 19.463045>,  <13.257880, 10.999145, 19.450928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.017173, 11.318383, 19.463045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158496, -0.156510, 0.974876,
		0.782786, 0.581848, 0.220678,
		-0.601768, 0.798096, 0.030294,
		12.836642, 11.557812, 19.472134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.465761, 11.440053, 19.978668>,  <13.257880, 10.999145, 19.450928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.465761, 11.440053, 19.978668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.081383, 11.545320, 19.944435>,  <12.850756, 11.608479, 19.923895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.081383, 11.545320, 19.944435>,  <13.465761, 11.440053, 19.978668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.081383, 11.545320, 19.944435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076783, 0.043561, 0.996096,
		0.265867, 0.963767, -0.021653,
		-0.960947, 0.263166, -0.085582,
		12.793098, 11.624269, 19.918760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.346404, 11.614088, 20.573271>,  <13.465761, 11.440053, 19.978668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.346404, 11.614088, 20.573271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.965852, 11.600116, 20.450859>,  <12.737520, 11.591733, 20.377413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.965852, 11.600116, 20.450859>,  <13.346404, 11.614088, 20.573271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.965852, 11.600116, 20.450859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303750, -0.058383, 0.950961,
		-0.051084, 0.997683, 0.044934,
		-0.951381, -0.034930, -0.306029,
		12.680437, 11.589637, 20.359051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.041228, 11.991450, 21.095535>,  <13.346404, 11.614088, 20.573271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.041228, 11.991450, 21.095535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.742563, 11.809121, 20.901743>,  <12.563364, 11.699723, 20.785467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.742563, 11.809121, 20.901743>,  <13.041228, 11.991450, 21.095535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.742563, 11.809121, 20.901743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374387, -0.314055, 0.872470,
		-0.549846, 0.832823, 0.063838,
		-0.746662, -0.455823, -0.484480,
		12.518565, 11.672374, 20.756399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.525294, 12.167076, 21.483461>,  <13.041228, 11.991450, 21.095535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.525294, 12.167076, 21.483461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.389263, 11.843860, 21.291039>,  <12.307645, 11.649930, 21.175585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.389263, 11.843860, 21.291039>,  <12.525294, 12.167076, 21.483461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.389263, 11.843860, 21.291039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353146, -0.364373, 0.861696,
		-0.871570, 0.462928, -0.161441,
		-0.340078, -0.808041, -0.481058,
		12.287240, 11.601447, 21.146721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.768856, 12.082154, 21.800245>,  <12.525294, 12.167076, 21.483461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.768856, 12.082154, 21.800245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.927686, 11.750381, 21.643082>,  <12.022984, 11.551318, 21.548784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.927686, 11.750381, 21.643082>,  <11.768856, 12.082154, 21.800245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.927686, 11.750381, 21.643082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526292, -0.556500, 0.642903,
		-0.751898, -0.048495, -0.657494,
		0.397073, -0.829432, -0.392909,
		12.046808, 11.501553, 21.525209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.175122, 11.602265, 21.641014>,  <11.768856, 12.082154, 21.800245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.175122, 11.602265, 21.641014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.499168, 11.368179, 21.655075>,  <11.693596, 11.227728, 21.663511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.499168, 11.368179, 21.655075>,  <11.175122, 11.602265, 21.641014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.499168, 11.368179, 21.655075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458860, -0.595601, 0.659323,
		-0.364909, -0.550258, -0.751037,
		0.810117, -0.585214, 0.035151,
		11.742204, 11.192616, 21.665621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.855498, 11.020740, 21.715292>,  <11.175122, 11.602265, 21.641014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.855498, 11.020740, 21.715292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.230149, 10.921076, 21.813799>,  <11.454940, 10.861278, 21.872904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.230149, 10.921076, 21.813799>,  <10.855498, 11.020740, 21.715292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.230149, 10.921076, 21.813799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350327, -0.666335, 0.658231,
		0.000092, -0.702792, -0.711395,
		0.936627, -0.249160, 0.246268,
		11.511138, 10.846328, 21.887680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.847607, 10.198894, 21.859900>,  <10.855498, 11.020740, 21.715292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.847607, 10.198894, 21.859900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.147702, 10.392895, 22.039639>,  <11.327760, 10.509295, 22.147482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.147702, 10.392895, 22.039639>,  <10.847607, 10.198894, 21.859900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.147702, 10.392895, 22.039639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192701, -0.489720, 0.850318,
		0.632462, -0.724531, -0.273946,
		0.750239, 0.485004, 0.449348,
		11.372774, 10.538396, 22.174442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.193552, 9.671257, 22.243654>,  <10.847607, 10.198894, 21.859900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.193552, 9.671257, 22.243654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.327823, 9.999616, 22.428457>,  <11.408385, 10.196630, 22.539339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.327823, 9.999616, 22.428457>,  <11.193552, 9.671257, 22.243654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.327823, 9.999616, 22.428457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161478, -0.433059, 0.886783,
		0.928033, -0.372277, -0.012811,
		0.335677, 0.820896, 0.462008,
		11.428526, 10.245884, 22.567060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.567336, 9.373910, 22.735147>,  <11.193552, 9.671257, 22.243654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.567336, 9.373910, 22.735147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.537878, 9.750790, 22.865892>,  <11.520204, 9.976917, 22.944340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.537878, 9.750790, 22.865892>,  <11.567336, 9.373910, 22.735147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.537878, 9.750790, 22.865892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149943, -0.334486, 0.930395,
		0.985948, 0.019508, 0.165910,
		-0.073645, 0.942198, 0.326861,
		11.515784, 10.033449, 22.963951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.049383, 9.478888, 23.302649>,  <11.567336, 9.373910, 22.735147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.049383, 9.478888, 23.302649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.735658, 9.725585, 23.329414>,  <11.547422, 9.873604, 23.345474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.735658, 9.725585, 23.329414>,  <12.049383, 9.478888, 23.302649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.735658, 9.725585, 23.329414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151353, -0.294840, 0.943484,
		0.601617, 0.729860, 0.324593,
		-0.784314, 0.616744, 0.066914,
		11.500363, 9.910608, 23.349489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
