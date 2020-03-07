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
	<3.580901, 3.301122, 1.114563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.571370, 3.000465, 0.850906>,  <3.565651, 2.820072, 0.692712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.571370, 3.000465, 0.850906>,  <3.580901, 3.301122, 1.114563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.571370, 3.000465, 0.850906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946597, -0.229021, 0.226941,
		-0.321536, -0.618535, 0.716958,
		-0.023828, -0.751641, -0.659142,
		3.564222, 2.774973, 0.653164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.916001, 2.607665, 1.335982>,  <3.580901, 3.301122, 1.114563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.916001, 2.607665, 1.335982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.938125, 2.593758, 0.936836>,  <3.951399, 2.585413, 0.697349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.938125, 2.593758, 0.936836>,  <3.916001, 2.607665, 1.335982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.938125, 2.593758, 0.936836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832782, -0.549735, 0.065314,
		-0.550832, -0.834615, -0.001450,
		0.055309, -0.034769, -0.997864,
		3.954718, 2.583327, 0.637477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.028276, 1.961282, 1.057646>,  <3.916001, 2.607665, 1.335982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.028276, 1.961282, 1.057646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.192662, 2.193497, 0.776482>,  <4.291294, 2.332825, 0.607783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.192662, 2.193497, 0.776482>,  <4.028276, 1.961282, 1.057646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.192662, 2.193497, 0.776482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808015, -0.588995, -0.014038,
		-0.422161, -0.562194, -0.711139,
		0.410965, 0.580537, -0.702912,
		4.315952, 2.367658, 0.565608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.364046, 1.520976, 0.679145>,  <4.028276, 1.961282, 1.057646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.364046, 1.520976, 0.679145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.532733, 1.875694, 0.603516>,  <4.633945, 2.088525, 0.558138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.532733, 1.875694, 0.603516>,  <4.364046, 1.520976, 0.679145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.532733, 1.875694, 0.603516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906343, -0.406204, 0.116365,
		0.026389, -0.220439, -0.975044,
		0.421718, 0.886795, -0.189074,
		4.659248, 2.141733, 0.546794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.891462, 1.382395, 0.234542>,  <4.364046, 1.520976, 0.679145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.891462, 1.382395, 0.234542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.988482, 1.745583, 0.371223>,  <5.046695, 1.963495, 0.453232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.988482, 1.745583, 0.371223>,  <4.891462, 1.382395, 0.234542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.988482, 1.745583, 0.371223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968375, -0.205367, -0.141683,
		-0.058469, 0.365262, -0.929067,
		0.242551, 0.907969, 0.341703,
		5.061248, 2.017973, 0.473734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.305633, 1.708921, -0.251227>,  <4.891462, 1.382395, 0.234542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.305633, 1.708921, -0.251227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.367976, 1.905403, 0.091568>,  <5.405382, 2.023292, 0.297245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.367976, 1.905403, 0.091568>,  <5.305633, 1.708921, -0.251227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.367976, 1.905403, 0.091568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936552, -0.349254, 0.029855,
		0.313972, 0.797960, -0.514473,
		0.155859, 0.491205, 0.856987,
		5.414734, 2.052765, 0.348664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.002853, 1.887225, -0.254846>,  <5.305633, 1.708921, -0.251227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.002853, 1.887225, -0.254846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.891730, 1.892570, 0.129372>,  <5.825057, 1.895778, 0.359902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.891730, 1.892570, 0.129372>,  <6.002853, 1.887225, -0.254846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.891730, 1.892570, 0.129372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896337, -0.356067, 0.264191,
		0.345549, 0.934365, 0.086940,
		-0.277807, 0.013364, 0.960544,
		5.808388, 1.896580, 0.417535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.521064, 2.310720, 0.102081>,  <6.002853, 1.887225, -0.254846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.521064, 2.310720, 0.102081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.352405, 2.095177, 0.393791>,  <6.251209, 1.965851, 0.568817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.352405, 2.095177, 0.393791>,  <6.521064, 2.310720, 0.102081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.352405, 2.095177, 0.393791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906407, -0.228058, 0.355551,
		-0.025274, 0.810939, 0.584585,
		-0.421650, -0.538858, 0.729276,
		6.225910, 1.933519, 0.612574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.126110, 0.887380, 0.612565> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.125326, 1.139473, 0.923126>,  <2.124856, 1.290729, 1.109463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.125326, 1.139473, 0.923126>,  <2.126110, 0.887380, 0.612565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.125326, 1.139473, 0.923126> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.975121, 0.170898, -0.141186,
		-0.221666, -0.757364, 0.614218,
		-0.001960, 0.630233, 0.776403,
		2.124738, 1.328543, 1.156047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.532463, 0.718900, 1.058065>,  <2.126110, 0.887380, 0.612565>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.532463, 0.718900, 1.058065> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.647172, 1.099258, 1.104645>,  <1.715997, 1.327473, 1.132593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.647172, 1.099258, 1.104645>,  <1.532463, 0.718900, 1.058065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.647172, 1.099258, 1.104645> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949466, 0.298297, -0.097635,
		-0.127577, -0.082567, 0.988386,
		0.286771, 0.950895, 0.116450,
		1.733203, 1.384527, 1.139580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.086644, 0.917594, 1.546635>,  <1.532463, 0.718900, 1.058065>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.086644, 0.917594, 1.546635> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.224154, 1.214828, 1.316978>,  <1.306661, 1.393169, 1.179184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.224154, 1.214828, 1.316978>,  <1.086644, 0.917594, 1.546635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.224154, 1.214828, 1.316978> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.924375, 0.375458, -0.067544,
		0.165375, 0.553943, 0.815965,
		0.343777, 0.743087, -0.574142,
		1.327287, 1.437755, 1.144736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.677679, 1.303071, 1.608213>,  <1.086644, 0.917594, 1.546635>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.677679, 1.303071, 1.608213> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.843053, 1.500847, 1.302376>,  <0.942277, 1.619513, 1.118874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.843053, 1.500847, 1.302376>,  <0.677679, 1.303071, 1.608213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.843053, 1.500847, 1.302376> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862114, 0.482749, -0.153987,
		0.292969, 0.722829, 0.625849,
		0.413434, 0.494440, -0.764592,
		0.967083, 1.649179, 1.072998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.555599, 2.009031, 1.729694>,  <0.677679, 1.303071, 1.608213>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.555599, 2.009031, 1.729694> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.619019, 1.974770, 1.336243>,  <0.657070, 1.954213, 1.100172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.619019, 1.974770, 1.336243>,  <0.555599, 2.009031, 1.729694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.619019, 1.974770, 1.336243> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730478, 0.660075, -0.175222,
		0.664277, 0.746301, 0.042087,
		0.158549, -0.085653, -0.983629,
		0.666583, 1.949074, 1.041154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.619518, 2.669583, 1.503070>,  <0.555599, 2.009031, 1.729694>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.619518, 2.669583, 1.503070> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.530123, 2.447197, 1.182831>,  <0.476486, 2.313766, 0.990687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.530123, 2.447197, 1.182831>,  <0.619518, 2.669583, 1.503070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.530123, 2.447197, 1.182831> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749518, 0.623118, -0.223488,
		0.623118, 0.550115, -0.555964,
		0.223488, 0.555964, 0.800598,
		0.463076, 2.280408, 0.942651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.433726, 3.160366, 0.993590>,  <0.619518, 2.669583, 1.503070>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.433726, 3.160366, 0.993590> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.297655, 2.809692, 0.857529>,  <0.216013, 2.599288, 0.775892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.297655, 2.809692, 0.857529>,  <0.433726, 3.160366, 0.993590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.297655, 2.809692, 0.857529> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813487, 0.455808, -0.361218,
		0.471720, 0.153836, -0.868225,
		-0.340175, -0.876684, -0.340158,
		0.195602, 2.546687, 0.755483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.160146, 3.293261, 0.306816>,  <0.433726, 3.160366, 0.993590>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.160146, 3.293261, 0.306816> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.005947, 2.940598, 0.396492>,  <-0.105603, 2.729000, 0.450298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.005947, 2.940598, 0.396492>,  <0.160146, 3.293261, 0.306816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.005947, 2.940598, 0.396492> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.896822, 0.355377, -0.263472,
		0.152620, -0.310461, -0.938254,
		-0.415232, -0.881658, 0.224190,
		-0.130517, 2.676100, 0.463749>
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
