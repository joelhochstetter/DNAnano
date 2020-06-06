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
	<24.253803, 35.492363, 34.743671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.267853, 35.137970, 34.928623>,  <24.276283, 34.925335, 35.039593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.267853, 35.137970, 34.928623>,  <24.253803, 35.492363, 34.743671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.267853, 35.137970, 34.928623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160374, 0.461666, 0.872436,
		-0.986431, 0.043511, 0.158304,
		0.035123, -0.885986, 0.462380,
		24.278389, 34.872173, 35.067337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.914919, 35.450890, 35.458263>,  <24.253803, 35.492363, 34.743671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.914919, 35.450890, 35.458263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.201468, 35.172684, 35.436115>,  <24.373398, 35.005760, 35.422825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.201468, 35.172684, 35.436115>,  <23.914919, 35.450890, 35.458263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.201468, 35.172684, 35.436115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088242, 0.011589, 0.996032,
		-0.692114, -0.718417, 0.069676,
		0.716373, -0.695516, -0.055373,
		24.416380, 34.964027, 35.419502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.569435, 35.394356, 35.782978>,  <23.914919, 35.450890, 35.458263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.569435, 35.394356, 35.782978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.375404, 35.618488, 36.051521>,  <24.258986, 35.752968, 36.212646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.375404, 35.618488, 36.051521>,  <24.569435, 35.394356, 35.782978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.375404, 35.618488, 36.051521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198001, -0.818174, 0.539803,
		0.851760, 0.128916, 0.507825,
		-0.485079, 0.560332, 0.671362,
		24.229881, 35.786587, 36.252930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.821953, 35.359043, 36.600327>,  <24.569435, 35.394356, 35.782978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.821953, 35.359043, 36.600327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.436167, 35.462929, 36.580891>,  <24.204695, 35.525261, 36.569229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.436167, 35.462929, 36.580891>,  <24.821953, 35.359043, 36.600327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.436167, 35.462929, 36.580891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233829, -0.753351, 0.614643,
		0.123026, 0.604162, 0.787307,
		-0.964463, 0.259712, -0.048588,
		24.146828, 35.540844, 36.566315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.400072, 35.270069, 36.096291>,  <24.821953, 35.359043, 36.600327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.400072, 35.270069, 36.096291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.118645, 35.029194, 35.945366>,  <24.949789, 34.884670, 35.854809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.118645, 35.029194, 35.945366>,  <25.400072, 35.270069, 36.096291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.118645, 35.029194, 35.945366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625214, -0.272158, -0.731462,
		0.337788, -0.750534, 0.567977,
		-0.703567, -0.602186, -0.377313,
		24.907574, 34.848537, 35.832172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.491983, 34.501537, 35.881035>,  <25.400072, 35.270069, 36.096291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.491983, 34.501537, 35.881035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.821804, 34.714115, 35.958687>,  <26.019695, 34.841660, 36.005280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.821804, 34.714115, 35.958687>,  <25.491983, 34.501537, 35.881035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.821804, 34.714115, 35.958687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524411, -0.846656, 0.090371,
		0.212389, 0.027289, -0.976804,
		0.824551, 0.531441, 0.194132,
		26.069170, 34.873547, 36.016926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.035069, 34.305367, 35.394726>,  <25.491983, 34.501537, 35.881035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.035069, 34.305367, 35.394726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.238796, 34.423035, 35.718224>,  <26.361032, 34.493633, 35.912323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.238796, 34.423035, 35.718224>,  <26.035069, 34.305367, 35.394726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.238796, 34.423035, 35.718224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562997, -0.824653, -0.054602,
		0.650868, 0.483128, -0.585626,
		0.509318, 0.294167, 0.808740,
		26.391592, 34.511284, 35.960846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.855032, 34.153912, 35.363590>,  <26.035069, 34.305367, 35.394726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.855032, 34.153912, 35.363590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.781759, 34.163517, 35.756706>,  <26.737795, 34.169281, 35.992577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.781759, 34.163517, 35.756706>,  <26.855032, 34.153912, 35.363590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.781759, 34.163517, 35.756706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691846, -0.707083, 0.146228,
		0.698422, 0.706723, 0.112913,
		-0.183182, 0.024010, 0.982786,
		26.726805, 34.170719, 36.051540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.392471, 34.492729, 35.687916>,  <26.855032, 34.153912, 35.363590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.392471, 34.492729, 35.687916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.236603, 34.227211, 35.943268>,  <27.143082, 34.067898, 36.096478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.236603, 34.227211, 35.943268>,  <27.392471, 34.492729, 35.687916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.236603, 34.227211, 35.943268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899005, -0.424603, 0.107248,
		0.199867, 0.615699, 0.762212,
		-0.389670, -0.663797, 0.638381,
		27.119701, 34.028072, 36.134781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.940996, 34.123486, 36.001255>,  <27.392471, 34.492729, 35.687916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.940996, 34.123486, 36.001255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.644085, 33.908566, 36.161419>,  <27.465939, 33.779613, 36.257519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.644085, 33.908566, 36.161419>,  <27.940996, 34.123486, 36.001255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.644085, 33.908566, 36.161419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669684, -0.615685, 0.415276,
		0.023398, 0.576399, 0.816833,
		-0.742277, -0.537304, 0.400411,
		27.421402, 33.747375, 36.281544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.213575, 33.891396, 36.675819>,  <27.940996, 34.123486, 36.001255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.213575, 33.891396, 36.675819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.921083, 33.643127, 36.562634>,  <27.745588, 33.494167, 36.494720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.921083, 33.643127, 36.562634>,  <28.213575, 33.891396, 36.675819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.921083, 33.643127, 36.562634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520773, -0.775884, 0.356091,
		-0.440565, 0.113022, 0.890577,
		-0.731231, -0.620670, -0.282969,
		27.701714, 33.456928, 36.477741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.122454, 33.481499, 37.173584>,  <28.213575, 33.891396, 36.675819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.122454, 33.481499, 37.173584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.018147, 33.278008, 36.845390>,  <27.955563, 33.155910, 36.648476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.018147, 33.278008, 36.845390>,  <28.122454, 33.481499, 37.173584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.018147, 33.278008, 36.845390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705112, -0.680873, 0.198065,
		-0.659406, -0.526882, 0.536264,
		-0.260770, -0.508731, -0.820482,
		27.939915, 33.125389, 36.599247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.567221, 33.002804, 36.877003>,  <28.122454, 33.481499, 37.173584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.567221, 33.002804, 36.877003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.800537, 32.678108, 36.888680>,  <28.940527, 32.483292, 36.895687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.800537, 32.678108, 36.888680>,  <28.567221, 33.002804, 36.877003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.800537, 32.678108, 36.888680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445456, -0.349730, -0.824171,
		0.679220, 0.467729, -0.565588,
		0.583292, -0.811738, 0.029191,
		28.975525, 32.434586, 36.897438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.676144, 32.654282, 36.215103>,  <28.567221, 33.002804, 36.877003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.676144, 32.654282, 36.215103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.376993, 32.396957, 36.280624>,  <28.197502, 32.242561, 36.319939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.376993, 32.396957, 36.280624>,  <28.676144, 32.654282, 36.215103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.376993, 32.396957, 36.280624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640572, 0.764104, 0.076237,
		-0.174207, -0.047912, -0.983543,
		-0.747876, -0.643311, 0.163804,
		28.152630, 32.203964, 36.329765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.996523, 32.758430, 35.723461>,  <28.676144, 32.654282, 36.215103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.996523, 32.758430, 35.723461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.925398, 32.618713, 36.091457>,  <27.882723, 32.534882, 36.312256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.925398, 32.618713, 36.091457>,  <27.996523, 32.758430, 35.723461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.925398, 32.618713, 36.091457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718164, 0.685211, 0.121351,
		-0.672772, -0.639123, -0.372692,
		-0.177814, -0.349295, 0.919986,
		27.872053, 32.513924, 36.367455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.324675, 32.587299, 35.696072>,  <27.996523, 32.758430, 35.723461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.324675, 32.587299, 35.696072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.450140, 32.700920, 36.058491>,  <27.525419, 32.769093, 36.275944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.450140, 32.700920, 36.058491>,  <27.324675, 32.587299, 35.696072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.450140, 32.700920, 36.058491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754568, 0.653807, 0.056251,
		-0.576405, -0.701322, 0.419410,
		0.313664, 0.284050, 0.906053,
		27.544239, 32.786137, 36.330307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.735340, 32.600060, 36.307171>,  <27.324675, 32.587299, 35.696072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.735340, 32.600060, 36.307171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.025764, 32.868755, 36.365967>,  <27.200020, 33.029972, 36.401245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.025764, 32.868755, 36.365967>,  <26.735340, 32.600060, 36.307171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.025764, 32.868755, 36.365967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681852, 0.730972, 0.027534,
		-0.088949, -0.120216, 0.988755,
		0.726062, 0.671736, 0.146988,
		27.243584, 33.070274, 36.410065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.526655, 32.966393, 36.834137>,  <26.735340, 32.600060, 36.307171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.526655, 32.966393, 36.834137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.799143, 33.217499, 36.683483>,  <26.962635, 33.368160, 36.593090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.799143, 33.217499, 36.683483>,  <26.526655, 32.966393, 36.834137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.799143, 33.217499, 36.683483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643299, 0.758879, 0.101336,
		0.349437, 0.173258, 0.920801,
		0.681220, 0.627762, -0.376637,
		27.003510, 33.405827, 36.570492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.608212, 33.553402, 37.253490>,  <26.526655, 32.966393, 36.834137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.608212, 33.553402, 37.253490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.734560, 33.693657, 36.900837>,  <26.810369, 33.777809, 36.689243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.734560, 33.693657, 36.900837>,  <26.608212, 33.553402, 37.253490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.734560, 33.693657, 36.900837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715005, 0.698781, 0.021740,
		0.623693, 0.623508, 0.471428,
		0.315870, 0.350633, -0.881637,
		26.829321, 33.798847, 36.636345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.703186, 34.301029, 37.334343>,  <26.608212, 33.553402, 37.253490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.703186, 34.301029, 37.334343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.705864, 34.268227, 36.935699>,  <26.707472, 34.248547, 36.696514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.705864, 34.268227, 36.935699>,  <26.703186, 34.301029, 37.334343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.705864, 34.268227, 36.935699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619032, 0.782370, -0.068535,
		0.785337, 0.617392, -0.045523,
		0.006697, -0.082003, -0.996610,
		26.707872, 34.243626, 36.636715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.825949, 35.019157, 37.047588>,  <26.703186, 34.301029, 37.334343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.825949, 35.019157, 37.047588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.653822, 34.778778, 36.778164>,  <26.550547, 34.634548, 36.616508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.653822, 34.778778, 36.778164>,  <26.825949, 35.019157, 37.047588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.653822, 34.778778, 36.778164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748618, 0.654522, -0.105697,
		0.504380, 0.458758, -0.731534,
		-0.430316, -0.600951, -0.673563,
		26.524727, 34.598492, 36.576096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.812616, 35.381603, 36.499393>,  <26.825949, 35.019157, 37.047588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.812616, 35.381603, 36.499393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.519648, 35.113270, 36.452854>,  <26.343866, 34.952271, 36.424931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.519648, 35.113270, 36.452854>,  <26.812616, 35.381603, 36.499393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.519648, 35.113270, 36.452854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672554, 0.739452, -0.029698,
		0.105958, 0.056500, -0.992764,
		-0.732424, -0.670834, -0.116350,
		26.299921, 34.912018, 36.417950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.424984, 35.556438, 35.874416>,  <26.812616, 35.381603, 36.499393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.424984, 35.556438, 35.874416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.250521, 35.395191, 36.196228>,  <26.145842, 35.298443, 36.389313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.250521, 35.395191, 36.196228>,  <26.424984, 35.556438, 35.874416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.250521, 35.395191, 36.196228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551660, 0.826122, 0.114865,
		-0.710940, -0.393725, -0.582704,
		-0.436159, -0.403117, 0.804526,
		26.119673, 35.274258, 36.437584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.011087, 36.096615, 35.885685>,  <26.424984, 35.556438, 35.874416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.011087, 36.096615, 35.885685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.730757, 36.152283, 36.165535>,  <26.562559, 36.185684, 36.333447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.730757, 36.152283, 36.165535>,  <27.011087, 36.096615, 35.885685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.730757, 36.152283, 36.165535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469954, 0.827930, 0.306063,
		-0.536645, 0.543288, -0.645639,
		-0.700825, 0.139173, 0.699625,
		26.520510, 36.194035, 36.375423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.749800, 36.744297, 35.838783>,  <27.011087, 36.096615, 35.885685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.749800, 36.744297, 35.838783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.717247, 36.629002, 36.220421>,  <26.697716, 36.559822, 36.449402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.717247, 36.629002, 36.220421>,  <26.749800, 36.744297, 35.838783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.717247, 36.629002, 36.220421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479362, 0.827959, 0.291024,
		-0.873836, 0.481040, 0.070790,
		-0.081383, -0.288242, 0.954093,
		26.692833, 36.542530, 36.506649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.596275, 37.357742, 36.309128>,  <26.749800, 36.744297, 35.838783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.596275, 37.357742, 36.309128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.775507, 37.061535, 36.509468>,  <26.883045, 36.883812, 36.629673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.775507, 37.061535, 36.509468>,  <26.596275, 37.357742, 36.309128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.775507, 37.061535, 36.509468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652679, 0.653825, 0.382784,
		-0.610931, 0.155380, 0.776287,
		0.448079, -0.740520, 0.500855,
		26.909931, 36.839378, 36.659725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.555597, 37.349731, 37.093201>,  <26.596275, 37.357742, 36.309128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.555597, 37.349731, 37.093201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.895803, 37.189713, 36.956623>,  <27.099928, 37.093700, 36.874676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.895803, 37.189713, 36.956623>,  <26.555597, 37.349731, 37.093201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.895803, 37.189713, 36.956623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523030, 0.575030, 0.629111,
		-0.055336, -0.713653, 0.698310,
		0.850516, -0.400049, -0.341442,
		27.150959, 37.069698, 36.854191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.522030, 37.186966, 37.847153>,  <26.555597, 37.349731, 37.093201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.522030, 37.186966, 37.847153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.406199, 37.113491, 38.222897>,  <26.336700, 37.069405, 38.448345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.406199, 37.113491, 38.222897>,  <26.522030, 37.186966, 37.847153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.406199, 37.113491, 38.222897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712858, 0.696308, -0.083595,
		-0.638731, -0.693840, -0.332579,
		-0.289579, -0.183687, 0.939363,
		26.319324, 37.058384, 38.504707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.763824, 37.002769, 38.055058>,  <26.522030, 37.186966, 37.847153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.763824, 37.002769, 38.055058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.926737, 37.232349, 38.339230>,  <26.024485, 37.370098, 38.509731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.926737, 37.232349, 38.339230>,  <25.763824, 37.002769, 38.055058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.926737, 37.232349, 38.339230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750533, 0.653565, -0.097739,
		-0.520407, -0.493392, 0.696951,
		0.407279, 0.573949, 0.710427,
		26.048920, 37.404533, 38.552357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.236578, 37.268116, 38.490757>,  <25.763824, 37.002769, 38.055058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.236578, 37.268116, 38.490757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.548071, 37.515312, 38.533958>,  <25.734966, 37.663631, 38.559879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.548071, 37.515312, 38.533958>,  <25.236578, 37.268116, 38.490757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.548071, 37.515312, 38.533958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614569, 0.786051, -0.066548,
		-0.126020, -0.014551, 0.991921,
		0.778732, 0.617990, 0.108001,
		25.781691, 37.700710, 38.566357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.116560, 37.690281, 39.137257>,  <25.236578, 37.268116, 38.490757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.116560, 37.690281, 39.137257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.355270, 37.835426, 38.850986>,  <25.498497, 37.922512, 38.679226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.355270, 37.835426, 38.850986>,  <25.116560, 37.690281, 39.137257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.355270, 37.835426, 38.850986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600896, 0.793185, -0.098901,
		0.531773, 0.489067, 0.691398,
		0.596776, 0.362865, -0.715673,
		25.534304, 37.944286, 38.636284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.066309, 38.435719, 39.188187>,  <25.116560, 37.690281, 39.137257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.066309, 38.435719, 39.188187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.230272, 38.439526, 38.823357>,  <25.328651, 38.441811, 38.604458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.230272, 38.439526, 38.823357>,  <25.066309, 38.435719, 39.188187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.230272, 38.439526, 38.823357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480180, 0.852418, -0.206906,
		0.775501, 0.522774, 0.353986,
		0.409909, 0.009521, -0.912077,
		25.353245, 38.442383, 38.549732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.392975, 39.101482, 38.990479>,  <25.066309, 38.435719, 39.188187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.392975, 39.101482, 38.990479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.246994, 38.914867, 38.668198>,  <25.159405, 38.802898, 38.474831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.246994, 38.914867, 38.668198>,  <25.392975, 39.101482, 38.990479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.246994, 38.914867, 38.668198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472398, 0.838510, -0.271552,
		0.802277, 0.281508, -0.526407,
		-0.364954, -0.466534, -0.805701,
		25.137508, 38.774906, 38.426487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.574289, 39.485409, 38.258949>,  <25.392975, 39.101482, 38.990479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.574289, 39.485409, 38.258949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.228600, 39.290188, 38.307819>,  <25.021187, 39.173058, 38.337139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.228600, 39.290188, 38.307819>,  <25.574289, 39.485409, 38.258949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.228600, 39.290188, 38.307819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502142, 0.851796, -0.149321,
		-0.031191, -0.190395, -0.981212,
		-0.864222, -0.488050, 0.122174,
		24.969334, 39.143772, 38.344471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.135483, 39.419205, 37.620464>,  <25.574289, 39.485409, 38.258949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.135483, 39.419205, 37.620464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.917433, 39.464928, 37.952675>,  <24.786604, 39.492363, 38.152000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.917433, 39.464928, 37.952675>,  <25.135483, 39.419205, 37.620464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.917433, 39.464928, 37.952675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181789, 0.950974, -0.250203,
		-0.818409, -0.287372, -0.497619,
		-0.545124, 0.114307, 0.830526,
		24.753895, 39.499218, 38.201832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.188425, 38.625645, 37.403767>,  <25.135483, 39.419205, 37.620464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.188425, 38.625645, 37.403767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.346786, 38.794117, 37.730167>,  <25.441803, 38.895203, 37.926010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.346786, 38.794117, 37.730167>,  <25.188425, 38.625645, 37.403767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.346786, 38.794117, 37.730167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402194, -0.878379, 0.258244,
		0.825530, 0.225953, -0.517151,
		0.395904, 0.421183, 0.816005,
		25.465557, 38.920471, 37.974968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.967321, 38.486004, 37.392365>,  <25.188425, 38.625645, 37.403767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.967321, 38.486004, 37.392365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.789658, 38.487461, 37.750740>,  <25.683060, 38.488335, 37.965767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.789658, 38.487461, 37.750740>,  <25.967321, 38.486004, 37.392365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.789658, 38.487461, 37.750740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548514, -0.789577, 0.275136,
		0.708416, 0.613640, 0.348701,
		-0.444161, 0.003643, 0.895940,
		25.656410, 38.488556, 38.019524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.463919, 38.511623, 37.830769>,  <25.967321, 38.486004, 37.392365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.463919, 38.511623, 37.830769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.181723, 38.348576, 38.062675>,  <26.012405, 38.250748, 38.201820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.181723, 38.348576, 38.062675>,  <26.463919, 38.511623, 37.830769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.181723, 38.348576, 38.062675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664616, -0.664583, 0.341489,
		0.246107, 0.626240, 0.739767,
		-0.705491, -0.407618, 0.579767,
		25.970076, 38.226292, 38.236607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.773754, 38.482456, 38.512997>,  <26.463919, 38.511623, 37.830769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.773754, 38.482456, 38.512997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.467920, 38.225853, 38.488106>,  <26.284420, 38.071892, 38.473171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.467920, 38.225853, 38.488106>,  <26.773754, 38.482456, 38.512997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.467920, 38.225853, 38.488106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611289, -0.752378, 0.245463,
		-0.204285, 0.149639, 0.967407,
		-0.764587, -0.641510, -0.062227,
		26.238544, 38.033401, 38.469437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.843590, 38.033474, 39.060341>,  <26.773754, 38.482456, 38.512997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.843590, 38.033474, 39.060341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.620852, 37.841904, 38.788887>,  <26.487207, 37.726959, 38.626015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.620852, 37.841904, 38.788887>,  <26.843590, 38.033474, 39.060341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.620852, 37.841904, 38.788887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491567, -0.848605, 0.195530,
		-0.669540, -0.224715, 0.707968,
		-0.556847, -0.478929, -0.678637,
		26.453798, 37.698227, 38.585297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.235931, 37.499481, 39.357502>,  <26.843590, 38.033474, 39.060341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.235931, 37.499481, 39.357502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.203600, 37.718716, 39.690506>,  <27.184202, 37.850258, 39.890308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.203600, 37.718716, 39.690506>,  <27.235931, 37.499481, 39.357502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.203600, 37.718716, 39.690506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660898, 0.654697, -0.366860,
		-0.746111, 0.520550, -0.415147,
		-0.080826, 0.548087, 0.832507,
		27.179352, 37.883141, 39.940258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.607010, 37.007198, 39.831020>,  <27.235931, 37.499481, 39.357502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.607010, 37.007198, 39.831020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.827583, 36.688423, 39.929657>,  <27.959927, 36.497158, 39.988838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.827583, 36.688423, 39.929657>,  <27.607010, 37.007198, 39.831020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.827583, 36.688423, 39.929657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603468, 0.585166, 0.541670,
		-0.575976, -0.149883, 0.803608,
		0.551432, -0.796941, 0.246592,
		27.993013, 36.449341, 40.003635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.046896, 37.096844, 40.398796>,  <27.607010, 37.007198, 39.831020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.046896, 37.096844, 40.398796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.184776, 36.731609, 40.311653>,  <28.267504, 36.512470, 40.259369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.184776, 36.731609, 40.311653>,  <28.046896, 37.096844, 40.398796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.184776, 36.731609, 40.311653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798597, 0.163265, 0.579299,
		-0.493381, -0.373661, 0.785463,
		0.344700, -0.913084, -0.217853,
		28.288187, 36.457684, 40.246296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.180740, 36.734432, 40.984093>,  <28.046896, 37.096844, 40.398796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.180740, 36.734432, 40.984093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.421324, 36.589172, 40.699451>,  <28.565674, 36.502018, 40.528667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.421324, 36.589172, 40.699451>,  <28.180740, 36.734432, 40.984093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.421324, 36.589172, 40.699451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789553, 0.134304, 0.598806,
		-0.121883, -0.922002, 0.367501,
		0.601457, -0.363146, -0.711600,
		28.601761, 36.480228, 40.485970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.581812, 36.032120, 41.150257>,  <28.180740, 36.734432, 40.984093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.581812, 36.032120, 41.150257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.778564, 36.271732, 40.897526>,  <28.896616, 36.415501, 40.745888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.778564, 36.271732, 40.897526>,  <28.581812, 36.032120, 41.150257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.778564, 36.271732, 40.897526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812842, -0.055909, 0.579794,
		0.311992, -0.798769, -0.514421,
		0.491882, 0.599035, -0.631830,
		28.926128, 36.451443, 40.707977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.187237, 35.716305, 41.012978>,  <28.581812, 36.032120, 41.150257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.187237, 35.716305, 41.012978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.258272, 36.108402, 40.978149>,  <29.300894, 36.343662, 40.957253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.258272, 36.108402, 40.978149>,  <29.187237, 35.716305, 41.012978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.258272, 36.108402, 40.978149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855057, -0.109892, 0.506755,
		0.487176, -0.164447, -0.857681,
		0.177587, 0.980245, -0.087075,
		29.311548, 36.402477, 40.952026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.879818, 35.767490, 40.752716>,  <29.187237, 35.716305, 41.012978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.879818, 35.767490, 40.752716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.725830, 36.061691, 40.975727>,  <29.633438, 36.238213, 41.109531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.725830, 36.061691, 40.975727>,  <29.879818, 35.767490, 40.752716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.725830, 36.061691, 40.975727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768006, -0.079711, 0.635463,
		0.511826, 0.672814, -0.534186,
		-0.384968, 0.735505, 0.557524,
		29.610340, 36.282341, 41.142982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.268599, 36.432529, 40.718056>,  <29.879818, 35.767490, 40.752716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.268599, 36.432529, 40.718056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.102676, 36.392021, 41.079758>,  <30.003122, 36.367718, 41.296780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.102676, 36.392021, 41.079758>,  <30.268599, 36.432529, 40.718056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.102676, 36.392021, 41.079758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908402, 0.011104, 0.417950,
		-0.052367, 0.994797, 0.087388,
		-0.414805, -0.101270, 0.904257,
		29.978235, 36.361641, 41.351036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.527012, 37.001999, 41.061951>,  <30.268599, 36.432529, 40.718056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.527012, 37.001999, 41.061951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.455736, 36.663139, 41.262184>,  <30.412970, 36.459824, 41.382324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.455736, 36.663139, 41.262184>,  <30.527012, 37.001999, 41.061951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.455736, 36.663139, 41.262184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949348, -0.014200, 0.313904,
		-0.258815, 0.531164, 0.806771,
		-0.178191, -0.847150, 0.500585,
		30.402279, 36.408993, 41.412361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.860233, 37.059734, 41.749161>,  <30.527012, 37.001999, 41.061951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.860233, 37.059734, 41.749161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.851616, 36.675938, 41.636791>,  <30.846445, 36.445660, 41.569370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.851616, 36.675938, 41.636791>,  <30.860233, 37.059734, 41.749161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.851616, 36.675938, 41.636791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895178, -0.143633, 0.421932,
		-0.445189, -0.242386, 0.862007,
		-0.021542, -0.959489, -0.280923,
		30.845154, 36.388092, 41.552513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.711359, 36.672333, 42.304817>,  <30.860233, 37.059734, 41.749161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.711359, 36.672333, 42.304817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.944181, 36.549728, 42.003551>,  <31.083876, 36.476166, 41.822792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.944181, 36.549728, 42.003551>,  <30.711359, 36.672333, 42.304817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.944181, 36.549728, 42.003551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809534, 0.131202, 0.572224,
		-0.076576, -0.942781, 0.324499,
		0.582057, -0.306512, -0.753167,
		31.118799, 36.457775, 41.777603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.119072, 36.144711, 42.361282>,  <30.711359, 36.672333, 42.304817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.119072, 36.144711, 42.361282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.338642, 36.381123, 42.124855>,  <31.470385, 36.522972, 41.982998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.338642, 36.381123, 42.124855>,  <31.119072, 36.144711, 42.361282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.338642, 36.381123, 42.124855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734650, -0.003840, 0.678435,
		0.398708, -0.806638, -0.436312,
		0.548927, 0.591034, -0.591065,
		31.503321, 36.558434, 41.947536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.786789, 36.046577, 42.352581>,  <31.119072, 36.144711, 42.361282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.786789, 36.046577, 42.352581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.839178, 36.388332, 42.151436>,  <31.870611, 36.593384, 42.030750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.839178, 36.388332, 42.151436>,  <31.786789, 36.046577, 42.352581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.839178, 36.388332, 42.151436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843258, 0.170714, 0.509679,
		0.521309, -0.490795, -0.698110,
		0.130971, 0.854387, -0.502862,
		31.878469, 36.644650, 42.000576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.118896, 36.567997, 42.882893>,  <31.786789, 36.046577, 42.352581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.118896, 36.567997, 42.882893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.372135, 36.877224, 42.867172>,  <32.524078, 37.062759, 42.857738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.372135, 36.877224, 42.867172>,  <32.118896, 36.567997, 42.882893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.372135, 36.877224, 42.867172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570124, -0.500039, -0.651858,
		-0.523585, 0.390284, -0.757322,
		0.633101, 0.773071, -0.039303,
		32.562065, 37.109146, 42.855381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.413479, 36.471966, 42.357941>,  <32.118896, 36.567997, 42.882893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.413479, 36.471966, 42.357941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.658142, 36.749805, 42.509422>,  <32.804939, 36.916508, 42.600311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.658142, 36.749805, 42.509422>,  <32.413479, 36.471966, 42.357941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.658142, 36.749805, 42.509422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752969, -0.364261, -0.548043,
		-0.242723, 0.620364, -0.745811,
		0.611656, 0.694596, 0.378700,
		32.841640, 36.958183, 42.623032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.881897, 36.523045, 41.887989>,  <32.413479, 36.471966, 42.357941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.881897, 36.523045, 41.887989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.116562, 36.710770, 42.151981>,  <33.257362, 36.823402, 42.310375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.116562, 36.710770, 42.151981>,  <32.881897, 36.523045, 41.887989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.116562, 36.710770, 42.151981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809191, -0.372047, -0.454743,
		0.032127, 0.800830, -0.598030,
		0.586667, 0.469311, 0.659977,
		33.292561, 36.851562, 42.349976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.561760, 36.837360, 41.563805>,  <32.881897, 36.523045, 41.887989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.561760, 36.837360, 41.563805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.608753, 36.716473, 41.942192>,  <33.636948, 36.643940, 42.169224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.608753, 36.716473, 41.942192>,  <33.561760, 36.837360, 41.563805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.608753, 36.716473, 41.942192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783919, -0.556557, -0.275164,
		0.609647, 0.773892, 0.171530,
		0.117481, -0.302218, 0.945972,
		33.643997, 36.625809, 42.225983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.295723, 36.919552, 41.732620>,  <33.561760, 36.837360, 41.563805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.295723, 36.919552, 41.732620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.087326, 36.620113, 41.896660>,  <33.962288, 36.440453, 41.995083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.087326, 36.620113, 41.896660>,  <34.295723, 36.919552, 41.732620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.087326, 36.620113, 41.896660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770871, -0.618952, -0.150519,
		0.366509, 0.237714, 0.899535,
		-0.520989, -0.748592, 0.410098,
		33.931030, 36.395535, 42.019688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.800724, 36.565163, 42.239437>,  <34.295723, 36.919552, 41.732620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.800724, 36.565163, 42.239437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.509132, 36.316624, 42.124535>,  <34.334179, 36.167500, 42.055592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.509132, 36.316624, 42.124535>,  <34.800724, 36.565163, 42.239437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.509132, 36.316624, 42.124535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675641, -0.720518, -0.156089,
		-0.109989, -0.307868, 0.945050,
		-0.728981, -0.621346, -0.287257,
		34.290440, 36.130219, 42.038357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.994743, 35.823944, 42.430359>,  <34.800724, 36.565163, 42.239437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.994743, 35.823944, 42.430359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.747734, 35.848503, 42.116699>,  <34.599529, 35.863239, 41.928505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.747734, 35.848503, 42.116699>,  <34.994743, 35.823944, 42.430359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.747734, 35.848503, 42.116699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475301, -0.765207, -0.434221,
		-0.626697, -0.640850, 0.443354,
		-0.617528, 0.061398, -0.784149,
		34.562477, 35.866924, 41.881454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.602329, 35.177639, 42.413105>,  <34.994743, 35.823944, 42.430359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.602329, 35.177639, 42.413105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.614414, 35.349068, 42.051903>,  <34.621666, 35.451923, 41.835182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.614414, 35.349068, 42.051903>,  <34.602329, 35.177639, 42.413105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.614414, 35.349068, 42.051903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459634, -0.808189, -0.368194,
		-0.887594, -0.403928, -0.221400,
		0.030209, 0.428569, -0.903004,
		34.623478, 35.477638, 41.781002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.432552, 34.647060, 41.932415>,  <34.602329, 35.177639, 42.413105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.432552, 34.647060, 41.932415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.655571, 34.922409, 41.746822>,  <34.789383, 35.087620, 41.635468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.655571, 34.922409, 41.746822>,  <34.432552, 34.647060, 41.932415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.655571, 34.922409, 41.746822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667272, -0.704124, -0.242813,
		-0.493848, -0.174223, -0.851916,
		0.557550, 0.688372, -0.463984,
		34.822838, 35.128922, 41.607628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.425095, 34.465591, 41.144634>,  <34.432552, 34.647060, 41.932415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.425095, 34.465591, 41.144634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.737431, 34.682983, 41.267872>,  <34.924831, 34.813419, 41.341812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.737431, 34.682983, 41.267872>,  <34.425095, 34.465591, 41.144634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.737431, 34.682983, 41.267872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624282, -0.660050, -0.417859,
		-0.023741, 0.518617, -0.854677,
		0.780838, 0.543480, 0.308092,
		34.971684, 34.846027, 41.360298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.689533, 34.433605, 40.529064>,  <34.425095, 34.465591, 41.144634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.689533, 34.433605, 40.529064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.882565, 34.382942, 40.875725>,  <34.998383, 34.352543, 41.083721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.882565, 34.382942, 40.875725>,  <34.689533, 34.433605, 40.529064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.882565, 34.382942, 40.875725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439873, -0.890697, 0.114763,
		0.757386, -0.436597, -0.485541,
		0.482575, -0.126657, 0.866648,
		35.027336, 34.344944, 41.135719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.118244, 33.725082, 40.562794>,  <34.689533, 34.433605, 40.529064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.118244, 33.725082, 40.562794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.985836, 33.837486, 40.923119>,  <34.906391, 33.904930, 41.139313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.985836, 33.837486, 40.923119>,  <35.118244, 33.725082, 40.562794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.985836, 33.837486, 40.923119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283155, -0.940216, 0.189252,
		0.900138, -0.192422, 0.390801,
		-0.331021, 0.281010, 0.900810,
		34.886528, 33.921791, 41.193363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.374741, 33.328060, 41.044453>,  <35.118244, 33.725082, 40.562794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.374741, 33.328060, 41.044453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.032600, 33.468185, 41.197113>,  <34.827316, 33.552261, 41.288708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.032600, 33.468185, 41.197113>,  <35.374741, 33.328060, 41.044453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.032600, 33.468185, 41.197113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325211, -0.936551, 0.130804,
		0.403257, -0.012233, 0.915005,
		-0.855349, 0.350317, 0.381649,
		34.775997, 33.573280, 41.311607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.369236, 32.961109, 41.683392>,  <35.374741, 33.328060, 41.044453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.369236, 32.961109, 41.683392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.028374, 33.078983, 41.510418>,  <34.823856, 33.149708, 41.406635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.028374, 33.078983, 41.510418>,  <35.369236, 32.961109, 41.683392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.028374, 33.078983, 41.510418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261254, -0.955589, -0.136370,
		-0.453413, -0.003233, 0.891295,
		-0.852152, 0.294686, -0.432432,
		34.772728, 33.167389, 41.380688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.792309, 32.441086, 41.972385>,  <35.369236, 32.961109, 41.683392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.792309, 32.441086, 41.972385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.703869, 32.597656, 41.615086>,  <34.650803, 32.691601, 41.400703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.703869, 32.597656, 41.615086>,  <34.792309, 32.441086, 41.972385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.703869, 32.597656, 41.615086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135204, -0.919378, -0.369411,
		-0.965833, 0.039094, 0.256199,
		-0.221102, 0.391428, -0.893251,
		34.637539, 32.715084, 41.347111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.176048, 32.194752, 41.796074>,  <34.792309, 32.441086, 41.972385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.176048, 32.194752, 41.796074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.337833, 32.287140, 41.442112>,  <34.434902, 32.342575, 41.229733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.337833, 32.287140, 41.442112>,  <34.176048, 32.194752, 41.796074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.337833, 32.287140, 41.442112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296727, -0.882099, -0.365863,
		-0.865081, 0.410553, -0.288239,
		0.404461, 0.230972, -0.884908,
		34.459171, 32.356430, 41.176640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.811821, 31.741667, 41.297035>,  <34.176048, 32.194752, 41.796074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.811821, 31.741667, 41.297035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.105846, 31.882669, 41.065372>,  <34.282261, 31.967272, 40.926376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.105846, 31.882669, 41.065372>,  <33.811821, 31.741667, 41.297035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.105846, 31.882669, 41.065372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032642, -0.834823, -0.549550,
		-0.677215, 0.422857, -0.602139,
		0.735061, 0.352508, -0.579157,
		34.326366, 31.988422, 40.891624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.647938, 31.758867, 40.611950>,  <33.811821, 31.741667, 41.297035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.647938, 31.758867, 40.611950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.041653, 31.746771, 40.542374>,  <34.277882, 31.739513, 40.500626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.041653, 31.746771, 40.542374>,  <33.647938, 31.758867, 40.611950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.041653, 31.746771, 40.542374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164655, -0.512779, -0.842583,
		-0.063713, 0.857987, -0.509704,
		0.984291, -0.030242, -0.173943,
		34.336941, 31.737698, 40.490192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.845890, 32.027020, 39.976383>,  <33.647938, 31.758867, 40.611950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.845890, 32.027020, 39.976383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.151047, 31.779581, 40.051575>,  <34.334141, 31.631119, 40.096691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.151047, 31.779581, 40.051575>,  <33.845890, 32.027020, 39.976383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.151047, 31.779581, 40.051575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023190, -0.316754, -0.948224,
		0.646109, 0.719034, -0.255994,
		0.762893, -0.618592, 0.187983,
		34.379913, 31.594004, 40.107971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.389248, 32.195724, 39.453667>,  <33.845890, 32.027020, 39.976383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.389248, 32.195724, 39.453667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.498314, 31.830400, 39.574677>,  <34.563755, 31.611206, 39.647282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.498314, 31.830400, 39.574677>,  <34.389248, 32.195724, 39.453667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.498314, 31.830400, 39.574677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055507, -0.328851, -0.942749,
		0.960507, 0.240262, -0.140361,
		0.272664, -0.913308, 0.302528,
		34.580112, 31.556408, 39.665436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.929760, 32.023575, 38.933613>,  <34.389248, 32.195724, 39.453667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.929760, 32.023575, 38.933613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.802280, 31.688272, 39.110592>,  <34.725792, 31.487091, 39.216778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.802280, 31.688272, 39.110592>,  <34.929760, 32.023575, 38.933613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.802280, 31.688272, 39.110592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137603, -0.420927, -0.896597,
		0.937815, -0.346625, 0.018802,
		-0.318697, -0.838255, 0.442448,
		34.706673, 31.436796, 39.243328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.278484, 31.493107, 38.546700>,  <34.929760, 32.023575, 38.933613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.278484, 31.493107, 38.546700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.956554, 31.339792, 38.727959>,  <34.763397, 31.247803, 38.836716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.956554, 31.339792, 38.727959>,  <35.278484, 31.493107, 38.546700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.956554, 31.339792, 38.727959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280262, -0.427585, -0.859433,
		0.523170, -0.818695, 0.236711,
		-0.804827, -0.383288, 0.453148,
		34.715107, 31.224806, 38.863903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.201878, 30.863785, 38.279495>,  <35.278484, 31.493107, 38.546700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.201878, 30.863785, 38.279495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.834991, 30.926563, 38.425968>,  <34.614861, 30.964230, 38.513851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.834991, 30.926563, 38.425968>,  <35.201878, 30.863785, 38.279495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.834991, 30.926563, 38.425968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392610, -0.199940, -0.897709,
		-0.067677, -0.967157, 0.245006,
		-0.917212, 0.156946, 0.366184,
		34.559830, 30.973646, 38.535824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.876816, 30.294861, 38.034584>,  <35.201878, 30.863785, 38.279495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.876816, 30.294861, 38.034584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.575062, 30.535831, 38.138882>,  <34.394009, 30.680414, 38.201462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.575062, 30.535831, 38.138882>,  <34.876816, 30.294861, 38.034584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.575062, 30.535831, 38.138882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460554, -0.202690, -0.864180,
		-0.467753, -0.772011, 0.430355,
		-0.754385, 0.602425, 0.260744,
		34.348747, 30.716558, 38.217106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.235649, 29.812809, 37.929234>,  <34.876816, 30.294861, 38.034584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.235649, 29.812809, 37.929234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.158192, 30.204189, 37.900558>,  <34.111717, 30.439016, 37.883354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.158192, 30.204189, 37.900558>,  <34.235649, 29.812809, 37.929234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.158192, 30.204189, 37.900558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397871, -0.145115, -0.905892,
		-0.896772, -0.146899, 0.417397,
		-0.193646, 0.978449, -0.071688,
		34.100098, 30.497725, 37.879051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.532089, 29.837788, 37.828152>,  <34.235649, 29.812809, 37.929234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.532089, 29.837788, 37.828152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.667374, 30.191696, 37.699905>,  <33.748543, 30.404041, 37.622959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.667374, 30.191696, 37.699905>,  <33.532089, 29.837788, 37.828152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.667374, 30.191696, 37.699905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529981, -0.102453, -0.841798,
		-0.777648, 0.454620, 0.434263,
		0.338207, 0.884773, -0.320612,
		33.768837, 30.457129, 37.603722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.985855, 30.174927, 37.492790>,  <33.532089, 29.837788, 37.828152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.985855, 30.174927, 37.492790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.289825, 30.405367, 37.372379>,  <33.472210, 30.543631, 37.300133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.289825, 30.405367, 37.372379>,  <32.985855, 30.174927, 37.492790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.289825, 30.405367, 37.372379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418651, 0.079527, -0.904659,
		-0.497234, 0.813501, 0.301619,
		0.759928, 0.576100, -0.301029,
		33.517803, 30.578197, 37.282070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.581699, 30.615414, 37.098064>,  <32.985855, 30.174927, 37.492790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.581699, 30.615414, 37.098064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.964508, 30.659649, 36.990826>,  <33.194195, 30.686190, 36.926483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.964508, 30.659649, 36.990826>,  <32.581699, 30.615414, 37.098064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.964508, 30.659649, 36.990826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279204, 0.101389, -0.954864,
		-0.078413, 0.988682, 0.127908,
		0.957025, 0.110586, -0.268094,
		33.251614, 30.692825, 36.910397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.632233, 31.221743, 36.891247>,  <32.581699, 30.615414, 37.098064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.632233, 31.221743, 36.891247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.912411, 30.996092, 36.716370>,  <33.080517, 30.860703, 36.611443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.912411, 30.996092, 36.716370>,  <32.632233, 31.221743, 36.891247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.912411, 30.996092, 36.716370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450848, 0.125130, -0.883787,
		0.553272, 0.816152, -0.166688,
		0.700447, -0.564126, -0.437191,
		33.122543, 30.826855, 36.585213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.694904, 31.603502, 36.281490>,  <32.632233, 31.221743, 36.891247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.694904, 31.603502, 36.281490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.851875, 31.242262, 36.211735>,  <32.946056, 31.025518, 36.169884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.851875, 31.242262, 36.211735>,  <32.694904, 31.603502, 36.281490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.851875, 31.242262, 36.211735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411067, -0.002593, -0.911601,
		0.822816, 0.429420, -0.372253,
		0.392425, -0.903101, -0.174387,
		32.969604, 30.971331, 36.159420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.908283, 31.618855, 35.584335>,  <32.694904, 31.603502, 36.281490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.908283, 31.618855, 35.584335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.845676, 31.236145, 35.682384>,  <32.808113, 31.006519, 35.741215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.845676, 31.236145, 35.682384>,  <32.908283, 31.618855, 35.584335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.845676, 31.236145, 35.682384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477694, -0.143889, -0.866663,
		0.864471, -0.252741, -0.434524,
		-0.156518, -0.956775, 0.245121,
		32.798721, 30.949112, 35.755920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.962891, 31.347960, 34.946064>,  <32.908283, 31.618855, 35.584335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.962891, 31.347960, 34.946064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.805771, 31.059517, 35.174351>,  <32.711498, 30.886452, 35.311321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.805771, 31.059517, 35.174351>,  <32.962891, 31.347960, 34.946064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.805771, 31.059517, 35.174351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579907, -0.287430, -0.762294,
		0.713735, -0.630389, -0.305273,
		-0.392797, -0.721106, 0.570716,
		32.687931, 30.843185, 35.345566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.278957, 30.781776, 34.519596>,  <32.962891, 31.347960, 34.946064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.278957, 30.781776, 34.519596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.963848, 30.677946, 34.743038>,  <32.774784, 30.615648, 34.877102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.963848, 30.677946, 34.743038>,  <33.278957, 30.781776, 34.519596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.963848, 30.677946, 34.743038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341686, -0.570406, -0.746919,
		0.512512, -0.779268, 0.360656,
		-0.787771, -0.259574, 0.558605,
		32.727516, 30.600075, 34.910618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.265171, 30.085260, 34.597679>,  <33.278957, 30.781776, 34.519596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.265171, 30.085260, 34.597679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.891449, 30.214590, 34.657738>,  <32.667217, 30.292189, 34.693771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.891449, 30.214590, 34.657738>,  <33.265171, 30.085260, 34.597679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.891449, 30.214590, 34.657738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289086, -0.440738, -0.849811,
		-0.208591, -0.837384, 0.505251,
		-0.934302, 0.323324, 0.150142,
		32.611160, 30.311586, 34.702782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.873020, 29.570217, 34.338112>,  <33.265171, 30.085260, 34.597679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.873020, 29.570217, 34.338112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.561974, 29.820223, 34.365452>,  <32.375347, 29.970226, 34.381855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.561974, 29.820223, 34.365452>,  <32.873020, 29.570217, 34.338112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.561974, 29.820223, 34.365452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419141, -0.434281, -0.797321,
		-0.468655, -0.648656, 0.599673,
		-0.777614, 0.625016, 0.068351,
		32.328690, 30.007727, 34.385960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.443859, 29.074377, 34.171707>,  <32.873020, 29.570217, 34.338112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.443859, 29.074377, 34.171707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.257305, 29.428064, 34.161549>,  <32.145370, 29.640276, 34.155453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.257305, 29.428064, 34.161549>,  <32.443859, 29.074377, 34.171707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.257305, 29.428064, 34.161549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726973, -0.399490, -0.558496,
		-0.503977, -0.242011, 0.829118,
		-0.466387, 0.884216, -0.025399,
		32.117390, 29.693329, 34.153931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.682978, 28.946669, 34.238934>,  <32.443859, 29.074377, 34.171707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.682978, 28.946669, 34.238934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.744478, 29.303804, 34.069607>,  <31.781378, 29.518085, 33.968010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.744478, 29.303804, 34.069607>,  <31.682978, 28.946669, 34.238934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.744478, 29.303804, 34.069607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602664, -0.254767, -0.756234,
		-0.783043, 0.371390, 0.498911,
		0.153752, 0.892840, -0.423317,
		31.790604, 29.571657, 33.942612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.000086, 29.259636, 34.111565>,  <31.682978, 28.946669, 34.238934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.000086, 29.259636, 34.111565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.261087, 29.432095, 33.862293>,  <31.417688, 29.535570, 33.712730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.261087, 29.432095, 33.862293>,  <31.000086, 29.259636, 34.111565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.261087, 29.432095, 33.862293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496279, -0.378337, -0.781389,
		-0.572666, 0.819129, -0.032896,
		0.652504, 0.431149, -0.623177,
		31.456839, 29.561440, 33.675339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.599667, 29.373688, 33.622211>,  <31.000086, 29.259636, 34.111565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.599667, 29.373688, 33.622211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.956593, 29.411060, 33.445557>,  <31.170748, 29.433483, 33.339561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.956593, 29.411060, 33.445557>,  <30.599667, 29.373688, 33.622211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.956593, 29.411060, 33.445557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390773, -0.329912, -0.859334,
		-0.225990, 0.939377, -0.257875,
		0.892314, 0.093430, -0.441640,
		31.224287, 29.439089, 33.313065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.511868, 29.846598, 33.085464>,  <30.599667, 29.373688, 33.622211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.511868, 29.846598, 33.085464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.832010, 29.629675, 32.983227>,  <31.024096, 29.499521, 32.921883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.832010, 29.629675, 32.983227>,  <30.511868, 29.846598, 33.085464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.832010, 29.629675, 32.983227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463094, -0.288464, -0.838053,
		0.380750, 0.789109, -0.482013,
		0.800358, -0.542306, -0.255599,
		31.072117, 29.466984, 32.906548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.745277, 30.060791, 32.445999>,  <30.511868, 29.846598, 33.085464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.745277, 30.060791, 32.445999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.871956, 29.681641, 32.460056>,  <30.947964, 29.454151, 32.468491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.871956, 29.681641, 32.460056>,  <30.745277, 30.060791, 32.445999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.871956, 29.681641, 32.460056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291508, -0.132517, -0.947345,
		0.902622, 0.289777, -0.318281,
		0.316696, -0.947876, 0.035141,
		30.966965, 29.397278, 32.470600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.041224, 30.003832, 31.754141>,  <30.745277, 30.060791, 32.445999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.041224, 30.003832, 31.754141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.988022, 29.632318, 31.892513>,  <30.956100, 29.409410, 31.975536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.988022, 29.632318, 31.892513>,  <31.041224, 30.003832, 31.754141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.988022, 29.632318, 31.892513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303254, -0.294156, -0.906372,
		0.943582, -0.225455, -0.242534,
		-0.133004, -0.928786, 0.345930,
		30.948120, 29.353683, 31.996292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.372551, 29.532242, 31.266588>,  <31.041224, 30.003832, 31.754141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.372551, 29.532242, 31.266588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.095778, 29.333370, 31.475985>,  <30.929714, 29.214048, 31.601622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.095778, 29.333370, 31.475985>,  <31.372551, 29.532242, 31.266588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.095778, 29.333370, 31.475985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308032, -0.452483, -0.836884,
		0.652951, -0.740320, 0.159941,
		-0.691933, -0.497177, 0.523492,
		30.888197, 29.184217, 31.633032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.425873, 28.888680, 31.031109>,  <31.372551, 29.532242, 31.266588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.425873, 28.888680, 31.031109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.058258, 28.883764, 31.188704>,  <30.837690, 28.880816, 31.283260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.058258, 28.883764, 31.188704>,  <31.425873, 28.888680, 31.031109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.058258, 28.883764, 31.188704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336613, -0.495611, -0.800663,
		0.205102, -0.868458, 0.451347,
		-0.919035, -0.012288, 0.393985,
		30.782547, 28.880077, 31.306898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.318052, 28.227407, 30.942900>,  <31.425873, 28.888680, 31.031109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.318052, 28.227407, 30.942900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.961416, 28.395954, 31.009258>,  <30.747435, 28.497082, 31.049072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.961416, 28.395954, 31.009258>,  <31.318052, 28.227407, 30.942900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.961416, 28.395954, 31.009258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364137, -0.449312, -0.815796,
		-0.269208, -0.787764, 0.554035,
		-0.891589, 0.421364, 0.165895,
		30.693939, 28.522364, 31.059027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.852921, 27.688904, 30.911804>,  <31.318052, 28.227407, 30.942900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.852921, 27.688904, 30.911804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.654215, 28.028400, 30.839291>,  <30.534992, 28.232100, 30.795782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.654215, 28.028400, 30.839291>,  <30.852921, 27.688904, 30.911804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.654215, 28.028400, 30.839291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362897, -0.392876, -0.844958,
		-0.788374, -0.353956, 0.503172,
		-0.496762, 0.848742, -0.181283,
		30.505186, 28.283024, 30.784906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.074417, 27.465969, 30.721193>,  <30.852921, 27.688904, 30.911804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.074417, 27.465969, 30.721193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.175385, 27.833815, 30.600794>,  <30.235964, 28.054522, 30.528555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.175385, 27.833815, 30.600794>,  <30.074417, 27.465969, 30.721193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.175385, 27.833815, 30.600794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364773, -0.197684, -0.909869,
		-0.896229, 0.339462, 0.285551,
		0.252417, 0.919612, -0.300997,
		30.251110, 28.109697, 30.510494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.523403, 27.655060, 30.332949>,  <30.074417, 27.465969, 30.721193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.523403, 27.655060, 30.332949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.813583, 27.902376, 30.211994>,  <29.987692, 28.050766, 30.139421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.813583, 27.902376, 30.211994>,  <29.523403, 27.655060, 30.332949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.813583, 27.902376, 30.211994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254352, -0.167411, -0.952512,
		-0.639553, 0.767912, 0.035815,
		0.725449, 0.618291, -0.302388,
		30.031218, 28.087864, 30.121277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.237848, 28.090254, 29.718170>,  <29.523403, 27.655060, 30.332949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.237848, 28.090254, 29.718170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.633583, 28.138899, 29.686123>,  <29.871025, 28.168085, 29.666895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.633583, 28.138899, 29.686123>,  <29.237848, 28.090254, 29.718170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.633583, 28.138899, 29.686123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052780, -0.213325, -0.975554,
		-0.135730, 0.969383, -0.204632,
		0.989339, 0.121612, -0.080119,
		29.930386, 28.175383, 29.662086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.290007, 28.655350, 29.424065>,  <29.237848, 28.090254, 29.718170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.290007, 28.655350, 29.424065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.625128, 28.470877, 29.307173>,  <29.826200, 28.360193, 29.237038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.625128, 28.470877, 29.307173>,  <29.290007, 28.655350, 29.424065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.625128, 28.470877, 29.307173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491290, -0.403320, -0.771989,
		0.238166, 0.790343, -0.564477,
		0.837801, -0.461183, -0.292231,
		29.876469, 28.332521, 29.219503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.267736, 28.788277, 28.728800>,  <29.290007, 28.655350, 29.424065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.267736, 28.788277, 28.728800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.514875, 28.478832, 28.785067>,  <29.663158, 28.293165, 28.818827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.514875, 28.478832, 28.785067>,  <29.267736, 28.788277, 28.728800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.514875, 28.478832, 28.785067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354785, -0.433937, -0.828146,
		0.701704, 0.461763, -0.542574,
		0.617850, -0.773611, 0.140669,
		29.700230, 28.246750, 28.827267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.650360, 28.593235, 28.105572>,  <29.267736, 28.788277, 28.728800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.650360, 28.593235, 28.105572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.654438, 28.253653, 28.316916>,  <29.656885, 28.049902, 28.443722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.654438, 28.253653, 28.316916>,  <29.650360, 28.593235, 28.105572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.654438, 28.253653, 28.316916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360521, -0.495972, -0.789960,
		0.932695, -0.182432, -0.311123,
		0.010194, -0.848958, 0.528362,
		29.657495, 27.998964, 28.475424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.015665, 28.139996, 27.632420>,  <29.650360, 28.593235, 28.105572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.015665, 28.139996, 27.632420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.820545, 27.909899, 27.895067>,  <29.703474, 27.771841, 28.052656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.820545, 27.909899, 27.895067>,  <30.015665, 28.139996, 27.632420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.820545, 27.909899, 27.895067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471333, -0.459563, -0.752759,
		0.734776, -0.676682, -0.046956,
		-0.487800, -0.575242, 0.656619,
		29.674206, 27.737326, 28.092052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.765890, 27.635595, 27.264828>,  <30.015665, 28.139996, 27.632420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.765890, 27.635595, 27.264828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.572538, 27.516479, 27.594109>,  <29.456528, 27.445009, 27.791677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.572538, 27.516479, 27.594109>,  <29.765890, 27.635595, 27.264828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.572538, 27.516479, 27.594109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568420, -0.608393, -0.553856,
		0.665766, -0.735648, 0.124813,
		-0.483378, -0.297792, 0.823204,
		29.427525, 27.427141, 27.841070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.699823, 26.917408, 27.096910>,  <29.765890, 27.635595, 27.264828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.699823, 26.917408, 27.096910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.425854, 27.012724, 27.372328>,  <29.261471, 27.069914, 27.537579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.425854, 27.012724, 27.372328>,  <29.699823, 26.917408, 27.096910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.425854, 27.012724, 27.372328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677454, -0.556134, -0.481426,
		0.268204, -0.796198, 0.542342,
		-0.684925, 0.238291, 0.688545,
		29.220377, 27.084211, 27.578892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.445921, 26.303015, 27.382149>,  <29.699823, 26.917408, 27.096910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.445921, 26.303015, 27.382149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.168791, 26.583870, 27.447874>,  <29.002512, 26.752382, 27.487309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.168791, 26.583870, 27.447874>,  <29.445921, 26.303015, 27.382149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.168791, 26.583870, 27.447874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677336, -0.555474, -0.482353,
		-0.247407, -0.445481, 0.860428,
		-0.692825, 0.702136, 0.164312,
		28.960943, 26.794510, 27.497168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.913755, 25.922867, 27.573368>,  <29.445921, 26.303015, 27.382149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.913755, 25.922867, 27.573368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.750008, 26.269913, 27.460470>,  <28.651758, 26.478140, 27.392731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.750008, 26.269913, 27.460470>,  <28.913755, 25.922867, 27.573368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.750008, 26.269913, 27.460470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736980, -0.496821, -0.458289,
		-0.537845, 0.020403, 0.842797,
		-0.409369, 0.867613, -0.282249,
		28.627195, 26.530197, 27.375797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.193827, 25.933186, 27.705984>,  <28.913755, 25.922867, 27.573368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.193827, 25.933186, 27.705984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.287714, 26.159777, 27.390007>,  <28.344046, 26.295732, 27.200420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.287714, 26.159777, 27.390007>,  <28.193827, 25.933186, 27.705984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.287714, 26.159777, 27.390007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756186, -0.404231, -0.514567,
		-0.610811, 0.718122, 0.333483,
		0.234718, 0.566479, -0.789943,
		28.358130, 26.329720, 27.153025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.549189, 26.018177, 27.432056>,  <28.193827, 25.933186, 27.705984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.549189, 26.018177, 27.432056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.809839, 26.100826, 27.140114>,  <27.966228, 26.150415, 26.964949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.809839, 26.100826, 27.140114>,  <27.549189, 26.018177, 27.432056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.809839, 26.100826, 27.140114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577731, -0.488311, -0.654048,
		-0.491539, 0.847856, -0.198823,
		0.651625, 0.206624, -0.729857,
		28.005327, 26.162813, 26.921156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.152792, 26.408562, 26.973755>,  <27.549189, 26.018177, 27.432056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.152792, 26.408562, 26.973755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.460052, 26.216640, 26.804176>,  <27.644409, 26.101488, 26.702429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.460052, 26.216640, 26.804176>,  <27.152792, 26.408562, 26.973755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.460052, 26.216640, 26.804176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639377, -0.539937, -0.547417,
		0.033749, 0.691561, -0.721529,
		0.768153, -0.479803, -0.423946,
		27.690498, 26.072699, 26.676992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.126411, 26.593185, 26.220686>,  <27.152792, 26.408562, 26.973755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.126411, 26.593185, 26.220686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.327562, 26.249435, 26.257759>,  <27.448252, 26.043186, 26.280003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.327562, 26.249435, 26.257759>,  <27.126411, 26.593185, 26.220686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.327562, 26.249435, 26.257759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498088, -0.375744, -0.781489,
		0.706417, 0.346828, -0.616997,
		0.502875, -0.859376, 0.092681,
		27.478424, 25.991623, 26.285563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.515505, 26.460148, 25.662966>,  <27.126411, 26.593185, 26.220686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.515505, 26.460148, 25.662966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.363113, 26.122946, 25.814857>,  <27.271679, 25.920624, 25.905993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.363113, 26.122946, 25.814857>,  <27.515505, 26.460148, 25.662966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.363113, 26.122946, 25.814857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427267, -0.203695, -0.880881,
		0.819937, -0.497844, -0.282585,
		-0.380980, -0.843006, 0.379730,
		27.248819, 25.870045, 25.928776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.835592, 27.024240, 25.820904>,  <27.515505, 26.460148, 25.662966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.835592, 27.024240, 25.820904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.125935, 26.806976, 25.652092>,  <28.300140, 26.676619, 25.550804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.125935, 26.806976, 25.652092>,  <27.835592, 27.024240, 25.820904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.125935, 26.806976, 25.652092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641038, -0.311709, -0.701361,
		0.249401, 0.779625, -0.574443,
		0.725857, -0.543160, -0.422029,
		28.343691, 26.644028, 25.525484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.741781, 27.718517, 26.077448>,  <27.835592, 27.024240, 25.820904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.741781, 27.718517, 26.077448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.651272, 27.966652, 25.777052>,  <27.596966, 28.115532, 25.596815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.651272, 27.966652, 25.777052>,  <27.741781, 27.718517, 26.077448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.651272, 27.966652, 25.777052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155254, 0.784096, 0.600907,
		0.961612, 0.019374, -0.273729,
		-0.226272, 0.620337, -0.750988,
		27.583389, 28.152754, 25.551756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.250391, 28.301380, 26.029493>,  <27.741781, 27.718517, 26.077448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.250391, 28.301380, 26.029493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.883265, 28.394384, 25.900776>,  <27.662989, 28.450188, 25.823545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.883265, 28.394384, 25.900776>,  <28.250391, 28.301380, 26.029493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.883265, 28.394384, 25.900776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016443, 0.832120, 0.554353,
		0.396663, 0.503503, -0.767557,
		-0.917817, 0.232512, -0.321792,
		27.607920, 28.464138, 25.804239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.273754, 28.930424, 25.870211>,  <28.250391, 28.301380, 26.029493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.273754, 28.930424, 25.870211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.913378, 28.845215, 26.021435>,  <27.697153, 28.794088, 26.112169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.913378, 28.845215, 26.021435>,  <28.273754, 28.930424, 25.870211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.913378, 28.845215, 26.021435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095047, 0.753188, 0.650902,
		-0.423407, 0.622357, -0.658330,
		-0.900940, -0.213024, 0.378059,
		27.643095, 28.781307, 26.134853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.915466, 29.540497, 25.874254>,  <28.273754, 28.930424, 25.870211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.915466, 29.540497, 25.874254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.744884, 29.291481, 26.136730>,  <27.642536, 29.142073, 26.294216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.744884, 29.291481, 26.136730>,  <27.915466, 29.540497, 25.874254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.744884, 29.291481, 26.136730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162028, 0.661151, 0.732548,
		-0.889878, 0.418719, -0.181083,
		-0.426455, -0.622538, 0.656188,
		27.616947, 29.104719, 26.333588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.435434, 29.962486, 26.317993>,  <27.915466, 29.540497, 25.874254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.435434, 29.962486, 26.317993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.594152, 29.643452, 26.499722>,  <27.689383, 29.452030, 26.608759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.594152, 29.643452, 26.499722>,  <27.435434, 29.962486, 26.317993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.594152, 29.643452, 26.499722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240614, 0.568027, 0.787052,
		-0.885810, -0.202981, 0.417301,
		0.396795, -0.797587, 0.454323,
		27.713190, 29.404175, 26.636019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.399239, 30.147472, 26.975019>,  <27.435434, 29.962486, 26.317993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.399239, 30.147472, 26.975019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.643805, 29.836079, 27.031778>,  <27.790545, 29.649242, 27.065834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.643805, 29.836079, 27.031778>,  <27.399239, 30.147472, 26.975019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.643805, 29.836079, 27.031778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335478, 0.417418, 0.844522,
		-0.716676, -0.468750, 0.516380,
		0.611416, -0.778483, 0.141898,
		27.827229, 29.602533, 27.074348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.237307, 29.898392, 27.641542>,  <27.399239, 30.147472, 26.975019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.237307, 29.898392, 27.641542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.603802, 29.765059, 27.552641>,  <27.823698, 29.685059, 27.499300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.603802, 29.765059, 27.552641>,  <27.237307, 29.898392, 27.641542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.603802, 29.765059, 27.552641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385603, 0.583199, 0.714975,
		-0.108708, -0.740788, 0.662884,
		0.916238, -0.333334, -0.222252,
		27.878674, 29.665058, 27.485966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.566574, 29.682440, 28.243574>,  <27.237307, 29.898392, 27.641542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.566574, 29.682440, 28.243574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.846048, 29.796539, 27.981133>,  <28.013733, 29.865000, 27.823668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.846048, 29.796539, 27.981133>,  <27.566574, 29.682440, 28.243574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.846048, 29.796539, 27.981133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319775, 0.695856, 0.643062,
		0.639986, -0.659104, 0.394969,
		0.698686, 0.285249, -0.656103,
		28.055653, 29.882114, 27.784302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.273628, 29.639359, 28.564564>,  <27.566574, 29.682440, 28.243574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.273628, 29.639359, 28.564564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.293318, 29.886381, 28.250570>,  <28.305132, 30.034594, 28.062174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.293318, 29.886381, 28.250570>,  <28.273628, 29.639359, 28.564564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.293318, 29.886381, 28.250570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463860, 0.681904, 0.565546,
		0.884540, -0.391961, -0.252894,
		0.049223, 0.617555, -0.784986,
		28.308084, 30.071648, 28.015074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.907431, 29.833822, 28.603991>,  <28.273628, 29.639359, 28.564564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.907431, 29.833822, 28.603991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.745104, 30.125193, 28.383190>,  <28.647707, 30.300014, 28.250710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.745104, 30.125193, 28.383190>,  <28.907431, 29.833822, 28.603991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.745104, 30.125193, 28.383190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394647, 0.684425, 0.613039,
		0.824357, 0.030937, -0.565224,
		-0.405818, 0.728427, -0.552001,
		28.623358, 30.343721, 28.217590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.420055, 30.276815, 28.354183>,  <28.907431, 29.833822, 28.603991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.420055, 30.276815, 28.354183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.071789, 30.473475, 28.360140>,  <28.862829, 30.591469, 28.363714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.071789, 30.473475, 28.360140>,  <29.420055, 30.276815, 28.354183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.071789, 30.473475, 28.360140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392081, 0.675428, 0.624556,
		0.297003, 0.549619, -0.780838,
		-0.870667, 0.491647, 0.014891,
		28.810589, 30.620968, 28.364607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.602516, 31.016481, 28.094410>,  <29.420055, 30.276815, 28.354183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.602516, 31.016481, 28.094410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.273571, 30.990896, 28.320551>,  <29.076204, 30.975544, 28.456236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.273571, 30.990896, 28.320551>,  <29.602516, 31.016481, 28.094410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.273571, 30.990896, 28.320551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311260, 0.781205, 0.541143,
		-0.476272, 0.620989, -0.622525,
		-0.822364, -0.063964, 0.565355,
		29.026861, 30.971706, 28.490158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.583139, 31.770868, 28.389452>,  <29.602516, 31.016481, 28.094410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.583139, 31.770868, 28.389452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.309187, 31.564503, 28.595274>,  <29.144815, 31.440683, 28.718767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.309187, 31.564503, 28.595274>,  <29.583139, 31.770868, 28.389452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.309187, 31.564503, 28.595274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138830, 0.600847, 0.787216,
		-0.715305, 0.610587, -0.339886,
		-0.684884, -0.515913, 0.514556,
		29.103722, 31.409729, 28.749641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.182560, 32.230122, 28.716330>,  <29.583139, 31.770868, 28.389452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.182560, 32.230122, 28.716330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.143618, 31.896694, 28.933836>,  <29.120253, 31.696636, 29.064339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.143618, 31.896694, 28.933836>,  <29.182560, 32.230122, 28.716330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.143618, 31.896694, 28.933836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186629, 0.521378, 0.832667,
		-0.977595, 0.182548, 0.104810,
		-0.097356, -0.833571, 0.543765,
		29.114410, 31.646624, 29.096966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.696337, 32.432884, 29.255314>,  <29.182560, 32.230122, 28.716330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.696337, 32.432884, 29.255314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.879627, 32.105232, 29.393335>,  <28.989601, 31.908642, 29.476149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.879627, 32.105232, 29.393335>,  <28.696337, 32.432884, 29.255314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.879627, 32.105232, 29.393335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222273, 0.481475, 0.847807,
		-0.860595, -0.311791, 0.402693,
		0.458225, -0.819127, 0.345052,
		29.017096, 31.859493, 29.496851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.450682, 32.273758, 30.010454>,  <28.696337, 32.432884, 29.255314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.450682, 32.273758, 30.010454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.812799, 32.124958, 29.928419>,  <29.030069, 32.035679, 29.879198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.812799, 32.124958, 29.928419>,  <28.450682, 32.273758, 30.010454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.812799, 32.124958, 29.928419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364903, 0.433861, 0.823778,
		-0.217465, -0.820598, 0.528515,
		0.905292, -0.372000, -0.205089,
		29.084387, 32.013359, 29.866892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.632736, 32.075230, 30.626396>,  <28.450682, 32.273758, 30.010454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.632736, 32.075230, 30.626396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.992180, 32.067196, 30.451078>,  <29.207846, 32.062374, 30.345888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.992180, 32.067196, 30.451078>,  <28.632736, 32.075230, 30.626396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.992180, 32.067196, 30.451078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438180, 0.092089, 0.894158,
		0.022404, -0.995548, 0.091552,
		0.898608, -0.020084, -0.438293,
		29.261763, 32.061169, 30.319592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.014679, 31.616854, 30.956457>,  <28.632736, 32.075230, 30.626396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.014679, 31.616854, 30.956457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.307030, 31.846674, 30.809101>,  <29.482441, 31.984566, 30.720688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.307030, 31.846674, 30.809101>,  <29.014679, 31.616854, 30.956457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.307030, 31.846674, 30.809101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496365, -0.076995, 0.864693,
		0.468445, -0.814840, -0.341461,
		0.730877, 0.574550, -0.368390,
		29.526293, 32.019039, 30.698584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.698334, 31.221087, 31.018183>,  <29.014679, 31.616854, 30.956457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.698334, 31.221087, 31.018183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.766373, 31.614532, 30.994278>,  <29.807196, 31.850599, 30.979935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.766373, 31.614532, 30.994278>,  <29.698334, 31.221087, 31.018183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.766373, 31.614532, 30.994278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519311, -0.037932, 0.853743,
		0.837486, -0.176255, -0.517254,
		0.170097, 0.983613, -0.059763,
		29.817402, 31.909616, 30.976349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.254759, 31.292730, 31.459908>,  <29.698334, 31.221087, 31.018183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.254759, 31.292730, 31.459908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.178467, 31.679033, 31.389553>,  <30.132692, 31.910814, 31.347340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.178467, 31.679033, 31.389553>,  <30.254759, 31.292730, 31.459908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.178467, 31.679033, 31.389553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363318, 0.235900, 0.901305,
		0.911933, 0.108001, -0.395870,
		-0.190728, 0.965757, -0.175887,
		30.121248, 31.968760, 31.336786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.866470, 31.606050, 31.573000>,  <30.254759, 31.292730, 31.459908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.866470, 31.606050, 31.573000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.585142, 31.884703, 31.629635>,  <30.416346, 32.051895, 31.663616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.585142, 31.884703, 31.629635>,  <30.866470, 31.606050, 31.573000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.585142, 31.884703, 31.629635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408693, 0.233285, 0.882354,
		0.581644, 0.678443, -0.448782,
		-0.703321, 0.696630, 0.141586,
		30.374146, 32.093693, 31.672112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.208559, 32.144325, 31.855135>,  <30.866470, 31.606050, 31.573000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.208559, 32.144325, 31.855135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.831568, 32.230682, 31.957216>,  <30.605373, 32.282497, 32.018463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.831568, 32.230682, 31.957216>,  <31.208559, 32.144325, 31.855135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.831568, 32.230682, 31.957216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314048, 0.310347, 0.897250,
		0.114510, 0.925783, -0.360296,
		-0.942476, 0.215895, 0.255202,
		30.548824, 32.295452, 32.033775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.263729, 32.724186, 32.238197>,  <31.208559, 32.144325, 31.855135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.263729, 32.724186, 32.238197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.904533, 32.587696, 32.349319>,  <30.689016, 32.505802, 32.415993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.904533, 32.587696, 32.349319>,  <31.263729, 32.724186, 32.238197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.904533, 32.587696, 32.349319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208400, 0.226230, 0.951519,
		-0.387534, 0.912350, -0.132040,
		-0.897990, -0.341229, 0.277805,
		30.635136, 32.485329, 32.432663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.025799, 33.177113, 32.803661>,  <31.263729, 32.724186, 32.238197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.025799, 33.177113, 32.803661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.818399, 32.840351, 32.863468>,  <30.693960, 32.638294, 32.899353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.818399, 32.840351, 32.863468>,  <31.025799, 33.177113, 32.803661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.818399, 32.840351, 32.863468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184828, 0.060379, 0.980914,
		-0.834865, 0.536236, 0.124301,
		-0.518497, -0.841905, 0.149520,
		30.662849, 32.587780, 32.908325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.598230, 33.282494, 33.340096>,  <31.025799, 33.177113, 32.803661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.598230, 33.282494, 33.340096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.594919, 32.882652, 33.350887>,  <30.592934, 32.642746, 33.357361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.594919, 32.882652, 33.350887>,  <30.598230, 33.282494, 33.340096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.594919, 32.882652, 33.350887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128754, 0.027820, 0.991286,
		-0.991642, 0.004730, -0.128933,
		-0.008276, -0.999602, 0.026978,
		30.592436, 32.582771, 33.358982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.104975, 33.123585, 33.913509>,  <30.598230, 33.282494, 33.340096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.104975, 33.123585, 33.913509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.290068, 32.778168, 33.833344>,  <30.401123, 32.570915, 33.785244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.290068, 32.778168, 33.833344>,  <30.104975, 33.123585, 33.913509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.290068, 32.778168, 33.833344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093533, -0.177253, 0.979710,
		-0.881550, -0.472089, -0.001251,
		0.462733, -0.863547, -0.200414,
		30.428888, 32.519104, 33.773220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.837151, 32.626049, 34.327030>,  <30.104975, 33.123585, 33.913509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.837151, 32.626049, 34.327030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.205875, 32.502701, 34.233074>,  <30.427111, 32.428692, 34.176701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.205875, 32.502701, 34.233074>,  <29.837151, 32.626049, 34.327030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.205875, 32.502701, 34.233074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196824, -0.149698, 0.968943,
		-0.333956, -0.939414, -0.077298,
		0.921810, -0.308370, -0.234892,
		30.482418, 32.410191, 34.162605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.998127, 32.031456, 34.746185>,  <29.837151, 32.626049, 34.327030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.998127, 32.031456, 34.746185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.357477, 32.151814, 34.618195>,  <30.573088, 32.224026, 34.541401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.357477, 32.151814, 34.618195>,  <29.998127, 32.031456, 34.746185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.357477, 32.151814, 34.618195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375093, -0.146530, 0.915333,
		0.228528, -0.942334, -0.244501,
		0.898377, 0.300890, -0.319976,
		30.626989, 32.242081, 34.522202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.483536, 31.446636, 35.047607>,  <29.998127, 32.031456, 34.746185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.483536, 31.446636, 35.047607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.688477, 31.778421, 34.958626>,  <30.811441, 31.977493, 34.905239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.688477, 31.778421, 34.958626>,  <30.483536, 31.446636, 35.047607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.688477, 31.778421, 34.958626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343659, 0.039357, 0.938269,
		0.787016, -0.557171, -0.264889,
		0.512352, 0.829464, -0.222452,
		30.842182, 32.027260, 34.891891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.061003, 31.383165, 35.437897>,  <30.483536, 31.446636, 35.047607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.061003, 31.383165, 35.437897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.102390, 31.771231, 35.350189>,  <31.127224, 32.004070, 35.297565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.102390, 31.771231, 35.350189>,  <31.061003, 31.383165, 35.437897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.102390, 31.771231, 35.350189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401357, 0.160984, 0.901663,
		0.910058, -0.181301, -0.372724,
		0.103470, 0.970162, -0.219271,
		31.133430, 32.062279, 35.284409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.640844, 31.497440, 35.803883>,  <31.061003, 31.383165, 35.437897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.640844, 31.497440, 35.803883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.503416, 31.865953, 35.731003>,  <31.420959, 32.087063, 35.687275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.503416, 31.865953, 35.731003>,  <31.640844, 31.497440, 35.803883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.503416, 31.865953, 35.731003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593087, 0.363279, 0.718524,
		0.728153, 0.138803, -0.671213,
		-0.343570, 0.921283, -0.182201,
		31.400345, 32.142338, 35.676342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.214142, 31.937025, 35.829620>,  <31.640844, 31.497440, 35.803883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.214142, 31.937025, 35.829620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.906992, 32.188305, 35.879795>,  <31.722702, 32.339073, 35.909901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.906992, 32.188305, 35.879795>,  <32.214142, 31.937025, 35.829620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.906992, 32.188305, 35.879795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461480, 0.406652, 0.788461,
		0.444304, 0.663324, -0.602159,
		-0.767874, 0.628201, 0.125433,
		31.676630, 32.376766, 35.917423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.580170, 32.570946, 35.889503>,  <32.214142, 31.937025, 35.829620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.580170, 32.570946, 35.889503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.218639, 32.607624, 36.056686>,  <32.001720, 32.629631, 36.156998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.218639, 32.607624, 36.056686>,  <32.580170, 32.570946, 35.889503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.218639, 32.607624, 36.056686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406029, 0.492040, 0.770088,
		-0.135040, 0.865730, -0.481950,
		-0.903827, 0.091693, 0.417957,
		31.947491, 32.635132, 36.182072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.547554, 33.229904, 35.959824>,  <32.580170, 32.570946, 35.889503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.547554, 33.229904, 35.959824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.332424, 33.025085, 36.227718>,  <32.203346, 32.902195, 36.388454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.332424, 33.025085, 36.227718>,  <32.547554, 33.229904, 35.959824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.332424, 33.025085, 36.227718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417831, 0.528090, 0.739282,
		-0.732229, 0.677444, -0.070073,
		-0.537827, -0.512046, 0.669740,
		32.171078, 32.871471, 36.428638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.408428, 33.810368, 36.518478>,  <32.547554, 33.229904, 35.959824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.408428, 33.810368, 36.518478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.327728, 33.463188, 36.700012>,  <32.279308, 33.254883, 36.808933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.327728, 33.463188, 36.700012>,  <32.408428, 33.810368, 36.518478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.327728, 33.463188, 36.700012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405194, 0.347886, 0.845454,
		-0.891692, 0.354463, 0.281500,
		-0.201752, -0.867947, 0.453833,
		32.267204, 33.202805, 36.836163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.054562, 34.012108, 37.143890>,  <32.408428, 33.810368, 36.518478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.054562, 34.012108, 37.143890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.201569, 33.646145, 37.210678>,  <32.289772, 33.426567, 37.250751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.201569, 33.646145, 37.210678>,  <32.054562, 34.012108, 37.143890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.201569, 33.646145, 37.210678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322061, 0.293630, 0.900032,
		-0.872473, -0.277000, 0.402569,
		0.367516, -0.914906, 0.166973,
		32.311825, 33.371674, 37.260769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.985662, 33.824299, 37.835732>,  <32.054562, 34.012108, 37.143890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.985662, 33.824299, 37.835732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.250488, 33.539490, 37.742184>,  <32.409382, 33.368603, 37.686054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.250488, 33.539490, 37.742184>,  <31.985662, 33.824299, 37.835732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.250488, 33.539490, 37.742184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464356, 0.144795, 0.873732,
		-0.588256, -0.687063, 0.426496,
		0.662063, -0.712025, -0.233865,
		32.449108, 33.325882, 37.672024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.032730, 33.378868, 38.393002>,  <31.985662, 33.824299, 37.835732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.032730, 33.378868, 38.393002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.371765, 33.341228, 38.184105>,  <32.575188, 33.318645, 38.058765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.371765, 33.341228, 38.184105>,  <32.032730, 33.378868, 38.393002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.371765, 33.341228, 38.184105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530370, 0.118245, 0.839479,
		-0.017243, -0.988516, 0.150132,
		0.847591, -0.094101, -0.522241,
		32.626041, 33.313000, 38.027431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.470387, 33.043240, 38.813316>,  <32.032730, 33.378868, 38.393002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.470387, 33.043240, 38.813316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.729179, 33.220852, 38.565365>,  <32.884457, 33.327419, 38.416595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.729179, 33.220852, 38.565365>,  <32.470387, 33.043240, 38.813316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.729179, 33.220852, 38.565365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533957, 0.316519, 0.784032,
		0.544336, -0.838245, -0.032310,
		0.646984, 0.444029, -0.619879,
		32.923275, 33.354061, 38.379402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.103271, 32.857445, 39.074329>,  <32.470387, 33.043240, 38.813316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.103271, 32.857445, 39.074329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.177048, 33.173561, 38.840607>,  <33.221313, 33.363232, 38.700371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.177048, 33.173561, 38.840607>,  <33.103271, 32.857445, 39.074329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.177048, 33.173561, 38.840607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659445, 0.341316, 0.669802,
		0.728774, -0.508862, -0.458201,
		0.184445, 0.790293, -0.584309,
		33.232380, 33.410648, 38.665314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.887241, 32.982384, 38.978798>,  <33.103271, 32.857445, 39.074329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.887241, 32.982384, 38.978798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.710197, 33.338326, 38.934505>,  <33.603973, 33.551891, 38.907932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.710197, 33.338326, 38.934505>,  <33.887241, 32.982384, 38.978798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.710197, 33.338326, 38.934505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679929, 0.413541, 0.605541,
		0.584634, 0.192729, -0.788073,
		-0.442606, 0.889854, -0.110728,
		33.577415, 33.605282, 38.901287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.413052, 33.388496, 39.062176>,  <33.887241, 32.982384, 38.978798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.413052, 33.388496, 39.062176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.116440, 33.653336, 39.105553>,  <33.938473, 33.812241, 39.131577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.116440, 33.653336, 39.105553>,  <34.413052, 33.388496, 39.062176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.116440, 33.653336, 39.105553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557834, 0.518636, 0.647950,
		0.372764, 0.540967, -0.753924,
		-0.741531, 0.662097, 0.108441,
		33.893982, 33.851963, 39.138084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.746716, 34.127064, 39.067829>,  <34.413052, 33.388496, 39.062176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.746716, 34.127064, 39.067829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.384552, 34.159016, 39.234615>,  <34.167255, 34.178188, 39.334686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.384552, 34.159016, 39.234615>,  <34.746716, 34.127064, 39.067829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.384552, 34.159016, 39.234615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370354, 0.628758, 0.683741,
		-0.207549, 0.773487, -0.598867,
		-0.905407, 0.079883, 0.416962,
		34.112930, 34.182980, 39.359703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.822960, 34.673218, 38.529263>,  <34.746716, 34.127064, 39.067829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.822960, 34.673218, 38.529263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.077717, 34.901340, 38.321758>,  <35.230572, 35.038216, 38.197254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.077717, 34.901340, 38.321758>,  <34.822960, 34.673218, 38.529263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.077717, 34.901340, 38.321758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532870, -0.160636, -0.830810,
		-0.557152, 0.805569, 0.201594,
		0.636892, 0.570311, -0.518762,
		35.268784, 35.072433, 38.166130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.350071, 35.058567, 38.039036>,  <34.822960, 34.673218, 38.529263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.350071, 35.058567, 38.039036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.724075, 35.108070, 37.906101>,  <34.948479, 35.137772, 37.826340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.724075, 35.108070, 37.906101>,  <34.350071, 35.058567, 38.039036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.724075, 35.108070, 37.906101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328768, -0.048799, -0.943149,
		-0.132942, 0.991111, -0.004939,
		0.935007, 0.123761, -0.332333,
		35.004578, 35.145199, 37.806400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.203091, 35.475071, 37.553543>,  <34.350071, 35.058567, 38.039036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.203091, 35.475071, 37.553543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.560444, 35.324429, 37.455536>,  <34.774857, 35.234043, 37.396732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.560444, 35.324429, 37.455536>,  <34.203091, 35.475071, 37.553543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.560444, 35.324429, 37.455536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340663, -0.212221, -0.915921,
		0.292947, 0.901735, -0.317892,
		0.893381, -0.376611, -0.245019,
		34.828457, 35.211445, 37.382030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.391624, 35.843708, 36.927505>,  <34.203091, 35.475071, 37.553543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.391624, 35.843708, 36.927505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.626862, 35.520248, 36.933662>,  <34.768002, 35.326172, 36.937359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.626862, 35.520248, 36.933662>,  <34.391624, 35.843708, 36.927505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.626862, 35.520248, 36.933662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184846, -0.152910, -0.970799,
		0.787390, 0.568070, -0.239401,
		0.588089, -0.808650, 0.015394,
		34.803288, 35.277653, 36.938282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.700363, 35.880138, 36.323872>,  <34.391624, 35.843708, 36.927505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.700363, 35.880138, 36.323872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.711884, 35.495865, 36.434326>,  <34.718796, 35.265301, 36.500599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.711884, 35.495865, 36.434326>,  <34.700363, 35.880138, 36.323872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.711884, 35.495865, 36.434326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366101, -0.267196, -0.891390,
		0.930129, -0.075425, -0.359403,
		0.028798, -0.960686, 0.276140,
		34.720524, 35.207661, 36.517170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.978477, 35.603031, 35.794811>,  <34.700363, 35.880138, 36.323872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.978477, 35.603031, 35.794811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.806988, 35.294540, 35.983021>,  <34.704094, 35.109444, 36.095947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.806988, 35.294540, 35.983021>,  <34.978477, 35.603031, 35.794811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.806988, 35.294540, 35.983021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396061, -0.307658, -0.865149,
		0.811991, -0.557270, -0.173553,
		-0.428727, -0.771230, 0.470528,
		34.678371, 35.063171, 36.124180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.159111, 35.031853, 35.337749>,  <34.978477, 35.603031, 35.794811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.159111, 35.031853, 35.337749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.839699, 34.944473, 35.562115>,  <34.648052, 34.892044, 35.696735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.839699, 34.944473, 35.562115>,  <35.159111, 35.031853, 35.337749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.839699, 34.944473, 35.562115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487605, -0.311654, -0.815545,
		0.352970, -0.924743, 0.142346,
		-0.798532, -0.218454, 0.560913,
		34.600140, 34.878937, 35.730389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.905338, 34.384281, 35.100029>,  <35.159111, 35.031853, 35.337749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.905338, 34.384281, 35.100029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.596916, 34.547966, 35.295177>,  <34.411861, 34.646175, 35.412266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.596916, 34.547966, 35.295177>,  <34.905338, 34.384281, 35.100029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.596916, 34.547966, 35.295177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595083, -0.190413, -0.780781,
		-0.226611, -0.892348, 0.390336,
		-0.771054, 0.409216, 0.487871,
		34.365601, 34.670731, 35.441540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.407288, 33.864204, 35.134808>,  <34.905338, 34.384281, 35.100029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.407288, 33.864204, 35.134808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.210674, 34.208420, 35.188274>,  <34.092705, 34.414948, 35.220356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.210674, 34.208420, 35.188274>,  <34.407288, 33.864204, 35.134808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.210674, 34.208420, 35.188274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571451, -0.202895, -0.795159,
		-0.657143, -0.467235, 0.591485,
		-0.491535, 0.860538, 0.133671,
		34.063213, 34.466579, 35.228374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.572937, 33.687046, 34.954746>,  <34.407288, 33.864204, 35.134808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.572937, 33.687046, 34.954746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.594978, 34.085823, 34.976894>,  <33.608204, 34.325089, 34.990181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.594978, 34.085823, 34.976894>,  <33.572937, 33.687046, 34.954746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.594978, 34.085823, 34.976894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637348, 0.077804, -0.766638,
		-0.768603, 0.006955, 0.639688,
		0.055103, 0.996944, 0.055368,
		33.611507, 34.384907, 34.993504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.886566, 33.901711, 34.867481>,  <33.572937, 33.687046, 34.954746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.886566, 33.901711, 34.867481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.142296, 34.191307, 34.763859>,  <33.295734, 34.365063, 34.701683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.142296, 34.191307, 34.763859>,  <32.886566, 33.901711, 34.867481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.142296, 34.191307, 34.763859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511943, 0.149380, -0.845931,
		-0.573745, 0.673445, 0.466142,
		0.639320, 0.723987, -0.259059,
		33.334091, 34.408504, 34.686142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.404781, 34.418758, 34.552509>,  <32.886566, 33.901711, 34.867481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.404781, 34.418758, 34.552509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.770988, 34.502480, 34.415092>,  <32.990711, 34.552711, 34.332642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.770988, 34.502480, 34.415092>,  <32.404781, 34.418758, 34.552509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.770988, 34.502480, 34.415092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355012, 0.018745, -0.934674,
		-0.189190, 0.977671, 0.091466,
		0.915518, 0.209302, -0.343539,
		33.045643, 34.565269, 34.312031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.225971, 34.902447, 33.998207>,  <32.404781, 34.418758, 34.552509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.225971, 34.902447, 33.998207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.585064, 34.750446, 33.909046>,  <32.800518, 34.659248, 33.855549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.585064, 34.750446, 33.909046>,  <32.225971, 34.902447, 33.998207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.585064, 34.750446, 33.909046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316068, -0.203066, -0.926750,
		0.306899, 0.902422, -0.302403,
		0.897727, -0.379999, -0.222906,
		32.854382, 34.636448, 33.842175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.404362, 35.407234, 33.532753>,  <32.225971, 34.902447, 33.998207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.404362, 35.407234, 33.532753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.615940, 35.072151, 33.478409>,  <32.742886, 34.871101, 33.445805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.615940, 35.072151, 33.478409>,  <32.404362, 35.407234, 33.532753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.615940, 35.072151, 33.478409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198328, 0.033636, -0.979558,
		0.825156, 0.545078, -0.148350,
		0.528946, -0.837710, -0.135859,
		32.774624, 34.820839, 33.437653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.980717, 35.552284, 33.112015>,  <32.404362, 35.407234, 33.532753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.980717, 35.552284, 33.112015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.909382, 35.158916, 33.098816>,  <32.866581, 34.922897, 33.090897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.909382, 35.158916, 33.098816>,  <32.980717, 35.552284, 33.112015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.909382, 35.158916, 33.098816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310523, 0.088073, -0.946477,
		0.933687, -0.158545, -0.321080,
		-0.178337, -0.983416, -0.033001,
		32.855881, 34.863892, 33.088917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.040600, 35.406475, 32.425270>,  <32.980717, 35.552284, 33.112015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.040600, 35.406475, 32.425270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.865528, 35.067966, 32.546764>,  <32.760483, 34.864861, 32.619663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.865528, 35.067966, 32.546764>,  <33.040600, 35.406475, 32.425270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.865528, 35.067966, 32.546764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359003, -0.145234, -0.921967,
		0.824349, -0.512571, -0.240249,
		-0.437682, -0.846273, 0.303738,
		32.734222, 34.814083, 32.637886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.286049, 34.857693, 32.005417>,  <33.040600, 35.406475, 32.425270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.286049, 34.857693, 32.005417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.964336, 34.692364, 32.176205>,  <32.771309, 34.593166, 32.278675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.964336, 34.692364, 32.176205>,  <33.286049, 34.857693, 32.005417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.964336, 34.692364, 32.176205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342954, -0.263926, -0.901513,
		0.485304, -0.871497, 0.070519,
		-0.804278, -0.413323, 0.426968,
		32.723053, 34.568367, 32.304295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.193756, 34.259701, 31.668211>,  <33.286049, 34.857693, 32.005417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.193756, 34.259701, 31.668211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.825043, 34.314091, 31.813442>,  <32.603813, 34.346725, 31.900581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.825043, 34.314091, 31.813442>,  <33.193756, 34.259701, 31.668211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.825043, 34.314091, 31.813442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378769, -0.515749, -0.768464,
		0.082763, -0.845880, 0.526913,
		-0.921783, 0.135978, 0.363079,
		32.548508, 34.354885, 31.922365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.886841, 33.605442, 31.585617>,  <33.193756, 34.259701, 31.668211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.886841, 33.605442, 31.585617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.606438, 33.889458, 31.612253>,  <32.438198, 34.059868, 31.628235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.606438, 33.889458, 31.612253>,  <32.886841, 33.605442, 31.585617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.606438, 33.889458, 31.612253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397472, -0.311468, -0.863136,
		-0.592122, -0.631529, 0.500562,
		-0.701004, 0.710041, 0.066588,
		32.396137, 34.102470, 31.632229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.307472, 33.311012, 31.377731>,  <32.886841, 33.605442, 31.585617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.307472, 33.311012, 31.377731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.277241, 33.706242, 31.324055>,  <32.259102, 33.943378, 31.291849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.277241, 33.706242, 31.324055>,  <32.307472, 33.311012, 31.377731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.277241, 33.706242, 31.324055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514590, -0.153923, -0.843508,
		-0.854099, 0.005301, 0.520083,
		-0.075581, 0.988069, -0.134193,
		32.254566, 34.002663, 31.283796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.648109, 33.483948, 31.499161>,  <32.307472, 33.311012, 31.377731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.648109, 33.483948, 31.499161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.785982, 33.777763, 31.265356>,  <31.868706, 33.954052, 31.125074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.785982, 33.777763, 31.265356>,  <31.648109, 33.483948, 31.499161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.785982, 33.777763, 31.265356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558347, -0.340124, -0.756679,
		-0.754614, 0.587174, 0.292890,
		0.344684, 0.734535, -0.584510,
		31.889387, 33.998123, 31.090004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.114969, 33.585575, 30.938292>,  <31.648109, 33.483948, 31.499161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.114969, 33.585575, 30.938292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.409992, 33.792828, 30.765064>,  <31.587006, 33.917179, 30.661127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.409992, 33.792828, 30.765064>,  <31.114969, 33.585575, 30.938292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.409992, 33.792828, 30.765064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296535, -0.327664, -0.897053,
		-0.606691, 0.790049, -0.088027,
		0.737559, 0.518130, -0.433068,
		31.631260, 33.948265, 30.635143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.734171, 34.057438, 30.399351>,  <31.114969, 33.585575, 30.938292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.734171, 34.057438, 30.399351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.115780, 33.970974, 30.316288>,  <31.344746, 33.919098, 30.266449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.115780, 33.970974, 30.316288>,  <30.734171, 34.057438, 30.399351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.115780, 33.970974, 30.316288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270670, -0.323613, -0.906649,
		0.128776, 0.921168, -0.367240,
		0.954020, -0.216156, -0.207659,
		31.401985, 33.906128, 30.253990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.889956, 34.297451, 29.641182>,  <30.734171, 34.057438, 30.399351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.889956, 34.297451, 29.641182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.158844, 34.008373, 29.705473>,  <31.320177, 33.834927, 29.744047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.158844, 34.008373, 29.705473>,  <30.889956, 34.297451, 29.641182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.158844, 34.008373, 29.705473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061165, -0.162142, -0.984870,
		0.737819, 0.671882, -0.064791,
		0.672222, -0.722693, 0.160727,
		31.360510, 33.791565, 29.753691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.269844, 34.271332, 28.992323>,  <30.889956, 34.297451, 29.641182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.269844, 34.271332, 28.992323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.374743, 33.941666, 29.193111>,  <31.437681, 33.743866, 29.313585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.374743, 33.941666, 29.193111>,  <31.269844, 34.271332, 28.992323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.374743, 33.941666, 29.193111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011429, -0.517490, -0.855613,
		0.964933, 0.230119, -0.126292,
		0.262248, -0.824166, 0.501973,
		31.453417, 33.694416, 29.343704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.767612, 33.962978, 28.517889>,  <31.269844, 34.271332, 28.992323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.767612, 33.962978, 28.517889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.675541, 33.672363, 28.776859>,  <31.620298, 33.497993, 28.932241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.675541, 33.672363, 28.776859>,  <31.767612, 33.962978, 28.517889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.675541, 33.672363, 28.776859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126684, -0.681999, -0.720297,
		0.964867, -0.083778, 0.249023,
		-0.230179, -0.726538, 0.647425,
		31.606487, 33.454403, 28.971087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.196915, 33.359760, 28.305153>,  <31.767612, 33.962978, 28.517889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.196915, 33.359760, 28.305153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.934362, 33.159004, 28.530458>,  <31.776831, 33.038551, 28.665642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.934362, 33.159004, 28.530458>,  <32.196915, 33.359760, 28.305153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.934362, 33.159004, 28.530458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046534, -0.772121, -0.633769,
		0.752991, -0.389784, 0.530163,
		-0.656383, -0.501893, 0.563262,
		31.737448, 33.008438, 28.699436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.397331, 32.708294, 28.401491>,  <32.196915, 33.359760, 28.305153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.397331, 32.708294, 28.401491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.003269, 32.670258, 28.458660>,  <31.766832, 32.647434, 28.492962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.003269, 32.670258, 28.458660>,  <32.397331, 32.708294, 28.401491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.003269, 32.670258, 28.458660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000055, -0.832390, -0.554191,
		0.171668, -0.545972, 0.820028,
		-0.985155, -0.095092, 0.142925,
		31.707724, 32.641731, 28.501537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.223442, 32.005848, 28.607958>,  <32.397331, 32.708294, 28.401491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.223442, 32.005848, 28.607958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.868389, 32.131779, 28.473503>,  <31.655357, 32.207336, 28.392830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.868389, 32.131779, 28.473503>,  <32.223442, 32.005848, 28.607958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.868389, 32.131779, 28.473503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142723, -0.881976, -0.449164,
		-0.437873, -0.350719, 0.827806,
		-0.887636, 0.314824, -0.336138,
		31.602098, 32.226227, 28.372662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.725714, 31.463453, 28.796173>,  <32.223442, 32.005848, 28.607958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.725714, 31.463453, 28.796173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.591009, 31.676842, 28.485819>,  <31.510187, 31.804874, 28.299606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.591009, 31.676842, 28.485819>,  <31.725714, 31.463453, 28.796173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.591009, 31.676842, 28.485819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061982, -0.834790, -0.547068,
		-0.939548, -0.136140, 0.314190,
		-0.336761, 0.533470, -0.775887,
		31.489981, 31.836884, 28.253052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.069639, 31.129963, 28.484144>,  <31.725714, 31.463453, 28.796173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.069639, 31.129963, 28.484144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.181147, 31.369730, 28.184015>,  <31.248051, 31.513590, 28.003937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.181147, 31.369730, 28.184015>,  <31.069639, 31.129963, 28.484144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.181147, 31.369730, 28.184015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227500, -0.717840, -0.657989,
		-0.933023, 0.354125, -0.063744,
		0.278769, 0.599418, -0.750324,
		31.264778, 31.549555, 27.958918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.554987, 31.169838, 28.008865>,  <31.069639, 31.129963, 28.484144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.554987, 31.169838, 28.008865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.891020, 31.248325, 27.806574>,  <31.092640, 31.295418, 27.685200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.891020, 31.248325, 27.806574>,  <30.554987, 31.169838, 28.008865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.891020, 31.248325, 27.806574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275466, -0.648825, -0.709327,
		-0.467313, 0.735203, -0.491015,
		0.840082, 0.196220, -0.505727,
		31.143044, 31.307192, 27.654856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.378670, 30.932901, 27.355316>,  <30.554987, 31.169838, 28.008865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.378670, 30.932901, 27.355316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.768864, 30.995749, 27.293682>,  <31.002979, 31.033457, 27.256702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.768864, 30.995749, 27.293682>,  <30.378670, 30.932901, 27.355316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.768864, 30.995749, 27.293682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032641, -0.589137, -0.807374,
		-0.217630, 0.792611, -0.569566,
		0.975485, 0.157118, -0.154086,
		31.061510, 31.042883, 27.247456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.448677, 31.070812, 26.617916>,  <30.378670, 30.932901, 27.355316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.448677, 31.070812, 26.617916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.813301, 30.952560, 26.732222>,  <31.032076, 30.881609, 26.800804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.813301, 30.952560, 26.732222>,  <30.448677, 31.070812, 26.617916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.813301, 30.952560, 26.732222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037719, -0.631953, -0.774089,
		0.409432, 0.716407, -0.564912,
		0.911560, -0.295629, 0.285764,
		31.086769, 30.863873, 26.817951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.884979, 31.138060, 26.032692>,  <30.448677, 31.070812, 26.617916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.884979, 31.138060, 26.032692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.044001, 30.868383, 26.281666>,  <31.139414, 30.706577, 26.431049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.044001, 30.868383, 26.281666>,  <30.884979, 31.138060, 26.032692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.044001, 30.868383, 26.281666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074720, -0.652303, -0.754266,
		0.914533, 0.346368, -0.208949,
		0.397551, -0.674188, 0.622433,
		31.163265, 30.666126, 26.468395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.666908, 30.927794, 25.798132>,  <30.884979, 31.138060, 26.032692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.666908, 30.927794, 25.798132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.525051, 30.620274, 26.010988>,  <31.439938, 30.435760, 26.138702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.525051, 30.620274, 26.010988>,  <31.666908, 30.927794, 25.798132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.525051, 30.620274, 26.010988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046642, -0.553877, -0.831291,
		0.933838, -0.319630, 0.160570,
		-0.354641, -0.768802, 0.532140,
		31.418659, 30.389633, 26.170630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.149590, 30.364172, 25.588200>,  <31.666908, 30.927794, 25.798132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.149590, 30.364172, 25.588200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.822041, 30.208630, 25.757069>,  <31.625509, 30.115305, 25.858391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.822041, 30.208630, 25.757069>,  <32.149590, 30.364172, 25.588200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.822041, 30.208630, 25.757069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006359, -0.741637, -0.670772,
		0.573934, -0.546595, 0.609782,
		-0.818877, -0.388856, 0.422175,
		31.576378, 30.091972, 25.883720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.322739, 29.617310, 25.762381>,  <32.149590, 30.364172, 25.588200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.322739, 29.617310, 25.762381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.927338, 29.665010, 25.725195>,  <31.690098, 29.693630, 25.702885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.927338, 29.665010, 25.725195>,  <32.322739, 29.617310, 25.762381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.927338, 29.665010, 25.725195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019217, -0.708911, -0.705036,
		-0.149978, -0.695143, 0.703052,
		-0.988502, 0.119250, -0.092963,
		31.630787, 29.700787, 25.697306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.460999, 29.038174, 25.357107>,  <32.322739, 29.617310, 25.762381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.460999, 29.038174, 25.357107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.802120, 29.062218, 25.149603>,  <33.006794, 29.076645, 25.025101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.802120, 29.062218, 25.149603>,  <32.460999, 29.038174, 25.357107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.802120, 29.062218, 25.149603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503583, 0.168431, 0.847369,
		0.138305, -0.983879, 0.113372,
		0.852805, 0.060103, -0.518760,
		33.057961, 29.080252, 24.993975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.963013, 28.786047, 25.808311>,  <32.460999, 29.038174, 25.357107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.963013, 28.786047, 25.808311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.187637, 28.959053, 25.526155>,  <33.322411, 29.062857, 25.356861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.187637, 28.959053, 25.526155>,  <32.963013, 28.786047, 25.808311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.187637, 28.959053, 25.526155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571635, 0.413566, 0.708659,
		0.598233, -0.801182, -0.015000,
		0.561561, 0.432517, -0.705392,
		33.356106, 29.088808, 25.314537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.711514, 28.743412, 26.029009>,  <32.963013, 28.786047, 25.808311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.711514, 28.743412, 26.029009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.675049, 29.051680, 25.776735>,  <33.653172, 29.236639, 25.625372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.675049, 29.051680, 25.776735>,  <33.711514, 28.743412, 26.029009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.675049, 29.051680, 25.776735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546809, 0.568041, 0.615085,
		0.832280, -0.288792, -0.473191,
		-0.091161, 0.770668, -0.630683,
		33.647701, 29.282881, 25.587530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.368389, 29.084284, 25.972509>,  <33.711514, 28.743412, 26.029009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.368389, 29.084284, 25.972509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.117115, 29.368435, 25.845545>,  <33.966351, 29.538925, 25.769365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.117115, 29.368435, 25.845545>,  <34.368389, 29.084284, 25.972509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.117115, 29.368435, 25.845545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495831, 0.679879, 0.540293,
		0.599613, 0.182021, -0.779315,
		-0.628185, 0.710375, -0.317413,
		33.928661, 29.581547, 25.750320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.779110, 29.720634, 25.758680>,  <34.368389, 29.084284, 25.972509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.779110, 29.720634, 25.758680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.404984, 29.855490, 25.801615>,  <34.180508, 29.936403, 25.827375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.404984, 29.855490, 25.801615>,  <34.779110, 29.720634, 25.758680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.404984, 29.855490, 25.801615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346063, 0.808570, 0.475873,
		0.073647, 0.482236, -0.872940,
		-0.935316, 0.337139, 0.107335,
		34.124390, 29.956631, 25.833815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.789753, 30.493431, 25.522549>,  <34.779110, 29.720634, 25.758680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.789753, 30.493431, 25.522549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.469231, 30.430132, 25.753330>,  <34.276917, 30.392153, 25.891798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.469231, 30.430132, 25.753330>,  <34.789753, 30.493431, 25.522549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.469231, 30.430132, 25.753330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255500, 0.781492, 0.569202,
		-0.540959, 0.603513, -0.585778,
		-0.801301, -0.158248, 0.576952,
		34.228840, 30.382658, 25.926416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.486439, 31.165430, 25.571405>,  <34.789753, 30.493431, 25.522549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.486439, 31.165430, 25.571405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.375813, 30.924391, 25.870842>,  <34.309437, 30.779768, 26.050503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.375813, 30.924391, 25.870842>,  <34.486439, 31.165430, 25.571405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.375813, 30.924391, 25.870842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100373, 0.756600, 0.646128,
		-0.955739, 0.253835, -0.148765,
		-0.276565, -0.602598, 0.748590,
		34.292843, 30.743612, 26.095419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.013279, 31.554520, 26.027319>,  <34.486439, 31.165430, 25.571405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.013279, 31.554520, 26.027319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.118290, 31.254347, 26.269949>,  <34.181297, 31.074244, 26.415527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.118290, 31.254347, 26.269949>,  <34.013279, 31.554520, 26.027319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.118290, 31.254347, 26.269949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014371, 0.625515, 0.780080,
		-0.964818, -0.213508, 0.153429,
		0.262526, -0.750430, 0.606577,
		34.197048, 31.029219, 26.451921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.549194, 31.568802, 26.634766>,  <34.013279, 31.554520, 26.027319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.549194, 31.568802, 26.634766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.852524, 31.330732, 26.741133>,  <34.034523, 31.187891, 26.804953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.852524, 31.330732, 26.741133>,  <33.549194, 31.568802, 26.634766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.852524, 31.330732, 26.741133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119303, 0.527751, 0.840979,
		-0.640869, -0.606009, 0.471212,
		0.758323, -0.595174, 0.265920,
		34.080021, 31.152180, 26.820910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.516781, 31.578506, 27.265875>,  <33.549194, 31.568802, 26.634766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.516781, 31.578506, 27.265875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.872700, 31.401911, 27.219662>,  <34.086250, 31.295954, 27.191935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.872700, 31.401911, 27.219662>,  <33.516781, 31.578506, 27.265875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.872700, 31.401911, 27.219662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319615, 0.422175, 0.848301,
		-0.325742, -0.791741, 0.516757,
		0.889797, -0.441491, -0.115532,
		34.139637, 31.269464, 27.185001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.691849, 31.312428, 27.953812>,  <33.516781, 31.578506, 27.265875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.691849, 31.312428, 27.953812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.025780, 31.377274, 27.743372>,  <34.226139, 31.416182, 27.617107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.025780, 31.377274, 27.743372>,  <33.691849, 31.312428, 27.953812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.025780, 31.377274, 27.743372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377129, 0.527773, 0.761071,
		0.401043, -0.833771, 0.379461,
		0.834828, 0.162116, -0.526099,
		34.276230, 31.425909, 27.585543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.269577, 31.045464, 28.303761>,  <33.691849, 31.312428, 27.953812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.269577, 31.045464, 28.303761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.376797, 31.351595, 28.069693>,  <34.441128, 31.535273, 27.929251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.376797, 31.351595, 28.069693>,  <34.269577, 31.045464, 28.303761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.376797, 31.351595, 28.069693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235220, 0.537027, 0.810107,
		0.934249, -0.354792, -0.036071,
		0.268048, 0.765326, -0.585172,
		34.457211, 31.581192, 27.894140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.862625, 31.235226, 28.644266>,  <34.269577, 31.045464, 28.303761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.862625, 31.235226, 28.644266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.775696, 31.537928, 28.397657>,  <34.723537, 31.719547, 28.249693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.775696, 31.537928, 28.397657>,  <34.862625, 31.235226, 28.644266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.775696, 31.537928, 28.397657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180980, 0.651903, 0.736389,
		0.959175, 0.048456, -0.278630,
		-0.217322, 0.756752, -0.616520,
		34.710499, 31.764954, 28.212702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.368774, 31.647846, 28.692316>,  <34.862625, 31.235226, 28.644266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.368774, 31.647846, 28.692316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.083809, 31.894331, 28.558006>,  <34.912830, 32.042221, 28.477421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.083809, 31.894331, 28.558006>,  <35.368774, 31.647846, 28.692316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.083809, 31.894331, 28.558006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249981, 0.669933, 0.699071,
		0.655724, 0.414091, -0.631312,
		-0.712415, 0.616213, -0.335776,
		34.870083, 32.079193, 28.457273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.608524, 32.285397, 28.641722>,  <35.368774, 31.647846, 28.692316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.608524, 32.285397, 28.641722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.219257, 32.375156, 28.621353>,  <34.985699, 32.429012, 28.609133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.219257, 32.375156, 28.621353>,  <35.608524, 32.285397, 28.641722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.219257, 32.375156, 28.621353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120086, 0.684057, 0.719476,
		0.196282, 0.694055, -0.692648,
		-0.973166, 0.224397, -0.050922,
		34.927307, 32.442474, 28.606077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.542320, 33.089230, 28.588934>,  <35.608524, 32.285397, 28.641722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.542320, 33.089230, 28.588934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.201977, 32.928219, 28.723995>,  <34.997772, 32.831612, 28.805033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.201977, 32.928219, 28.723995>,  <35.542320, 33.089230, 28.588934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.201977, 32.928219, 28.723995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012773, 0.626634, 0.779209,
		-0.525237, 0.667311, -0.528037,
		-0.850860, -0.402525, 0.337655,
		34.946720, 32.807461, 28.825293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.194801, 33.643959, 28.867779>,  <35.542320, 33.089230, 28.588934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.194801, 33.643959, 28.867779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.966293, 33.355522, 29.024586>,  <34.829189, 33.182461, 29.118670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.966293, 33.355522, 29.024586>,  <35.194801, 33.643959, 28.867779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.966293, 33.355522, 29.024586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090954, 0.530301, 0.842916,
		-0.815708, 0.445876, -0.368531,
		-0.571269, -0.721093, 0.392017,
		34.794914, 33.139194, 29.142191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.668354, 33.970188, 29.216320>,  <35.194801, 33.643959, 28.867779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.668354, 33.970188, 29.216320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.659031, 33.610909, 29.391907>,  <34.653435, 33.395340, 29.497259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.659031, 33.610909, 29.391907>,  <34.668354, 33.970188, 29.216320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.659031, 33.610909, 29.391907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062044, 0.439542, 0.896077,
		-0.997801, -0.006348, -0.065974,
		-0.023310, -0.898200, 0.438969,
		34.652039, 33.341450, 29.523598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.183670, 34.038723, 29.730402>,  <34.668354, 33.970188, 29.216320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.183670, 34.038723, 29.730402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.388542, 33.712357, 29.837702>,  <34.511463, 33.516537, 29.902081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.388542, 33.712357, 29.837702>,  <34.183670, 34.038723, 29.730402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.388542, 33.712357, 29.837702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024757, 0.298168, 0.954192,
		-0.858523, -0.495356, 0.132515,
		0.512176, -0.815916, 0.268248,
		34.542194, 33.467583, 29.918177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.812122, 33.822109, 30.351997>,  <34.183670, 34.038723, 29.730402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.812122, 33.822109, 30.351997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.177513, 33.661232, 30.376661>,  <34.396748, 33.564705, 30.391460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.177513, 33.661232, 30.376661>,  <33.812122, 33.822109, 30.351997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.177513, 33.661232, 30.376661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020482, 0.196801, 0.980229,
		-0.406374, -0.894154, 0.188011,
		0.913478, -0.402190, 0.061661,
		34.451557, 33.540573, 30.395159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.738079, 33.536972, 30.993671>,  <33.812122, 33.822109, 30.351997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.738079, 33.536972, 30.993671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.130550, 33.546120, 30.916965>,  <34.366032, 33.551609, 30.870941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.130550, 33.546120, 30.916965>,  <33.738079, 33.536972, 30.993671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.130550, 33.546120, 30.916965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180491, 0.244648, 0.952665,
		0.068696, -0.969342, 0.235916,
		0.981174, 0.022864, -0.191764,
		34.424904, 33.552979, 30.859436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.064236, 33.244640, 31.607792>,  <33.738079, 33.536972, 30.993671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.064236, 33.244640, 31.607792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.352890, 33.457054, 31.430145>,  <34.526085, 33.584503, 31.323557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.352890, 33.457054, 31.430145>,  <34.064236, 33.244640, 31.607792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.352890, 33.457054, 31.430145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335957, 0.292286, 0.895378,
		0.605287, -0.795343, 0.032519,
		0.721638, 0.531036, -0.444118,
		34.569382, 33.616364, 31.296909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.595364, 33.196724, 32.046574>,  <34.064236, 33.244640, 31.607792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.595364, 33.196724, 32.046574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.723167, 33.508503, 31.831028>,  <34.799850, 33.695572, 31.701702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.723167, 33.508503, 31.831028>,  <34.595364, 33.196724, 32.046574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.723167, 33.508503, 31.831028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328302, 0.442389, 0.834572,
		0.888893, -0.443564, -0.114547,
		0.319512, 0.779451, -0.538859,
		34.819019, 33.742336, 31.669371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.289684, 33.281658, 32.139652>,  <34.595364, 33.196724, 32.046574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.289684, 33.281658, 32.139652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.158325, 33.637547, 32.012814>,  <35.079510, 33.851078, 31.936710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.158325, 33.637547, 32.012814>,  <35.289684, 33.281658, 32.139652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.158325, 33.637547, 32.012814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595085, 0.455601, 0.662043,
		0.733504, 0.028715, -0.679079,
		-0.328400, 0.889721, -0.317097,
		35.059807, 33.904461, 31.917685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.818298, 33.685898, 32.155827>,  <35.289684, 33.281658, 32.139652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.818298, 33.685898, 32.155827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.517742, 33.949741, 32.162998>,  <35.337406, 34.108047, 32.167301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.517742, 33.949741, 32.162998>,  <35.818298, 33.685898, 32.155827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.517742, 33.949741, 32.162998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456718, 0.500277, 0.735617,
		0.476253, 0.560924, -0.677161,
		-0.751393, 0.659611, 0.017925,
		35.292324, 34.147625, 32.168377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.123848, 34.340862, 32.067196>,  <35.818298, 33.685898, 32.155827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.123848, 34.340862, 32.067196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.766766, 34.414158, 32.231876>,  <35.552517, 34.458138, 32.330685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.766766, 34.414158, 32.231876>,  <36.123848, 34.340862, 32.067196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.766766, 34.414158, 32.231876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448415, 0.451814, 0.771225,
		-0.044689, 0.873090, -0.485506,
		-0.892708, 0.183242, 0.411698,
		35.498955, 34.469131, 32.355385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.084858, 35.042068, 32.140995>,  <36.123848, 34.340862, 32.067196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.084858, 35.042068, 32.140995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.819771, 34.917526, 32.413422>,  <35.660717, 34.842800, 32.576878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.819771, 34.917526, 32.413422>,  <36.084858, 35.042068, 32.140995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.819771, 34.917526, 32.413422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385034, 0.638378, 0.666500,
		-0.642300, 0.703939, -0.303184,
		-0.662721, -0.311357, 0.681071,
		35.620953, 34.824120, 32.617744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.907131, 35.646702, 32.593529>,  <36.084858, 35.042068, 32.140995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.907131, 35.646702, 32.593529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.798573, 35.316727, 32.791851>,  <35.733437, 35.118740, 32.910843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.798573, 35.316727, 32.791851>,  <35.907131, 35.646702, 32.593529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.798573, 35.316727, 32.791851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452510, 0.345289, 0.822199,
		-0.849458, 0.447497, 0.279583,
		-0.271395, -0.824937, 0.495805,
		35.717155, 35.069244, 32.940594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.719540, 35.884117, 33.327038>,  <35.907131, 35.646702, 32.593529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.719540, 35.884117, 33.327038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.799686, 35.492390, 33.315811>,  <35.847775, 35.257355, 33.309074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.799686, 35.492390, 33.315811>,  <35.719540, 35.884117, 33.327038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.799686, 35.492390, 33.315811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676546, 0.117586, 0.726952,
		-0.708617, -0.164647, 0.686114,
		0.200368, -0.979319, -0.028068,
		35.859798, 35.198593, 33.307392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.741745, 35.711452, 34.029221>,  <35.719540, 35.884117, 33.327038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.741745, 35.711452, 34.029221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.945045, 35.410583, 33.861450>,  <36.067028, 35.230061, 33.760788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.945045, 35.410583, 33.861450>,  <35.741745, 35.711452, 34.029221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.945045, 35.410583, 33.861450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556788, -0.084550, 0.826340,
		-0.657012, -0.653520, 0.375828,
		0.508254, -0.752172, -0.419423,
		36.097523, 35.184933, 33.735622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.650772, 35.150005, 34.567669>,  <35.741745, 35.711452, 34.029221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.650772, 35.150005, 34.567669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.969315, 35.072350, 34.338543>,  <36.160442, 35.025757, 34.201065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.969315, 35.072350, 34.338543>,  <35.650772, 35.150005, 34.567669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.969315, 35.072350, 34.338543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551590, -0.155389, 0.819514,
		-0.248109, -0.968589, -0.016660,
		0.796360, -0.194140, -0.572817,
		36.208221, 35.014107, 34.166698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.978050, 34.649792, 34.954746>,  <35.650772, 35.150005, 34.567669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.978050, 34.649792, 34.954746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.271210, 34.722126, 34.692398>,  <36.447105, 34.765526, 34.534988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.271210, 34.722126, 34.692398>,  <35.978050, 34.649792, 34.954746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.271210, 34.722126, 34.692398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680312, -0.203657, 0.704059,
		-0.006249, -0.962196, -0.272287,
		0.732896, 0.180840, -0.655867,
		36.491077, 34.776379, 34.495640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.371101, 34.035172, 35.069454>,  <35.978050, 34.649792, 34.954746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.371101, 34.035172, 35.069454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.622917, 34.310204, 34.924732>,  <36.774006, 34.475224, 34.837898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.622917, 34.310204, 34.924732>,  <36.371101, 34.035172, 35.069454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.622917, 34.310204, 34.924732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646555, -0.205375, 0.734703,
		0.430865, -0.696454, -0.573853,
		0.629542, 0.687585, -0.361807,
		36.811779, 34.516479, 34.816189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.089302, 33.776310, 35.215332>,  <36.371101, 34.035172, 35.069454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.089302, 33.776310, 35.215332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.151787, 34.168201, 35.165176>,  <37.189278, 34.403336, 35.135082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.151787, 34.168201, 35.165176>,  <37.089302, 33.776310, 35.215332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.151787, 34.168201, 35.165176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807961, -0.053723, 0.586782,
		0.568153, -0.192973, -0.799977,
		0.156210, 0.979732, -0.125392,
		37.198650, 34.462120, 35.127560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.835323, 33.804752, 35.242672>,  <37.089302, 33.776310, 35.215332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.835323, 33.804752, 35.242672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.678963, 34.160091, 35.339031>,  <37.585144, 34.373295, 35.396847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.678963, 34.160091, 35.339031>,  <37.835323, 33.804752, 35.242672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.678963, 34.160091, 35.339031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623434, 0.062996, 0.779334,
		0.677144, 0.454830, -0.578451,
		-0.390904, 0.888348, 0.240899,
		37.561691, 34.426598, 35.411301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.339531, 34.320847, 35.316471>,  <37.835323, 33.804752, 35.242672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.339531, 34.320847, 35.316471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.034966, 34.439831, 35.546867>,  <37.852226, 34.511223, 35.685104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.034966, 34.439831, 35.546867>,  <38.339531, 34.320847, 35.316471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.034966, 34.439831, 35.546867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647973, 0.322420, 0.690055,
		0.019552, 0.898645, -0.438241,
		-0.761412, 0.297460, 0.575994,
		37.806541, 34.529068, 35.719666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.679996, 34.795380, 35.728123>,  <38.339531, 34.320847, 35.316471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.679996, 34.795380, 35.728123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.326794, 34.752842, 35.910984>,  <38.114872, 34.727318, 36.020702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.326794, 34.752842, 35.910984>,  <38.679996, 34.795380, 35.728123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.326794, 34.752842, 35.910984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417553, 0.266841, 0.868588,
		-0.214360, 0.957855, -0.191216,
		-0.883006, -0.106348, 0.457156,
		38.061893, 34.720936, 36.048130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.592102, 35.394356, 36.138523>,  <38.679996, 34.795380, 35.728123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.592102, 35.394356, 36.138523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.332630, 35.139126, 36.304451>,  <38.176949, 34.985989, 36.404007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.332630, 35.139126, 36.304451>,  <38.592102, 35.394356, 36.138523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.332630, 35.139126, 36.304451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382784, 0.197563, 0.902466,
		-0.657792, 0.744200, 0.116088,
		-0.648680, -0.638072, 0.414823,
		38.138027, 34.947704, 36.428898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.503719, 35.663670, 36.814266>,  <38.592102, 35.394356, 36.138523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.503719, 35.663670, 36.814266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.355213, 35.292862, 36.835403>,  <38.266109, 35.070377, 36.848087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.355213, 35.292862, 36.835403>,  <38.503719, 35.663670, 36.814266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.355213, 35.292862, 36.835403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414846, -0.114690, 0.902635,
		-0.830699, 0.357044, 0.427151,
		-0.371270, -0.927020, 0.052845,
		38.243832, 35.014755, 36.851257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.083870, 35.613010, 37.447166>,  <38.503719, 35.663670, 36.814266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.083870, 35.613010, 37.447166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.220936, 35.248604, 37.355408>,  <38.303177, 35.029961, 37.300350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.220936, 35.248604, 37.355408>,  <38.083870, 35.613010, 37.447166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.220936, 35.248604, 37.355408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394614, -0.082017, 0.915179,
		-0.852560, -0.404128, 0.331395,
		0.342669, -0.911018, -0.229399,
		38.323738, 34.975300, 37.286587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.912163, 35.129654, 38.013725>,  <38.083870, 35.613010, 37.447166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.912163, 35.129654, 38.013725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.213032, 34.967655, 37.805798>,  <38.393555, 34.870457, 37.681042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.213032, 34.967655, 37.805798>,  <37.912163, 35.129654, 38.013725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.213032, 34.967655, 37.805798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439470, -0.279496, 0.853667,
		-0.491020, -0.870551, -0.032245,
		0.752174, -0.404997, -0.519819,
		38.438683, 34.846157, 37.649853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.084194, 34.429497, 38.189564>,  <37.912163, 35.129654, 38.013725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.084194, 34.429497, 38.189564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.430660, 34.547405, 38.028133>,  <38.638538, 34.618153, 37.931274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.430660, 34.547405, 38.028133>,  <38.084194, 34.429497, 38.189564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.430660, 34.547405, 38.028133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470121, -0.206617, 0.858077,
		0.169555, -0.932962, -0.317544,
		0.866163, 0.294775, -0.403572,
		38.690510, 34.635838, 37.907063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.534378, 33.965508, 38.543629>,  <38.084194, 34.429497, 38.189564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.534378, 33.965508, 38.543629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.761517, 34.248264, 38.374935>,  <38.897800, 34.417919, 38.273720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.761517, 34.248264, 38.374935>,  <38.534378, 33.965508, 38.543629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.761517, 34.248264, 38.374935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629133, -0.042326, 0.776144,
		0.530798, -0.706056, -0.468762,
		0.567842, 0.706890, -0.421737,
		38.931870, 34.460331, 38.248413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.152412, 33.664505, 38.625980>,  <38.534378, 33.965508, 38.543629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.152412, 33.664505, 38.625980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.209095, 34.056282, 38.568562>,  <39.243103, 34.291348, 38.534111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.209095, 34.056282, 38.568562>,  <39.152412, 33.664505, 38.625980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.209095, 34.056282, 38.568562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654489, 0.016096, 0.755901,
		0.742673, -0.201070, -0.638754,
		0.141708, 0.979445, -0.143552,
		39.251606, 34.350117, 38.525497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.882301, 33.839695, 38.491936>,  <39.152412, 33.664505, 38.625980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.882301, 33.839695, 38.491936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.720131, 34.164333, 38.660191>,  <39.622829, 34.359116, 38.761143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.720131, 34.164333, 38.660191>,  <39.882301, 33.839695, 38.491936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.720131, 34.164333, 38.660191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751702, 0.034154, 0.658618,
		0.520168, 0.583214, -0.623929,
		-0.405424, 0.811601, 0.420637,
		39.598503, 34.407814, 38.786381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.359966, 34.419849, 38.484344>,  <39.882301, 33.839695, 38.491936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.359966, 34.419849, 38.484344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.103188, 34.459446, 38.788479>,  <39.949120, 34.483204, 38.970959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.103188, 34.459446, 38.788479>,  <40.359966, 34.419849, 38.484344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.103188, 34.459446, 38.788479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759654, 0.216741, 0.613147,
		-0.104097, 0.971197, -0.214336,
		-0.641942, 0.098994, 0.760336,
		39.910606, 34.489143, 39.016579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.868725, 34.530632, 39.173256>,  <40.359966, 34.419849, 38.484344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.868725, 34.530632, 39.173256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.506084, 34.580101, 39.334641>,  <40.288502, 34.609783, 39.431469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.506084, 34.580101, 39.334641>,  <40.868725, 34.530632, 39.173256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.506084, 34.580101, 39.334641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421989, 0.264913, 0.867033,
		0.000349, 0.956308, -0.292360,
		-0.906601, 0.123675, 0.403459,
		40.234104, 34.617203, 39.455677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.778706, 35.183956, 39.564671>,  <40.868725, 34.530632, 39.173256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.778706, 35.183956, 39.564671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.532902, 34.909801, 39.720940>,  <40.385422, 34.745308, 39.814701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.532902, 34.909801, 39.720940>,  <40.778706, 35.183956, 39.564671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.532902, 34.909801, 39.720940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381695, 0.175085, 0.907554,
		-0.690429, 0.706814, 0.154019,
		-0.614506, -0.685389, 0.390671,
		40.348549, 34.704185, 39.838142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.318077, 35.405731, 40.131031>,  <40.778706, 35.183956, 39.564671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.318077, 35.405731, 40.131031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.386803, 35.013584, 40.169712>,  <40.428036, 34.778294, 40.192921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.386803, 35.013584, 40.169712>,  <40.318077, 35.405731, 40.131031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.386803, 35.013584, 40.169712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367337, 0.154837, 0.917109,
		-0.914081, -0.122049, 0.386730,
		0.171812, -0.980372, 0.096700,
		40.438347, 34.719471, 40.198723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.048988, 35.232536, 40.784008>,  <40.318077, 35.405731, 40.131031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.048988, 35.232536, 40.784008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.312229, 34.945629, 40.692417>,  <40.470173, 34.773487, 40.637463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.312229, 34.945629, 40.692417>,  <40.048988, 35.232536, 40.784008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.312229, 34.945629, 40.692417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420614, 0.097985, 0.901933,
		-0.624487, -0.689878, 0.366175,
		0.658103, -0.717264, -0.228982,
		40.509659, 34.730450, 40.623722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.046833, 34.746048, 41.357277>,  <40.048988, 35.232536, 40.784008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.046833, 34.746048, 41.357277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.403488, 34.739426, 41.176300>,  <40.617481, 34.735451, 41.067715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.403488, 34.739426, 41.176300>,  <40.046833, 34.746048, 41.357277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.403488, 34.739426, 41.176300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450581, -0.065163, 0.890354,
		-0.044220, -0.997737, -0.050643,
		0.891640, -0.016553, -0.452443,
		40.670979, 34.734459, 41.040565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.323071, 34.081955, 41.513729>,  <40.046833, 34.746048, 41.357277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.323071, 34.081955, 41.513729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.605358, 34.355064, 41.438061>,  <40.774731, 34.518929, 41.392662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.605358, 34.355064, 41.438061>,  <40.323071, 34.081955, 41.513729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.605358, 34.355064, 41.438061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446240, -0.220973, 0.867203,
		0.550302, -0.696414, -0.460625,
		0.705718, 0.682773, -0.189166,
		40.817074, 34.559895, 41.381310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.967407, 33.755852, 41.817528>,  <40.323071, 34.081955, 41.513729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.967407, 33.755852, 41.817528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.014797, 34.149647, 41.765766>,  <41.043232, 34.385925, 41.734711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.014797, 34.149647, 41.765766>,  <40.967407, 33.755852, 41.817528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.014797, 34.149647, 41.765766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341153, 0.082027, 0.936422,
		0.932512, -0.155088, -0.326144,
		0.118475, 0.984489, -0.129400,
		41.050339, 34.444992, 41.726948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.576405, 33.954002, 42.187347>,  <40.967407, 33.755852, 41.817528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.576405, 33.954002, 42.187347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.508377, 34.340172, 42.108318>,  <41.467560, 34.571873, 42.060902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.508377, 34.340172, 42.108318>,  <41.576405, 33.954002, 42.187347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.508377, 34.340172, 42.108318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098718, 0.182790, 0.978183,
		0.980475, 0.185864, 0.064218,
		-0.170071, 0.965423, -0.197570,
		41.457355, 34.629799, 42.049046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.924110, 34.379158, 42.730988>,  <41.576405, 33.954002, 42.187347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.924110, 34.379158, 42.730988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.645615, 34.636173, 42.602989>,  <41.478516, 34.790382, 42.526188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.645615, 34.636173, 42.602989>,  <41.924110, 34.379158, 42.730988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.645615, 34.636173, 42.602989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062536, 0.389809, 0.918770,
		0.715081, 0.659695, -0.231218,
		-0.696239, 0.642535, -0.320000,
		41.436745, 34.828934, 42.506989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.070805, 34.979038, 43.167175>,  <41.924110, 34.379158, 42.730988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.070805, 34.979038, 43.167175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.705818, 35.071674, 43.032257>,  <41.486824, 35.127254, 42.951305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.705818, 35.071674, 43.032257>,  <42.070805, 34.979038, 43.167175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.705818, 35.071674, 43.032257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232396, 0.385129, 0.893122,
		0.336738, 0.893332, -0.297598,
		-0.912469, 0.231588, -0.337295,
		41.432079, 35.141151, 42.931068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.900612, 35.540722, 43.516796>,  <42.070805, 34.979038, 43.167175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.900612, 35.540722, 43.516796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.539623, 35.441032, 43.376263>,  <41.323032, 35.381218, 43.291943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.539623, 35.441032, 43.376263>,  <41.900612, 35.540722, 43.516796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.539623, 35.441032, 43.376263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428411, 0.434372, 0.792329,
		-0.044860, 0.865567, -0.498779,
		-0.902470, -0.249226, -0.351333,
		41.268883, 35.366264, 43.270863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.442024, 36.029350, 43.916611>,  <41.900612, 35.540722, 43.516796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.442024, 36.029350, 43.916611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.231964, 35.714046, 43.788326>,  <41.105927, 35.524864, 43.711353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.231964, 35.714046, 43.788326>,  <41.442024, 36.029350, 43.916611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.231964, 35.714046, 43.788326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535349, 0.013047, 0.844530,
		-0.661528, 0.615200, -0.428848,
		-0.525150, -0.788263, -0.320716,
		41.074421, 35.477566, 43.692112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.796516, 36.283207, 44.064926>,  <41.442024, 36.029350, 43.916611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.796516, 36.283207, 44.064926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.782223, 35.885838, 44.021404>,  <40.773647, 35.647415, 43.995293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.782223, 35.885838, 44.021404>,  <40.796516, 36.283207, 44.064926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.782223, 35.885838, 44.021404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291376, -0.093790, 0.952000,
		-0.955941, 0.065719, -0.286108,
		-0.035730, -0.993421, -0.108806,
		40.771503, 35.587811, 43.988762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.132385, 35.920933, 44.404861>,  <40.796516, 36.283207, 44.064926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.132385, 35.920933, 44.404861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.475292, 35.715286, 44.416042>,  <40.681038, 35.591900, 44.422752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.475292, 35.715286, 44.416042>,  <40.132385, 35.920933, 44.404861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.475292, 35.715286, 44.416042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055566, 0.146357, 0.987670,
		-0.511867, -0.845142, 0.154034,
		0.857265, -0.514115, 0.027954,
		40.732471, 35.561050, 44.424427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.258499, 35.900410, 45.068565>,  <40.132385, 35.920933, 44.404861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.258499, 35.900410, 45.068565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.604435, 35.721409, 44.977535>,  <40.811996, 35.614010, 44.922916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.604435, 35.721409, 44.977535>,  <40.258499, 35.900410, 45.068565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.604435, 35.721409, 44.977535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381823, 0.291952, 0.876912,
		-0.325979, -0.845284, 0.423359,
		0.864840, -0.447503, -0.227579,
		40.863888, 35.587158, 44.909260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.515324, 35.580647, 45.692394>,  <40.258499, 35.900410, 45.068565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.515324, 35.580647, 45.692394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.804794, 35.643002, 45.423473>,  <40.978477, 35.680416, 45.262119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.804794, 35.643002, 45.423473>,  <40.515324, 35.580647, 45.692394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.804794, 35.643002, 45.423473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678751, 0.015496, 0.734205,
		0.124875, -0.987653, -0.094598,
		0.723674, 0.155892, -0.672305,
		41.021896, 35.689770, 45.221783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.079052, 35.282295, 46.021107>,  <40.515324, 35.580647, 45.692394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.079052, 35.282295, 46.021107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.201038, 35.526955, 45.729111>,  <41.274231, 35.673752, 45.553913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.201038, 35.526955, 45.729111>,  <41.079052, 35.282295, 46.021107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.201038, 35.526955, 45.729111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887339, 0.095877, 0.451040,
		0.345867, -0.785299, -0.513499,
		0.304968, 0.611647, -0.729988,
		41.292530, 35.710449, 45.510113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.707958, 35.038631, 45.488197>,  <41.079052, 35.282295, 46.021107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.707958, 35.038631, 45.488197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.696663, 35.432346, 45.557926>,  <41.689884, 35.668575, 45.599762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.696663, 35.432346, 45.557926>,  <41.707958, 35.038631, 45.488197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.696663, 35.432346, 45.557926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900708, -0.050571, 0.431471,
		0.433506, 0.169197, -0.885124,
		-0.028242, 0.984284, 0.174320,
		41.688190, 35.727631, 45.610222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.105633, 34.801453, 45.097691>,  <41.707958, 35.038631, 45.488197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.105633, 34.801453, 45.097691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.760773, 34.795818, 44.895107>,  <40.553856, 34.792439, 44.773556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.760773, 34.795818, 44.895107>,  <41.105633, 34.801453, 45.097691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.760773, 34.795818, 44.895107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498930, 0.150274, -0.853514,
		0.088128, -0.988544, -0.122532,
		-0.862150, -0.014083, -0.506458,
		40.502129, 34.791595, 44.743172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.298389, 34.557941, 44.456772>,  <41.105633, 34.801453, 45.097691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.298389, 34.557941, 44.456772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.960751, 34.761108, 44.388042>,  <40.758167, 34.883011, 44.346806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.960751, 34.761108, 44.388042>,  <41.298389, 34.557941, 44.456772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.960751, 34.761108, 44.388042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338455, 0.256162, -0.905444,
		-0.415880, -0.822434, -0.388133,
		-0.844093, 0.507921, -0.171824,
		40.707523, 34.913486, 44.336494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.732548, 34.354958, 43.992188>,  <41.298389, 34.557941, 44.456772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.732548, 34.354958, 43.992188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.788918, 34.750751, 44.005215>,  <40.822739, 34.988228, 44.013031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.788918, 34.750751, 44.005215>,  <40.732548, 34.354958, 43.992188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.788918, 34.750751, 44.005215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206151, 0.002849, -0.978516,
		-0.968319, 0.144610, -0.203582,
		0.140923, 0.989485, 0.032570,
		40.831196, 35.047596, 44.014984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.387398, 34.425072, 43.456444>,  <40.732548, 34.354958, 43.992188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.387398, 34.425072, 43.456444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.612339, 34.754589, 43.485065>,  <40.747303, 34.952301, 43.502239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.612339, 34.754589, 43.485065>,  <40.387398, 34.425072, 43.456444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.612339, 34.754589, 43.485065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052666, 0.050675, -0.997326,
		-0.825220, 0.564614, -0.014889,
		0.562350, 0.823798, 0.071554,
		40.781044, 35.001728, 43.506531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.210075, 34.782719, 42.900345>,  <40.387398, 34.425072, 43.456444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.210075, 34.782719, 42.900345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.538925, 34.978405, 43.016808>,  <40.736237, 35.095818, 43.086685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.538925, 34.978405, 43.016808>,  <40.210075, 34.782719, 42.900345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.538925, 34.978405, 43.016808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310983, 0.042471, -0.949466,
		-0.476861, 0.871127, -0.117222,
		0.822127, 0.489218, 0.291159,
		40.785564, 35.125172, 43.104156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.216511, 35.384583, 42.502319>,  <40.210075, 34.782719, 42.900345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.216511, 35.384583, 42.502319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.598194, 35.304226, 42.590977>,  <40.827206, 35.256012, 42.644173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.598194, 35.304226, 42.590977>,  <40.216511, 35.384583, 42.502319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.598194, 35.304226, 42.590977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189740, -0.166365, -0.967637,
		0.231268, 0.965383, -0.120629,
		0.954208, -0.200896, 0.221646,
		40.884457, 35.243958, 42.657471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.542625, 35.632320, 41.962120>,  <40.216511, 35.384583, 42.502319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.542625, 35.632320, 41.962120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.818424, 35.396488, 42.130402>,  <40.983902, 35.254990, 42.231373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.818424, 35.396488, 42.130402>,  <40.542625, 35.632320, 41.962120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.818424, 35.396488, 42.130402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195190, -0.408109, -0.891823,
		0.697493, 0.697025, -0.166310,
		0.689496, -0.589578, 0.420706,
		41.025272, 35.219616, 42.256615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.191269, 35.823341, 41.666061>,  <40.542625, 35.632320, 41.962120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.191269, 35.823341, 41.666061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.237358, 35.447258, 41.794270>,  <41.265011, 35.221607, 41.871197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.237358, 35.447258, 41.794270>,  <41.191269, 35.823341, 41.666061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.237358, 35.447258, 41.794270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043439, -0.317595, -0.947231,
		0.992390, 0.123062, 0.004249,
		0.115219, -0.940207, 0.320524,
		41.271923, 35.165195, 41.890427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.690723, 35.615604, 41.368065>,  <41.191269, 35.823341, 41.666061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.690723, 35.615604, 41.368065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.480606, 35.287971, 41.460304>,  <41.354538, 35.091393, 41.515648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.480606, 35.287971, 41.460304>,  <41.690723, 35.615604, 41.368065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.480606, 35.287971, 41.460304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016070, -0.280500, -0.959719,
		0.850771, -0.500427, 0.160507,
		-0.525292, -0.819080, 0.230600,
		41.323017, 35.042248, 41.529484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.908352, 35.157997, 40.913143>,  <41.690723, 35.615604, 41.368065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.908352, 35.157997, 40.913143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.578609, 34.976234, 41.048176>,  <41.380764, 34.867176, 41.129196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.578609, 34.976234, 41.048176>,  <41.908352, 35.157997, 40.913143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.578609, 34.976234, 41.048176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117434, -0.446102, -0.887244,
		0.553762, -0.771045, 0.314383,
		-0.824353, -0.454403, 0.337581,
		41.331303, 34.839912, 41.149448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.851158, 34.488544, 40.518757>,  <41.908352, 35.157997, 40.913143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.851158, 34.488544, 40.518757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.479343, 34.529572, 40.660427>,  <41.256256, 34.554188, 40.745430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.479343, 34.529572, 40.660427>,  <41.851158, 34.488544, 40.518757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.479343, 34.529572, 40.660427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367337, -0.340917, -0.865355,
		0.031986, -0.934481, 0.354573,
		-0.929538, 0.102569, 0.354175,
		41.200481, 34.560341, 40.766678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.395882, 33.879562, 40.347027>,  <41.851158, 34.488544, 40.518757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.395882, 33.879562, 40.347027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.130077, 34.171165, 40.412724>,  <40.970596, 34.346127, 40.452141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.130077, 34.171165, 40.412724>,  <41.395882, 33.879562, 40.347027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.130077, 34.171165, 40.412724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558261, -0.338184, -0.757612,
		-0.496759, -0.595133, 0.631702,
		-0.664512, 0.729005, 0.164243,
		40.930725, 34.389866, 40.461998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.813107, 33.521179, 40.111515>,  <41.395882, 33.879562, 40.347027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.813107, 33.521179, 40.111515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.696800, 33.902744, 40.141178>,  <40.627018, 34.131683, 40.158978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.696800, 33.902744, 40.141178>,  <40.813107, 33.521179, 40.111515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.696800, 33.902744, 40.141178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586846, -0.116585, -0.801261,
		-0.755691, -0.276496, 0.593701,
		-0.290763, 0.953917, 0.074158,
		40.609570, 34.188919, 40.163425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.122299, 33.526924, 40.414387>,  <40.813107, 33.521179, 40.111515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.122299, 33.526924, 40.414387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.160065, 33.925137, 40.415405>,  <40.182724, 34.164062, 40.416016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.160065, 33.925137, 40.415405>,  <40.122299, 33.526924, 40.414387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.160065, 33.925137, 40.415405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532911, 0.052702, -0.844529,
		-0.840888, 0.078373, 0.535504,
		0.094410, 0.995530, 0.002551,
		40.188389, 34.223797, 40.416172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.400364, 33.895893, 40.257252>,  <40.122299, 33.526924, 40.414387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.400364, 33.895893, 40.257252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.684647, 34.159393, 40.158501>,  <39.855217, 34.317493, 40.099251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.684647, 34.159393, 40.158501>,  <39.400364, 33.895893, 40.257252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.684647, 34.159393, 40.158501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478041, 0.194759, -0.856473,
		-0.516119, 0.726718, 0.453325,
		0.710703, 0.658749, -0.246882,
		39.897858, 34.357018, 40.084435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.141937, 34.528912, 40.067543>,  <39.400364, 33.895893, 40.257252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.141937, 34.528912, 40.067543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.481770, 34.573303, 39.861282>,  <39.685669, 34.599937, 39.737526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.481770, 34.573303, 39.861282>,  <39.141937, 34.528912, 40.067543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.481770, 34.573303, 39.861282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521428, 0.324149, -0.789329,
		0.079549, 0.939474, 0.333258,
		0.849579, 0.110979, -0.515654,
		39.736645, 34.606598, 39.706585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.149090, 35.133354, 39.835270>,  <39.141937, 34.528912, 40.067543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.149090, 35.133354, 39.835270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.380890, 34.926926, 39.582970>,  <39.519970, 34.803070, 39.431587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.380890, 34.926926, 39.582970>,  <39.149090, 35.133354, 39.835270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.380890, 34.926926, 39.582970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633781, 0.201191, -0.746890,
		0.512349, 0.832583, -0.210485,
		0.579500, -0.516069, -0.630755,
		39.554741, 34.772106, 39.393742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.296906, 35.565804, 39.219322>,  <39.149090, 35.133354, 39.835270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.296906, 35.565804, 39.219322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.334999, 35.183109, 39.109352>,  <39.357857, 34.953491, 39.043369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.334999, 35.183109, 39.109352>,  <39.296906, 35.565804, 39.219322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.334999, 35.183109, 39.109352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691139, 0.135211, -0.709962,
		0.716420, 0.257623, -0.648362,
		0.095237, -0.956738, -0.274921,
		39.363571, 34.896088, 39.026875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.443844, 35.642345, 38.569050>,  <39.296906, 35.565804, 39.219322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.443844, 35.642345, 38.569050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.410027, 35.246906, 38.519207>,  <39.389736, 35.009644, 38.489300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.410027, 35.246906, 38.519207>,  <39.443844, 35.642345, 38.569050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.410027, 35.246906, 38.519207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392780, 0.147994, -0.907646,
		0.915738, -0.027787, -0.400813,
		-0.084538, -0.988598, -0.124609,
		39.384666, 34.950325, 38.481823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.671291, 35.464737, 37.981144>,  <39.443844, 35.642345, 38.569050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.671291, 35.464737, 37.981144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.456535, 35.133217, 38.044182>,  <39.327682, 34.934303, 38.082005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.456535, 35.133217, 38.044182>,  <39.671291, 35.464737, 37.981144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.456535, 35.133217, 38.044182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374856, 0.067009, -0.924658,
		0.755801, -0.555511, -0.346659,
		-0.536887, -0.828805, 0.157591,
		39.295467, 34.884575, 38.091457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.862469, 34.874283, 37.454803>,  <39.671291, 35.464737, 37.981144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.862469, 34.874283, 37.454803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.484039, 34.843258, 37.580612>,  <39.256981, 34.824642, 37.656097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.484039, 34.843258, 37.580612>,  <39.862469, 34.874283, 37.454803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.484039, 34.843258, 37.580612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315543, 0.001013, -0.948911,
		0.073288, -0.996987, -0.025435,
		-0.946077, -0.077570, 0.314518,
		39.200214, 34.819988, 37.674969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.560936, 34.541279, 36.948929>,  <39.862469, 34.874283, 37.454803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.560936, 34.541279, 36.948929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.227665, 34.643414, 37.145142>,  <39.027702, 34.704693, 37.262867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.227665, 34.643414, 37.145142>,  <39.560936, 34.541279, 36.948929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.227665, 34.643414, 37.145142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501647, 0.024341, -0.864730,
		-0.232735, -0.966546, 0.107807,
		-0.833177, 0.255334, 0.490530,
		38.977711, 34.720013, 37.292301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.572647, 35.236542, 36.829140>,  <39.560936, 34.541279, 36.948929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.572647, 35.236542, 36.829140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.501789, 35.489586, 36.527565>,  <39.459274, 35.641415, 36.346619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.501789, 35.489586, 36.527565>,  <39.572647, 35.236542, 36.829140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.501789, 35.489586, 36.527565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423355, 0.740537, 0.521896,
		0.888476, -0.226731, -0.399003,
		-0.177147, 0.632612, -0.753937,
		39.448647, 35.679371, 36.301384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.161922, 35.514812, 36.476135>,  <39.572647, 35.236542, 36.829140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.161922, 35.514812, 36.476135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.880928, 35.789360, 36.400864>,  <39.712330, 35.954090, 36.355701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.880928, 35.789360, 36.400864>,  <40.161922, 35.514812, 36.476135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.880928, 35.789360, 36.400864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572394, 0.702010, 0.423730,
		0.422939, 0.189951, -0.886025,
		-0.702487, 0.686367, -0.188181,
		39.670181, 35.995270, 36.344410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.302422, 36.046345, 35.923599>,  <40.161922, 35.514812, 36.476135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.302422, 36.046345, 35.923599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.054611, 36.184639, 36.205494>,  <39.905926, 36.267616, 36.374630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.054611, 36.184639, 36.205494>,  <40.302422, 36.046345, 35.923599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.054611, 36.184639, 36.205494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460138, 0.887313, -0.030803,
		-0.635968, 0.305191, -0.708803,
		-0.619530, 0.345737, 0.704733,
		39.868752, 36.288361, 36.416912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.152977, 36.774933, 35.804203>,  <40.302422, 36.046345, 35.923599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.152977, 36.774933, 35.804203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.049141, 36.745251, 36.189350>,  <39.986839, 36.727440, 36.420437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.049141, 36.745251, 36.189350>,  <40.152977, 36.774933, 35.804203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.049141, 36.745251, 36.189350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484303, 0.852599, 0.196279,
		-0.835503, 0.517270, -0.185385,
		-0.259588, -0.074209, 0.962864,
		39.971264, 36.722988, 36.478210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.868618, 36.906052, 35.969013>,  <40.152977, 36.774933, 35.804203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.868618, 36.906052, 35.969013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.147064, 36.943851, 35.684341>,  <41.314133, 36.966530, 35.513538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.147064, 36.943851, 35.684341>,  <40.868618, 36.906052, 35.969013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.147064, 36.943851, 35.684341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712886, -0.208249, 0.669646,
		-0.084927, -0.973500, -0.212333,
		0.696118, 0.094498, -0.711681,
		41.355900, 36.972202, 35.470837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.360138, 36.470631, 36.285778>,  <40.868618, 36.906052, 35.969013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.360138, 36.470631, 36.285778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.559319, 36.617962, 35.971737>,  <41.678829, 36.706360, 35.783314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.559319, 36.617962, 35.971737>,  <41.360138, 36.470631, 36.285778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.559319, 36.617962, 35.971737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866830, -0.237952, 0.438159,
		-0.025432, -0.898731, -0.437763,
		0.497954, 0.368323, -0.785098,
		41.708706, 36.728458, 35.736206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.949013, 36.033276, 36.026844>,  <41.360138, 36.470631, 36.285778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.949013, 36.033276, 36.026844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.038265, 36.413334, 35.939720>,  <42.091816, 36.641369, 35.887444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.038265, 36.413334, 35.939720>,  <41.949013, 36.033276, 36.026844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.038265, 36.413334, 35.939720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913627, -0.125942, 0.386555,
		0.339850, -0.285253, -0.896177,
		0.223133, 0.950142, -0.217813,
		42.105206, 36.698376, 35.874374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.588970, 35.985802, 35.904873>,  <41.949013, 36.033276, 36.026844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.588970, 35.985802, 35.904873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.554405, 36.381088, 35.955402>,  <42.533665, 36.618259, 35.985722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.554405, 36.381088, 35.955402>,  <42.588970, 35.985802, 35.904873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.554405, 36.381088, 35.955402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958325, 0.047794, 0.281653,
		0.272297, 0.145397, -0.951164,
		-0.086412, 0.988218, 0.126324,
		42.528481, 36.677555, 35.993301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.173145, 36.202827, 35.611702>,  <42.588970, 35.985802, 35.904873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.173145, 36.202827, 35.611702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.017918, 36.521751, 35.796612>,  <42.924782, 36.713104, 35.907558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.017918, 36.521751, 35.796612>,  <43.173145, 36.202827, 35.611702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.017918, 36.521751, 35.796612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902647, 0.227521, 0.365326,
		0.186101, 0.559045, -0.807983,
		-0.388067, 0.797310, 0.462278,
		42.901497, 36.760944, 35.935295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.655876, 36.697460, 36.050411>,  <43.173145, 36.202827, 35.611702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.655876, 36.697460, 36.050411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.328857, 36.906776, 36.146561>,  <43.132645, 37.032368, 36.204250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.328857, 36.906776, 36.146561>,  <43.655876, 36.697460, 36.050411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.328857, 36.906776, 36.146561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224882, -0.094156, 0.969826,
		0.530137, 0.846935, -0.040703,
		-0.817547, 0.523294, 0.240376,
		43.083591, 37.063763, 36.218674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.771744, 37.144463, 36.635075>,  <43.655876, 36.697460, 36.050411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.771744, 37.144463, 36.635075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.380177, 37.062771, 36.633991>,  <43.145237, 37.013756, 36.633343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.380177, 37.062771, 36.633991>,  <43.771744, 37.144463, 36.635075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.380177, 37.062771, 36.633991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015594, -0.087933, 0.996004,
		-0.203649, 0.974966, 0.089264,
		-0.978920, -0.204227, -0.002704,
		43.086502, 37.001503, 36.633179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.426289, 36.749268, 36.493488>,  <43.771744, 37.144463, 36.635075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.426289, 36.749268, 36.493488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.807102, 36.747200, 36.371109>,  <45.035591, 36.745960, 36.297684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.807102, 36.747200, 36.371109>,  <44.426289, 36.749268, 36.493488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.807102, 36.747200, 36.371109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146329, -0.870417, 0.470067,
		-0.268730, -0.492289, -0.827910,
		0.952036, -0.005174, -0.305943,
		45.092712, 36.745647, 36.279327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.508640, 36.134869, 36.152245>,  <44.426289, 36.749268, 36.493488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.508640, 36.134869, 36.152245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.856194, 36.275928, 36.291203>,  <45.064724, 36.360565, 36.374577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.856194, 36.275928, 36.291203>,  <44.508640, 36.134869, 36.152245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.856194, 36.275928, 36.291203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060534, -0.772203, 0.632485,
		0.491306, -0.528525, -0.692300,
		0.868881, 0.352652, 0.347394,
		45.116859, 36.381725, 36.395420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.168049, 36.163380, 35.796494>,  <44.508640, 36.134869, 36.152245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.168049, 36.163380, 35.796494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.112045, 36.559135, 35.780952>,  <45.078445, 36.796589, 35.771629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.112045, 36.559135, 35.780952>,  <45.168049, 36.163380, 35.796494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.112045, 36.559135, 35.780952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.923086, -0.144617, -0.356367,
		-0.358204, -0.014030, 0.933538,
		-0.140006, 0.989388, -0.038852,
		45.070042, 36.855953, 35.769299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.355186, 35.511162, 35.453232>,  <45.168049, 36.163380, 35.796494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.355186, 35.511162, 35.453232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.619240, 35.232193, 35.341640>,  <45.777672, 35.064812, 35.274685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.619240, 35.232193, 35.341640>,  <45.355186, 35.511162, 35.453232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.619240, 35.232193, 35.341640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737013, 0.529666, 0.419840,
		-0.145037, -0.482763, 0.863657,
		0.660134, -0.697419, -0.278981,
		45.817280, 35.022968, 35.257946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.710129, 35.414112, 36.124603>,  <45.355186, 35.511162, 35.453232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.710129, 35.414112, 36.124603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.951408, 35.307835, 35.823792>,  <46.096176, 35.244068, 35.643303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.951408, 35.307835, 35.823792>,  <45.710129, 35.414112, 36.124603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.951408, 35.307835, 35.823792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737725, 0.544247, 0.399446,
		0.303162, -0.795741, 0.524299,
		0.603203, -0.265691, -0.752033,
		46.132370, 35.228127, 35.598183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.380871, 35.091034, 36.346733>,  <45.710129, 35.414112, 36.124603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.380871, 35.091034, 36.346733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.440369, 35.292095, 36.006096>,  <46.476067, 35.412731, 35.801712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.440369, 35.292095, 36.006096>,  <46.380871, 35.091034, 36.346733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.440369, 35.292095, 36.006096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627161, 0.617871, 0.474241,
		0.764555, -0.604627, -0.223340,
		0.148744, 0.502654, -0.851595,
		46.484993, 35.442890, 35.750618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.016312, 35.353035, 36.313740>,  <46.380871, 35.091034, 36.346733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.016312, 35.353035, 36.313740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.829327, 35.629673, 36.093494>,  <46.717136, 35.795658, 35.961346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.829327, 35.629673, 36.093494>,  <47.016312, 35.353035, 36.313740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.829327, 35.629673, 36.093494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632595, 0.696775, 0.338124,
		0.617500, -0.190256, -0.763215,
		-0.467459, 0.691598, -0.550613,
		46.689091, 35.837151, 35.928310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.341545, 35.943558, 35.944901>,  <47.016312, 35.353035, 36.313740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.341545, 35.943558, 35.944901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.639000, 35.918182, 35.678673>,  <47.817474, 35.902958, 35.518936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.639000, 35.918182, 35.678673>,  <47.341545, 35.943558, 35.944901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.639000, 35.918182, 35.678673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146274, -0.986809, -0.069371,
		-0.652386, 0.148942, -0.743107,
		0.743637, -0.063440, -0.665567,
		47.862091, 35.899151, 35.479004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.084888, 35.441700, 35.412949>,  <47.341545, 35.943558, 35.944901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.084888, 35.441700, 35.412949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.477360, 35.497166, 35.359200>,  <47.712845, 35.530445, 35.326950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.477360, 35.497166, 35.359200>,  <47.084888, 35.441700, 35.412949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.477360, 35.497166, 35.359200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097174, -0.955956, -0.276958,
		-0.166855, 0.258689, -0.951441,
		0.981181, 0.138667, -0.134369,
		47.771713, 35.538765, 35.318890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.261478, 35.068710, 34.859642>,  <47.084888, 35.441700, 35.412949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.261478, 35.068710, 34.859642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.624699, 35.119713, 35.019234>,  <47.842632, 35.150314, 35.114990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.624699, 35.119713, 35.019234>,  <47.261478, 35.068710, 34.859642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.624699, 35.119713, 35.019234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273287, -0.902216, -0.333647,
		0.317422, 0.412005, -0.854105,
		0.908051, 0.127508, 0.398979,
		47.897114, 35.157967, 35.138927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.226990, 29.220510, 31.576838> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.873032, 29.140818, 31.745249>,  <34.660656, 29.093002, 31.846296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.873032, 29.140818, 31.745249>,  <35.226990, 29.220510, 31.576838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.873032, 29.140818, 31.745249> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286610, 0.479624, 0.829346,
		-0.367169, 0.854556, -0.367315,
		-0.884896, -0.199234, 0.421027,
		34.607563, 29.081047, 31.871557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.038136, 29.830711, 31.970388>,  <35.226990, 29.220510, 31.576838>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.038136, 29.830711, 31.970388> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.813690, 29.532450, 32.114136>,  <34.679024, 29.353493, 32.200386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.813690, 29.532450, 32.114136>,  <35.038136, 29.830711, 31.970388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.813690, 29.532450, 32.114136> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114420, 0.360117, 0.925864,
		-0.819791, 0.560636, -0.116749,
		-0.561116, -0.745656, 0.359369,
		34.645355, 29.308752, 32.221947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.667240, 30.175661, 32.560596>,  <35.038136, 29.830711, 31.970388>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.667240, 30.175661, 32.560596> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.647625, 29.777000, 32.586777>,  <34.635857, 29.537804, 32.602486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.647625, 29.777000, 32.586777>,  <34.667240, 30.175661, 32.560596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.647625, 29.777000, 32.586777> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099920, 0.060303, 0.993167,
		-0.993786, 0.055240, 0.096629,
		-0.049036, -0.996651, 0.065447,
		34.632915, 29.478004, 32.606411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.146839, 30.095768, 32.973953>,  <34.667240, 30.175661, 32.560596>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.146839, 30.095768, 32.973953> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.346043, 29.750805, 33.010265>,  <34.465565, 29.543827, 33.032055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.346043, 29.750805, 33.010265>,  <34.146839, 30.095768, 32.973953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.346043, 29.750805, 33.010265> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007264, 0.100537, 0.994907,
		-0.867141, -0.496132, 0.043804,
		0.498009, -0.862406, 0.090784,
		34.495445, 29.492083, 33.037502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.816010, 29.754168, 33.559937>,  <34.146839, 30.095768, 32.973953>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.816010, 29.754168, 33.559937> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.171463, 29.581881, 33.496937>,  <34.384735, 29.478508, 33.459137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.171463, 29.581881, 33.496937>,  <33.816010, 29.754168, 33.559937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.171463, 29.581881, 33.496937> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216237, 0.090650, 0.972123,
		-0.404433, -0.897922, 0.173692,
		0.888637, -0.430718, -0.157502,
		34.438053, 29.452665, 33.449688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.912518, 29.287729, 34.168915>,  <33.816010, 29.754168, 33.559937>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.912518, 29.287729, 34.168915> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.273815, 29.359264, 34.012878>,  <34.490593, 29.402185, 33.919258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.273815, 29.359264, 34.012878>,  <33.912518, 29.287729, 34.168915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.273815, 29.359264, 34.012878> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382097, 0.078604, 0.920773,
		0.195334, -0.980733, 0.002664,
		0.903242, 0.178840, -0.390089,
		34.544788, 29.412916, 33.895851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.332279, 28.867516, 34.575939>,  <33.912518, 29.287729, 34.168915>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.332279, 28.867516, 34.575939> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.559761, 29.153885, 34.413933>,  <34.696251, 29.325706, 34.316730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.559761, 29.153885, 34.413933>,  <34.332279, 28.867516, 34.575939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.559761, 29.153885, 34.413933> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336739, 0.246598, 0.908733,
		0.750457, -0.653181, -0.100838,
		0.568701, 0.715921, -0.405013,
		34.730370, 29.368662, 34.292427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.976620, 28.817869, 34.908089>,  <34.332279, 28.867516, 34.575939>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.976620, 28.817869, 34.908089> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.979248, 29.186264, 34.752270>,  <34.980824, 29.407301, 34.658779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.979248, 29.186264, 34.752270>,  <34.976620, 28.817869, 34.908089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.979248, 29.186264, 34.752270> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452637, 0.344620, 0.822409,
		0.891671, -0.181724, -0.414608,
		0.006569, 0.920985, -0.389543,
		34.981220, 29.462559, 34.635406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.677078, 28.981983, 35.129299>,  <34.976620, 28.817869, 34.908089>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.677078, 28.981983, 35.129299> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.481350, 29.313404, 35.020432>,  <35.363914, 29.512257, 34.955112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.481350, 29.313404, 35.020432>,  <35.677078, 28.981983, 35.129299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.481350, 29.313404, 35.020432> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458734, 0.509946, 0.727681,
		0.741710, 0.231214, -0.629608,
		-0.489316, 0.828550, -0.272166,
		35.334557, 29.561970, 34.938782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.159912, 29.530436, 34.781391>,  <35.677078, 28.981983, 35.129299>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.159912, 29.530436, 34.781391> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.847771, 29.728643, 34.933971>,  <35.660484, 29.847569, 35.025520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.847771, 29.728643, 34.933971>,  <36.159912, 29.530436, 34.781391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.847771, 29.728643, 34.933971> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619730, 0.531320, 0.577610,
		0.083546, 0.687138, -0.721708,
		-0.780355, 0.495521, 0.381450,
		35.613663, 29.877300, 35.048405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.358238, 30.192570, 34.965263>,  <36.159912, 29.530436, 34.781391>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.358238, 30.192570, 34.965263> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.033573, 30.176876, 35.198387>,  <35.838776, 30.167459, 35.338261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.033573, 30.176876, 35.198387>,  <36.358238, 30.192570, 34.965263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.033573, 30.176876, 35.198387> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499007, 0.472079, 0.726728,
		-0.303647, 0.880682, -0.363589,
		-0.811659, -0.039236, 0.582812,
		35.790077, 30.165106, 35.373230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.321350, 30.853468, 35.273285>,  <36.358238, 30.192570, 34.965263>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.321350, 30.853468, 35.273285> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.071095, 30.613903, 35.473236>,  <35.920940, 30.470163, 35.593204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.071095, 30.613903, 35.473236>,  <36.321350, 30.853468, 35.273285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.071095, 30.613903, 35.473236> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288720, 0.417506, 0.861586,
		-0.724716, 0.683368, -0.088291,
		-0.625642, -0.598914, 0.499875,
		35.883404, 30.434229, 35.623199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.946255, 31.286055, 35.885914>,  <36.321350, 30.853468, 35.273285>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.946255, 31.286055, 35.885914> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.930325, 30.896175, 35.973896>,  <35.920765, 30.662249, 36.026688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.930325, 30.896175, 35.973896>,  <35.946255, 31.286055, 35.885914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.930325, 30.896175, 35.973896> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338109, 0.194001, 0.920894,
		-0.940264, 0.111048, 0.321826,
		-0.039829, -0.974696, 0.219958,
		35.918377, 30.603767, 36.039883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.757160, 31.336386, 36.540810>,  <35.946255, 31.286055, 35.885914>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.757160, 31.336386, 36.540810> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.911667, 30.968966, 36.507175>,  <36.004372, 30.748514, 36.486996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.911667, 30.968966, 36.507175>,  <35.757160, 31.336386, 36.540810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.911667, 30.968966, 36.507175> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450119, 0.108144, 0.886396,
		-0.805105, -0.380228, 0.455229,
		0.386263, -0.918549, -0.084081,
		36.027546, 30.693401, 36.481953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.714642, 30.953760, 37.198132>,  <35.757160, 31.336386, 36.540810>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.714642, 30.953760, 37.198132> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.023361, 30.796663, 36.998100>,  <36.208591, 30.702406, 36.878082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.023361, 30.796663, 36.998100>,  <35.714642, 30.953760, 37.198132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.023361, 30.796663, 36.998100> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585054, 0.130549, 0.800418,
		-0.249073, -0.910336, 0.330533,
		0.771799, -0.392742, -0.500080,
		36.254902, 30.678841, 36.848076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.131721, 30.582701, 37.698940>,  <35.714642, 30.953760, 37.198132>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.131721, 30.582701, 37.698940> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.405945, 30.573540, 37.407875>,  <36.570477, 30.568043, 37.233238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.405945, 30.573540, 37.407875>,  <36.131721, 30.582701, 37.698940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.405945, 30.573540, 37.407875> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717403, 0.191331, 0.669870,
		0.123880, -0.981258, 0.147600,
		0.685556, -0.022905, -0.727660,
		36.611610, 30.566668, 37.189579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.660507, 30.081758, 37.893593>,  <36.131721, 30.582701, 37.698940>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.660507, 30.081758, 37.893593> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.844299, 30.298132, 37.611809>,  <36.954575, 30.427956, 37.442738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.844299, 30.298132, 37.611809>,  <36.660507, 30.081758, 37.893593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.844299, 30.298132, 37.611809> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835335, 0.006334, 0.549705,
		0.301815, -0.841043, -0.448948,
		0.459482, 0.540931, -0.704464,
		36.982143, 30.460411, 37.400471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.462845, 29.863142, 37.896549>,  <36.660507, 30.081758, 37.893593>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.462845, 29.863142, 37.896549> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.482433, 30.213881, 37.705238>,  <37.494186, 30.424324, 37.590454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.482433, 30.213881, 37.705238>,  <37.462845, 29.863142, 37.896549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.482433, 30.213881, 37.705238> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749491, 0.284254, 0.597881,
		0.660200, -0.387740, -0.643268,
		0.048971, 0.876845, -0.478272,
		37.497124, 30.476934, 37.561756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.160309, 29.880487, 37.666203>,  <37.462845, 29.863142, 37.896549>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.160309, 29.880487, 37.666203> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.009911, 30.249096, 37.705044>,  <37.919670, 30.470261, 37.728348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.009911, 30.249096, 37.705044>,  <38.160309, 29.880487, 37.666203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.009911, 30.249096, 37.705044> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747565, 0.239749, 0.619408,
		0.547517, 0.305485, -0.779041,
		-0.375994, 0.921520, 0.097103,
		37.897114, 30.525553, 37.734177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.725567, 30.316082, 37.541912>,  <38.160309, 29.880487, 37.666203>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.725567, 30.316082, 37.541912> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.465000, 30.564945, 37.715611>,  <38.308659, 30.714264, 37.819832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.465000, 30.564945, 37.715611>,  <38.725567, 30.316082, 37.541912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.465000, 30.564945, 37.715611> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754505, 0.470966, 0.457070,
		0.079854, 0.625386, -0.776219,
		-0.651418, 0.622160, 0.434248,
		38.269573, 30.751593, 37.845886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.031898, 30.887743, 37.516541>,  <38.725567, 30.316082, 37.541912>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.031898, 30.887743, 37.516541> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.773632, 30.971729, 37.810215>,  <38.618671, 31.022121, 37.986420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.773632, 30.971729, 37.810215>,  <39.031898, 30.887743, 37.516541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.773632, 30.971729, 37.810215> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728469, 0.457705, 0.509744,
		-0.229012, 0.863956, -0.448479,
		-0.645667, 0.209965, 0.734185,
		38.579933, 31.034719, 38.030472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.173138, 31.526886, 37.685974>,  <39.031898, 30.887743, 37.516541>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.173138, 31.526886, 37.685974> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.002388, 31.382864, 38.017792>,  <38.899937, 31.296452, 38.216881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.002388, 31.382864, 38.017792>,  <39.173138, 31.526886, 37.685974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.002388, 31.382864, 38.017792> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682239, 0.473887, 0.556760,
		-0.593572, 0.803613, 0.043351,
		-0.426875, -0.360053, 0.829542,
		38.874325, 31.274849, 38.266655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.481606, 31.554029, 37.925484>,  <39.173138, 31.526886, 37.685974>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.481606, 31.554029, 37.925484> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.687752, 31.843067, 37.741196>,  <38.811440, 32.016491, 37.630623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.687752, 31.843067, 37.741196>,  <38.481606, 31.554029, 37.925484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.687752, 31.843067, 37.741196> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049497, -0.561813, -0.825782,
		-0.855542, 0.402772, -0.325303,
		0.515361, 0.722593, -0.460719,
		38.842361, 32.059845, 37.602982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.110374, 31.716927, 37.349632>,  <38.481606, 31.554029, 37.925484>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.110374, 31.716927, 37.349632> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.489410, 31.825850, 37.282795>,  <38.716831, 31.891203, 37.242695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.489410, 31.825850, 37.282795>,  <38.110374, 31.716927, 37.349632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.489410, 31.825850, 37.282795> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012506, -0.554214, -0.832280,
		-0.319238, 0.786572, -0.528575,
		0.947592, 0.272306, -0.167089,
		38.773689, 31.907541, 37.232670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.147434, 31.833948, 36.666462>,  <38.110374, 31.716927, 37.349632>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.147434, 31.833948, 36.666462> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.538548, 31.825678, 36.749897>,  <38.773216, 31.820715, 36.799957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.538548, 31.825678, 36.749897>,  <38.147434, 31.833948, 36.666462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.538548, 31.825678, 36.749897> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171232, -0.495172, -0.851753,
		0.120899, 0.868549, -0.480631,
		0.977785, -0.020677, 0.208590,
		38.831882, 31.819475, 36.812473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.514950, 32.071796, 36.013268>,  <38.147434, 31.833948, 36.666462>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.514950, 32.071796, 36.013268> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.783321, 31.893358, 36.250198>,  <38.944344, 31.786295, 36.392357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.783321, 31.893358, 36.250198>,  <38.514950, 32.071796, 36.013268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.783321, 31.893358, 36.250198> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372170, -0.488322, -0.789323,
		0.641364, 0.750024, -0.161603,
		0.670926, -0.446100, 0.592329,
		38.984600, 31.759529, 36.427898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.158489, 32.321152, 35.784557>,  <38.514950, 32.071796, 36.013268>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.158489, 32.321152, 35.784557> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.161152, 31.962627, 35.961906>,  <39.162750, 31.747513, 36.068314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.161152, 31.962627, 35.961906>,  <39.158489, 32.321152, 35.784557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.161152, 31.962627, 35.961906> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224321, -0.430741, -0.874152,
		0.974493, 0.105276, 0.198194,
		0.006657, -0.896314, 0.443370,
		39.163151, 31.693733, 36.094917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.864876, 31.977610, 35.690964>,  <39.158489, 32.321152, 35.784557>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.864876, 31.977610, 35.690964> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.628967, 31.661446, 35.757206>,  <39.487423, 31.471746, 35.796951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.628967, 31.661446, 35.757206>,  <39.864876, 31.977610, 35.690964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.628967, 31.661446, 35.757206> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327786, -0.421713, -0.845409,
		0.738059, -0.444310, 0.507797,
		-0.589768, -0.790410, 0.165610,
		39.452038, 31.424322, 35.806889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.262615, 31.404814, 35.389748>,  <39.864876, 31.977610, 35.690964>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.262615, 31.404814, 35.389748> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.913666, 31.224758, 35.466000>,  <39.704296, 31.116724, 35.511749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.913666, 31.224758, 35.466000>,  <40.262615, 31.404814, 35.389748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.913666, 31.224758, 35.466000> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150480, -0.618308, -0.771395,
		0.465104, -0.644258, 0.607132,
		-0.872372, -0.450140, 0.190630,
		39.651955, 31.089716, 35.523190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.467159, 30.810537, 35.298183>,  <40.262615, 31.404814, 35.389748>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.467159, 30.810537, 35.298183> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.070194, 30.812325, 35.249039>,  <39.832016, 30.813396, 35.219551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.070194, 30.812325, 35.249039>,  <40.467159, 30.810537, 35.298183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.070194, 30.812325, 35.249039> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094560, -0.610892, -0.786046,
		-0.078567, -0.791701, 0.605836,
		-0.992414, 0.004469, -0.122859,
		39.772469, 30.813665, 35.212181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.160168, 30.136665, 35.251514>,  <40.467159, 30.810537, 35.298183>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.160168, 30.136665, 35.251514> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.915253, 30.393316, 35.066723>,  <39.768303, 30.547306, 34.955849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.915253, 30.393316, 35.066723>,  <40.160168, 30.136665, 35.251514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.915253, 30.393316, 35.066723> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267622, -0.718009, -0.642527,
		-0.743971, -0.269770, 0.611336,
		-0.612280, 0.641628, -0.461982,
		39.731567, 30.585804, 34.928131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.604797, 29.691420, 35.080971>,  <40.160168, 30.136665, 35.251514>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.604797, 29.691420, 35.080971> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.573135, 30.010092, 34.841293>,  <39.554138, 30.201294, 34.697487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.573135, 30.010092, 34.841293>,  <39.604797, 29.691420, 35.080971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.573135, 30.010092, 34.841293> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326260, -0.588683, -0.739599,
		-0.941960, 0.136951, 0.306522,
		-0.079156, 0.796678, -0.599198,
		39.549389, 30.249096, 34.661533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.937218, 29.584150, 34.689991>,  <39.604797, 29.691420, 35.080971>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.937218, 29.584150, 34.689991> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.102169, 29.882774, 34.481148>,  <39.201141, 30.061949, 34.355843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.102169, 29.882774, 34.481148>,  <38.937218, 29.584150, 34.689991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.102169, 29.882774, 34.481148> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460928, -0.323357, -0.826429,
		-0.785805, 0.581454, 0.210764,
		0.412378, 0.746560, -0.522104,
		39.225883, 30.106743, 34.324516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429859, 30.016455, 34.349346>,  <38.937218, 29.584150, 34.689991>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.429859, 30.016455, 34.349346> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.775158, 30.036562, 34.148438>,  <38.982338, 30.048626, 34.027893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.775158, 30.036562, 34.148438>,  <38.429859, 30.016455, 34.349346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.775158, 30.036562, 34.148438> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479041, -0.232100, -0.846551,
		-0.159133, 0.971392, -0.176278,
		0.863247, 0.050270, -0.502272,
		39.034134, 30.051643, 33.997757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.415287, 30.527052, 33.803116>,  <38.429859, 30.016455, 34.349346>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.415287, 30.527052, 33.803116> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.662052, 30.231457, 33.694805>,  <38.810112, 30.054100, 33.629818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.662052, 30.231457, 33.694805>,  <38.415287, 30.527052, 33.803116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.662052, 30.231457, 33.694805> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573327, -0.186265, -0.797873,
		0.539185, 0.647456, -0.538591,
		0.616908, -0.738990, -0.270773,
		38.847126, 30.009760, 33.613575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.619862, 30.649967, 33.045898>,  <38.415287, 30.527052, 33.803116>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.619862, 30.649967, 33.045898> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.669163, 30.262722, 33.133137>,  <38.698746, 30.030375, 33.185482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.669163, 30.262722, 33.133137>,  <38.619862, 30.649967, 33.045898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.669163, 30.262722, 33.133137> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596901, -0.247899, -0.763056,
		0.792790, -0.036132, -0.608423,
		0.123257, -0.968112, 0.218099,
		38.706139, 29.972288, 33.198566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.094883, 30.382349, 32.534416>,  <38.619862, 30.649967, 33.045898>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.094883, 30.382349, 32.534416> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.906834, 30.061972, 32.682724>,  <38.794003, 29.869745, 32.771709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.906834, 30.061972, 32.682724>,  <39.094883, 30.382349, 32.534416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.906834, 30.061972, 32.682724> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509005, -0.097150, -0.855264,
		0.721037, -0.590807, -0.362011,
		-0.470127, -0.800942, 0.370772,
		38.765797, 29.821690, 32.793957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.103455, 29.875645, 31.949804>,  <39.094883, 30.382349, 32.534416>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.103455, 29.875645, 31.949804> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.819588, 29.734921, 32.193970>,  <38.649269, 29.650486, 32.340469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.819588, 29.734921, 32.193970>,  <39.103455, 29.875645, 31.949804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.819588, 29.734921, 32.193970> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591004, -0.174367, -0.787598,
		0.383520, -0.919688, -0.084178,
		-0.709666, -0.351809, 0.610413,
		38.606689, 29.629377, 32.377094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.825008, 29.274479, 31.649328>,  <39.103455, 29.875645, 31.949804>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.825008, 29.274479, 31.649328> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.539024, 29.408239, 31.894932>,  <38.367435, 29.488497, 32.042294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.539024, 29.408239, 31.894932>,  <38.825008, 29.274479, 31.649328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.539024, 29.408239, 31.894932> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698694, -0.373934, -0.609918,
		0.025640, -0.865071, 0.500994,
		-0.714961, 0.334404, 0.614007,
		38.324535, 29.508560, 32.079136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.326405, 28.798759, 31.564388>,  <38.825008, 29.274479, 31.649328>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.326405, 28.798759, 31.564388> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.127415, 29.117054, 31.702559>,  <38.008018, 29.308031, 31.785461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.127415, 29.117054, 31.702559>,  <38.326405, 28.798759, 31.564388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.127415, 29.117054, 31.702559> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794668, -0.258348, -0.549326,
		-0.347879, -0.547776, 0.760869,
		-0.497477, 0.795737, 0.345426,
		37.978172, 29.355774, 31.806187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.527313, 28.600933, 31.760872> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.514263, 29.000166, 31.739817>,  <37.506435, 29.239706, 31.727182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.514263, 29.000166, 31.739817>,  <37.527313, 28.600933, 31.760872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.514263, 29.000166, 31.739817> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.881990, -0.053524, -0.468219,
		-0.470137, 0.031153, 0.882043,
		-0.032624, 0.998080, -0.052640,
		37.504475, 29.299591, 31.724024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.933697, 28.703087, 31.985697>,  <37.527313, 28.600933, 31.760872>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.933697, 28.703087, 31.985697> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.031284, 29.025156, 31.769484>,  <37.089836, 29.218397, 31.639755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.031284, 29.025156, 31.769484>,  <36.933697, 28.703087, 31.985697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.031284, 29.025156, 31.769484> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829204, -0.115843, -0.546810,
		-0.502893, 0.581616, 0.639391,
		0.243964, 0.805172, -0.540535,
		37.104473, 29.266708, 31.607323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.311924, 29.179152, 31.879608>,  <36.933697, 28.703087, 31.985697>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.311924, 29.179152, 31.879608> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.573845, 29.278946, 31.594234>,  <36.730999, 29.338823, 31.423010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.573845, 29.278946, 31.594234>,  <36.311924, 29.179152, 31.879608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.573845, 29.278946, 31.594234> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736154, -0.003288, -0.676806,
		-0.171200, 0.968373, 0.181508,
		0.654803, 0.249487, -0.713435,
		36.770287, 29.353792, 31.380203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.909374, 29.435688, 31.412300>,  <36.311924, 29.179152, 31.879608>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.909374, 29.435688, 31.412300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.240067, 29.406622, 31.189148>,  <36.438484, 29.389181, 31.055258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.240067, 29.406622, 31.189148>,  <35.909374, 29.435688, 31.412300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.240067, 29.406622, 31.189148> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562083, -0.148826, -0.813581,
		-0.023906, 0.986189, -0.163884,
		0.826735, -0.072667, -0.557878,
		36.488087, 29.384821, 31.021784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.693920, 29.861902, 30.696030>,  <35.909374, 29.435688, 31.412300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.693920, 29.861902, 30.696030> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.007359, 29.614822, 30.669426>,  <36.195423, 29.466574, 30.653463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.007359, 29.614822, 30.669426>,  <35.693920, 29.861902, 30.696030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.007359, 29.614822, 30.669426> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380010, -0.391855, -0.837879,
		0.491498, 0.681832, -0.541788,
		0.783596, -0.617701, -0.066507,
		36.242435, 29.429512, 30.649473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.096977, 29.883642, 30.054920>,  <35.693920, 29.861902, 30.696030>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.096977, 29.883642, 30.054920> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.132919, 29.517872, 30.212780>,  <36.154484, 29.298409, 30.307495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.132919, 29.517872, 30.212780>,  <36.096977, 29.883642, 30.054920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.132919, 29.517872, 30.212780> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270289, -0.403772, -0.874021,
		0.958577, -0.028131, -0.283442,
		0.089859, -0.914427, 0.394650,
		36.159878, 29.243544, 30.331175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.537495, 29.447388, 29.594271>,  <36.096977, 29.883642, 30.054920>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.537495, 29.447388, 29.594271> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.311691, 29.188700, 29.799437>,  <36.176208, 29.033487, 29.922537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.311691, 29.188700, 29.799437>,  <36.537495, 29.447388, 29.594271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.311691, 29.188700, 29.799437> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163502, -0.521472, -0.837457,
		0.809073, -0.556613, 0.188635,
		-0.564507, -0.646722, 0.512916,
		36.142338, 28.994682, 29.953312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.760277, 28.787935, 29.286068>,  <36.537495, 29.447388, 29.594271>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.760277, 28.787935, 29.286068> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.418957, 28.705145, 29.477503>,  <36.214165, 28.655472, 29.592363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.418957, 28.705145, 29.477503>,  <36.760277, 28.787935, 29.286068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.418957, 28.705145, 29.477503> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249761, -0.643457, -0.723590,
		0.457714, -0.736970, 0.497366,
		-0.853298, -0.206975, 0.478586,
		36.162968, 28.643053, 29.621078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.747776, 28.074898, 29.256958>,  <36.760277, 28.787935, 29.286068>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.747776, 28.074898, 29.256958> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.378757, 28.219273, 29.311560>,  <36.157345, 28.305897, 29.344320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.378757, 28.219273, 29.311560>,  <36.747776, 28.074898, 29.256958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.378757, 28.219273, 29.311560> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339609, -0.591436, -0.731348,
		-0.183236, -0.721060, 0.668204,
		-0.922546, 0.360937, 0.136506,
		36.101994, 28.327555, 29.352512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.312405, 27.559261, 29.067041>,  <36.747776, 28.074898, 29.256958>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.312405, 27.559261, 29.067041> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.062737, 27.871531, 29.079493>,  <35.912937, 28.058891, 29.086964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.062737, 27.871531, 29.079493>,  <36.312405, 27.559261, 29.067041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.062737, 27.871531, 29.079493> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438298, -0.316894, -0.841114,
		-0.646769, -0.538639, 0.539961,
		-0.624167, 0.780670, 0.031127,
		35.875488, 28.105732, 29.088831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.650368, 27.356745, 28.810345>,  <36.312405, 27.559261, 29.067041>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.650368, 27.356745, 28.810345> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.608883, 27.753078, 28.775717>,  <35.583992, 27.990879, 28.754940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.608883, 27.753078, 28.775717>,  <35.650368, 27.356745, 28.810345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.608883, 27.753078, 28.775717> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413458, -0.122110, -0.902298,
		-0.904597, -0.057785, 0.422332,
		-0.103710, 0.990833, -0.086569,
		35.577770, 28.050329, 28.749746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.975883, 27.496244, 28.618198>,  <35.650368, 27.356745, 28.810345>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.975883, 27.496244, 28.618198> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.142624, 27.838820, 28.496380>,  <35.242668, 28.044365, 28.423288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.142624, 27.838820, 28.496380>,  <34.975883, 27.496244, 28.618198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.142624, 27.838820, 28.496380> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495970, -0.066469, -0.865792,
		-0.761740, 0.511953, 0.397060,
		0.416852, 0.856438, -0.304545,
		35.267681, 28.095751, 28.405016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.451466, 27.887838, 28.365957>,  <34.975883, 27.496244, 28.618198>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.451466, 27.887838, 28.365957> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.793022, 28.002415, 28.192144>,  <34.997955, 28.071159, 28.087856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.793022, 28.002415, 28.192144>,  <34.451466, 27.887838, 28.365957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.793022, 28.002415, 28.192144> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423810, -0.101900, -0.900001,
		-0.302074, 0.952664, 0.034384,
		0.853895, 0.286439, -0.434530,
		35.049191, 28.088346, 28.061785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.265591, 28.409929, 27.881989>,  <34.451466, 27.887838, 28.365957>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.265591, 28.409929, 27.881989> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.619293, 28.276423, 27.751333>,  <34.831516, 28.196318, 27.672941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.619293, 28.276423, 27.751333>,  <34.265591, 28.409929, 27.881989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.619293, 28.276423, 27.751333> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360707, -0.043886, -0.931646,
		0.296619, 0.941633, -0.159199,
		0.884255, -0.333768, -0.326637,
		34.884571, 28.176292, 27.653343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.308872, 28.584106, 27.178738>,  <34.265591, 28.409929, 27.881989>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.308872, 28.584106, 27.178738> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.621548, 28.335018, 27.192486>,  <34.809155, 28.185566, 27.200735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.621548, 28.335018, 27.192486>,  <34.308872, 28.584106, 27.178738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.621548, 28.335018, 27.192486> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160345, -0.253923, -0.953841,
		0.602702, 0.740097, -0.298339,
		0.781691, -0.622719, 0.034369,
		34.856056, 28.148203, 27.202797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.616367, 28.676306, 26.619370>,  <34.308872, 28.584106, 27.178738>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.616367, 28.676306, 26.619370> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.764671, 28.318295, 26.718538>,  <34.853653, 28.103487, 26.778040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.764671, 28.318295, 26.718538>,  <34.616367, 28.676306, 26.619370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.764671, 28.318295, 26.718538> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235803, -0.348916, -0.907003,
		0.898296, 0.277818, -0.340413,
		0.370758, -0.895028, 0.247920,
		34.875900, 28.049786, 26.792913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.012012, 28.330681, 25.953804>,  <34.616367, 28.676306, 26.619370>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.012012, 28.330681, 25.953804> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.915779, 28.025600, 26.193939>,  <34.858040, 27.842552, 26.338020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.915779, 28.025600, 26.193939>,  <35.012012, 28.330681, 25.953804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.915779, 28.025600, 26.193939> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239803, -0.552627, -0.798185,
		0.940540, -0.335991, -0.049946,
		-0.240581, -0.762702, 0.600339,
		34.843605, 27.796789, 26.374041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.278049, 27.763826, 25.589851>,  <35.012012, 28.330681, 25.953804>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.278049, 27.763826, 25.589851> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.003971, 27.617470, 25.841766>,  <34.839523, 27.529655, 25.992916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.003971, 27.617470, 25.841766>,  <35.278049, 27.763826, 25.589851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.003971, 27.617470, 25.841766> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186620, -0.747609, -0.637380,
		0.704046, -0.554260, 0.443975,
		-0.685195, -0.365890, 0.629788,
		34.798412, 27.507702, 26.030703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.148094, 27.057779, 25.416222>,  <35.278049, 27.763826, 25.589851>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.148094, 27.057779, 25.416222> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.816895, 27.130060, 25.628546>,  <34.618176, 27.173429, 25.755939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.816895, 27.130060, 25.628546>,  <35.148094, 27.057779, 25.416222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.816895, 27.130060, 25.628546> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495997, -0.677572, -0.543032,
		0.261534, -0.712911, 0.650659,
		-0.828002, 0.180704, 0.530810,
		34.568493, 27.184271, 25.787788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.966503, 26.508556, 25.869650>,  <35.148094, 27.057779, 25.416222>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.966503, 26.508556, 25.869650> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.631084, 26.701595, 25.768509>,  <34.429832, 26.817419, 25.707825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.631084, 26.701595, 25.768509>,  <34.966503, 26.508556, 25.869650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.631084, 26.701595, 25.768509> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297574, -0.794448, -0.529435,
		-0.456384, -0.368714, 0.809792,
		-0.838548, 0.482599, -0.252854,
		34.379520, 26.846375, 25.692654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.600712, 25.913996, 25.514271>,  <34.966503, 26.508556, 25.869650>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.600712, 25.913996, 25.514271> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.359814, 26.227348, 25.452806>,  <34.215275, 26.415359, 25.415928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.359814, 26.227348, 25.452806>,  <34.600712, 25.913996, 25.514271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.359814, 26.227348, 25.452806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528785, -0.535662, -0.658372,
		-0.598067, -0.315248, 0.736841,
		-0.602248, 0.783381, -0.153664,
		34.179138, 26.462362, 25.406708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.936710, 25.762756, 25.663967>,  <34.600712, 25.913996, 25.514271>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.936710, 25.762756, 25.663967> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.894386, 26.044565, 25.383268>,  <33.868992, 26.213650, 25.214848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.894386, 26.044565, 25.383268>,  <33.936710, 25.762756, 25.663967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.894386, 26.044565, 25.383268> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706847, -0.549654, -0.445250,
		-0.699409, 0.448918, 0.556147,
		-0.105808, 0.704523, -0.701749,
		33.862644, 26.255922, 25.172743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.265678, 25.671303, 25.534586>,  <33.936710, 25.762756, 25.663967>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.265678, 25.671303, 25.534586> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.456459, 25.842739, 25.227646>,  <33.570927, 25.945601, 25.043482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.456459, 25.842739, 25.227646>,  <33.265678, 25.671303, 25.534586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.456459, 25.842739, 25.227646> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586377, -0.495196, -0.641048,
		-0.654737, 0.755706, 0.015132,
		0.476950, 0.428591, -0.767352,
		33.599545, 25.971315, 24.997440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.702446, 25.909933, 25.103214>,  <33.265678, 25.671303, 25.534586>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.702446, 25.909933, 25.103214> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.042213, 25.852209, 24.900171>,  <33.246075, 25.817575, 24.778345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.042213, 25.852209, 24.900171>,  <32.702446, 25.909933, 25.103214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.042213, 25.852209, 24.900171> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524840, -0.331410, -0.784035,
		-0.055084, 0.932386, -0.357244,
		0.849417, -0.144308, -0.507609,
		33.297039, 25.808916, 24.747889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.096504, 26.133024, 25.422052>,  <32.702446, 25.909933, 25.103214>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.096504, 26.133024, 25.422052> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.791313, 25.914629, 25.560478>,  <31.608198, 25.783592, 25.643534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.791313, 25.914629, 25.560478>,  <32.096504, 26.133024, 25.422052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.791313, 25.914629, 25.560478> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035203, 0.499462, 0.865620,
		-0.645465, 0.672632, -0.361858,
		-0.762978, -0.545989, 0.346064,
		31.562420, 25.750832, 25.664297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.601864, 26.595837, 25.707535>,  <32.096504, 26.133024, 25.422052>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.601864, 26.595837, 25.707535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.487850, 26.264147, 25.899845>,  <31.419443, 26.065134, 26.015232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.487850, 26.264147, 25.899845>,  <31.601864, 26.595837, 25.707535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.487850, 26.264147, 25.899845> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043173, 0.489968, 0.870671,
		-0.957545, 0.268926, -0.103857,
		-0.285032, -0.829223, 0.480777,
		31.402340, 26.015381, 26.044079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.048716, 26.794590, 25.992170>,  <31.601864, 26.595837, 25.707535>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.048716, 26.794590, 25.992170> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.192091, 26.472294, 26.180769>,  <31.278116, 26.278917, 26.293928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.192091, 26.472294, 26.180769>,  <31.048716, 26.794590, 25.992170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.192091, 26.472294, 26.180769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038473, 0.517374, 0.854894,
		-0.932760, -0.288287, 0.216446,
		0.358438, -0.805738, 0.471495,
		31.299622, 26.230572, 26.322218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.697742, 26.820257, 26.619169>,  <31.048716, 26.794590, 25.992170>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.697742, 26.820257, 26.619169> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.025099, 26.597061, 26.674135>,  <31.221512, 26.463144, 26.707115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.025099, 26.597061, 26.674135>,  <30.697742, 26.820257, 26.619169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.025099, 26.597061, 26.674135> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122816, 0.403429, 0.906731,
		-0.561384, -0.725184, 0.398693,
		0.818391, -0.557990, 0.137414,
		31.270617, 26.429665, 26.715359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.604673, 26.484825, 27.268951>,  <30.697742, 26.820257, 26.619169>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.604673, 26.484825, 27.268951> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.996887, 26.432804, 27.210117>,  <31.232216, 26.401592, 27.174816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.996887, 26.432804, 27.210117>,  <30.604673, 26.484825, 27.268951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.996887, 26.432804, 27.210117> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173858, 0.227088, 0.958230,
		-0.091220, -0.965151, 0.245279,
		0.980537, -0.130054, -0.147084,
		31.291048, 26.393787, 27.165993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.847080, 26.218313, 27.889456>,  <30.604673, 26.484825, 27.268951>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.847080, 26.218313, 27.889456> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.181604, 26.376245, 27.737301>,  <31.382318, 26.471004, 27.646008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.181604, 26.376245, 27.737301>,  <30.847080, 26.218313, 27.889456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.181604, 26.376245, 27.737301> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227171, 0.381895, 0.895851,
		0.498978, -0.835622, 0.229688,
		0.836310, 0.394831, -0.380386,
		31.432497, 26.494694, 27.623184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.251909, 26.125429, 28.418633>,  <30.847080, 26.218313, 27.889456>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.251909, 26.125429, 28.418633> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.456572, 26.366749, 28.173933>,  <31.579369, 26.511541, 28.027113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.456572, 26.366749, 28.173933>,  <31.251909, 26.125429, 28.418633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.456572, 26.366749, 28.173933> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493292, 0.376691, 0.784071,
		0.703469, -0.702947, -0.104866,
		0.511658, 0.603299, -0.611748,
		31.610069, 26.547739, 27.990408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.005184, 26.062859, 28.639709>,  <31.251909, 26.125429, 28.418633>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.005184, 26.062859, 28.639709> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.001999, 26.397991, 28.421360>,  <32.000088, 26.599070, 28.290350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.001999, 26.397991, 28.421360>,  <32.005184, 26.062859, 28.639709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.001999, 26.397991, 28.421360> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670181, 0.409619, 0.618925,
		0.742154, -0.360906, -0.564760,
		-0.007962, 0.837830, -0.545873,
		31.999611, 26.649340, 28.257599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.697506, 26.271694, 28.399593>,  <32.005184, 26.062859, 28.639709>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.697506, 26.271694, 28.399593> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.462460, 26.593769, 28.431545>,  <32.321430, 26.787014, 28.450716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.462460, 26.593769, 28.431545>,  <32.697506, 26.271694, 28.399593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.462460, 26.593769, 28.431545> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611390, 0.377173, 0.695660,
		0.530007, 0.457620, -0.713916,
		-0.587618, 0.805186, 0.079880,
		32.286175, 26.835325, 28.455509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.054600, 26.932756, 28.147148>,  <32.697506, 26.271694, 28.399593>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.054600, 26.932756, 28.147148> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.760742, 27.005795, 28.408516>,  <32.584427, 27.049618, 28.565336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.760742, 27.005795, 28.408516>,  <33.054600, 26.932756, 28.147148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.760742, 27.005795, 28.408516> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646679, 0.479749, 0.592998,
		-0.205199, 0.858196, -0.470524,
		-0.734642, 0.182596, 0.653422,
		32.540348, 27.060574, 28.604542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.305866, 27.578728, 28.393120>,  <33.054600, 26.932756, 28.147148>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.305866, 27.578728, 28.393120> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.984386, 27.493233, 28.615246>,  <32.791496, 27.441936, 28.748522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.984386, 27.493233, 28.615246>,  <33.305866, 27.578728, 28.393120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.984386, 27.493233, 28.615246> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414326, 0.468816, 0.780093,
		-0.427076, 0.857046, -0.288232,
		-0.803704, -0.213737, 0.555317,
		32.743275, 27.429111, 28.781841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.923676, 28.130653, 28.513004>,  <33.305866, 27.578728, 28.393120>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.923676, 28.130653, 28.513004> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.899723, 27.869953, 28.815430>,  <32.885353, 27.713533, 28.996885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.899723, 27.869953, 28.815430>,  <32.923676, 28.130653, 28.513004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.899723, 27.869953, 28.815430> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442272, 0.661700, 0.605432,
		-0.894880, 0.370640, 0.248629,
		-0.059879, -0.651751, 0.756066,
		32.881760, 27.674427, 29.042250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.942451, 28.546623, 29.131136>,  <32.923676, 28.130653, 28.513004>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.942451, 28.546623, 29.131136> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.990864, 28.185099, 29.295319>,  <33.019913, 27.968184, 29.393829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.990864, 28.185099, 29.295319>,  <32.942451, 28.546623, 29.131136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.990864, 28.185099, 29.295319> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580331, 0.399898, 0.709435,
		-0.805337, 0.152336, 0.572911,
		0.121033, -0.903811, 0.410458,
		33.027172, 27.913956, 29.418455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.645359, 28.633236, 29.792719>,  <32.942451, 28.546623, 29.131136>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.645359, 28.633236, 29.792719> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.860039, 28.299376, 29.842224>,  <32.988846, 28.099060, 29.871927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.860039, 28.299376, 29.842224>,  <32.645359, 28.633236, 29.792719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.860039, 28.299376, 29.842224> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459016, 0.411881, 0.787184,
		-0.707998, -0.365671, 0.604172,
		0.536697, -0.834649, 0.123762,
		33.021049, 28.048981, 29.879353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.503139, 28.266872, 30.440523>,  <32.645359, 28.633236, 29.792719>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.503139, 28.266872, 30.440523> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.872726, 28.146856, 30.345654>,  <33.094479, 28.074846, 30.288731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.872726, 28.146856, 30.345654>,  <32.503139, 28.266872, 30.440523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.872726, 28.146856, 30.345654> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315311, 0.246614, 0.916385,
		-0.216462, -0.921497, 0.322470,
		0.923972, -0.300040, -0.237176,
		33.149918, 28.056845, 30.274500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.813629, 27.934259, 31.083353>,  <32.503139, 28.266872, 30.440523>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.813629, 27.934259, 31.083353> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.139034, 28.008671, 30.862957>,  <33.334278, 28.053318, 30.730719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.139034, 28.008671, 30.862957>,  <32.813629, 27.934259, 31.083353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.139034, 28.008671, 30.862957> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456481, 0.382748, 0.803199,
		0.360305, -0.904930, 0.226454,
		0.813515, 0.186025, -0.550989,
		33.383087, 28.064480, 30.697660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.313850, 27.695200, 31.489679>,  <32.813629, 27.934259, 31.083353>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.313850, 27.695200, 31.489679> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.511806, 27.912354, 31.218281>,  <33.630581, 28.042646, 31.055441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.511806, 27.912354, 31.218281>,  <33.313850, 27.695200, 31.489679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.511806, 27.912354, 31.218281> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661034, 0.271607, 0.699474,
		0.564020, -0.794672, -0.224450,
		0.494890, 0.542886, -0.678497,
		33.660275, 28.075220, 31.014732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.051624, 27.555822, 31.583055>,  <33.313850, 27.695200, 31.489679>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.051624, 27.555822, 31.583055> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.991287, 27.913555, 31.414570>,  <33.955086, 28.128195, 31.313478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.991287, 27.913555, 31.414570>,  <34.051624, 27.555822, 31.583055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.991287, 27.913555, 31.414570> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662151, 0.407790, 0.628699,
		0.734031, -0.184070, -0.653695,
		-0.150846, 0.894330, -0.421212,
		33.946033, 28.181854, 31.288206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.729427, 27.872093, 31.473001>,  <34.051624, 27.555822, 31.583055>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.729427, 27.872093, 31.473001> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.464195, 28.171511, 31.471836>,  <34.305058, 28.351160, 31.471136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.464195, 28.171511, 31.471836>,  <34.729427, 27.872093, 31.473001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.464195, 28.171511, 31.471836> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600959, 0.534661, 0.594126,
		0.446287, 0.392202, -0.804366,
		-0.663081, 0.748542, -0.002914,
		34.265270, 28.396072, 31.470963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.091923, 28.479589, 31.454727>,  <34.729427, 27.872093, 31.473001>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.091923, 28.479589, 31.454727> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.740154, 28.626419, 31.575972>,  <34.529095, 28.714518, 31.648718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.740154, 28.626419, 31.575972>,  <35.091923, 28.479589, 31.454727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.740154, 28.626419, 31.575972> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474587, 0.626217, 0.618563,
		0.037247, 0.687828, -0.724917,
		-0.879420, 0.367076, 0.303109,
		34.476330, 28.736542, 31.666904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.154564, 30.505783, 33.523869> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.800495, 30.369711, 33.650833>,  <39.588055, 30.288067, 33.727013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.800495, 30.369711, 33.650833>,  <40.154564, 30.505783, 33.523869>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.800495, 30.369711, 33.650833> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108313, 0.512806, 0.851644,
		-0.452486, 0.788230, -0.417074,
		-0.885169, -0.340182, 0.317413,
		39.534943, 30.267656, 33.746056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.728054, 31.035427, 33.598152>,  <40.154564, 30.505783, 33.523869>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.728054, 31.035427, 33.598152> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.576210, 30.751928, 33.835999>,  <39.485104, 30.581829, 33.978706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.576210, 30.751928, 33.835999>,  <39.728054, 31.035427, 33.598152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.576210, 30.751928, 33.835999> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079271, 0.615448, 0.784181,
		-0.921744, 0.344819, -0.177447,
		-0.379610, -0.708748, 0.594619,
		39.462326, 30.539305, 34.014385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.277500, 31.336296, 33.941776>,  <39.728054, 31.035427, 33.598152>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.277500, 31.336296, 33.941776> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.345093, 31.020115, 34.177277>,  <39.385647, 30.830406, 34.318577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.345093, 31.020115, 34.177277>,  <39.277500, 31.336296, 33.941776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.345093, 31.020115, 34.177277> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109832, 0.578520, 0.808240,
		-0.979481, -0.201240, 0.010941,
		0.168980, -0.790454, 0.588751,
		39.395786, 30.782978, 34.353901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.716839, 31.247181, 34.463657>,  <39.277500, 31.336296, 33.941776>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.716839, 31.247181, 34.463657> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.028622, 31.045847, 34.612839>,  <39.215691, 30.925047, 34.702347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.028622, 31.045847, 34.612839>,  <38.716839, 31.247181, 34.463657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.028622, 31.045847, 34.612839> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192081, 0.374647, 0.907053,
		-0.596278, -0.778649, 0.195342,
		0.779460, -0.503334, 0.372957,
		39.262459, 30.894846, 34.724728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.495296, 30.920712, 35.063660>,  <38.716839, 31.247181, 34.463657>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.495296, 30.920712, 35.063660> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.886150, 30.845093, 35.102585>,  <39.120663, 30.799723, 35.125942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.886150, 30.845093, 35.102585>,  <38.495296, 30.920712, 35.063660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.886150, 30.845093, 35.102585> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076703, 0.113465, 0.990577,
		-0.198306, -0.975391, 0.096371,
		0.977134, -0.189046, 0.097316,
		39.179291, 30.788380, 35.131779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.546368, 30.484650, 35.662712>,  <38.495296, 30.920712, 35.063660>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.546368, 30.484650, 35.662712> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.892357, 30.682560, 35.629181>,  <39.099949, 30.801306, 35.609062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.892357, 30.682560, 35.629181>,  <38.546368, 30.484650, 35.662712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.892357, 30.682560, 35.629181> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083084, 0.305944, 0.948417,
		0.494901, -0.813386, 0.305739,
		0.864968, 0.494775, -0.083833,
		39.151848, 30.830992, 35.604031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.997581, 30.378286, 36.306133>,  <38.546368, 30.484650, 35.662712>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.997581, 30.378286, 36.306133> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.113605, 30.723318, 36.140331>,  <39.183220, 30.930338, 36.040848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.113605, 30.723318, 36.140331>,  <38.997581, 30.378286, 36.306133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.113605, 30.723318, 36.140331> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022045, 0.439038, 0.898198,
		0.956754, -0.251395, 0.146363,
		0.290062, 0.862581, -0.414509,
		39.200623, 30.982092, 36.015980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.418041, 30.581450, 36.774517>,  <38.997581, 30.378286, 36.306133>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.418041, 30.581450, 36.774517> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.321289, 30.901188, 36.554501>,  <39.263237, 31.093031, 36.422493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.321289, 30.901188, 36.554501>,  <39.418041, 30.581450, 36.774517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.321289, 30.901188, 36.554501> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064619, 0.578883, 0.812846,
		0.968151, 0.161072, -0.191675,
		-0.241885, 0.799344, -0.550038,
		39.248722, 31.140991, 36.389488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.869934, 31.027246, 37.103020>,  <39.418041, 30.581450, 36.774517>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.869934, 31.027246, 37.103020> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.613308, 31.245806, 36.887672>,  <39.459332, 31.376942, 36.758465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.613308, 31.245806, 36.887672>,  <39.869934, 31.027246, 37.103020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.613308, 31.245806, 36.887672> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099756, 0.636464, 0.764828,
		0.760555, 0.544392, -0.353826,
		-0.641564, 0.546398, -0.538372,
		39.420837, 31.409725, 36.726162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.088451, 31.746716, 36.990097>,  <39.869934, 31.027246, 37.103020>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.088451, 31.746716, 36.990097> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.689648, 31.726137, 36.967045>,  <39.450363, 31.713789, 36.953213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.689648, 31.726137, 36.967045>,  <40.088451, 31.746716, 36.990097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.689648, 31.726137, 36.967045> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075149, 0.818746, 0.569217,
		0.017897, 0.571846, -0.820166,
		-0.997012, -0.051447, -0.057627,
		39.390545, 31.710703, 36.949757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.951038, 32.396439, 37.066212>,  <40.088451, 31.746716, 36.990097>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.951038, 32.396439, 37.066212> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.576904, 32.257065, 37.090672>,  <39.352425, 32.173443, 37.105347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.576904, 32.257065, 37.090672>,  <39.951038, 32.396439, 37.066212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.576904, 32.257065, 37.090672> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236095, 0.743575, 0.625584,
		-0.263446, 0.570693, -0.777757,
		-0.935337, -0.348431, 0.061154,
		39.296303, 32.152534, 37.109016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.484074, 32.910007, 36.938087>,  <39.951038, 32.396439, 37.066212>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.484074, 32.910007, 36.938087> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.285835, 32.634945, 37.150318>,  <39.166893, 32.469906, 37.277657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.285835, 32.634945, 37.150318>,  <39.484074, 32.910007, 36.938087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.285835, 32.634945, 37.150318> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342573, 0.716113, 0.608134,
		-0.798138, 0.119631, -0.590478,
		-0.495601, -0.687656, 0.530574,
		39.137154, 32.428650, 37.309490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.755531, 33.050861, 36.781212>,  <39.484074, 32.910007, 36.938087>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.755531, 33.050861, 36.781212> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.812603, 32.864857, 37.130703>,  <38.846844, 32.753254, 37.340397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.812603, 32.864857, 37.130703>,  <38.755531, 33.050861, 36.781212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.812603, 32.864857, 37.130703> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307831, 0.818134, 0.485692,
		-0.940683, -0.338257, -0.026418,
		0.142675, -0.465014, 0.873731,
		38.855404, 32.725353, 37.392822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.225861, 33.208649, 37.224396>,  <38.755531, 33.050861, 36.781212>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.225861, 33.208649, 37.224396> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.529541, 33.080849, 37.451214>,  <38.711750, 33.004169, 37.587303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.529541, 33.080849, 37.451214>,  <38.225861, 33.208649, 37.224396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.529541, 33.080849, 37.451214> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196242, 0.718312, 0.667470,
		-0.620569, -0.618020, 0.482643,
		0.759199, -0.319497, 0.567044,
		38.757301, 32.985001, 37.621326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.626175, 33.835155, 36.825134>,  <38.225861, 33.208649, 37.224396>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.626175, 33.835155, 36.825134> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.489326, 34.169209, 36.997414>,  <38.407219, 34.369640, 37.100780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.489326, 34.169209, 36.997414>,  <38.626175, 33.835155, 36.825134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.489326, 34.169209, 36.997414> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574655, 0.176696, -0.799093,
		-0.743455, -0.520889, 0.419464,
		-0.342122, 0.835137, 0.430697,
		38.386688, 34.419750, 37.126621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.844246, 33.777603, 36.870224>,  <38.626175, 33.835155, 36.825134>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.844246, 33.777603, 36.870224> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.951336, 34.162998, 36.871906>,  <38.015591, 34.394234, 36.872917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.951336, 34.162998, 36.871906>,  <37.844246, 33.777603, 36.870224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.951336, 34.162998, 36.871906> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688676, 0.194410, -0.698520,
		-0.673832, 0.184114, 0.715578,
		0.267722, 0.963487, 0.004205,
		38.031654, 34.452045, 36.873169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.169106, 34.247387, 36.966915>,  <37.844246, 33.777603, 36.870224>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.169106, 34.247387, 36.966915> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.468544, 34.461563, 36.810509>,  <37.648209, 34.590069, 36.716663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.468544, 34.461563, 36.810509>,  <37.169106, 34.247387, 36.966915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.468544, 34.461563, 36.810509> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552393, 0.177517, -0.814463,
		-0.366687, 0.825704, 0.428665,
		0.748600, 0.535445, -0.391020,
		37.693123, 34.622196, 36.693203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.893139, 34.864975, 36.662971>,  <37.169106, 34.247387, 36.966915>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.893139, 34.864975, 36.662971> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.230965, 34.801762, 36.458332>,  <37.433662, 34.763836, 36.335548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.230965, 34.801762, 36.458332>,  <36.893139, 34.864975, 36.662971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.230965, 34.801762, 36.458332> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508944, 0.059969, -0.858708,
		0.166381, 0.985612, -0.029780,
		0.844567, -0.158029, -0.511599,
		37.484333, 34.754353, 36.304852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.729507, 35.176254, 36.069363>,  <36.893139, 34.864975, 36.662971>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.729507, 35.176254, 36.069363> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.074715, 34.993999, 35.982098>,  <37.281841, 34.884647, 35.929737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.074715, 34.993999, 35.982098>,  <36.729507, 35.176254, 36.069363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.074715, 34.993999, 35.982098> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327747, -0.176382, -0.928155,
		0.384418, 0.872518, -0.301553,
		0.863021, -0.455633, -0.218161,
		37.333622, 34.857311, 35.916649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.863930, 35.486450, 35.414814>,  <36.729507, 35.176254, 36.069363>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.863930, 35.486450, 35.414814> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.118263, 35.177773, 35.420479>,  <37.270863, 34.992565, 35.423878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.118263, 35.177773, 35.420479>,  <36.863930, 35.486450, 35.414814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.118263, 35.177773, 35.420479> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196680, -0.179738, -0.963852,
		0.746347, 0.610065, -0.266060,
		0.635833, -0.771697, 0.014160,
		37.309013, 34.946262, 35.424728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.478516, 35.711655, 35.015968>,  <36.863930, 35.486450, 35.414814>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.478516, 35.711655, 35.015968> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.396770, 35.321049, 35.043251>,  <37.347721, 35.086685, 35.059620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.396770, 35.321049, 35.043251>,  <37.478516, 35.711655, 35.015968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.396770, 35.321049, 35.043251> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443699, 0.030293, -0.895664,
		0.872563, -0.213308, -0.439469,
		-0.204365, -0.976515, 0.068211,
		37.335461, 35.028095, 35.063713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.532986, 35.497097, 34.383324>,  <37.478516, 35.711655, 35.015968>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.532986, 35.497097, 34.383324> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.301224, 35.206699, 34.531502>,  <37.162167, 35.032463, 34.620407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.301224, 35.206699, 34.531502>,  <37.532986, 35.497097, 34.383324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.301224, 35.206699, 34.531502> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533583, -0.005695, -0.845729,
		0.616102, -0.687680, -0.384077,
		-0.579403, -0.725992, 0.370443,
		37.127403, 34.988903, 34.642635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.485222, 35.151081, 33.814476>,  <37.532986, 35.497097, 34.383324>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.485222, 35.151081, 33.814476> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.170471, 35.033947, 34.031757>,  <36.981621, 34.963665, 34.162125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.170471, 35.033947, 34.031757>,  <37.485222, 35.151081, 33.814476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.170471, 35.033947, 34.031757> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570415, 0.009271, -0.821304,
		0.235475, -0.956116, -0.174336,
		-0.786879, -0.292840, 0.543200,
		36.934406, 34.946095, 34.194717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.232414, 34.664936, 33.366367>,  <37.485222, 35.151081, 33.814476>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.232414, 34.664936, 33.366367> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.931774, 34.772575, 33.607262>,  <36.751392, 34.837158, 33.751801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.931774, 34.772575, 33.607262>,  <37.232414, 34.664936, 33.366367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.931774, 34.772575, 33.607262> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648525, -0.134681, -0.749183,
		-0.120488, -0.953652, 0.275738,
		-0.751597, 0.269091, 0.602240,
		36.706295, 34.853302, 33.787933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.766026, 34.151966, 33.266983>,  <37.232414, 34.664936, 33.366367>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.766026, 34.151966, 33.266983> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.561447, 34.466415, 33.405800>,  <36.438702, 34.655083, 33.489090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.561447, 34.466415, 33.405800>,  <36.766026, 34.151966, 33.266983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.561447, 34.466415, 33.405800> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768050, -0.237069, -0.594892,
		-0.385385, -0.570800, 0.725028,
		-0.511446, 0.786120, 0.347040,
		36.408012, 34.702251, 33.509911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.060219, 33.960667, 33.573704>,  <36.766026, 34.151966, 33.266983>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.060219, 33.960667, 33.573704> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.993267, 34.344391, 33.482750>,  <35.953094, 34.574627, 33.428177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.993267, 34.344391, 33.482750>,  <36.060219, 33.960667, 33.573704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.993267, 34.344391, 33.482750> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721923, -0.276333, -0.634403,
		-0.671425, 0.057967, 0.738802,
		-0.167381, 0.959312, -0.227384,
		35.943054, 34.632183, 33.414536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.371624, 34.038681, 33.635498>,  <36.060219, 33.960667, 33.573704>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.371624, 34.038681, 33.635498> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.467899, 34.360798, 33.418770>,  <35.525665, 34.554070, 33.288734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.467899, 34.360798, 33.418770>,  <35.371624, 34.038681, 33.635498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.467899, 34.360798, 33.418770> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715318, -0.230139, -0.659815,
		-0.656039, 0.546385, 0.520650,
		0.240691, 0.805295, -0.541819,
		35.540108, 34.602386, 33.256226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.777451, 34.344006, 33.476345>,  <35.371624, 34.038681, 33.635498>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.777451, 34.344006, 33.476345> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.034916, 34.475754, 33.200024>,  <35.189396, 34.554802, 33.034229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.034916, 34.475754, 33.200024>,  <34.777451, 34.344006, 33.476345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.034916, 34.475754, 33.200024> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617864, -0.308993, -0.723026,
		-0.451598, 0.892209, 0.004620,
		0.643664, 0.329372, -0.690805,
		35.228016, 34.574566, 32.992783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.267471, 34.670261, 33.857315>,  <34.777451, 34.344006, 33.476345>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.267471, 34.670261, 33.857315> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.886894, 34.641842, 33.977116>,  <33.658546, 34.624790, 34.048996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.886894, 34.641842, 33.977116>,  <34.267471, 34.670261, 33.857315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.886894, 34.641842, 33.977116> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275668, 0.236262, 0.931766,
		-0.136959, 0.969089, -0.205205,
		-0.951446, -0.071045, 0.299505,
		33.601460, 34.620529, 34.066967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.107166, 35.353237, 34.252655>,  <34.267471, 34.670261, 33.857315>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.107166, 35.353237, 34.252655> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.882881, 35.046650, 34.377960>,  <33.748310, 34.862698, 34.453144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.882881, 35.046650, 34.377960>,  <34.107166, 35.353237, 34.252655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.882881, 35.046650, 34.377960> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297771, 0.166369, 0.940029,
		-0.772618, 0.620364, 0.134947,
		-0.560709, -0.766466, 0.313266,
		33.714668, 34.816711, 34.471939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.899040, 35.623451, 34.791466>,  <34.107166, 35.353237, 34.252655>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.899040, 35.623451, 34.791466> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.783012, 35.247051, 34.861191>,  <33.713398, 35.021214, 34.903027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.783012, 35.247051, 34.861191>,  <33.899040, 35.623451, 34.791466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.783012, 35.247051, 34.861191> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266809, 0.095408, 0.959015,
		-0.919062, 0.324686, 0.223392,
		-0.290066, -0.940997, 0.174315,
		33.695992, 34.964752, 34.913486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.390331, 35.567741, 35.303059>,  <33.899040, 35.623451, 34.791466>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.390331, 35.567741, 35.303059> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.607693, 35.231991, 35.308029>,  <33.738110, 35.030540, 35.311012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.607693, 35.231991, 35.308029>,  <33.390331, 35.567741, 35.303059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.607693, 35.231991, 35.308029> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280848, 0.195724, 0.939583,
		-0.791097, -0.507086, 0.342096,
		0.543405, -0.839378, 0.012423,
		33.770714, 34.980179, 35.311756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.454426, 35.221428, 36.087254>,  <33.390331, 35.567741, 35.303059>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.454426, 35.221428, 36.087254> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.726196, 35.020435, 35.873379>,  <33.889259, 34.899837, 35.745052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.726196, 35.020435, 35.873379>,  <33.454426, 35.221428, 36.087254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.726196, 35.020435, 35.873379> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611282, -0.015447, 0.791262,
		-0.405856, -0.864448, 0.296665,
		0.679422, -0.502485, -0.534691,
		33.930023, 34.869690, 35.712971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.568188, 34.539467, 36.437889>,  <33.454426, 35.221428, 36.087254>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.568188, 34.539467, 36.437889> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.888184, 34.641541, 36.220669>,  <34.080181, 34.702785, 36.090336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.888184, 34.641541, 36.220669>,  <33.568188, 34.539467, 36.437889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.888184, 34.641541, 36.220669> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580637, -0.101074, 0.807865,
		0.151270, -0.961594, -0.229030,
		0.799987, 0.255188, -0.543047,
		34.128181, 34.718098, 36.057755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.144672, 34.040092, 36.685314>,  <33.568188, 34.539467, 36.437889>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.144672, 34.040092, 36.685314> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.302898, 34.364796, 36.513466>,  <34.397835, 34.559620, 36.410358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.302898, 34.364796, 36.513466>,  <34.144672, 34.040092, 36.685314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.302898, 34.364796, 36.513466> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540279, 0.172605, 0.823593,
		0.742716, -0.557898, -0.370301,
		0.395566, 0.811761, -0.429617,
		34.421570, 34.608322, 36.384579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.835476, 34.010155, 36.921101>,  <34.144672, 34.040092, 36.685314>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.835476, 34.010155, 36.921101> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.817024, 34.387039, 36.788372>,  <34.805954, 34.613171, 36.708736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.817024, 34.387039, 36.788372>,  <34.835476, 34.010155, 36.921101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.817024, 34.387039, 36.788372> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462671, 0.314548, 0.828852,
		0.885329, -0.115287, -0.450446,
		-0.046131, 0.942215, -0.331818,
		34.803185, 34.669704, 36.688828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.585831, 34.252464, 36.943436>,  <34.835476, 34.010155, 36.921101>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.585831, 34.252464, 36.943436> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.337257, 34.565361, 36.925934>,  <35.188114, 34.753101, 36.915432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.337257, 34.565361, 36.925934>,  <35.585831, 34.252464, 36.943436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.337257, 34.565361, 36.925934> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458865, 0.408657, 0.788951,
		0.635033, 0.470203, -0.612897,
		-0.621431, 0.782246, -0.043751,
		35.150829, 34.800034, 36.912807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.008499, 34.788898, 36.954895>,  <35.585831, 34.252464, 36.943436>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.008499, 34.788898, 36.954895> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.646767, 34.896259, 37.087643>,  <35.429726, 34.960674, 37.167294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.646767, 34.896259, 37.087643>,  <36.008499, 34.788898, 36.954895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.646767, 34.896259, 37.087643> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405791, 0.299584, 0.863472,
		0.132330, 0.915539, -0.379838,
		-0.904336, 0.268398, 0.331873,
		35.375465, 34.976780, 37.187206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.179127, 35.381668, 37.339378>,  <36.008499, 34.788898, 36.954895>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.179127, 35.381668, 37.339378> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.818771, 35.271797, 37.473816>,  <35.602558, 35.205875, 37.554478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.818771, 35.271797, 37.473816>,  <36.179127, 35.381668, 37.339378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.818771, 35.271797, 37.473816> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216971, 0.385657, 0.896768,
		-0.375938, 0.880807, -0.287835,
		-0.900885, -0.274677, 0.336093,
		35.548508, 35.189392, 37.574642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.909664, 36.041981, 37.653431>,  <36.179127, 35.381668, 37.339378>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.909664, 36.041981, 37.653431> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.713474, 35.725475, 37.799488>,  <35.595760, 35.535572, 37.887123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.713474, 35.725475, 37.799488>,  <35.909664, 36.041981, 37.653431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.713474, 35.725475, 37.799488> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077064, 0.377977, 0.922602,
		-0.868040, 0.480655, -0.124411,
		-0.490478, -0.791267, 0.365140,
		35.566330, 35.488094, 37.909031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<32.237377, 35.116787, 30.472456> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.140583, 34.768093, 30.642876>,  <32.082504, 34.558876, 30.745129>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.140583, 34.768093, 30.642876>,  <32.237377, 35.116787, 30.472456>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.140583, 34.768093, 30.642876> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141404, 0.402728, 0.904331,
		-0.959920, 0.279083, 0.025812,
		-0.241988, -0.871736, 0.426050,
		32.067986, 34.506573, 30.770691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.002655, 35.251213, 31.128876>,  <32.237377, 35.116787, 30.472456>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.002655, 35.251213, 31.128876> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.068527, 34.859570, 31.176571>,  <32.108051, 34.624584, 31.205187>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.068527, 34.859570, 31.176571>,  <32.002655, 35.251213, 31.128876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.068527, 34.859570, 31.176571> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085604, 0.134619, 0.987193,
		-0.982625, -0.152364, 0.105985,
		0.164680, -0.979113, 0.119237,
		32.117931, 34.565834, 31.212341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.590107, 35.135014, 31.722517>,  <32.002655, 35.251213, 31.128876>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.590107, 35.135014, 31.722517> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.851753, 34.833458, 31.697927>,  <32.008743, 34.652523, 31.683174>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.851753, 34.833458, 31.697927>,  <31.590107, 35.135014, 31.722517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.851753, 34.833458, 31.697927> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196668, 0.091038, 0.976234,
		-0.730378, -0.650662, 0.207816,
		0.654118, -0.753891, -0.061472,
		32.047989, 34.607292, 31.679485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.474081, 34.774490, 32.343521>,  <31.590107, 35.135014, 31.722517>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.474081, 34.774490, 32.343521> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.811047, 34.597897, 32.219952>,  <32.013226, 34.491940, 32.145809>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.811047, 34.597897, 32.219952>,  <31.474081, 34.774490, 32.343521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.811047, 34.597897, 32.219952> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385516, 0.093283, 0.917974,
		-0.376457, -0.892405, 0.248783,
		0.842412, -0.441488, -0.308919,
		32.063770, 34.465450, 32.127277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.603666, 34.204491, 32.859074>,  <31.474081, 34.774490, 32.343521>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.603666, 34.204491, 32.859074> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.940306, 34.329330, 32.682755>,  <32.142288, 34.404232, 32.576962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.940306, 34.329330, 32.682755>,  <31.603666, 34.204491, 32.859074>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.940306, 34.329330, 32.682755> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435313, 0.091144, 0.895653,
		0.319707, -0.945668, -0.059153,
		0.841599, 0.312097, -0.440801,
		32.192787, 34.422958, 32.550514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.136059, 33.848339, 33.220314>,  <31.603666, 34.204491, 32.859074>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.136059, 33.848339, 33.220314> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.336849, 34.128727, 33.017666>,  <32.457321, 34.296959, 32.896076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.336849, 34.128727, 33.017666>,  <32.136059, 33.848339, 33.220314>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.336849, 34.128727, 33.017666> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649186, 0.081673, 0.756232,
		0.571473, -0.708499, -0.414062,
		0.501972, 0.700969, -0.506622,
		32.487442, 34.339016, 32.865681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.765377, 33.572807, 33.088894>,  <32.136059, 33.848339, 33.220314>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.765377, 33.572807, 33.088894> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.794353, 33.971684, 33.081287>,  <32.811737, 34.211010, 33.076721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.794353, 33.971684, 33.081287>,  <32.765377, 33.572807, 33.088894>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.794353, 33.971684, 33.081287> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691920, -0.036509, 0.721051,
		0.718331, -0.065391, -0.692621,
		0.072437, 0.997192, -0.019020,
		32.816086, 34.270840, 33.075581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.472164, 33.730751, 33.208271>,  <32.765377, 33.572807, 33.088894>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.472164, 33.730751, 33.208271> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.277351, 34.074467, 33.270782>,  <33.160465, 34.280697, 33.308289>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.277351, 34.074467, 33.270782>,  <33.472164, 33.730751, 33.208271>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.277351, 34.074467, 33.270782> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510561, 0.134935, 0.849188,
		0.708609, 0.493374, -0.504436,
		-0.487033, 0.859287, 0.156281,
		33.131241, 34.332253, 33.317665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.966751, 34.236713, 33.341824>,  <33.472164, 33.730751, 33.208271>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.966751, 34.236713, 33.341824> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.643044, 34.401573, 33.509262>,  <33.448818, 34.500488, 33.609726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.643044, 34.401573, 33.509262>,  <33.966751, 34.236713, 33.341824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.643044, 34.401573, 33.509262> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529661, 0.203757, 0.823373,
		0.254062, 0.888040, -0.383193,
		-0.809266, 0.412150, 0.418593,
		33.400265, 34.525219, 33.634842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.361004, 34.711540, 32.935364>,  <33.966751, 34.236713, 33.341824>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.361004, 34.711540, 32.935364> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.701687, 34.606163, 32.754173>,  <34.906097, 34.542934, 32.645458>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.701687, 34.606163, 32.754173>,  <34.361004, 34.711540, 32.935364>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.701687, 34.606163, 32.754173> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516228, -0.273328, -0.811665,
		0.090017, 0.925143, -0.368793,
		0.851708, -0.263445, -0.452980,
		34.957199, 34.527130, 32.618279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.267235, 34.977898, 32.200073>,  <34.361004, 34.711540, 32.935364>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.267235, 34.977898, 32.200073> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.574013, 34.721352, 32.191673>,  <34.758080, 34.567425, 32.186634>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.574013, 34.721352, 32.191673>,  <34.267235, 34.977898, 32.200073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.574013, 34.721352, 32.191673> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243922, -0.261099, -0.933986,
		0.593542, 0.721442, -0.356692,
		0.766948, -0.641365, -0.021002,
		34.804096, 34.528942, 32.185371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.625725, 35.079384, 31.602016>,  <34.267235, 34.977898, 32.200073>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.625725, 35.079384, 31.602016> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.740894, 34.707817, 31.695152>,  <34.809994, 34.484879, 31.751034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.740894, 34.707817, 31.695152>,  <34.625725, 35.079384, 31.602016>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.740894, 34.707817, 31.695152> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084481, -0.266823, -0.960036,
		0.953920, 0.256745, -0.155300,
		0.287921, -0.928918, 0.232838,
		34.827271, 34.429142, 31.765003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.008877, 34.825207, 30.975687>,  <34.625725, 35.079384, 31.602016>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.008877, 34.825207, 30.975687> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.971523, 34.485817, 31.184063>,  <34.949112, 34.282185, 31.309088>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.971523, 34.485817, 31.184063>,  <35.008877, 34.825207, 30.975687>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.971523, 34.485817, 31.184063> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022700, -0.524904, -0.850859,
		0.995371, -0.067632, 0.068278,
		-0.093385, -0.848470, 0.520939,
		34.943508, 34.231277, 31.340345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.579571, 34.340210, 30.729084>,  <35.008877, 34.825207, 30.975687>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.579571, 34.340210, 30.729084> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.278286, 34.126629, 30.882740>,  <35.097515, 33.998482, 30.974934>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.278286, 34.126629, 30.882740>,  <35.579571, 34.340210, 30.729084>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.278286, 34.126629, 30.882740> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009671, -0.574946, -0.818135,
		0.657707, -0.619944, 0.427892,
		-0.753212, -0.533954, 0.384141,
		35.052322, 33.966442, 30.997982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.737450, 33.642483, 30.613171>,  <35.579571, 34.340210, 30.729084>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.737450, 33.642483, 30.613171> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.346462, 33.635723, 30.697323>,  <35.111870, 33.631668, 30.747814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.346462, 33.635723, 30.697323>,  <35.737450, 33.642483, 30.613171>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.346462, 33.635723, 30.697323> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154340, -0.622685, -0.767101,
		0.143964, -0.782291, 0.606050,
		-0.977473, -0.016897, 0.210383,
		35.053219, 33.630653, 30.760437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.561008, 32.932083, 30.626472>,  <35.737450, 33.642483, 30.613171>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.561008, 32.932083, 30.626472> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.225586, 33.130173, 30.535631>,  <35.024334, 33.249027, 30.481127>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.225586, 33.130173, 30.535631>,  <35.561008, 32.932083, 30.626472>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.225586, 33.130173, 30.535631> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090206, -0.537294, -0.838557,
		-0.537294, -0.682693, 0.495224,
		0.838557, -0.495224, 0.227102,
		34.974018, 33.278740, 30.467501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.182281, 32.446999, 30.425261>,  <35.561008, 32.932083, 30.626472>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.182281, 32.446999, 30.425261> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.990437, 32.761353, 30.269133>,  <34.875328, 32.949966, 30.175455>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.990437, 32.761353, 30.269133>,  <35.182281, 32.446999, 30.425261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.990437, 32.761353, 30.269133> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214993, -0.536508, -0.816050,
		-0.850734, -0.307472, 0.426277,
		-0.479613, 0.785888, -0.390321,
		34.846554, 32.997120, 30.152037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.783257, 32.055225, 29.917923>,  <35.182281, 32.446999, 30.425261>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.783257, 32.055225, 29.917923> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.709969, 32.432308, 29.806398>,  <34.665997, 32.658558, 29.739483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.709969, 32.432308, 29.806398>,  <34.783257, 32.055225, 29.917923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.709969, 32.432308, 29.806398> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335684, -0.326561, -0.883558,
		-0.923983, -0.068296, 0.376285,
		-0.183224, 0.942706, -0.278811,
		34.655003, 32.715118, 29.722755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.179962, 32.107018, 29.656277>,  <34.783257, 32.055225, 29.917923>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.179962, 32.107018, 29.656277> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.356300, 32.429142, 29.497717>,  <34.462105, 32.622417, 29.402582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.356300, 32.429142, 29.497717>,  <34.179962, 32.107018, 29.656277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.356300, 32.429142, 29.497717> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106650, -0.391503, -0.913976,
		-0.891223, 0.445200, -0.086707,
		0.440848, 0.805309, -0.396397,
		34.488556, 32.670734, 29.378798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.703434, 32.442665, 29.178520>,  <34.179962, 32.107018, 29.656277>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.703434, 32.442665, 29.178520> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.074970, 32.536987, 29.064224>,  <34.297894, 32.593578, 28.995646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.074970, 32.536987, 29.064224>,  <33.703434, 32.442665, 29.178520>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.074970, 32.536987, 29.064224> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158148, -0.445108, -0.881401,
		-0.335022, 0.863873, -0.376144,
		0.928843, 0.235802, -0.285741,
		34.353622, 32.607727, 28.978502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.655674, 32.626377, 28.473835>,  <33.703434, 32.442665, 29.178520>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.655674, 32.626377, 28.473835> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.045589, 32.557072, 28.530081>,  <34.279537, 32.515488, 28.563828>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.045589, 32.557072, 28.530081>,  <33.655674, 32.626377, 28.473835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.045589, 32.557072, 28.530081> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067169, -0.373096, -0.925358,
		0.212791, 0.911471, -0.352051,
		0.974786, -0.173261, 0.140614,
		34.338024, 32.505093, 28.572266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.971256, 32.865952, 27.894049>,  <33.655674, 32.626377, 28.473835>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.971256, 32.865952, 27.894049> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.216873, 32.600182, 28.064459>,  <34.364243, 32.440720, 28.166706>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.216873, 32.600182, 28.064459>,  <33.971256, 32.865952, 27.894049>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.216873, 32.600182, 28.064459> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104781, -0.466370, -0.878362,
		0.782289, 0.583989, -0.216751,
		0.614040, -0.664421, 0.426027,
		34.401085, 32.400856, 28.192266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.572510, 32.835381, 27.512358>,  <33.971256, 32.865952, 27.894049>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.572510, 32.835381, 27.512358> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.582970, 32.486984, 27.708597>,  <34.589245, 32.277946, 27.826340>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.582970, 32.486984, 27.708597>,  <34.572510, 32.835381, 27.512358>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.582970, 32.486984, 27.708597> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080708, -0.487324, -0.869483,
		0.996395, 0.062328, 0.057554,
		0.026146, -0.870994, 0.490598,
		34.590813, 32.225685, 27.855776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<30.951170, 28.049871, 32.422550> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.962070, 28.428017, 32.292603>,  <30.968611, 28.654903, 32.214634>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.962070, 28.428017, 32.292603>,  <30.951170, 28.049871, 32.422550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.962070, 28.428017, 32.292603> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589818, 0.247187, 0.768774,
		0.807077, -0.212565, -0.550857,
		0.027249, 0.945365, -0.324873,
		30.970245, 28.711626, 32.195141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.590017, 28.272707, 32.425625>,  <30.951170, 28.049871, 32.422550>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.590017, 28.272707, 32.425625> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.392035, 28.619970, 32.440159>,  <31.273245, 28.828327, 32.448879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.392035, 28.619970, 32.440159>,  <31.590017, 28.272707, 32.425625>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.392035, 28.619970, 32.440159> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551309, 0.281445, 0.785396,
		0.671622, 0.408768, -0.617926,
		-0.494957, 0.868157, 0.036333,
		31.243547, 28.880417, 32.451057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.134815, 28.869183, 32.536106>,  <31.590017, 28.272707, 32.425625>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.134815, 28.869183, 32.536106> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.800919, 29.056746, 32.651569>,  <31.600580, 29.169283, 32.720848>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.800919, 29.056746, 32.651569>,  <32.134815, 28.869183, 32.536106>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.800919, 29.056746, 32.651569> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509665, 0.459525, 0.727378,
		0.208426, 0.754296, -0.622573,
		-0.834746, 0.468908, 0.288661,
		31.550495, 29.197418, 32.738167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.359402, 29.465519, 32.721279>,  <32.134815, 28.869183, 32.536106>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.359402, 29.465519, 32.721279> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.009171, 29.460863, 32.914455>,  <31.799032, 29.458069, 33.030361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.009171, 29.460863, 32.914455>,  <32.359402, 29.465519, 32.721279>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.009171, 29.460863, 32.914455> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350779, 0.672035, 0.652168,
		-0.332143, 0.740428, -0.584335,
		-0.875577, -0.011641, 0.482938,
		31.746498, 29.457371, 33.059338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.162563, 30.105593, 32.779736>,  <32.359402, 29.465519, 32.721279>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.162563, 30.105593, 32.779736> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.937067, 29.926498, 33.057362>,  <31.801769, 29.819042, 33.223938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.937067, 29.926498, 33.057362>,  <32.162563, 30.105593, 32.779736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.937067, 29.926498, 33.057362> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322666, 0.654164, 0.684073,
		-0.760315, 0.609594, -0.224312,
		-0.563744, -0.447734, 0.694066,
		31.767944, 29.792179, 33.265583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.870501, 30.679701, 33.202579>,  <32.162563, 30.105593, 32.779736>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.870501, 30.679701, 33.202579> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.831036, 30.359234, 33.438683>,  <31.807358, 30.166954, 33.580345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.831036, 30.359234, 33.438683>,  <31.870501, 30.679701, 33.202579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.831036, 30.359234, 33.438683> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092911, 0.583141, 0.807040,
		-0.990774, 0.134465, 0.016904,
		-0.098661, -0.801165, 0.590254,
		31.801437, 30.118885, 33.615757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.380392, 30.754820, 33.820580>,  <31.870501, 30.679701, 33.202579>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.380392, 30.754820, 33.820580> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.640785, 30.470945, 33.928333>,  <31.797022, 30.300621, 33.992985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.640785, 30.470945, 33.928333>,  <31.380392, 30.754820, 33.820580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.640785, 30.470945, 33.928333> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168130, 0.480864, 0.860524,
		-0.740238, -0.514896, 0.432354,
		0.650984, -0.709684, 0.269384,
		31.836081, 30.258039, 34.009148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.545324, 30.997284, 34.428589>,  <31.380392, 30.754820, 33.820580>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.545324, 30.997284, 34.428589> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.769781, 30.666220, 34.424599>,  <31.904455, 30.467581, 34.422207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.769781, 30.666220, 34.424599>,  <31.545324, 30.997284, 34.428589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.769781, 30.666220, 34.424599> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364307, 0.236142, 0.900843,
		-0.743237, -0.509133, 0.434031,
		0.561142, -0.827660, -0.009971,
		31.938124, 30.417921, 34.421608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.352312, 30.599180, 35.025810>,  <31.545324, 30.997284, 34.428589>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.352312, 30.599180, 35.025810> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.729944, 30.532463, 34.912045>,  <31.956524, 30.492432, 34.843784>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.729944, 30.532463, 34.912045>,  <31.352312, 30.599180, 35.025810>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.729944, 30.532463, 34.912045> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296037, 0.049020, 0.953918,
		-0.145167, -0.984772, 0.095657,
		0.944081, -0.166795, -0.284413,
		32.013168, 30.482426, 34.826721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.604090, 30.381834, 35.610470>,  <31.352312, 30.599180, 35.025810>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.604090, 30.381834, 35.610470> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.943270, 30.435219, 35.405270>,  <32.146778, 30.467251, 35.282150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.943270, 30.435219, 35.405270>,  <31.604090, 30.381834, 35.610470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.943270, 30.435219, 35.405270> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500620, 0.116466, 0.857797,
		0.174231, -0.984186, 0.031943,
		0.847952, 0.133464, -0.512996,
		32.197655, 30.475258, 35.251369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.051678, 29.826139, 35.878258>,  <31.604090, 30.381834, 35.610470>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.051678, 29.826139, 35.878258> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.259823, 30.123718, 35.710564>,  <32.384712, 30.302265, 35.609947>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.259823, 30.123718, 35.710564>,  <32.051678, 29.826139, 35.878258>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.259823, 30.123718, 35.710564> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520468, 0.112910, 0.846383,
		0.677002, -0.658628, -0.328447,
		0.520367, 0.743949, -0.419235,
		32.415932, 30.346903, 35.584793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.773678, 29.686598, 35.965225>,  <32.051678, 29.826139, 35.878258>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.773678, 29.686598, 35.965225> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.763012, 30.083111, 35.913616>,  <32.756611, 30.321018, 35.882652>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.763012, 30.083111, 35.913616>,  <32.773678, 29.686598, 35.965225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.763012, 30.083111, 35.913616> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783038, 0.100944, 0.613727,
		0.621401, -0.084662, -0.778905,
		-0.026667, 0.991283, -0.129020,
		32.755013, 30.380495, 35.874908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.495739, 29.883701, 35.834167>,  <32.773678, 29.686598, 35.965225>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.495739, 29.883701, 35.834167> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.333714, 30.227505, 35.958851>,  <33.236496, 30.433786, 36.033661>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.333714, 30.227505, 35.958851>,  <33.495739, 29.883701, 35.834167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.333714, 30.227505, 35.958851> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758356, 0.125420, 0.639660,
		0.510700, 0.495491, -0.702619,
		-0.405068, 0.859511, 0.311707,
		33.212193, 30.485357, 36.052364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.071960, 30.138821, 36.054150>,  <33.495739, 29.883701, 35.834167>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.071960, 30.138821, 36.054150> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.782444, 30.365112, 36.212173>,  <33.608734, 30.500887, 36.306988>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.782444, 30.365112, 36.212173>,  <34.071960, 30.138821, 36.054150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.782444, 30.365112, 36.212173> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515362, 0.062506, 0.854690,
		0.458830, 0.822218, -0.336797,
		-0.723794, 0.565729, 0.395060,
		33.565308, 30.534832, 36.330692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.505611, 30.362333, 35.566059>,  <34.071960, 30.138821, 36.054150>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.505611, 30.362333, 35.566059> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.847290, 30.213062, 35.421234>,  <35.052296, 30.123499, 35.334339>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.847290, 30.213062, 35.421234>,  <34.505611, 30.362333, 35.566059>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.847290, 30.213062, 35.421234> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462950, -0.228874, -0.856326,
		0.236695, 0.899086, -0.368266,
		0.854197, -0.373177, -0.362058,
		35.103550, 30.101109, 35.312618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.466064, 30.553381, 34.812355>,  <34.505611, 30.362333, 35.566059>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.466064, 30.553381, 34.812355> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.753952, 30.277235, 34.841766>,  <34.926685, 30.111547, 34.859413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.753952, 30.277235, 34.841766>,  <34.466064, 30.553381, 34.812355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.753952, 30.277235, 34.841766> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170236, -0.278157, -0.945330,
		0.673075, 0.667851, -0.317719,
		0.719715, -0.690365, 0.073528,
		34.969868, 30.070126, 34.863827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.944321, 30.667309, 34.206722>,  <34.466064, 30.553381, 34.812355>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.944321, 30.667309, 34.206722> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.981232, 30.292442, 34.341305>,  <35.003380, 30.067522, 34.422054>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.981232, 30.292442, 34.341305>,  <34.944321, 30.667309, 34.206722>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.981232, 30.292442, 34.341305> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056330, -0.332441, -0.941440,
		0.994139, 0.105825, 0.022114,
		0.092276, -0.937168, 0.336454,
		35.008915, 30.011292, 34.442242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.605709, 30.248730, 33.882893>,  <34.944321, 30.667309, 34.206722>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.605709, 30.248730, 33.882893> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.311947, 29.996185, 33.982517>,  <35.135689, 29.844660, 34.042294>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.311947, 29.996185, 33.982517>,  <35.605709, 30.248730, 33.882893>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.311947, 29.996185, 33.982517> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040753, -0.325286, -0.944737,
		0.677486, -0.703971, 0.213162,
		-0.734406, -0.631359, 0.249066,
		35.091625, 29.806778, 34.057236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.727592, 29.645348, 33.459564>,  <35.605709, 30.248730, 33.882893>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.727592, 29.645348, 33.459564> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.351723, 29.597506, 33.587757>,  <35.126202, 29.568800, 33.664673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.351723, 29.597506, 33.587757>,  <35.727592, 29.645348, 33.459564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.351723, 29.597506, 33.587757> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238529, -0.442438, -0.864495,
		0.245191, -0.888787, 0.387218,
		-0.939673, -0.119604, 0.320483,
		35.069820, 29.561625, 33.683903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.605072, 28.874933, 33.239910>,  <35.727592, 29.645348, 33.459564>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.605072, 28.874933, 33.239910> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.262184, 29.072084, 33.299561>,  <35.056450, 29.190374, 33.335350>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.262184, 29.072084, 33.299561>,  <35.605072, 28.874933, 33.239910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.262184, 29.072084, 33.299561> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384219, -0.419380, -0.822494,
		-0.342844, -0.762361, 0.548874,
		-0.857224, 0.492875, 0.149132,
		35.005016, 29.219948, 33.344299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.137608, 28.367987, 33.147331>,  <35.605072, 28.874933, 33.239910>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.137608, 28.367987, 33.147331> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.956516, 28.721752, 33.101982>,  <34.847862, 28.934011, 33.074772>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.956516, 28.721752, 33.101982>,  <35.137608, 28.367987, 33.147331>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.956516, 28.721752, 33.101982> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411658, -0.320110, -0.853269,
		-0.790934, -0.339625, 0.508997,
		-0.452726, 0.884412, -0.113376,
		34.820698, 28.987076, 33.067970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.549217, 28.199747, 32.862347>,  <35.137608, 28.367987, 33.147331>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.549217, 28.199747, 32.862347> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.569176, 28.594023, 32.797943>,  <34.581150, 28.830589, 32.759300>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.569176, 28.594023, 32.797943>,  <34.549217, 28.199747, 32.862347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.569176, 28.594023, 32.797943> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461118, -0.120263, -0.879151,
		-0.885935, 0.118110, 0.448519,
		0.049896, 0.985691, -0.161008,
		34.584145, 28.889730, 32.749641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.865269, 28.345304, 32.644276>,  <34.549217, 28.199747, 32.862347>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.865269, 28.345304, 32.644276> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.092575, 28.653999, 32.530087>,  <34.228958, 28.839216, 32.461575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.092575, 28.653999, 32.530087>,  <33.865269, 28.345304, 32.644276>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.092575, 28.653999, 32.530087> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437809, -0.010167, -0.899011,
		-0.696702, 0.635861, 0.332095,
		0.568270, 0.771736, -0.285470,
		34.263058, 28.885521, 32.444447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.442921, 28.888163, 32.439083>,  <33.865269, 28.345304, 32.644276>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.442921, 28.888163, 32.439083> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.790859, 28.972322, 32.260597>,  <33.999622, 29.022820, 32.153507>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.790859, 28.972322, 32.260597>,  <33.442921, 28.888163, 32.439083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.790859, 28.972322, 32.260597> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413098, -0.183790, -0.891948,
		-0.269677, 0.960183, -0.072952,
		0.869842, 0.210401, -0.446214,
		34.051811, 29.035442, 32.126732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.317417, 29.342522, 31.915638>,  <33.442921, 28.888163, 32.439083>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.317417, 29.342522, 31.915638> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.659050, 29.143242, 31.855848>,  <33.864029, 29.023674, 31.819975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.659050, 29.143242, 31.855848>,  <33.317417, 29.342522, 31.915638>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.659050, 29.143242, 31.855848> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351853, -0.341741, -0.871443,
		0.383071, 0.796876, -0.467168,
		0.854082, -0.498199, -0.149472,
		33.915276, 28.993782, 31.811007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.498562, 29.391808, 31.152901>,  <33.317417, 29.342522, 31.915638>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.498562, 29.391808, 31.152901> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.717564, 29.084057, 31.284536>,  <33.848965, 28.899406, 31.363518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.717564, 29.084057, 31.284536>,  <33.498562, 29.391808, 31.152901>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.717564, 29.084057, 31.284536> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085780, -0.442796, -0.892509,
		0.832395, 0.460423, -0.308429,
		0.547503, -0.769378, 0.329087,
		33.881813, 28.853243, 31.383263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.014095, 29.267433, 30.594965>,  <33.498562, 29.391808, 31.152901>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.014095, 29.267433, 30.594965> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.999763, 28.923931, 30.799419>,  <33.991165, 28.717831, 30.922092>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.999763, 28.923931, 30.799419>,  <34.014095, 29.267433, 30.594965>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.999763, 28.923931, 30.799419> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321593, -0.474348, -0.819495,
		0.946200, -0.193742, -0.259172,
		-0.035832, -0.858754, 0.511134,
		33.989014, 28.666306, 30.952759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.495583, 28.794773, 30.380808>,  <34.014095, 29.267433, 30.594965>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.495583, 28.794773, 30.380808> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.225220, 28.555059, 30.552393>,  <34.063000, 28.411232, 30.655344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.225220, 28.555059, 30.552393>,  <34.495583, 28.794773, 30.380808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.225220, 28.555059, 30.552393> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339637, -0.263268, -0.902960,
		0.654059, -0.756010, -0.025593,
		-0.675909, -0.599282, 0.428962,
		34.022446, 28.375275, 30.681082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.181232, 28.352612, 30.359352>,  <34.495583, 28.794773, 30.380808>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.181232, 28.352612, 30.359352> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.494568, 28.416729, 30.119125>,  <35.682571, 28.455198, 29.974989>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.494568, 28.416729, 30.119125>,  <35.181232, 28.352612, 30.359352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.494568, 28.416729, 30.119125> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550069, 0.271198, 0.789858,
		0.289483, -0.949082, 0.124268,
		0.783342, 0.160295, -0.600568,
		35.729572, 28.464817, 29.938955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.758644, 28.067585, 30.660692>,  <35.181232, 28.352612, 30.359352>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.758644, 28.067585, 30.660692> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.933067, 28.336164, 30.421022>,  <36.037720, 28.497313, 30.277220>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.933067, 28.336164, 30.421022>,  <35.758644, 28.067585, 30.660692>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.933067, 28.336164, 30.421022> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607910, 0.271151, 0.746272,
		0.663550, -0.689663, -0.289942,
		0.436059, 0.671447, -0.599176,
		36.063885, 28.537598, 30.241270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.522118, 28.073231, 30.785624>,  <35.758644, 28.067585, 30.660692>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.522118, 28.073231, 30.785624> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.425560, 28.426439, 30.624626>,  <36.367626, 28.638365, 30.528027>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.425560, 28.426439, 30.624626>,  <36.522118, 28.073231, 30.785624>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.425560, 28.426439, 30.624626> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710165, 0.443409, 0.546859,
		0.661358, -0.153828, -0.734127,
		-0.241397, 0.883020, -0.402496,
		36.353142, 28.691345, 30.503878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.144848, 28.447149, 30.680477>,  <36.522118, 28.073231, 30.785624>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.144848, 28.447149, 30.680477> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.881897, 28.746120, 30.642107>,  <36.724125, 28.925503, 30.619085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.881897, 28.746120, 30.642107>,  <37.144848, 28.447149, 30.680477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.881897, 28.746120, 30.642107> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625396, 0.612153, 0.483889,
		0.420393, 0.258108, -0.869856,
		-0.657381, 0.747428, -0.095925,
		36.684681, 28.970348, 30.613329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.507240, 28.990412, 30.390844>,  <37.144848, 28.447149, 30.680477>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.507240, 28.990412, 30.390844> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.189690, 29.128166, 30.591307>,  <36.999161, 29.210819, 30.711584>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.189690, 29.128166, 30.591307>,  <37.507240, 28.990412, 30.390844>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.189690, 29.128166, 30.591307> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592083, 0.625575, 0.508030,
		-0.138550, 0.700039, -0.700536,
		-0.793878, 0.344387, 0.501154,
		36.951527, 29.231482, 30.741653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.686146, 29.722204, 30.531031>,  <37.507240, 28.990412, 30.390844>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.686146, 29.722204, 30.531031> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.403744, 29.598576, 30.785912>,  <37.234303, 29.524399, 30.938841>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.403744, 29.598576, 30.785912>,  <37.686146, 29.722204, 30.531031>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.403744, 29.598576, 30.785912> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503398, 0.413858, 0.758494,
		-0.498140, 0.856269, -0.136601,
		-0.706008, -0.309072, 0.637203,
		37.191940, 29.505854, 30.977072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.532017, 30.329203, 30.968206>,  <37.686146, 29.722204, 30.531031>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.532017, 30.329203, 30.968206> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.410763, 29.996895, 31.154940>,  <37.338009, 29.797510, 31.266979>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.410763, 29.996895, 31.154940>,  <37.532017, 30.329203, 30.968206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.410763, 29.996895, 31.154940> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501422, 0.277529, 0.819484,
		-0.810360, 0.482497, 0.332436,
		-0.303138, -0.830767, 0.466833,
		37.319820, 29.747665, 31.294989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.389507, 30.614723, 31.671286>,  <37.532017, 30.329203, 30.968206>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.389507, 30.614723, 31.671286> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.445663, 30.218685, 31.670670>,  <37.479355, 29.981062, 31.670300>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.445663, 30.218685, 31.670670>,  <37.389507, 30.614723, 31.671286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.445663, 30.218685, 31.670670> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635251, 0.088881, 0.767174,
		-0.759439, -0.108678, 0.641437,
		0.140387, -0.990095, -0.001538,
		37.487778, 29.921656, 31.670208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.247471, 30.376715, 32.396572>,  <37.389507, 30.614723, 31.671286>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.247471, 30.376715, 32.396572> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.479527, 30.097095, 32.229351>,  <37.618759, 29.929323, 32.129017>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.479527, 30.097095, 32.229351>,  <37.247471, 30.376715, 32.396572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.479527, 30.097095, 32.229351> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538739, -0.055631, 0.840634,
		-0.610902, -0.712906, 0.344331,
		0.580138, -0.699049, -0.418056,
		37.653568, 29.887381, 32.103935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.247204, 29.748255, 32.795849>,  <37.247471, 30.376715, 32.396572>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.247204, 29.748255, 32.795849> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.574780, 29.688063, 32.574329>,  <37.771324, 29.651947, 32.441418>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.574780, 29.688063, 32.574329>,  <37.247204, 29.748255, 32.795849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.574780, 29.688063, 32.574329> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525563, -0.190884, 0.829064,
		-0.230472, -0.970009, -0.077234,
		0.818942, -0.150485, -0.553794,
		37.820461, 29.642918, 32.408192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.610451, 29.211273, 33.115891>,  <37.247204, 29.748255, 32.795849>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.610451, 29.211273, 33.115891> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.903778, 29.379805, 32.902454>,  <38.079777, 29.480923, 32.774391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.903778, 29.379805, 32.902454>,  <37.610451, 29.211273, 33.115891>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.903778, 29.379805, 32.902454> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617266, -0.083609, 0.782300,
		0.284993, -0.903045, -0.321385,
		0.733322, 0.421330, -0.533591,
		38.123775, 29.506203, 32.742378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.157040, 28.867092, 33.391651>,  <37.610451, 29.211273, 33.115891>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.157040, 28.867092, 33.391651> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.345215, 29.155584, 33.188274>,  <38.458118, 29.328680, 33.066246>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.345215, 29.155584, 33.188274>,  <38.157040, 28.867092, 33.391651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.345215, 29.155584, 33.188274> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792953, -0.092691, 0.602191,
		0.387191, -0.686464, -0.615508,
		0.470434, 0.721232, -0.508445,
		38.486343, 29.371954, 33.035740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.880020, 28.691414, 33.342907>,  <38.157040, 28.867092, 33.391651>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.880020, 28.691414, 33.342907> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.863655, 29.083124, 33.263561>,  <38.853836, 29.318150, 33.215954>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.863655, 29.083124, 33.263561>,  <38.880020, 28.691414, 33.342907>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.863655, 29.083124, 33.263561> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766344, 0.158138, 0.622663,
		0.641126, -0.126540, -0.756931,
		-0.040908, 0.979275, -0.198359,
		38.851383, 29.376907, 33.204052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.589375, 28.988350, 33.156456>,  <38.880020, 28.691414, 33.342907>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.589375, 28.988350, 33.156456> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.362843, 29.273193, 33.322430>,  <39.226925, 29.444099, 33.422016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.362843, 29.273193, 33.322430>,  <39.589375, 28.988350, 33.156456>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.362843, 29.273193, 33.322430> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699592, 0.149195, 0.698794,
		0.435710, 0.686035, -0.582678,
		-0.566329, 0.712108, 0.414939,
		39.192944, 29.486826, 33.446911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<35.093243, 32.359310, 27.119774> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.864952, 32.133320, 27.358126>,  <34.727978, 31.997726, 27.501137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.864952, 32.133320, 27.358126>,  <35.093243, 32.359310, 27.119774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.864952, 32.133320, 27.358126> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118058, -0.774595, -0.621342,
		0.812607, -0.284270, 0.508784,
		-0.570730, -0.564973, 0.595880,
		34.693733, 31.963829, 27.536890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.291767, 31.710258, 26.908298>,  <35.093243, 32.359310, 27.119774>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.291767, 31.710258, 26.908298> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.983936, 31.603081, 27.140146>,  <34.799240, 31.538774, 27.279255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.983936, 31.603081, 27.140146>,  <35.291767, 31.710258, 26.908298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.983936, 31.603081, 27.140146> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217419, -0.743520, -0.632381,
		0.600403, -0.612686, 0.513938,
		-0.769575, -0.267944, 0.579621,
		34.753063, 31.522697, 27.314034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.350555, 30.976591, 26.973848>,  <35.291767, 31.710258, 26.908298>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.350555, 30.976591, 26.973848> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.970016, 31.043901, 27.077099>,  <34.741695, 31.084288, 27.139050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.970016, 31.043901, 27.077099>,  <35.350555, 30.976591, 26.973848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.970016, 31.043901, 27.077099> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286590, -0.790949, -0.540616,
		0.113191, -0.588288, 0.800690,
		-0.951343, 0.168277, 0.258126,
		34.684612, 31.094385, 27.154537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.135220, 30.353991, 27.025467>,  <35.350555, 30.976591, 26.973848>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.135220, 30.353991, 27.025467> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.820004, 30.594913, 26.974533>,  <34.630875, 30.739468, 26.943972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.820004, 30.594913, 26.974533>,  <35.135220, 30.353991, 27.025467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.820004, 30.594913, 26.974533> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381517, -0.640146, -0.666827,
		-0.483148, -0.476907, 0.734253,
		-0.788044, 0.602306, -0.127337,
		34.583591, 30.775604, 26.936333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.553898, 29.931141, 27.110596>,  <35.135220, 30.353991, 27.025467>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.553898, 29.931141, 27.110596> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.437046, 30.266012, 26.925644>,  <34.366936, 30.466934, 26.814672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.437046, 30.266012, 26.925644>,  <34.553898, 29.931141, 27.110596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.437046, 30.266012, 26.925644> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416273, -0.546573, -0.726618,
		-0.861033, -0.019790, 0.508164,
		-0.292128, 0.837177, -0.462380,
		34.349407, 30.517166, 26.786930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.854034, 29.916815, 27.069077>,  <34.553898, 29.931141, 27.110596>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.854034, 29.916815, 27.069077> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.981228, 30.163458, 26.780998>,  <34.057545, 30.311443, 26.608150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.981228, 30.163458, 26.780998>,  <33.854034, 29.916815, 27.069077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.981228, 30.163458, 26.780998> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562824, -0.488529, -0.666760,
		-0.762965, 0.617363, 0.191696,
		0.317984, 0.616606, -0.720197,
		34.076622, 30.348440, 26.564939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.203041, 30.138617, 26.715641>,  <33.854034, 29.916815, 27.069077>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.203041, 30.138617, 26.715641> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.518673, 30.205147, 26.479103>,  <33.708054, 30.245064, 26.337181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.518673, 30.205147, 26.479103>,  <33.203041, 30.138617, 26.715641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.518673, 30.205147, 26.479103> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465770, -0.465640, -0.752488,
		-0.400509, 0.869204, -0.289959,
		0.789082, 0.166323, -0.591343,
		33.755398, 30.255043, 26.301701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.926670, 30.376377, 26.073515>,  <33.203041, 30.138617, 26.715641>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.926670, 30.376377, 26.073515> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.304581, 30.268261, 25.999384>,  <33.531326, 30.203392, 25.954906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.304581, 30.268261, 25.999384>,  <32.926670, 30.376377, 26.073515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.304581, 30.268261, 25.999384> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325102, -0.701590, -0.634098,
		0.041367, 0.659329, -0.750716,
		0.944774, -0.270290, -0.185327,
		33.588013, 30.187174, 25.943787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.072296, 30.439594, 25.306820>,  <32.926670, 30.376377, 26.073515>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.072296, 30.439594, 25.306820> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.323013, 30.169559, 25.462456>,  <33.473442, 30.007540, 25.555838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.323013, 30.169559, 25.462456>,  <33.072296, 30.439594, 25.306820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.323013, 30.169559, 25.462456> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100337, -0.565125, -0.818881,
		0.772698, 0.474230, -0.421953,
		0.626794, -0.675085, 0.389088,
		33.511051, 29.967033, 25.579182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.534851, 30.246784, 24.754532>,  <33.072296, 30.439594, 25.306820>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.534851, 30.246784, 24.754532> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.568058, 29.942572, 25.012121>,  <33.587982, 29.760044, 25.166676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.568058, 29.942572, 25.012121>,  <33.534851, 30.246784, 24.754532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.568058, 29.942572, 25.012121> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133103, -0.648877, -0.749161,
		0.987619, -0.023525, -0.155095,
		0.083014, -0.760529, 0.643975,
		33.592960, 29.714413, 25.205315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.932972, 29.767000, 24.453026>,  <33.534851, 30.246784, 24.754532>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.932972, 29.767000, 24.453026> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.763432, 29.523993, 24.721733>,  <33.661709, 29.378187, 24.882957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.763432, 29.523993, 24.721733>,  <33.932972, 29.767000, 24.453026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.763432, 29.523993, 24.721733> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264530, -0.626314, -0.733318,
		0.866243, -0.488518, 0.104754,
		-0.423848, -0.607520, 0.671767,
		33.636276, 29.341736, 24.923264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.147919, 29.089283, 24.252274>,  <33.932972, 29.767000, 24.453026>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.147919, 29.089283, 24.252274> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.799431, 29.085442, 24.448591>,  <33.590336, 29.083138, 24.566381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.799431, 29.085442, 24.448591>,  <34.147919, 29.089283, 24.252274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.799431, 29.085442, 24.448591> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421175, -0.498957, -0.757399,
		0.252159, -0.866574, 0.430658,
		-0.871222, -0.009602, 0.490796,
		33.538063, 29.082561, 24.595829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.928997, 28.451733, 24.138174>,  <34.147919, 29.089283, 24.252274>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.928997, 28.451733, 24.138174> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.595577, 28.628487, 24.270798>,  <33.395527, 28.734539, 24.350372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.595577, 28.628487, 24.270798>,  <33.928997, 28.451733, 24.138174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.595577, 28.628487, 24.270798> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523715, -0.441039, -0.728840,
		-0.175829, -0.781169, 0.599049,
		-0.833551, 0.441882, 0.331562,
		33.345512, 28.761051, 24.370266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.374367, 27.930782, 24.168745>,  <33.928997, 28.451733, 24.138174>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.374367, 27.930782, 24.168745> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.233238, 28.304289, 24.144754>,  <33.148563, 28.528393, 24.130360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.233238, 28.304289, 24.144754>,  <33.374367, 27.930782, 24.168745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.233238, 28.304289, 24.144754> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627096, -0.283543, -0.725503,
		-0.694457, -0.218358, 0.685601,
		-0.352817, 0.933768, -0.059977,
		33.127392, 28.584419, 24.126762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.610256, 27.233042, 24.477522>,  <33.374367, 27.930782, 24.168745>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.610256, 27.233042, 24.477522> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.643417, 26.919519, 24.723700>,  <33.663315, 26.731405, 24.871407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.643417, 26.919519, 24.723700>,  <33.610256, 27.233042, 24.477522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.643417, 26.919519, 24.723700> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450498, 0.580344, 0.678419,
		-0.888920, 0.221013, 0.401217,
		0.082904, -0.783808, 0.615445,
		33.668289, 26.684378, 24.908333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.565975, 27.567278, 25.106520>,  <33.610256, 27.233042, 24.477522>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.565975, 27.567278, 25.106520> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.721573, 27.215357, 25.215796>,  <33.814930, 27.004204, 25.281361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.721573, 27.215357, 25.215796>,  <33.565975, 27.567278, 25.106520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.721573, 27.215357, 25.215796> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346236, 0.414426, 0.841648,
		-0.853702, -0.232803, 0.465827,
		0.388989, -0.879803, 0.273191,
		33.838268, 26.951416, 25.297752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.221798, 27.383238, 25.730373>,  <33.565975, 27.567278, 25.106520>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.221798, 27.383238, 25.730373> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.585922, 27.221754, 25.693819>,  <33.804398, 27.124865, 25.671886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.585922, 27.221754, 25.693819>,  <33.221798, 27.383238, 25.730373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.585922, 27.221754, 25.693819> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270684, 0.413582, 0.869299,
		-0.313150, -0.816069, 0.485766,
		0.910312, -0.403710, -0.091383,
		33.859016, 27.100641, 25.666405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.470760, 27.265163, 26.379084>,  <33.221798, 27.383238, 25.730373>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.470760, 27.265163, 26.379084> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.832928, 27.267586, 26.209291>,  <34.050228, 27.269039, 26.107416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.832928, 27.267586, 26.209291>,  <33.470760, 27.265163, 26.379084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.832928, 27.267586, 26.209291> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405240, 0.285609, 0.868452,
		0.126493, -0.958327, 0.256141,
		0.905417, 0.006055, -0.424480,
		34.104553, 27.269403, 26.081947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.896305, 26.918810, 26.807981>,  <33.470760, 27.265163, 26.379084>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.896305, 26.918810, 26.807981> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.173389, 27.091635, 26.576994>,  <34.339642, 27.195330, 26.438400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.173389, 27.091635, 26.576994>,  <33.896305, 26.918810, 26.807981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.173389, 27.091635, 26.576994> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506878, 0.277935, 0.815982,
		0.513056, -0.857947, -0.026474,
		0.692712, 0.432064, -0.577470,
		34.381203, 27.221254, 26.403753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.525444, 26.839928, 27.178295>,  <33.896305, 26.918810, 26.807981>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.525444, 26.839928, 27.178295> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.599392, 27.138695, 26.922815>,  <34.643761, 27.317955, 26.769527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.599392, 27.138695, 26.922815>,  <34.525444, 26.839928, 27.178295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.599392, 27.138695, 26.922815> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658900, 0.387991, 0.644448,
		0.729159, -0.539980, -0.420416,
		0.184872, 0.746917, -0.638700,
		34.654854, 27.362770, 26.731205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.160030, 26.849781, 27.123297>,  <34.525444, 26.839928, 27.178295>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.160030, 26.849781, 27.123297> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.048405, 27.221891, 27.028042>,  <34.981430, 27.445158, 26.970888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.048405, 27.221891, 27.028042>,  <35.160030, 26.849781, 27.123297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.048405, 27.221891, 27.028042> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541545, 0.357254, 0.760986,
		0.793003, 0.083399, -0.603482,
		-0.279061, 0.930276, -0.238139,
		34.964687, 27.500975, 26.956600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.789116, 27.259577, 27.262545>,  <35.160030, 26.849781, 27.123297>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.789116, 27.259577, 27.262545> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.516899, 27.551849, 27.240723>,  <35.353569, 27.727213, 27.227629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.516899, 27.551849, 27.240723>,  <35.789116, 27.259577, 27.262545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.516899, 27.551849, 27.240723> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437373, 0.464836, 0.769826,
		0.587855, 0.500035, -0.635918,
		-0.680537, 0.730680, -0.054555,
		35.312737, 27.771053, 27.224356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.117847, 27.858709, 27.357527>,  <35.789116, 27.259577, 27.262545>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.117847, 27.858709, 27.357527> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.743229, 27.963961, 27.450167>,  <35.518456, 28.027111, 27.505751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.743229, 27.963961, 27.450167>,  <36.117847, 27.858709, 27.357527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.743229, 27.963961, 27.450167> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300144, 0.260650, 0.917592,
		0.181077, 0.928884, -0.323088,
		-0.936549, 0.263127, 0.231602,
		35.462265, 28.042898, 27.519648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.152962, 28.545628, 27.491247>,  <36.117847, 27.858709, 27.357527>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.152962, 28.545628, 27.491247> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.829147, 28.383236, 27.660870>,  <35.634857, 28.285801, 27.762644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.829147, 28.383236, 27.660870>,  <36.152962, 28.545628, 27.491247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.829147, 28.383236, 27.660870> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278902, 0.369649, 0.886326,
		-0.516583, 0.835787, -0.186017,
		-0.809540, -0.405980, 0.424057,
		35.586285, 28.261442, 27.788086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.107941, 28.915213, 28.042791>,  <36.152962, 28.545628, 27.491247>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.107941, 28.915213, 28.042791> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.816715, 28.661133, 28.145893>,  <35.641979, 28.508684, 28.207754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.816715, 28.661133, 28.145893>,  <36.107941, 28.915213, 28.042791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.816715, 28.661133, 28.145893> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179963, 0.185707, 0.965985,
		-0.661460, 0.749689, -0.020894,
		-0.728068, -0.635200, 0.257754,
		35.598293, 28.470573, 28.223219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.608727, 29.321142, 28.579521>,  <36.107941, 28.915213, 28.042791>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.608727, 29.321142, 28.579521> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.571918, 28.925392, 28.624538>,  <35.549831, 28.687943, 28.651548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.571918, 28.925392, 28.624538>,  <35.608727, 29.321142, 28.579521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.571918, 28.925392, 28.624538> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140703, 0.098971, 0.985092,
		-0.985766, 0.106486, 0.130101,
		-0.092023, -0.989376, 0.112545,
		35.544312, 28.628580, 28.658302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.063869, 29.099730, 29.105902>,  <35.608727, 29.321142, 28.579521>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.063869, 29.099730, 29.105902> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.319283, 28.792702, 29.083580>,  <35.472530, 28.608484, 29.070187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.319283, 28.792702, 29.083580>,  <35.063869, 29.099730, 29.105902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.319283, 28.792702, 29.083580> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132930, 0.038578, 0.990374,
		-0.758029, -0.639802, 0.126667,
		0.638530, -0.767570, -0.055806,
		35.510841, 28.562431, 29.066837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.840530, 28.626719, 29.637842>,  <35.063869, 29.099730, 29.105902>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.840530, 28.626719, 29.637842> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.227161, 28.573063, 29.550451>,  <35.459141, 28.540869, 29.498016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.227161, 28.573063, 29.550451>,  <34.840530, 28.626719, 29.637842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.227161, 28.573063, 29.550451> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246176, 0.247688, 0.937042,
		-0.071582, -0.959509, 0.272432,
		0.966578, -0.134141, -0.218478,
		35.517136, 28.532820, 29.484907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.416519, 28.185396, 29.991554>,  <34.840530, 28.626719, 29.637842>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.416519, 28.185396, 29.991554> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.088409, 28.145893, 30.216904>,  <33.891544, 28.122190, 30.352114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.088409, 28.145893, 30.216904>,  <34.416519, 28.185396, 29.991554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.088409, 28.145893, 30.216904> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416063, -0.572850, -0.706212,
		0.392474, -0.813689, 0.428806,
		-0.820278, -0.098759, 0.563374,
		33.842327, 28.116266, 30.385916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.216232, 27.548855, 29.780180>,  <34.416519, 28.185396, 29.991554>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.216232, 27.548855, 29.780180> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.896618, 27.682787, 29.979950>,  <33.704849, 27.763145, 30.099812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.896618, 27.682787, 29.979950>,  <34.216232, 27.548855, 29.780180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.896618, 27.682787, 29.979950> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601250, -0.453223, -0.658094,
		0.006002, -0.826122, 0.563459,
		-0.799039, 0.334829, 0.499426,
		33.656906, 27.783236, 30.129778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.788605, 27.012123, 29.762691>,  <34.216232, 27.548855, 29.780180>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.788605, 27.012123, 29.762691> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.557510, 27.333902, 29.817949>,  <33.418854, 27.526970, 29.851105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.557510, 27.333902, 29.817949>,  <33.788605, 27.012123, 29.762691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.557510, 27.333902, 29.817949> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669967, -0.370699, -0.643215,
		-0.466224, -0.464160, 0.753121,
		-0.577736, 0.804448, 0.138143,
		33.384190, 27.575237, 29.859392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.171387, 26.674387, 29.865669>,  <33.788605, 27.012123, 29.762691>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.171387, 26.674387, 29.865669> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.117428, 27.052683, 29.747429>,  <33.085052, 27.279661, 29.676485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.117428, 27.052683, 29.747429>,  <33.171387, 26.674387, 29.865669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.117428, 27.052683, 29.747429> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662621, -0.307908, -0.682734,
		-0.736707, 0.103774, 0.668202,
		-0.134895, 0.945740, -0.295601,
		33.076958, 27.336405, 29.658749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.477650, 26.838682, 29.876127>,  <33.171387, 26.674387, 29.865669>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.477650, 26.838682, 29.876127> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.659977, 27.072102, 29.607292>,  <32.769371, 27.212154, 29.445992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.659977, 27.072102, 29.607292>,  <32.477650, 26.838682, 29.876127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.659977, 27.072102, 29.607292> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625525, -0.327160, -0.708297,
		-0.633207, 0.743260, 0.215901,
		0.455815, 0.583550, -0.672088,
		32.796722, 27.247166, 29.405666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.903931, 27.116226, 29.683983>,  <32.477650, 26.838682, 29.876127>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.903931, 27.116226, 29.683983> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.183319, 27.190611, 29.407560>,  <32.350952, 27.235241, 29.241707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.183319, 27.190611, 29.407560>,  <31.903931, 27.116226, 29.683983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.183319, 27.190611, 29.407560> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659930, -0.206165, -0.722487,
		-0.276825, 0.960685, -0.021279,
		0.698469, 0.185960, -0.691057,
		32.392860, 27.246399, 29.200243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.529863, 27.575966, 29.332651>,  <31.903931, 27.116226, 29.683983>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.529863, 27.575966, 29.332651> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.828999, 27.413177, 29.122847>,  <32.008480, 27.315504, 28.996964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.828999, 27.413177, 29.122847>,  <31.529863, 27.575966, 29.332651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.828999, 27.413177, 29.122847> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646863, -0.268949, -0.713607,
		0.149352, 0.872949, -0.464385,
		0.747838, -0.406972, -0.524510,
		32.053349, 27.291086, 28.965494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.224564, 28.205927, 29.480394>,  <31.529863, 27.575966, 29.332651>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.224564, 28.205927, 29.480394> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.829475, 28.191607, 29.541227>,  <30.592422, 28.183014, 29.577726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.829475, 28.191607, 29.541227>,  <31.224564, 28.205927, 29.480394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.829475, 28.191607, 29.541227> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136033, 0.281721, 0.949804,
		-0.076847, 0.958828, -0.273392,
		-0.987719, -0.035799, 0.152082,
		30.533159, 28.180866, 29.586851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.055595, 28.741404, 29.733902>,  <31.224564, 28.205927, 29.480394>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.055595, 28.741404, 29.733902> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.718086, 28.555912, 29.841978>,  <30.515581, 28.444616, 29.906824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.718086, 28.555912, 29.841978>,  <31.055595, 28.741404, 29.733902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.718086, 28.555912, 29.841978> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026247, 0.467168, 0.883779,
		-0.536059, 0.752800, -0.382012,
		-0.843772, -0.463731, 0.270188,
		30.464954, 28.416792, 29.923035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.519587, 29.273447, 30.013014>,  <31.055595, 28.741404, 29.733902>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.519587, 29.273447, 30.013014> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.439583, 28.912046, 30.164635>,  <30.391581, 28.695206, 30.255608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.439583, 28.912046, 30.164635>,  <30.519587, 29.273447, 30.013014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.439583, 28.912046, 30.164635> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089992, 0.402175, 0.911129,
		-0.975653, 0.148122, -0.161747,
		-0.200009, -0.903502, 0.379054,
		30.379580, 28.640995, 30.278351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.857489, 29.345745, 30.462593>,  <30.519587, 29.273447, 30.013014>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.857489, 29.345745, 30.462593> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.064308, 29.022572, 30.575661>,  <30.188400, 28.828667, 30.643501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.064308, 29.022572, 30.575661>,  <29.857489, 29.345745, 30.462593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.064308, 29.022572, 30.575661> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057488, 0.362271, 0.930298,
		-0.854024, -0.464758, 0.233758,
		0.517047, -0.807935, 0.282671,
		30.219421, 28.780191, 30.660461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.520041, 29.075264, 31.012886>,  <29.857489, 29.345745, 30.462593>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.520041, 29.075264, 31.012886> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.876865, 28.898319, 31.049847>,  <30.090961, 28.792152, 31.072023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.876865, 28.898319, 31.049847>,  <29.520041, 29.075264, 31.012886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.876865, 28.898319, 31.049847> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100962, 0.394384, 0.913383,
		-0.440488, -0.805466, 0.396477,
		0.892063, -0.442363, 0.092400,
		30.144484, 28.765610, 31.077566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.587868, 28.813438, 31.706570>,  <29.520041, 29.075264, 31.012886>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.587868, 28.813438, 31.706570> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.971678, 28.826128, 31.594639>,  <30.201963, 28.833742, 31.527479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.971678, 28.826128, 31.594639>,  <29.587868, 28.813438, 31.706570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.971678, 28.826128, 31.594639> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263331, 0.251190, 0.931429,
		0.099837, -0.967418, 0.232670,
		0.959526, 0.031722, -0.279829,
		30.259535, 28.835646, 31.510691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.032452, 28.476885, 32.289745>,  <29.587868, 28.813438, 31.706570>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.032452, 28.476885, 32.289745> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.303694, 28.689135, 32.086330>,  <30.466440, 28.816484, 31.964281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.303694, 28.689135, 32.086330>,  <30.032452, 28.476885, 32.289745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.303694, 28.689135, 32.086330> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531772, 0.123401, 0.837849,
		0.507336, -0.838577, -0.198492,
		0.678106, 0.530623, -0.508538,
		30.507126, 28.848322, 31.933769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<30.305393, 29.767147, 25.754316> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.697227, 29.686827, 25.758110>,  <30.932327, 29.638634, 25.760386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.697227, 29.686827, 25.758110>,  <30.305393, 29.767147, 25.754316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.697227, 29.686827, 25.758110> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099597, 0.525772, 0.844775,
		-0.174618, -0.826585, 0.535038,
		0.979586, -0.200801, 0.009484,
		30.991104, 29.626587, 25.760956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.578909, 29.465208, 26.453327>,  <30.305393, 29.767147, 25.754316>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.578909, 29.465208, 26.453327> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.885853, 29.651863, 26.277414>,  <31.070019, 29.763855, 26.171867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.885853, 29.651863, 26.277414>,  <30.578909, 29.465208, 26.453327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.885853, 29.651863, 26.277414> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119658, 0.569599, 0.813166,
		0.629951, -0.676616, 0.381252,
		0.767362, 0.466635, -0.439782,
		31.116060, 29.791853, 26.145479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.049862, 29.457865, 26.928598>,  <30.578909, 29.465208, 26.453327>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.049862, 29.457865, 26.928598> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.171680, 29.741997, 26.674768>,  <31.244772, 29.912476, 26.522470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.171680, 29.741997, 26.674768>,  <31.049862, 29.457865, 26.928598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.171680, 29.741997, 26.674768> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251901, 0.582437, 0.772860,
		0.918585, -0.395221, -0.001553,
		0.304546, 0.710329, -0.634574,
		31.263044, 29.955095, 26.484396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.835459, 29.734566, 27.119694>,  <31.049862, 29.457865, 26.928598>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.835459, 29.734566, 27.119694> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.630917, 30.011097, 26.915504>,  <31.508192, 30.177015, 26.792992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.630917, 30.011097, 26.915504>,  <31.835459, 29.734566, 27.119694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.630917, 30.011097, 26.915504> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223290, 0.680491, 0.697907,
		0.829853, 0.242896, -0.502339,
		-0.511356, 0.691328, -0.510471,
		31.477510, 30.218494, 26.762363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.208401, 30.402424, 27.241104>,  <31.835459, 29.734566, 27.119694>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.208401, 30.402424, 27.241104> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.876814, 30.564375, 27.086763>,  <31.677860, 30.661545, 26.994158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.876814, 30.564375, 27.086763>,  <32.208401, 30.402424, 27.241104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.876814, 30.564375, 27.086763> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056321, 0.746820, 0.662638,
		0.556448, 0.527576, -0.641895,
		-0.828971, 0.404876, -0.385853,
		31.628122, 30.685837, 26.971008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.356876, 31.081091, 27.022800>,  <32.208401, 30.402424, 27.241104>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.356876, 31.081091, 27.022800> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.965109, 31.076393, 27.103392>,  <31.730047, 31.073574, 27.151747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.965109, 31.076393, 27.103392>,  <32.356876, 31.081091, 27.022800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.965109, 31.076393, 27.103392> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111825, 0.799471, 0.590205,
		-0.168005, 0.600590, -0.781707,
		-0.979423, -0.011743, 0.201476,
		31.671282, 31.072870, 27.163834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.090240, 31.769728, 26.952747>,  <32.356876, 31.081091, 27.022800>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.090240, 31.769728, 26.952747> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.779341, 31.621584, 27.156202>,  <31.592800, 31.532698, 27.278276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.779341, 31.621584, 27.156202>,  <32.090240, 31.769728, 26.952747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.779341, 31.621584, 27.156202> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105955, 0.873901, 0.474415,
		-0.620206, 0.314846, -0.718482,
		-0.777250, -0.370362, 0.508639,
		31.546165, 31.510475, 27.308794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.625885, 32.328014, 27.011566>,  <32.090240, 31.769728, 26.952747>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.625885, 32.328014, 27.011566> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.535975, 32.077961, 27.310547>,  <31.482029, 31.927929, 27.489935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.535975, 32.077961, 27.310547>,  <31.625885, 32.328014, 27.011566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.535975, 32.077961, 27.310547> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108642, 0.778378, 0.618324,
		-0.968335, 0.057779, -0.242876,
		-0.224776, -0.625132, 0.747453,
		31.468542, 31.890421, 27.534782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.020069, 32.509247, 27.278589>,  <31.625885, 32.328014, 27.011566>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.020069, 32.509247, 27.278589> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.158808, 32.302349, 27.591553>,  <31.242050, 32.178211, 27.779331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.158808, 32.302349, 27.591553>,  <31.020069, 32.509247, 27.278589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.158808, 32.302349, 27.591553> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151876, 0.792209, 0.591048,
		-0.925544, -0.323831, 0.196217,
		0.346845, -0.517241, 0.782407,
		31.262861, 32.147179, 27.826275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.529291, 32.732780, 27.906097>,  <31.020069, 32.509247, 27.278589>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.529291, 32.732780, 27.906097> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.885506, 32.602680, 28.033318>,  <31.099236, 32.524620, 28.109650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.885506, 32.602680, 28.033318>,  <30.529291, 32.732780, 27.906097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.885506, 32.602680, 28.033318> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083551, 0.570317, 0.817165,
		-0.447170, -0.754289, 0.480714,
		0.890538, -0.325248, 0.318050,
		31.152668, 32.505104, 28.128733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.423611, 32.636627, 28.569117>,  <30.529291, 32.732780, 27.906097>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.423611, 32.636627, 28.569117> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.821985, 32.665306, 28.547329>,  <31.061010, 32.682514, 28.534256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.821985, 32.665306, 28.547329>,  <30.423611, 32.636627, 28.569117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.821985, 32.665306, 28.547329> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001771, 0.589205, 0.807981,
		0.090027, -0.804796, 0.586685,
		0.995938, 0.071701, -0.054470,
		31.120766, 32.686817, 28.530989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.677746, 32.537933, 29.174990>,  <30.423611, 32.636627, 28.569117>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.677746, 32.537933, 29.174990> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.013117, 32.689404, 29.018200>,  <31.214338, 32.780285, 28.924126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.013117, 32.689404, 29.018200>,  <30.677746, 32.537933, 29.174990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.013117, 32.689404, 29.018200> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083919, 0.620925, 0.779365,
		0.538515, -0.686334, 0.488822,
		0.838427, 0.378678, -0.391974,
		31.264645, 32.803005, 28.900608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.413857, 32.034023, 29.700121>,  <30.677746, 32.537933, 29.174990>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.413857, 32.034023, 29.700121> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.073614, 32.008842, 29.908930>,  <29.869469, 31.993734, 30.034216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.073614, 32.008842, 29.908930>,  <30.413857, 32.034023, 29.700121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.073614, 32.008842, 29.908930> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473582, -0.339644, -0.812627,
		0.228455, -0.938445, 0.259092,
		-0.850605, -0.062948, 0.522024,
		29.818432, 31.989958, 30.065536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.185526, 31.298922, 29.834419>,  <30.413857, 32.034023, 29.700121>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.185526, 31.298922, 29.834419> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.837708, 31.496321, 29.841957>,  <29.629017, 31.614759, 29.846479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.837708, 31.496321, 29.841957>,  <30.185526, 31.298922, 29.834419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.837708, 31.496321, 29.841957> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371786, -0.629021, -0.682722,
		-0.325067, -0.600662, 0.730436,
		-0.869544, 0.493496, 0.018844,
		29.576845, 31.644369, 29.847610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.609079, 30.827480, 30.006161>,  <30.185526, 31.298922, 29.834419>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.609079, 30.827480, 30.006161> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.414669, 31.140066, 29.849653>,  <29.298023, 31.327618, 29.755749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.414669, 31.140066, 29.849653>,  <29.609079, 30.827480, 30.006161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.414669, 31.140066, 29.849653> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395224, -0.595845, -0.699118,
		-0.779473, -0.185149, 0.598449,
		-0.486024, 0.781465, -0.391270,
		29.268862, 31.374506, 29.732273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.927141, 30.590960, 29.784624>,  <29.609079, 30.827480, 30.006161>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.927141, 30.590960, 29.784624> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.990740, 30.925880, 29.575380>,  <29.028898, 31.126833, 29.449833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.990740, 30.925880, 29.575380>,  <28.927141, 30.590960, 29.784624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.990740, 30.925880, 29.575380> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503263, -0.387108, -0.772576,
		-0.849381, 0.386098, 0.359835,
		0.158995, 0.837303, -0.523110,
		29.038439, 31.177071, 29.418447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.221691, 30.709396, 29.436010>,  <28.927141, 30.590960, 29.784624>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.221691, 30.709396, 29.436010> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.489172, 30.926157, 29.232372>,  <28.649660, 31.056213, 29.110189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.489172, 30.926157, 29.232372>,  <28.221691, 30.709396, 29.436010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.489172, 30.926157, 29.232372> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387085, -0.330870, -0.860633,
		-0.634823, 0.772572, -0.011492,
		0.668703, 0.541902, -0.509095,
		28.689783, 31.088728, 29.079643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.837927, 31.112772, 28.984766>,  <28.221691, 30.709396, 29.436010>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.837927, 31.112772, 28.984766> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.209915, 31.064943, 28.845709>,  <28.433109, 31.036245, 28.762276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.209915, 31.064943, 28.845709>,  <27.837927, 31.112772, 28.984766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.209915, 31.064943, 28.845709> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367443, -0.332554, -0.868558,
		-0.011753, 0.935473, -0.353202,
		0.929972, -0.119573, -0.347642,
		28.488907, 31.029072, 28.741417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.769255, 31.354723, 28.289656>,  <27.837927, 31.112772, 28.984766>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.769255, 31.354723, 28.289656> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.093666, 31.123014, 28.322348>,  <28.288313, 30.983990, 28.341963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.093666, 31.123014, 28.322348>,  <27.769255, 31.354723, 28.289656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.093666, 31.123014, 28.322348> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126489, -0.310044, -0.942270,
		0.571169, 0.753869, -0.324726,
		0.811028, -0.579270, 0.081731,
		28.336975, 30.949234, 28.346867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.012251, 31.370131, 27.596004>,  <27.769255, 31.354723, 28.289656>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.012251, 31.370131, 27.596004> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.182407, 31.052893, 27.770380>,  <28.284500, 30.862549, 27.875006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.182407, 31.052893, 27.770380>,  <28.012251, 31.370131, 27.596004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.182407, 31.052893, 27.770380> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094550, -0.518005, -0.850136,
		0.900058, 0.320421, -0.295342,
		0.425390, -0.793096, 0.435939,
		28.310024, 30.814964, 27.901161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.438217, 30.896294, 27.039419>,  <28.012251, 31.370131, 27.596004>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.438217, 30.896294, 27.039419> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.394943, 30.643850, 27.346664>,  <28.368979, 30.492384, 27.531012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.394943, 30.643850, 27.346664>,  <28.438217, 30.896294, 27.039419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.394943, 30.643850, 27.346664> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123895, -0.758066, -0.640302,
		0.986380, -0.164438, 0.003821,
		-0.108186, -0.631107, 0.768114,
		28.362488, 30.454517, 27.577099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.964172, 30.332811, 26.932522>,  <28.438217, 30.896294, 27.039419>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.964172, 30.332811, 26.932522> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.669899, 30.211920, 27.174986>,  <28.493336, 30.139385, 27.320463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.669899, 30.211920, 27.174986>,  <28.964172, 30.332811, 26.932522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.669899, 30.211920, 27.174986> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087205, -0.845217, -0.527261,
		0.671689, -0.440757, 0.595456,
		-0.735683, -0.302229, 0.606159,
		28.449194, 30.121252, 27.356834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.067722, 29.643143, 27.063808>,  <28.964172, 30.332811, 26.932522>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.067722, 29.643143, 27.063808> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.686703, 29.670628, 27.182421>,  <28.458092, 29.687119, 27.253588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.686703, 29.670628, 27.182421>,  <29.067722, 29.643143, 27.063808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.686703, 29.670628, 27.182421> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184616, -0.904963, -0.383352,
		0.242009, -0.419906, 0.874706,
		-0.952548, 0.068710, 0.296530,
		28.400938, 29.691240, 27.271379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.892136, 28.904623, 27.098169>,  <29.067722, 29.643143, 27.063808>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.892136, 28.904623, 27.098169> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.571333, 29.139744, 27.055700>,  <28.378851, 29.280815, 27.030218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.571333, 29.139744, 27.055700>,  <28.892136, 28.904623, 27.098169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.571333, 29.139744, 27.055700> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459888, -0.721083, -0.518211,
		-0.381164, -0.366782, 0.848637,
		-0.802009, 0.587801, -0.106172,
		28.330730, 29.316084, 27.023849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.344269, 28.466244, 27.240595>,  <28.892136, 28.904623, 27.098169>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.344269, 28.466244, 27.240595> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.183674, 28.763262, 27.026144>,  <28.087317, 28.941473, 26.897472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.183674, 28.763262, 27.026144>,  <28.344269, 28.466244, 27.240595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.183674, 28.763262, 27.026144> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661085, -0.640092, -0.391469,
		-0.633849, 0.197245, 0.747883,
		-0.401499, 0.742547, -0.536118,
		28.063227, 28.986025, 26.865305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.072979, 27.669436, 27.175489>,  <28.344269, 28.466244, 27.240595>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.072979, 27.669436, 27.175489> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.221773, 27.304649, 27.244709>,  <28.311050, 27.085777, 27.286240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.221773, 27.304649, 27.244709>,  <28.072979, 27.669436, 27.175489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.221773, 27.304649, 27.244709> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597662, 0.377952, 0.707073,
		-0.710230, -0.159597, 0.685640,
		0.371986, -0.911966, 0.173048,
		28.333368, 27.031059, 27.296623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.143053, 27.726269, 27.830210>,  <28.072979, 27.669436, 27.175489>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.143053, 27.726269, 27.830210> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.369009, 27.410170, 27.735210>,  <28.504583, 27.220510, 27.678211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.369009, 27.410170, 27.735210>,  <28.143053, 27.726269, 27.830210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.369009, 27.410170, 27.735210> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683951, 0.287384, 0.670538,
		-0.461639, -0.541218, 0.702832,
		0.564890, -0.790249, -0.237499,
		28.538477, 27.173096, 27.663961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.245613, 27.239248, 28.400724>,  <28.143053, 27.726269, 27.830210>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.245613, 27.239248, 28.400724> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.558544, 27.211834, 28.153090>,  <28.746302, 27.195385, 28.004509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.558544, 27.211834, 28.153090>,  <28.245613, 27.239248, 28.400724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.558544, 27.211834, 28.153090> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573073, 0.468617, 0.672299,
		0.244036, -0.880739, 0.405888,
		0.782326, -0.068538, -0.619087,
		28.793242, 27.191273, 27.967363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.666998, 27.319481, 28.858780>,  <28.245613, 27.239248, 28.400724>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.666998, 27.319481, 28.858780> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.901659, 27.335518, 28.535242>,  <29.042456, 27.345140, 28.341120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.901659, 27.335518, 28.535242>,  <28.666998, 27.319481, 28.858780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.901659, 27.335518, 28.535242> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782670, 0.228466, 0.578991,
		0.208005, -0.972727, 0.102653,
		0.586652, 0.040089, -0.808846,
		29.077654, 27.347546, 28.292587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.179096, 26.861395, 28.915066>,  <28.666998, 27.319481, 28.858780>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.179096, 26.861395, 28.915066> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.296047, 27.167425, 28.685572>,  <29.366219, 27.351044, 28.547874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.296047, 27.167425, 28.685572>,  <29.179096, 26.861395, 28.915066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.296047, 27.167425, 28.685572> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629302, 0.297816, 0.717833,
		0.720065, -0.570932, -0.394389,
		0.292378, 0.765077, -0.573735,
		29.383760, 27.396948, 28.513451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.798923, 26.870956, 29.173418>,  <29.179096, 26.861395, 28.915066>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.798923, 26.870956, 29.173418> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.753235, 27.209507, 28.965340>,  <29.725822, 27.412638, 28.840492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.753235, 27.209507, 28.965340>,  <29.798923, 26.870956, 29.173418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.753235, 27.209507, 28.965340> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703249, 0.438735, 0.559422,
		0.701708, -0.301929, -0.645325,
		-0.114221, 0.846375, -0.520195,
		29.718969, 27.463419, 28.809280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.441950, 27.173594, 29.101252>,  <29.798923, 26.870956, 29.173418>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.441950, 27.173594, 29.101252> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.211552, 27.493038, 29.031452>,  <30.073313, 27.684706, 28.989573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.211552, 27.493038, 29.031452>,  <30.441950, 27.173594, 29.101252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.211552, 27.493038, 29.031452> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613377, 0.563344, 0.553545,
		0.540371, 0.211805, -0.814333,
		-0.575993, 0.798613, -0.174498,
		30.038754, 27.732622, 28.979103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.920841, 27.605745, 28.908257>,  <30.441950, 27.173594, 29.101252>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.920841, 27.605745, 28.908257> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.606054, 27.834690, 29.000418>,  <30.417183, 27.972057, 29.055714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.606054, 27.834690, 29.000418>,  <30.920841, 27.605745, 28.908257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.606054, 27.834690, 29.000418> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525219, 0.425485, 0.736958,
		0.323776, 0.700972, -0.635458,
		-0.786965, 0.572364, 0.230402,
		30.369965, 28.006399, 29.069538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.452114, 27.786430, 28.449631>,  <30.920841, 27.605745, 28.908257>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.452114, 27.786430, 28.449631> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.720497, 27.490347, 28.467102>,  <31.881527, 27.312696, 28.477585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.720497, 27.490347, 28.467102>,  <31.452114, 27.786430, 28.449631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.720497, 27.490347, 28.467102> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282243, -0.309420, -0.908074,
		0.685678, 0.596952, -0.416527,
		0.670958, -0.740208, 0.043677,
		31.921785, 27.268284, 28.480206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.832085, 27.915421, 27.830145>,  <31.452114, 27.786430, 28.449631>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.832085, 27.915421, 27.830145> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.862692, 27.537676, 27.958097>,  <31.881056, 27.311029, 28.034870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.862692, 27.537676, 27.958097>,  <31.832085, 27.915421, 27.830145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.862692, 27.537676, 27.958097> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243529, -0.328808, -0.912458,
		0.966870, -0.008081, -0.255140,
		0.076519, -0.944362, 0.319882,
		31.885647, 27.254368, 28.054062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.136299, 27.547243, 27.339993>,  <31.832085, 27.915421, 27.830145>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.136299, 27.547243, 27.339993> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.975435, 27.235975, 27.532955>,  <31.878916, 27.049215, 27.648733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.975435, 27.235975, 27.532955>,  <32.136299, 27.547243, 27.339993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.975435, 27.235975, 27.532955> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258469, -0.408967, -0.875180,
		0.878328, -0.476651, -0.036661,
		-0.402162, -0.778171, 0.482407,
		31.854786, 27.002523, 27.677677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.447651, 26.985708, 26.945389>,  <32.136299, 27.547243, 27.339993>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.447651, 26.985708, 26.945389> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.131317, 26.858707, 27.154684>,  <31.941519, 26.782507, 27.280262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.131317, 26.858707, 27.154684>,  <32.447651, 26.985708, 26.945389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.131317, 26.858707, 27.154684> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268363, -0.588464, -0.762687,
		0.550062, -0.743574, 0.380169,
		-0.790830, -0.317502, 0.523239,
		31.894068, 26.763456, 27.311655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.534134, 26.328609, 26.828726>,  <32.447651, 26.985708, 26.945389>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.534134, 26.328609, 26.828726> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.155499, 26.340326, 26.957170>,  <31.928318, 26.347357, 27.034237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.155499, 26.340326, 26.957170>,  <32.534134, 26.328609, 26.828726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.155499, 26.340326, 26.957170> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284027, -0.547171, -0.787358,
		0.152638, -0.836509, 0.526265,
		-0.946588, 0.029293, 0.321111,
		31.871521, 26.349113, 27.053503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.296181, 25.648260, 26.955147>,  <32.534134, 26.328609, 26.828726>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.296181, 25.648260, 26.955147> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.992868, 25.886196, 26.848434>,  <31.810881, 26.028957, 26.784407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.992868, 25.886196, 26.848434>,  <32.296181, 25.648260, 26.955147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.992868, 25.886196, 26.848434> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337903, -0.708573, -0.619472,
		-0.557520, -0.379590, 0.738297,
		-0.758283, 0.594841, -0.266779,
		31.765383, 26.064648, 26.768400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.790100, 25.159313, 26.890715>,  <32.296181, 25.648260, 26.955147>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.790100, 25.159313, 26.890715> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.631475, 25.484207, 26.719597>,  <31.536301, 25.679144, 26.616926>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.631475, 25.484207, 26.719597>,  <31.790100, 25.159313, 26.890715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.631475, 25.484207, 26.719597> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199741, -0.531184, -0.823375,
		-0.896014, -0.241072, 0.372885,
		-0.396563, 0.812236, -0.427797,
		31.512506, 25.727879, 26.591257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.053925, 25.000721, 26.688936>,  <31.790100, 25.159313, 26.890715>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.053925, 25.000721, 26.688936> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.155725, 25.309298, 26.455662>,  <31.216806, 25.494444, 26.315697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.155725, 25.309298, 26.455662>,  <31.053925, 25.000721, 26.688936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.155725, 25.309298, 26.455662> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125280, -0.571659, -0.810871,
		-0.958923, 0.279432, -0.048843,
		0.254504, 0.771443, -0.583184,
		31.232077, 25.540730, 26.280706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.531321, 25.118580, 26.186264>,  <31.053925, 25.000721, 26.688936>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.531321, 25.118580, 26.186264> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.872660, 25.260868, 26.033810>,  <31.077463, 25.346241, 25.942337>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.872660, 25.260868, 26.033810>,  <30.531321, 25.118580, 26.186264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.872660, 25.260868, 26.033810> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161781, -0.514294, -0.842216,
		-0.495609, 0.780362, -0.381322,
		0.853346, 0.355719, -0.381136,
		31.128664, 25.367584, 25.919468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.185738, 30.769785, 39.244625> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.389145, 30.967520, 38.962620>,  <38.511189, 31.086161, 38.793415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.389145, 30.967520, 38.962620>,  <38.185738, 30.769785, 39.244625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.389145, 30.967520, 38.962620> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779884, -0.082617, -0.620448,
		-0.364957, 0.865335, 0.343514,
		0.508515, 0.494338, -0.705013,
		38.541698, 31.115822, 38.751118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.734882, 31.278927, 38.991653>,  <38.185738, 30.769785, 39.244625>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.734882, 31.278927, 38.991653> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.994240, 31.195509, 38.698780>,  <38.149853, 31.145458, 38.523056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.994240, 31.195509, 38.698780>,  <37.734882, 31.278927, 38.991653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.994240, 31.195509, 38.698780> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760852, -0.144221, -0.632696,
		0.026349, 0.967321, -0.252184,
		0.648390, -0.208545, -0.732188,
		38.188759, 31.132946, 38.479122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.386829, 31.453674, 38.467430>,  <37.734882, 31.278927, 38.991653>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.386829, 31.453674, 38.467430> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.677380, 31.253208, 38.279297>,  <37.851707, 31.132929, 38.166416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.677380, 31.253208, 38.279297>,  <37.386829, 31.453674, 38.467430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.677380, 31.253208, 38.279297> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647367, -0.269015, -0.713125,
		0.230864, 0.822476, -0.519842,
		0.726373, -0.501163, -0.470338,
		37.895290, 31.102859, 38.138195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.432201, 31.735062, 37.803509>,  <37.386829, 31.453674, 38.467430>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.432201, 31.735062, 37.803509> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.575840, 31.362499, 37.779716>,  <37.662022, 31.138962, 37.765442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.575840, 31.362499, 37.779716>,  <37.432201, 31.735062, 37.803509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.575840, 31.362499, 37.779716> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593490, -0.178700, -0.784753,
		0.720293, 0.317099, -0.616949,
		0.359093, -0.931405, -0.059479,
		37.683567, 31.083078, 37.761871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.362003, 31.670300, 37.081646>,  <37.432201, 31.735062, 37.803509>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.362003, 31.670300, 37.081646> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.424366, 31.293858, 37.201656>,  <37.461784, 31.067993, 37.273663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.424366, 31.293858, 37.201656>,  <37.362003, 31.670300, 37.081646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.424366, 31.293858, 37.201656> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449790, -0.338061, -0.826683,
		0.879422, -0.006065, -0.476005,
		0.155905, -0.941105, 0.300026,
		37.471138, 31.011526, 37.291664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.436356, 31.308670, 36.519409>,  <37.362003, 31.670300, 37.081646>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.436356, 31.308670, 36.519409> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.330990, 31.040522, 36.796886>,  <37.267769, 30.879633, 36.963371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.330990, 31.040522, 36.796886>,  <37.436356, 31.308670, 36.519409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.330990, 31.040522, 36.796886> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520493, -0.506676, -0.687289,
		0.812218, -0.542107, -0.215457,
		-0.263418, -0.670372, 0.693695,
		37.251965, 30.839411, 37.004993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.583328, 30.581636, 36.354279>,  <37.436356, 31.308670, 36.519409>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.583328, 30.581636, 36.354279> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.269749, 30.573902, 36.602489>,  <37.081600, 30.569262, 36.751415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.269749, 30.573902, 36.602489>,  <37.583328, 30.581636, 36.354279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.269749, 30.573902, 36.602489> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501326, -0.569841, -0.651116,
		0.366192, -0.821527, 0.437032,
		-0.783949, -0.019338, 0.620524,
		37.034565, 30.568100, 36.788647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.160339, 29.954624, 36.275253>,  <37.583328, 30.581636, 36.354279>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.160339, 29.954624, 36.275253> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.881699, 30.186089, 36.444908>,  <36.714512, 30.324966, 36.546703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.881699, 30.186089, 36.444908>,  <37.160339, 29.954624, 36.275253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.881699, 30.186089, 36.444908> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708950, -0.464427, -0.530751,
		-0.110143, -0.670418, 0.733763,
		-0.696604, 0.578660, 0.424140,
		36.672718, 30.359686, 36.572151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.598183, 29.540089, 36.496490>,  <37.160339, 29.954624, 36.275253>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.598183, 29.540089, 36.496490> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.411541, 29.893847, 36.491989>,  <36.299557, 30.106102, 36.489288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.411541, 29.893847, 36.491989>,  <36.598183, 29.540089, 36.496490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.411541, 29.893847, 36.491989> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597026, -0.324326, -0.733738,
		-0.652565, -0.335645, 0.679339,
		-0.466603, 0.884395, -0.011255,
		36.271561, 30.159164, 36.488613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.990868, 29.310715, 36.303673>,  <36.598183, 29.540089, 36.496490>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.990868, 29.310715, 36.303673> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.992611, 29.706223, 36.243916>,  <35.993656, 29.943527, 36.208061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.992611, 29.706223, 36.243916>,  <35.990868, 29.310715, 36.303673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.992611, 29.706223, 36.243916> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612825, -0.115415, -0.781745,
		-0.790207, 0.094963, 0.605438,
		0.004361, 0.988768, -0.149397,
		35.993919, 30.002853, 36.199097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.275387, 29.540802, 36.439373>,  <35.990868, 29.310715, 36.303673>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.275387, 29.540802, 36.439373> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.463089, 29.799421, 36.198784>,  <35.575710, 29.954594, 36.054428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.463089, 29.799421, 36.198784>,  <35.275387, 29.540802, 36.439373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.463089, 29.799421, 36.198784> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619451, -0.244423, -0.746015,
		-0.629351, 0.722655, 0.285810,
		0.469253, 0.646550, -0.601477,
		35.603867, 29.993387, 36.018341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.764912, 30.011524, 36.128998>,  <35.275387, 29.540802, 36.439373>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.764912, 30.011524, 36.128998> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.088329, 30.024948, 35.894009>,  <35.282379, 30.033003, 35.753014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.088329, 30.024948, 35.894009>,  <34.764912, 30.011524, 36.128998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.088329, 30.024948, 35.894009> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544295, -0.336710, -0.768355,
		-0.223594, 0.941010, -0.253980,
		0.808547, 0.033559, -0.587474,
		35.330894, 30.035015, 35.717766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.449959, 30.682487, 36.408100>,  <34.764912, 30.011524, 36.128998>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.449959, 30.682487, 36.408100> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.083523, 30.684959, 36.568466>,  <33.863659, 30.686441, 36.664684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.083523, 30.684959, 36.568466>,  <34.449959, 30.682487, 36.408100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.083523, 30.684959, 36.568466> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389689, 0.249156, 0.886602,
		-0.094413, 0.968444, -0.230658,
		-0.916094, 0.006178, 0.400915,
		33.808693, 30.686813, 36.688740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.475266, 31.261187, 36.737118>,  <34.449959, 30.682487, 36.408100>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.475266, 31.261187, 36.737118> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.179562, 31.046425, 36.899712>,  <34.002140, 30.917568, 36.997269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.179562, 31.046425, 36.899712>,  <34.475266, 31.261187, 36.737118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.179562, 31.046425, 36.899712> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221326, 0.376372, 0.899644,
		-0.636013, 0.755035, -0.159404,
		-0.739258, -0.536905, 0.406486,
		33.957783, 30.885353, 37.021656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.189873, 31.700354, 37.256527>,  <34.475266, 31.261187, 36.737118>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.189873, 31.700354, 37.256527> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.066246, 31.334183, 37.359657>,  <33.992069, 31.114481, 37.421535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.066246, 31.334183, 37.359657>,  <34.189873, 31.700354, 37.256527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.066246, 31.334183, 37.359657> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125148, 0.229593, 0.965207,
		-0.942770, 0.330581, 0.043604,
		-0.309068, -0.915425, 0.257824,
		33.973526, 31.059555, 37.437004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.647697, 31.768902, 37.788696>,  <34.189873, 31.700354, 37.256527>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.647697, 31.768902, 37.788696> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.782696, 31.394503, 37.828712>,  <33.863693, 31.169863, 37.852722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.782696, 31.394503, 37.828712>,  <33.647697, 31.768902, 37.788696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.782696, 31.394503, 37.828712> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082882, 0.135408, 0.987317,
		-0.937672, -0.324923, 0.123277,
		0.337494, -0.935997, 0.100037,
		33.883945, 31.113703, 37.858723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.352837, 31.492760, 38.414658>,  <33.647697, 31.768902, 37.788696>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.352837, 31.492760, 38.414658> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.689304, 31.284344, 38.356754>,  <33.891186, 31.159294, 38.322014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.689304, 31.284344, 38.356754>,  <33.352837, 31.492760, 38.414658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.689304, 31.284344, 38.356754> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197558, 0.046908, 0.979168,
		-0.503396, -0.852242, 0.142393,
		0.841168, -0.521040, -0.144754,
		33.941654, 31.128033, 38.313328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.343517, 31.068247, 38.996910>,  <33.352837, 31.492760, 38.414658>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.343517, 31.068247, 38.996910> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.718529, 31.056957, 38.858204>,  <33.943535, 31.050184, 38.774982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.718529, 31.056957, 38.858204>,  <33.343517, 31.068247, 38.996910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.718529, 31.056957, 38.858204> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346031, 0.179056, 0.920979,
		0.036097, -0.983434, 0.177636,
		0.937529, -0.028223, -0.346762,
		33.999786, 31.048491, 38.754177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.663189, 30.616142, 39.464252>,  <33.343517, 31.068247, 38.996910>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.663189, 30.616142, 39.464252> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.969524, 30.797266, 39.281624>,  <34.153324, 30.905939, 39.172047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.969524, 30.797266, 39.281624>,  <33.663189, 30.616142, 39.464252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.969524, 30.797266, 39.281624> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421605, 0.182545, 0.888215,
		0.485537, -0.872721, -0.051107,
		0.765835, 0.452808, -0.456576,
		34.199276, 30.933107, 39.144650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.258377, 30.374432, 39.792385>,  <33.663189, 30.616142, 39.464252>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.258377, 30.374432, 39.792385> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.398685, 30.703222, 39.612915>,  <34.482872, 30.900497, 39.505234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.398685, 30.703222, 39.612915>,  <34.258377, 30.374432, 39.792385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.398685, 30.703222, 39.612915> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618726, 0.156220, 0.769918,
		0.702948, -0.547673, -0.453782,
		0.350773, 0.821979, -0.448674,
		34.503918, 30.949816, 39.478313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.990753, 30.432079, 40.085972>,  <34.258377, 30.374432, 39.792385>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.990753, 30.432079, 40.085972> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.875076, 30.787136, 39.942604>,  <34.805672, 31.000170, 39.856583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.875076, 30.787136, 39.942604>,  <34.990753, 30.432079, 40.085972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.875076, 30.787136, 39.942604> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374356, 0.449462, 0.811074,
		0.881037, 0.100380, -0.462274,
		-0.289190, 0.887642, -0.358415,
		34.788319, 31.053429, 39.835079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.366455, 30.885794, 40.494118>,  <34.990753, 30.432079, 40.085972>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.366455, 30.885794, 40.494118> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.069672, 31.115107, 40.355064>,  <34.891602, 31.252695, 40.271633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.069672, 31.115107, 40.355064>,  <35.366455, 30.885794, 40.494118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.069672, 31.115107, 40.355064> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162416, 0.656752, 0.736408,
		0.650478, 0.489922, -0.580392,
		-0.741957, 0.573282, -0.347631,
		34.847084, 31.287092, 40.250774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.588943, 31.597275, 40.506847>,  <35.366455, 30.885794, 40.494118>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.588943, 31.597275, 40.506847> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.193863, 31.639421, 40.460648>,  <34.956814, 31.664709, 40.432926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.193863, 31.639421, 40.460648>,  <35.588943, 31.597275, 40.506847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.193863, 31.639421, 40.460648> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019669, 0.816656, 0.576790,
		0.155099, 0.567425, -0.808686,
		-0.987703, 0.105365, -0.115502,
		34.897552, 31.671032, 40.425999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.500847, 32.243942, 40.414005>,  <35.588943, 31.597275, 40.506847>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.500847, 32.243942, 40.414005> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.123684, 32.174259, 40.527554>,  <34.897388, 32.132450, 40.595684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.123684, 32.174259, 40.527554>,  <35.500847, 32.243942, 40.414005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.123684, 32.174259, 40.527554> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018091, 0.824263, 0.565918,
		-0.332572, 0.538742, -0.774050,
		-0.942904, -0.174205, 0.283874,
		34.840813, 32.121998, 40.612717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.986519, 32.749798, 40.064739>,  <35.500847, 32.243942, 40.414005>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.986519, 32.749798, 40.064739> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.828411, 32.631073, 40.412457>,  <34.733547, 32.559837, 40.621086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.828411, 32.631073, 40.412457>,  <34.986519, 32.749798, 40.064739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.828411, 32.631073, 40.412457> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072885, 0.953507, 0.292426,
		-0.915668, 0.052230, -0.398527,
		-0.395272, -0.296812, 0.869289,
		34.709831, 32.542030, 40.673244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.476208, 33.309002, 40.164940>,  <34.986519, 32.749798, 40.064739>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.476208, 33.309002, 40.164940> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.535454, 33.130394, 40.517910>,  <34.571003, 33.023232, 40.729694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.535454, 33.130394, 40.517910>,  <34.476208, 33.309002, 40.164940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.535454, 33.130394, 40.517910> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024987, 0.893677, 0.448015,
		-0.988654, -0.044310, 0.143528,
		0.148120, -0.446518, 0.882430,
		34.579891, 32.996437, 40.782639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.925545, 33.435295, 40.742565>,  <34.476208, 33.309002, 40.164940>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.925545, 33.435295, 40.742565> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.297573, 33.373325, 40.875816>,  <34.520790, 33.336143, 40.955765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.297573, 33.373325, 40.875816>,  <33.925545, 33.435295, 40.742565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.297573, 33.373325, 40.875816> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003450, 0.910378, 0.413763,
		-0.367373, -0.383678, 0.847247,
		0.930067, -0.154928, 0.333125,
		34.576591, 33.326847, 40.975754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.502750, 33.984200, 40.391708>,  <33.925545, 33.435295, 40.742565>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.502750, 33.984200, 40.391708> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.702721, 34.219875, 40.137806>,  <33.822704, 34.361282, 39.985462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.702721, 34.219875, 40.137806>,  <33.502750, 33.984200, 40.391708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.702721, 34.219875, 40.137806> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541713, -0.359119, -0.759987,
		-0.675734, 0.723799, 0.139639,
		0.499930, 0.589194, -0.634760,
		33.852699, 34.396633, 39.947376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.995678, 34.419594, 39.904694>,  <33.502750, 33.984200, 40.391708>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.995678, 34.419594, 39.904694> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.346268, 34.341351, 39.728729>,  <33.556622, 34.294407, 39.623150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.346268, 34.341351, 39.728729>,  <32.995678, 34.419594, 39.904694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.346268, 34.341351, 39.728729> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481367, -0.372013, -0.793657,
		-0.008410, 0.907384, -0.420220,
		0.876479, -0.195606, -0.439913,
		33.609211, 34.282669, 39.596756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.972881, 34.773891, 39.272163>,  <32.995678, 34.419594, 39.904694>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.972881, 34.773891, 39.272163> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.263645, 34.506313, 39.210049>,  <33.438103, 34.345764, 39.172779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.263645, 34.506313, 39.210049>,  <32.972881, 34.773891, 39.272163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.263645, 34.506313, 39.210049> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438820, -0.278523, -0.854320,
		0.528245, 0.689153, -0.496009,
		0.726907, -0.668949, -0.155285,
		33.481716, 34.305630, 39.163464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.119808, 34.775173, 38.530704>,  <32.972881, 34.773891, 39.272163>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.119808, 34.775173, 38.530704> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.234444, 34.414398, 38.659927>,  <33.303226, 34.197933, 38.737461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.234444, 34.414398, 38.659927>,  <33.119808, 34.775173, 38.530704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.234444, 34.414398, 38.659927> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410301, -0.420266, -0.809339,
		0.865748, 0.099397, -0.490512,
		0.286591, -0.901941, 0.323062,
		33.320419, 34.143814, 38.756847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.356518, 34.542278, 37.898998>,  <33.119808, 34.775173, 38.530704>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.356518, 34.542278, 37.898998> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.332565, 34.222042, 38.137486>,  <33.318195, 34.029900, 38.280579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.332565, 34.222042, 38.137486>,  <33.356518, 34.542278, 37.898998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.332565, 34.222042, 38.137486> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310108, -0.552812, -0.773454,
		0.948814, -0.231203, -0.215169,
		-0.059877, -0.800590, 0.596214,
		33.314602, 33.981865, 38.316349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.672005, 33.995880, 37.558659>,  <33.356518, 34.542278, 37.898998>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.672005, 33.995880, 37.558659> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.452942, 33.772900, 37.808239>,  <33.321503, 33.639111, 37.957989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.452942, 33.772900, 37.808239>,  <33.672005, 33.995880, 37.558659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.452942, 33.772900, 37.808239> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257832, -0.597005, -0.759676,
		0.795986, -0.576918, 0.183226,
		-0.547658, -0.557450, 0.623955,
		33.288643, 33.605663, 37.995426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.727699, 33.264790, 37.397430>,  <33.672005, 33.995880, 37.558659>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.727699, 33.264790, 37.397430> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.377991, 33.299419, 37.588490>,  <33.168163, 33.320198, 37.703125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.377991, 33.299419, 37.588490>,  <33.727699, 33.264790, 37.397430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.377991, 33.299419, 37.588490> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424909, -0.612278, -0.666759,
		0.234729, -0.785888, 0.572086,
		-0.874274, 0.086577, 0.477650,
		33.115707, 33.325394, 37.731785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.437546, 32.594528, 37.289276>,  <33.727699, 33.264790, 37.397430>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.437546, 32.594528, 37.289276> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.131802, 32.834015, 37.385017>,  <32.948357, 32.977707, 37.442463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.131802, 32.834015, 37.385017>,  <33.437546, 32.594528, 37.289276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.131802, 32.834015, 37.385017> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602465, -0.530882, -0.595987,
		-0.229759, -0.599751, 0.766491,
		-0.764360, 0.598718, 0.239354,
		32.902493, 33.013630, 37.456825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.775475, 32.121464, 37.373283>,  <33.437546, 32.594528, 37.289276>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.775475, 32.121464, 37.373283> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.661728, 32.501720, 37.323627>,  <32.593479, 32.729874, 37.293835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.661728, 32.501720, 37.323627>,  <32.775475, 32.121464, 37.373283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.661728, 32.501720, 37.323627> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671255, -0.289880, -0.682193,
		-0.684509, -0.110662, 0.720557,
		-0.284368, 0.950644, -0.124143,
		32.576416, 32.786915, 37.286385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.070522, 32.084225, 37.391361>,  <32.775475, 32.121464, 37.373283>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.070522, 32.084225, 37.391361> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.147213, 32.431793, 37.208839>,  <32.193230, 32.640335, 37.099327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.147213, 32.431793, 37.208839>,  <32.070522, 32.084225, 37.391361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.147213, 32.431793, 37.208839> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637921, -0.242992, -0.730761,
		-0.745852, 0.431196, 0.507714,
		0.191731, 0.868922, -0.456305,
		32.204731, 32.692471, 37.071949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.361292, 32.417061, 37.340050>,  <32.070522, 32.084225, 37.391361>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.361292, 32.417061, 37.340050> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.621990, 32.552826, 37.068748>,  <31.778410, 32.634285, 36.905968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.621990, 32.552826, 37.068748>,  <31.361292, 32.417061, 37.340050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.621990, 32.552826, 37.068748> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712129, -0.033831, -0.701233,
		-0.260955, 0.940028, 0.219658,
		0.651748, 0.339415, -0.678249,
		31.817514, 32.654652, 36.865273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.856651, 32.766914, 36.832062>,  <31.361292, 32.417061, 37.340050>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.856651, 32.766914, 36.832062> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.186657, 32.748867, 36.606739>,  <31.384661, 32.738037, 36.471546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.186657, 32.748867, 36.606739>,  <30.856651, 32.766914, 36.832062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.186657, 32.748867, 36.606739> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563731, -0.135302, -0.814801,
		-0.039454, 0.989776, -0.137061,
		0.825015, -0.045119, -0.563306,
		31.434162, 32.735332, 36.437748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.655035, 33.161259, 36.182255>,  <30.856651, 32.766914, 36.832062>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.655035, 33.161259, 36.182255> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.957451, 32.905960, 36.124229>,  <31.138901, 32.752781, 36.089413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.957451, 32.905960, 36.124229>,  <30.655035, 33.161259, 36.182255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.957451, 32.905960, 36.124229> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402068, -0.277991, -0.872389,
		0.516473, 0.717887, -0.466791,
		0.756040, -0.638247, -0.145064,
		31.184263, 32.714485, 36.080711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.962528, 33.359715, 35.580395>,  <30.655035, 33.161259, 36.182255>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.962528, 33.359715, 35.580395> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.134657, 32.998695, 35.574303>,  <31.237934, 32.782085, 35.570648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.134657, 32.998695, 35.574303>,  <30.962528, 33.359715, 35.580395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.134657, 32.998695, 35.574303> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404872, -0.177903, -0.896900,
		0.806785, 0.392122, -0.441971,
		0.430322, -0.902547, -0.015229,
		31.263754, 32.727932, 35.569733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.139658, 33.347759, 34.934994>,  <30.962528, 33.359715, 35.580395>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.139658, 33.347759, 34.934994> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.131124, 32.967045, 35.057404>,  <31.126005, 32.738617, 35.130848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.131124, 32.967045, 35.057404>,  <31.139658, 33.347759, 34.934994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.131124, 32.967045, 35.057404> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354375, -0.279020, -0.892505,
		0.934860, -0.127487, -0.331337,
		-0.021333, -0.951785, 0.306022,
		31.124725, 32.681511, 35.149212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.670734, 32.990643, 34.530231>,  <31.139658, 33.347759, 34.934994>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.670734, 32.990643, 34.530231> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.400984, 32.718288, 34.644508>,  <31.239134, 32.554878, 34.713074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.400984, 32.718288, 34.644508>,  <31.670734, 32.990643, 34.530231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.400984, 32.718288, 34.644508> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259003, -0.144199, -0.955052,
		0.691473, -0.718058, -0.079106,
		-0.674376, -0.680881, 0.285689,
		31.198671, 32.514023, 34.730217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.857368, 32.495018, 34.092632>,  <31.670734, 32.990643, 34.530231>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.857368, 32.495018, 34.092632> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.484314, 32.421879, 34.217056>,  <31.260481, 32.377995, 34.291710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.484314, 32.421879, 34.217056>,  <31.857368, 32.495018, 34.092632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.484314, 32.421879, 34.217056> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288813, -0.138470, -0.947319,
		0.216285, -0.973342, 0.076334,
		-0.932635, -0.182845, 0.311062,
		31.204523, 32.367027, 34.310375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.650778, 31.899076, 33.770081>,  <31.857368, 32.495018, 34.092632>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.650778, 31.899076, 33.770081> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.299179, 32.028366, 33.910305>,  <31.088221, 32.105942, 33.994438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.299179, 32.028366, 33.910305>,  <31.650778, 31.899076, 33.770081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.299179, 32.028366, 33.910305> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425153, -0.198392, -0.883112,
		-0.215912, -0.925287, 0.311812,
		-0.878992, 0.323242, 0.350553,
		31.035480, 32.125332, 34.015472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.060287, 31.402334, 33.644989>,  <31.650778, 31.899076, 33.770081>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.060287, 31.402334, 33.644989> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.895761, 31.765472, 33.677578>,  <30.797047, 31.983355, 33.697132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.895761, 31.765472, 33.677578>,  <31.060287, 31.402334, 33.644989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.895761, 31.765472, 33.677578> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444457, -0.121728, -0.887491,
		-0.795788, -0.401247, 0.453566,
		-0.411315, 0.907845, 0.081468,
		30.772367, 32.037827, 33.702019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.479275, 31.303385, 33.356628>,  <31.060287, 31.402334, 33.644989>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.479275, 31.303385, 33.356628> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.525118, 31.700741, 33.359188>,  <30.552624, 31.939154, 33.360722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.525118, 31.700741, 33.359188>,  <30.479275, 31.303385, 33.356628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.525118, 31.700741, 33.359188> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377202, 0.049471, -0.924809,
		-0.919012, 0.103578, 0.380379,
		0.114607, 0.993390, 0.006395,
		30.559500, 31.998758, 33.361107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.883265, 31.594606, 33.112339>,  <30.479275, 31.303385, 33.356628>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.883265, 31.594606, 33.112339> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.128920, 31.900080, 33.032715>,  <30.276312, 32.083363, 32.984940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.128920, 31.900080, 33.032715>,  <29.883265, 31.594606, 33.112339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.128920, 31.900080, 33.032715> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455999, 0.137513, -0.879292,
		-0.644127, 0.630776, 0.432691,
		0.614137, 0.763683, -0.199058,
		30.313160, 32.129185, 32.972996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.427334, 32.046192, 32.721069>,  <29.883265, 31.594606, 33.112339>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.427334, 32.046192, 32.721069> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.793707, 32.175846, 32.626408>,  <30.013531, 32.253639, 32.569611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.793707, 32.175846, 32.626408>,  <29.427334, 32.046192, 32.721069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.793707, 32.175846, 32.626408> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294336, 0.141680, -0.945142,
		-0.272820, 0.935343, 0.225173,
		0.915934, 0.324131, -0.236652,
		30.068487, 32.273087, 32.555412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.304193, 32.476032, 32.184753>,  <29.427334, 32.046192, 32.721069>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.304193, 32.476032, 32.184753> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.695829, 32.402969, 32.148930>,  <29.930811, 32.359131, 32.127438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.695829, 32.402969, 32.148930>,  <29.304193, 32.476032, 32.184753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.695829, 32.402969, 32.148930> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079690, 0.060665, -0.994972,
		0.187172, 0.981303, 0.044841,
		0.979089, -0.182658, -0.089555,
		29.989555, 32.348171, 32.122063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.508829, 33.065235, 31.843225>,  <29.304193, 32.476032, 32.184753>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.508829, 33.065235, 31.843225> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.773954, 32.770611, 31.789335>,  <29.933029, 32.593834, 31.757000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.773954, 32.770611, 31.789335>,  <29.508829, 33.065235, 31.843225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.773954, 32.770611, 31.789335> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178492, 0.019322, -0.983752,
		0.727200, 0.676091, -0.118664,
		0.662812, -0.736565, -0.134727,
		29.972797, 32.549641, 31.748917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.967859, 33.251095, 31.326694>,  <29.508829, 33.065235, 31.843225>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.967859, 33.251095, 31.326694> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.982624, 32.851379, 31.323477>,  <29.991482, 32.611549, 31.321547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.982624, 32.851379, 31.323477>,  <29.967859, 33.251095, 31.326694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.982624, 32.851379, 31.323477> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180462, 0.001251, -0.983581,
		0.982889, 0.037756, -0.180287,
		0.036911, -0.999286, -0.008043,
		29.993698, 32.551594, 31.321064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.247711, 33.096054, 30.594790>,  <29.967859, 33.251095, 31.326694>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.247711, 33.096054, 30.594790> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.136002, 32.735733, 30.727793>,  <30.068975, 32.519539, 30.807594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.136002, 32.735733, 30.727793>,  <30.247711, 33.096054, 30.594790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.136002, 32.735733, 30.727793> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154733, -0.299542, -0.941452,
		0.947662, -0.314373, -0.055730,
		-0.279273, -0.900802, 0.332509,
		30.052219, 32.465492, 30.827545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.559460, 32.618431, 30.171949>,  <30.247711, 33.096054, 30.594790>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.559460, 32.618431, 30.171949> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.238256, 32.433434, 30.322294>,  <30.045534, 32.322433, 30.412500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.238256, 32.433434, 30.322294>,  <30.559460, 32.618431, 30.171949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.238256, 32.433434, 30.322294> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169554, -0.427317, -0.888061,
		0.571337, -0.776850, 0.264721,
		-0.803010, -0.462498, 0.375860,
		29.997353, 32.294685, 30.435053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.255564, 32.455254, 29.697077>,  <30.559460, 32.618431, 30.171949>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.255564, 32.455254, 29.697077> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.376429, 32.766228, 29.476425>,  <31.448948, 32.952812, 29.344034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.376429, 32.766228, 29.476425>,  <31.255564, 32.455254, 29.697077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.376429, 32.766228, 29.476425> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328284, 0.458413, 0.825885,
		0.894945, -0.430643, -0.116704,
		0.302164, 0.777434, -0.551628,
		31.467077, 32.999458, 29.310936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.934757, 32.585461, 29.794645>,  <31.255564, 32.455254, 29.697077>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.934757, 32.585461, 29.794645> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.762257, 32.924633, 29.671333>,  <31.658756, 33.128136, 29.597347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.762257, 32.924633, 29.671333>,  <31.934757, 32.585461, 29.794645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.762257, 32.924633, 29.671333> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429038, 0.493310, 0.756685,
		0.793693, 0.194058, -0.576535,
		-0.431251, 0.847931, -0.308279,
		31.632881, 33.179012, 29.578850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.412014, 33.054348, 29.942232>,  <31.934757, 32.585461, 29.794645>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.412014, 33.054348, 29.942232> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.086475, 33.276905, 29.875195>,  <31.891153, 33.410439, 29.834972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.086475, 33.276905, 29.875195>,  <32.412014, 33.054348, 29.942232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.086475, 33.276905, 29.875195> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317585, 0.667420, 0.673565,
		0.486622, 0.494951, -0.719877,
		-0.813842, 0.556393, -0.167592,
		31.842323, 33.443825, 29.824917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.675133, 33.761818, 29.912270>,  <32.412014, 33.054348, 29.942232>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.675133, 33.761818, 29.912270> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.293705, 33.796944, 30.027504>,  <32.064850, 33.818020, 30.096645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.293705, 33.796944, 30.027504>,  <32.675133, 33.761818, 29.912270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.293705, 33.796944, 30.027504> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279774, 0.612393, 0.739392,
		-0.111496, 0.785662, -0.608526,
		-0.953570, 0.087810, 0.288087,
		32.007633, 33.823288, 30.113930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.548645, 34.515659, 29.892584>,  <32.675133, 33.761818, 29.912270>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.548645, 34.515659, 29.892584> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.292400, 34.335346, 30.141233>,  <32.138653, 34.227158, 30.290422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.292400, 34.335346, 30.141233>,  <32.548645, 34.515659, 29.892584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.292400, 34.335346, 30.141233> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313002, 0.585937, 0.747468,
		-0.701178, 0.673403, -0.234260,
		-0.640609, -0.450784, 0.621623,
		32.100216, 34.200111, 30.327721>
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
