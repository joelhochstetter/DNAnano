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
	<3.453102, 2.920905, 0.003603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.121441, 2.853096, 0.216682>,  <2.922444, 2.812411, 0.344530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.121441, 2.853096, 0.216682>,  <3.453102, 2.920905, 0.003603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.121441, 2.853096, 0.216682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298132, -0.940182, 0.164849,
		0.472889, 0.295500, 0.830094,
		-0.829152, -0.169522, 0.532700,
		2.872695, 2.802239, 0.376492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.701740, 2.539307, 0.604936>,  <3.453102, 2.920905, 0.003603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.701740, 2.539307, 0.604936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.308556, 2.485806, 0.554504>,  <3.072645, 2.453705, 0.524245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.308556, 2.485806, 0.554504>,  <3.701740, 2.539307, 0.604936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.308556, 2.485806, 0.554504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100847, -0.965903, 0.238457,
		-0.153676, 0.221679, 0.962934,
		-0.982962, -0.133754, -0.126080,
		3.013667, 2.445679, 0.516680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.354013, 2.471870, 1.249124>,  <3.701740, 2.539307, 0.604936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.354013, 2.471870, 1.249124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.206150, 2.243656, 0.955772>,  <3.117432, 2.106728, 0.779761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.206150, 2.243656, 0.955772>,  <3.354013, 2.471870, 1.249124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.206150, 2.243656, 0.955772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231500, -0.820947, 0.521971,
		-0.899867, 0.023173, 0.435548,
		-0.369657, -0.570534, -0.733379,
		3.095253, 2.072496, 0.735759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.771509, 2.139849, 1.535339>,  <3.354013, 2.471870, 1.249124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.771509, 2.139849, 1.535339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.961727, 1.946209, 1.241535>,  <3.075858, 1.830025, 1.065253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.961727, 1.946209, 1.241535>,  <2.771509, 2.139849, 1.535339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.961727, 1.946209, 1.241535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151740, -0.777306, 0.610549,
		-0.866506, -0.401798, -0.296187,
		0.475545, -0.484101, -0.734509,
		3.104391, 1.800979, 1.021183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.511049, 1.460131, 1.499085>,  <2.771509, 2.139849, 1.535339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.511049, 1.460131, 1.499085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.885605, 1.445412, 1.359474>,  <3.110338, 1.436580, 1.275708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.885605, 1.445412, 1.359474>,  <2.511049, 1.460131, 1.499085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.885605, 1.445412, 1.359474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226017, -0.697585, 0.679920,
		-0.268496, -0.715557, -0.644894,
		0.936390, -0.036798, -0.349027,
		3.166522, 1.434372, 1.254766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.690979, 0.784904, 1.339627>,  <2.511049, 1.460131, 1.499085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.690979, 0.784904, 1.339627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.045765, 0.966614, 1.372925>,  <3.258636, 1.075640, 1.392903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.045765, 0.966614, 1.372925>,  <2.690979, 0.784904, 1.339627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.045765, 0.966614, 1.372925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344111, -0.770259, 0.536925,
		0.308031, -0.447588, -0.839513,
		0.886964, 0.454275, 0.083244,
		3.311854, 1.102896, 1.397898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.196030, 0.271245, 1.168298>,  <2.690979, 0.784904, 1.339627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.196030, 0.271245, 1.168298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.347885, 0.547390, 1.414639>,  <3.438998, 0.713077, 1.562443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.347885, 0.547390, 1.414639>,  <3.196030, 0.271245, 1.168298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.347885, 0.547390, 1.414639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144493, -0.701766, 0.697601,
		0.913781, -0.175850, -0.366170,
		0.379638, 0.690363, 0.615851,
		3.461777, 0.754499, 1.599394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.869552, 0.114414, 1.352129>,  <3.196030, 0.271245, 1.168298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.869552, 0.114414, 1.352129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.692524, 0.315758, 1.648983>,  <3.586307, 0.436564, 1.827095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.692524, 0.315758, 1.648983>,  <3.869552, 0.114414, 1.352129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.692524, 0.315758, 1.648983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302773, -0.695117, 0.652027,
		0.844073, 0.513266, 0.155235,
		-0.442570, 0.503358, 0.742134,
		3.559753, 0.466765, 1.871623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.386959, -0.209082, 3.044989> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.372429, 0.167145, 3.180054>,  <4.363711, 0.392881, 3.261092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.372429, 0.167145, 3.180054>,  <4.386959, -0.209082, 3.044989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.372429, 0.167145, 3.180054> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304618, 0.311383, -0.900138,
		-0.951782, -0.135555, 0.275202,
		-0.036325, 0.940567, 0.337661,
		4.361531, 0.449315, 3.281352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.773296, 0.048612, 2.769026>,  <4.386959, -0.209082, 3.044989>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.773296, 0.048612, 2.769026> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.995667, 0.377155, 2.820122>,  <4.129089, 0.574281, 2.850779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.995667, 0.377155, 2.820122>,  <3.773296, 0.048612, 2.769026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.995667, 0.377155, 2.820122> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424015, 0.412391, -0.806316,
		-0.714953, 0.394089, 0.577527,
		0.555927, 0.821358, 0.127740,
		4.162445, 0.623563, 2.858444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.296382, 0.705926, 2.706843>,  <3.773296, 0.048612, 2.769026>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.296382, 0.705926, 2.706843> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.683617, 0.765804, 2.626442>,  <3.915957, 0.801731, 2.578202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.683617, 0.765804, 2.626442>,  <3.296382, 0.705926, 2.706843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.683617, 0.765804, 2.626442> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249107, 0.486708, -0.837294,
		-0.027511, 0.860643, 0.508465,
		0.968085, 0.149697, -0.201002,
		3.974042, 0.810713, 2.566141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.537927, 1.413539, 2.479373>,  <3.296382, 0.705926, 2.706843>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.537927, 1.413539, 2.479373> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.822723, 1.188438, 2.311382>,  <3.993601, 1.053378, 2.210588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.822723, 1.188438, 2.311382>,  <3.537927, 1.413539, 2.479373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.822723, 1.188438, 2.311382> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125279, 0.486696, -0.864542,
		0.690922, 0.668160, 0.276022,
		0.711991, -0.562751, -0.419976,
		4.036321, 1.019613, 2.185390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.185500, 1.729605, 2.254320>,  <3.537927, 1.413539, 2.479373>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.185500, 1.729605, 2.254320> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.021202, 1.429203, 2.047523>,  <3.922623, 1.248962, 1.923446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.021202, 1.429203, 2.047523>,  <4.185500, 1.729605, 2.254320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.021202, 1.429203, 2.047523> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166233, 0.619212, -0.767426,
		0.896469, -0.229275, -0.379179,
		-0.410744, -0.751006, -0.516991,
		3.897979, 1.203901, 1.892426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.509515, 1.561628, 1.608542>,  <4.185500, 1.729605, 2.254320>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.509515, 1.561628, 1.608542> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.144020, 1.412022, 1.545052>,  <3.924723, 1.322258, 1.506957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.144020, 1.412022, 1.545052>,  <4.509515, 1.561628, 1.608542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.144020, 1.412022, 1.545052> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074376, 0.538032, -0.839637,
		0.399437, -0.755403, -0.519439,
		-0.913739, -0.374016, -0.158726,
		3.869899, 1.299817, 1.497434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.427071, 1.447469, 0.877601>,  <4.509515, 1.561628, 1.608542>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.427071, 1.447469, 0.877601> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.041351, 1.445171, 0.983501>,  <3.809919, 1.443793, 1.047042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.041351, 1.445171, 0.983501>,  <4.427071, 1.447469, 0.877601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.041351, 1.445171, 0.983501> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227755, 0.528068, -0.818090,
		-0.135107, -0.849183, -0.510524,
		-0.964300, -0.005745, 0.264751,
		3.752061, 1.443448, 1.062927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.055494, 1.224633, 0.305175>,  <4.427071, 1.447469, 0.877601>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.055494, 1.224633, 0.305175> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.776093, 1.411789, 0.521755>,  <3.608451, 1.524083, 0.651703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.776093, 1.411789, 0.521755>,  <4.055494, 1.224633, 0.305175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.776093, 1.411789, 0.521755> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198147, 0.600589, -0.774616,
		-0.687625, -0.648361, -0.326803,
		-0.698505, 0.467891, 0.541451,
		3.566541, 1.552156, 0.684191>
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
