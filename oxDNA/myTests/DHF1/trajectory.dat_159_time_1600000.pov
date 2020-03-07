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
	<6.160774, 4.112728, 3.321483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.028397, 4.406456, 3.558548>,  <5.948970, 4.582693, 3.700787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.028397, 4.406456, 3.558548>,  <6.160774, 4.112728, 3.321483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.028397, 4.406456, 3.558548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.943138, -0.236710, -0.233362,
		-0.031073, -0.636194, 0.770903,
		-0.330944, 0.734319, 0.592664,
		5.929113, 4.626752, 3.736347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.702002, 3.870007, 3.839269>,  <6.160774, 4.112728, 3.321483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.702002, 3.870007, 3.839269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.611267, 4.250618, 3.756187>,  <5.556826, 4.478984, 3.706339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.611267, 4.250618, 3.756187>,  <5.702002, 3.870007, 3.839269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.611267, 4.250618, 3.756187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.972516, -0.232796, -0.004375,
		-0.052515, 0.201002, 0.978182,
		-0.226838, 0.951528, -0.207703,
		5.543216, 4.536076, 3.693877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.473809, 4.295846, 4.372692>,  <5.702002, 3.870007, 3.839269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.473809, 4.295846, 4.372692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.313545, 4.382317, 4.016548>,  <5.217387, 4.434199, 3.802862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.313545, 4.382317, 4.016548>,  <5.473809, 4.295846, 4.372692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.313545, 4.382317, 4.016548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875690, -0.376205, 0.302716,
		-0.269517, 0.900964, 0.340034,
		-0.400659, 0.216177, -0.890359,
		5.193347, 4.447170, 3.749440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.766172, 4.481520, 4.426252>,  <5.473809, 4.295846, 4.372692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.766172, 4.481520, 4.426252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.795326, 4.357460, 4.047096>,  <4.812819, 4.283024, 3.819603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.795326, 4.357460, 4.047096>,  <4.766172, 4.481520, 4.426252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.795326, 4.357460, 4.047096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863314, -0.495501, 0.095747,
		-0.499376, 0.811349, -0.303870,
		0.072884, -0.310149, -0.947890,
		4.817192, 4.264415, 3.762729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.167324, 4.749378, 3.955783>,  <4.766172, 4.481520, 4.426252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.167324, 4.749378, 3.955783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.344635, 4.395897, 3.895683>,  <4.451022, 4.183808, 3.859624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.344635, 4.395897, 3.895683>,  <4.167324, 4.749378, 3.955783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.344635, 4.395897, 3.895683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848166, -0.467733, 0.248678,
		-0.290033, 0.017202, -0.956862,
		0.443278, -0.883703, -0.150248,
		4.477618, 4.130786, 3.850609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.714903, 4.384273, 3.515706>,  <4.167324, 4.749378, 3.955783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.714903, 4.384273, 3.515706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.917305, 4.080994, 3.680191>,  <4.038746, 3.899026, 3.778882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.917305, 4.080994, 3.680191>,  <3.714903, 4.384273, 3.515706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.917305, 4.080994, 3.680191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857389, -0.494122, 0.143969,
		0.094032, -0.425418, -0.900099,
		0.506006, -0.758197, 0.411212,
		4.069107, 3.853534, 3.803555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.499689, 3.806046, 3.133710>,  <3.714903, 4.384273, 3.515706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.499689, 3.806046, 3.133710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.647881, 3.686546, 3.485504>,  <3.736795, 3.614846, 3.696580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.647881, 3.686546, 3.485504>,  <3.499689, 3.806046, 3.133710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.647881, 3.686546, 3.485504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873423, -0.434218, 0.220426,
		0.316036, -0.849825, -0.421803,
		0.370478, -0.298750, 0.879485,
		3.759024, 3.596921, 3.749350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.009053, 3.280785, 3.229501>,  <3.499689, 3.806046, 3.133710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.009053, 3.280785, 3.229501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.204536, 3.324028, 3.575790>,  <3.321827, 3.349974, 3.783564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.204536, 3.324028, 3.575790>,  <3.009053, 3.280785, 3.229501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.204536, 3.324028, 3.575790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793405, -0.357641, 0.492545,
		0.362865, -0.927581, -0.089010,
		0.488709, 0.108107, 0.865723,
		3.351149, 3.356460, 3.835507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.976159, 3.015294, 4.034456> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.986973, 3.240204, 4.365059>,  <1.993461, 3.375150, 4.563421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.986973, 3.240204, 4.365059>,  <1.976159, 3.015294, 4.034456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.986973, 3.240204, 4.365059> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980343, 0.146739, -0.131894,
		-0.195442, 0.813827, -0.547256,
		0.027035, 0.562276, 0.826508,
		1.995083, 3.408886, 4.613011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.237333, 3.643975, 3.918458>,  <1.976159, 3.015294, 4.034456>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.237333, 3.643975, 3.918458> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.328686, 3.551178, 4.296669>,  <2.383497, 3.495500, 4.523595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.328686, 3.551178, 4.296669>,  <2.237333, 3.643975, 3.918458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.328686, 3.551178, 4.296669> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971099, 0.123457, -0.204267,
		-0.069344, 0.964851, 0.253483,
		0.228381, -0.231992, 0.945527,
		2.397200, 3.481580, 4.580327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.792804, 4.014092, 4.092714>,  <2.237333, 3.643975, 3.918458>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.792804, 4.014092, 4.092714> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.812981, 3.702042, 4.342148>,  <2.825087, 3.514811, 4.491808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.812981, 3.702042, 4.342148>,  <2.792804, 4.014092, 4.092714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.812981, 3.702042, 4.342148> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997674, 0.010694, -0.067322,
		0.045852, 0.625531, 0.778851,
		0.050441, -0.780126, 0.623586,
		2.828113, 3.468004, 4.529223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.142998, 4.232436, 4.640318>,  <2.792804, 4.014092, 4.092714>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.142998, 4.232436, 4.640318> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.175957, 3.841934, 4.560181>,  <3.195732, 3.607633, 4.512098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.175957, 3.841934, 4.560181>,  <3.142998, 4.232436, 4.640318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.175957, 3.841934, 4.560181> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979857, 0.116052, -0.162520,
		0.181911, -0.182917, 0.966152,
		0.082396, -0.976255, -0.200343,
		3.200675, 3.549058, 4.500078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.756042, 3.839772, 5.024737>,  <3.142998, 4.232436, 4.640318>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.756042, 3.839772, 5.024737> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.676022, 3.649727, 4.681984>,  <3.628009, 3.535700, 4.476332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.676022, 3.649727, 4.681984>,  <3.756042, 3.839772, 5.024737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.676022, 3.649727, 4.681984> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931529, 0.178853, -0.316647,
		0.303699, -0.861557, 0.406801,
		-0.200052, -0.475112, -0.856883,
		3.616006, 3.507193, 4.424919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.167412, 3.232740, 4.868528>,  <3.756042, 3.839772, 5.024737>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.167412, 3.232740, 4.868528> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.040215, 3.367531, 4.514053>,  <3.963896, 3.448406, 4.301369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.040215, 3.367531, 4.514053>,  <4.167412, 3.232740, 4.868528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.040215, 3.367531, 4.514053> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944809, 0.190353, -0.266648,
		0.078834, -0.922069, -0.378910,
		-0.317995, 0.336977, -0.886186,
		3.944816, 3.468624, 4.248198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.595035, 2.856657, 4.445759>,  <4.167412, 3.232740, 4.868528>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.595035, 2.856657, 4.445759> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.455681, 3.162773, 4.229256>,  <4.372068, 3.346443, 4.099354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.455681, 3.162773, 4.229256>,  <4.595035, 2.856657, 4.445759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.455681, 3.162773, 4.229256> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929037, 0.205169, -0.307890,
		-0.124576, -0.610113, -0.782460,
		-0.348385, 0.765290, -0.541258,
		4.351165, 3.392360, 4.066878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.885638, 2.859012, 3.764092>,  <4.595035, 2.856657, 4.445759>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.885638, 2.859012, 3.764092> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.786690, 3.246277, 3.779427>,  <4.727321, 3.478636, 3.788627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.786690, 3.246277, 3.779427>,  <4.885638, 2.859012, 3.764092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.786690, 3.246277, 3.779427> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915108, 0.246451, -0.319123,
		-0.318410, -0.043861, -0.946938,
		-0.247371, 0.968162, 0.038335,
		4.712479, 3.536726, 3.790927>
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
