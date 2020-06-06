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
	right 1.6 * <0.581683, 0, 0.813415>
	location <-54.4937, 30, 90.4225>
	look_at <30, 30, 30>
	direction <84.4937, 0, -60.4225>
	angle 67.0682
}


# declare cpy_camera_pos = <-54.4937, 30, 90.4225>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 48
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <0.231732, -1, 1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <-0.231732, 1, -1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<42.744965, 32.151516, 23.414560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.469532, 32.354443, 23.207298>,  <42.304272, 32.476200, 23.082941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.469532, 32.354443, 23.207298>,  <42.744965, 32.151516, 23.414560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.469532, 32.354443, 23.207298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285070, -0.846387, -0.449849,
		-0.666775, -0.162048, 0.727428,
		-0.688583, 0.507316, -0.518155,
		42.262959, 32.506638, 23.051851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.031700, 31.800270, 23.520226>,  <42.744965, 32.151516, 23.414560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.031700, 31.800270, 23.520226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.099110, 31.966507, 23.162704>,  <42.139557, 32.066250, 22.948191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.099110, 31.966507, 23.162704>,  <42.031700, 31.800270, 23.520226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.099110, 31.966507, 23.162704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144161, -0.886631, -0.439436,
		-0.975099, 0.202907, -0.089506,
		0.168523, 0.415590, -0.893804,
		42.149666, 32.091183, 22.894564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.439701, 31.537378, 23.097977>,  <42.031700, 31.800270, 23.520226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.439701, 31.537378, 23.097977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.724815, 31.658134, 22.844742>,  <41.895885, 31.730589, 22.692801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.724815, 31.658134, 22.844742>,  <41.439701, 31.537378, 23.097977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.724815, 31.658134, 22.844742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110269, -0.843168, -0.526221,
		-0.692660, 0.444892, -0.567709,
		0.712786, 0.301891, -0.633087,
		41.938652, 31.748701, 22.654816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.072010, 31.738831, 22.387358>,  <41.439701, 31.537378, 23.097977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.072010, 31.738831, 22.387358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.442539, 31.593395, 22.426807>,  <41.664856, 31.506134, 22.450478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.442539, 31.593395, 22.426807>,  <41.072010, 31.738831, 22.387358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.442539, 31.593395, 22.426807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280889, -0.841040, -0.462334,
		0.251047, 0.400569, -0.881204,
		0.926324, -0.363588, 0.098626,
		41.720436, 31.484320, 22.456394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.946777, 32.407261, 22.870413>,  <41.072010, 31.738831, 22.387358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.946777, 32.407261, 22.870413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.551594, 32.415627, 22.931728>,  <40.314484, 32.420647, 22.968517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.551594, 32.415627, 22.931728>,  <40.946777, 32.407261, 22.870413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.551594, 32.415627, 22.931728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108345, 0.613754, -0.782028,
		-0.110434, -0.789220, -0.604099,
		-0.987960, 0.020911, 0.153287,
		40.255207, 32.421902, 22.977715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.523842, 32.259140, 22.182253>,  <40.946777, 32.407261, 22.870413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.523842, 32.259140, 22.182253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.309010, 32.482708, 22.434967>,  <40.180111, 32.616848, 22.586596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.309010, 32.482708, 22.434967>,  <40.523842, 32.259140, 22.182253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.309010, 32.482708, 22.434967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155045, 0.670809, -0.725243,
		-0.829159, -0.487470, -0.273622,
		-0.537082, 0.558918, 0.631786,
		40.147884, 32.650383, 22.624502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.637527, 32.121517, 21.410774>,  <40.523842, 32.259140, 22.182253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.637527, 32.121517, 21.410774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.261299, 32.246807, 21.358292>,  <40.035561, 32.321980, 21.326801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.261299, 32.246807, 21.358292>,  <40.637527, 32.121517, 21.410774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.261299, 32.246807, 21.358292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329469, 0.748011, -0.576133,
		-0.082315, -0.585123, -0.806756,
		-0.940572, 0.313225, -0.131207,
		39.979126, 32.340775, 21.318930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.511776, 32.240276, 20.732428>,  <40.637527, 32.121517, 21.410774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.511776, 32.240276, 20.732428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.271408, 32.480007, 20.943974>,  <40.127186, 32.623848, 21.070902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.271408, 32.480007, 20.943974>,  <40.511776, 32.240276, 20.732428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.271408, 32.480007, 20.943974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282276, 0.778140, -0.561087,
		-0.747808, -0.187881, -0.636776,
		-0.600919, 0.599332, 0.528865,
		40.091133, 32.659805, 21.102633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.086285, 32.523140, 20.268305>,  <40.511776, 32.240276, 20.732428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.086285, 32.523140, 20.268305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.113605, 32.768456, 20.583065>,  <40.129997, 32.915646, 20.771921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.113605, 32.768456, 20.583065>,  <40.086285, 32.523140, 20.268305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.113605, 32.768456, 20.583065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158561, 0.772046, -0.615470,
		-0.984984, 0.166809, -0.044512,
		0.068300, 0.613286, 0.786902,
		40.134094, 32.952442, 20.819136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.748482, 33.088718, 20.012026>,  <40.086285, 32.523140, 20.268305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.748482, 33.088718, 20.012026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.968906, 33.200123, 20.326672>,  <40.101162, 33.266964, 20.515459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.968906, 33.200123, 20.326672>,  <39.748482, 33.088718, 20.012026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.968906, 33.200123, 20.326672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374118, 0.760150, -0.531232,
		-0.745898, 0.587029, 0.314695,
		0.551064, 0.278512, 0.786613,
		40.134224, 33.283676, 20.562654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.660507, 33.891579, 20.104578>,  <39.748482, 33.088718, 20.012026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.660507, 33.891579, 20.104578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.010567, 33.808926, 20.279583>,  <40.220604, 33.759335, 20.384586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.010567, 33.808926, 20.279583>,  <39.660507, 33.891579, 20.104578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.010567, 33.808926, 20.279583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427482, 0.753768, -0.499092,
		-0.226654, 0.623809, 0.747991,
		0.875149, -0.206631, 0.437512,
		40.273113, 33.746937, 20.410837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.000969, 34.496742, 20.112638>,  <39.660507, 33.891579, 20.104578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.000969, 34.496742, 20.112638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.312328, 34.249352, 20.155689>,  <40.499142, 34.100918, 20.181519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.312328, 34.249352, 20.155689>,  <40.000969, 34.496742, 20.112638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.312328, 34.249352, 20.155689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580930, 0.644668, -0.496914,
		0.237948, 0.449319, 0.861100,
		0.778396, -0.618479, 0.107625,
		40.545849, 34.063808, 20.187977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.538731, 34.786572, 20.381332>,  <40.000969, 34.496742, 20.112638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.538731, 34.786572, 20.381332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.749012, 34.481991, 20.229633>,  <40.875183, 34.299244, 20.138613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.749012, 34.481991, 20.229633>,  <40.538731, 34.786572, 20.381332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.749012, 34.481991, 20.229633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680834, 0.643907, -0.349068,
		0.509999, -0.074699, 0.856925,
		0.525705, -0.761448, -0.379250,
		40.906723, 34.253555, 20.115858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.172108, 35.015224, 20.414495>,  <40.538731, 34.786572, 20.381332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.172108, 35.015224, 20.414495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.270512, 34.695362, 20.195396>,  <41.329552, 34.503445, 20.063938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.270512, 34.695362, 20.195396>,  <41.172108, 35.015224, 20.414495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.270512, 34.695362, 20.195396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693710, 0.539936, -0.476693,
		0.676939, -0.262706, 0.687560,
		0.246008, -0.799659, -0.547745,
		41.344315, 34.455463, 20.031073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.882210, 34.767242, 20.531876>,  <41.172108, 35.015224, 20.414495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.882210, 34.767242, 20.531876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.762772, 34.652771, 20.167690>,  <41.691109, 34.584087, 19.949179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.762772, 34.652771, 20.167690>,  <41.882210, 34.767242, 20.531876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.762772, 34.652771, 20.167690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625061, 0.662265, -0.413164,
		0.721205, -0.692464, -0.018873,
		-0.298600, -0.286180, -0.910461,
		41.673191, 34.566917, 19.894552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.471367, 34.728020, 20.209200>,  <41.882210, 34.767242, 20.531876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.471367, 34.728020, 20.209200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.184475, 34.775097, 19.934471>,  <42.012341, 34.803345, 19.769634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.184475, 34.775097, 19.934471>,  <42.471367, 34.728020, 20.209200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.184475, 34.775097, 19.934471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554632, 0.693109, -0.460417,
		0.421851, -0.711159, -0.562400,
		-0.717234, 0.117697, -0.686820,
		41.969303, 34.810406, 19.728424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.758152, 34.768242, 19.589590>,  <42.471367, 34.728020, 20.209200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.758152, 34.768242, 19.589590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.416702, 34.922363, 19.449379>,  <42.211834, 35.014835, 19.365252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.416702, 34.922363, 19.449379>,  <42.758152, 34.768242, 19.589590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.416702, 34.922363, 19.449379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518132, 0.558924, -0.647412,
		-0.053530, -0.734266, -0.676748,
		-0.853624, 0.385301, -0.350527,
		42.160614, 35.037952, 19.344221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.982719, 34.913998, 18.832855>,  <42.758152, 34.768242, 19.589590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.982719, 34.913998, 18.832855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.656487, 35.119034, 18.940243>,  <42.460747, 35.242058, 19.004675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.656487, 35.119034, 18.940243>,  <42.982719, 34.913998, 18.832855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.656487, 35.119034, 18.940243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245449, 0.726617, -0.641703,
		-0.524006, -0.457466, -0.718430,
		-0.815581, 0.512595, 0.268467,
		42.411812, 35.272812, 19.020782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.686062, 35.010212, 18.219439>,  <42.982719, 34.913998, 18.832855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.686062, 35.010212, 18.219439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.581951, 35.309418, 18.463646>,  <42.519485, 35.488941, 18.610170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.581951, 35.309418, 18.463646>,  <42.686062, 35.010212, 18.219439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.581951, 35.309418, 18.463646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180565, 0.658864, -0.730271,
		-0.948500, -0.079834, -0.306551,
		-0.260276, 0.748014, 0.610517,
		42.503868, 35.533821, 18.646801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.426136, 35.484089, 17.719362>,  <42.686062, 35.010212, 18.219439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.426136, 35.484089, 17.719362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.476501, 35.717987, 18.039917>,  <42.506721, 35.858326, 18.232250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.476501, 35.717987, 18.039917>,  <42.426136, 35.484089, 17.719362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.476501, 35.717987, 18.039917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091904, 0.797465, -0.596325,
		-0.987776, 0.148734, 0.046668,
		0.125910, 0.584746, 0.801386,
		42.514275, 35.893410, 18.280333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.903439, 36.072079, 17.727953>,  <42.426136, 35.484089, 17.719362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.903439, 36.072079, 17.727953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.176193, 36.193333, 17.994228>,  <42.339844, 36.266087, 18.153994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.176193, 36.193333, 17.994228>,  <41.903439, 36.072079, 17.727953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.176193, 36.193333, 17.994228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042007, 0.892351, -0.449384,
		-0.730254, 0.334391, 0.595745,
		0.681883, 0.303138, 0.665689,
		42.380756, 36.284275, 18.193935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.654045, 36.584026, 18.014511>,  <41.903439, 36.072079, 17.727953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.654045, 36.584026, 18.014511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.047314, 36.631779, 18.069813>,  <42.283276, 36.660431, 18.102993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.047314, 36.631779, 18.069813>,  <41.654045, 36.584026, 18.014511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.047314, 36.631779, 18.069813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030916, 0.854706, -0.518191,
		-0.180029, 0.505198, 0.844017,
		0.983176, 0.119383, 0.138253,
		42.342266, 36.667595, 18.111288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.800732, 37.248676, 18.241688>,  <41.654045, 36.584026, 18.014511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.800732, 37.248676, 18.241688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.156170, 37.144604, 18.090580>,  <42.369431, 37.082161, 17.999916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.156170, 37.144604, 18.090580>,  <41.800732, 37.248676, 18.241688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.156170, 37.144604, 18.090580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031588, 0.856318, -0.515482,
		0.457611, 0.446120, 0.769135,
		0.888591, -0.260186, -0.377769,
		42.422749, 37.066547, 17.977249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.164726, 37.976387, 18.204781>,  <41.800732, 37.248676, 18.241688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.164726, 37.976387, 18.204781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.336658, 37.710339, 17.960529>,  <42.439816, 37.550709, 17.813978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.336658, 37.710339, 17.960529>,  <42.164726, 37.976387, 18.204781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.336658, 37.710339, 17.960529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061795, 0.653035, -0.754802,
		0.900795, 0.362168, 0.239591,
		0.429826, -0.665116, -0.610631,
		42.465607, 37.510803, 17.777340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.796444, 38.281387, 17.914143>,  <42.164726, 37.976387, 18.204781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.796444, 38.281387, 17.914143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.700279, 37.979187, 17.670364>,  <42.642578, 37.797867, 17.524097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.700279, 37.979187, 17.670364>,  <42.796444, 38.281387, 17.914143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.700279, 37.979187, 17.670364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115863, 0.645707, -0.754743,
		0.963731, -0.110838, -0.242771,
		-0.240413, -0.755498, -0.609446,
		42.628155, 37.752537, 17.487530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.178467, 38.254749, 17.243361>,  <42.796444, 38.281387, 17.914143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.178467, 38.254749, 17.243361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.848370, 38.041630, 17.168419>,  <42.650311, 37.913757, 17.123453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.848370, 38.041630, 17.168419>,  <43.178467, 38.254749, 17.243361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.848370, 38.041630, 17.168419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224539, 0.613895, -0.756779,
		0.518229, -0.582456, -0.626245,
		-0.825240, -0.532801, -0.187354,
		42.600800, 37.881790, 17.112213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.157833, 38.160404, 16.533463>,  <43.178467, 38.254749, 17.243361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.157833, 38.160404, 16.533463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.779423, 38.122593, 16.657467>,  <42.552376, 38.099907, 16.731869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.779423, 38.122593, 16.657467>,  <43.157833, 38.160404, 16.533463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.779423, 38.122593, 16.657467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308677, 0.554380, -0.772905,
		-0.098799, -0.826878, -0.553635,
		-0.946022, -0.094532, 0.310010,
		42.495617, 38.094234, 16.750469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.740276, 37.798717, 16.104082>,  <43.157833, 38.160404, 16.533463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.740276, 37.798717, 16.104082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.527782, 38.085197, 16.285122>,  <42.400284, 38.257084, 16.393745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.527782, 38.085197, 16.285122>,  <42.740276, 37.798717, 16.104082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.527782, 38.085197, 16.285122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024698, 0.547080, -0.836716,
		-0.846862, -0.433317, -0.308319,
		-0.531238, 0.716198, 0.452600,
		42.368412, 38.300056, 16.420902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.125797, 37.887100, 15.768751>,  <42.740276, 37.798717, 16.104082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.125797, 37.887100, 15.768751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.268372, 38.222519, 15.933572>,  <42.353916, 38.423771, 16.032465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.268372, 38.222519, 15.933572>,  <42.125797, 37.887100, 15.768751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.268372, 38.222519, 15.933572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086623, 0.409460, -0.908206,
		-0.930295, 0.359411, 0.073309,
		0.356437, 0.838550, 0.412053,
		42.375301, 38.474083, 16.057188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.832672, 38.431179, 15.345594>,  <42.125797, 37.887100, 15.768751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.832672, 38.431179, 15.345594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.145081, 38.585819, 15.541776>,  <42.332527, 38.678604, 15.659485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.145081, 38.585819, 15.541776>,  <41.832672, 38.431179, 15.345594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.145081, 38.585819, 15.541776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201675, 0.587136, -0.783963,
		-0.591042, 0.711205, 0.380600,
		0.781023, 0.386598, 0.490454,
		42.379387, 38.701797, 15.688912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.418316, 38.833282, 15.874410>,  <41.832672, 38.431179, 15.345594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.418316, 38.833282, 15.874410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.402966, 39.061062, 16.202862>,  <41.393753, 39.197731, 16.399933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.402966, 39.061062, 16.202862>,  <41.418316, 38.833282, 15.874410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.402966, 39.061062, 16.202862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898912, -0.339231, 0.277270,
		0.436444, 0.748765, -0.498866,
		-0.038379, 0.569450, 0.821130,
		41.391453, 39.231895, 16.449202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.171570, 39.513420, 16.002758>,  <41.418316, 38.833282, 15.874410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.171570, 39.513420, 16.002758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.002697, 39.472248, 15.642499>,  <40.901375, 39.447544, 15.426344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.002697, 39.472248, 15.642499>,  <41.171570, 39.513420, 16.002758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.002697, 39.472248, 15.642499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238783, -0.945818, 0.220026,
		-0.874497, 0.307950, 0.374730,
		-0.422183, -0.102933, -0.900648,
		40.876041, 39.441368, 15.372305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.559307, 39.356171, 16.080584>,  <41.171570, 39.513420, 16.002758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.559307, 39.356171, 16.080584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.670845, 39.174526, 15.742110>,  <40.737770, 39.065540, 15.539026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.670845, 39.174526, 15.742110>,  <40.559307, 39.356171, 16.080584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.670845, 39.174526, 15.742110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207595, -0.888802, 0.408577,
		-0.937629, 0.061733, -0.342112,
		0.278847, -0.454114, -0.846183,
		40.754498, 39.038292, 15.488256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.055733, 38.964531, 15.671128>,  <40.559307, 39.356171, 16.080584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.055733, 38.964531, 15.671128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.412331, 38.798065, 15.599532>,  <40.626289, 38.698185, 15.556575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.412331, 38.798065, 15.599532>,  <40.055733, 38.964531, 15.671128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.412331, 38.798065, 15.599532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339625, -0.875439, 0.343891,
		-0.299810, -0.245788, -0.921793,
		0.891498, -0.416166, -0.178990,
		40.679779, 38.673214, 15.545835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.101425, 38.296581, 15.189728>,  <40.055733, 38.964531, 15.671128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.101425, 38.296581, 15.189728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.364235, 38.270897, 15.490180>,  <40.521919, 38.255486, 15.670451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.364235, 38.270897, 15.490180>,  <40.101425, 38.296581, 15.189728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.364235, 38.270897, 15.490180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479700, -0.804234, 0.350850,
		0.581556, -0.590834, -0.559203,
		0.657024, -0.064211, 0.751130,
		40.561340, 38.251633, 15.715519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.315342, 37.547329, 15.247189>,  <40.101425, 38.296581, 15.189728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.315342, 37.547329, 15.247189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.410175, 37.736782, 15.586473>,  <40.467075, 37.850452, 15.790043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.410175, 37.736782, 15.586473>,  <40.315342, 37.547329, 15.247189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.410175, 37.736782, 15.586473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294256, -0.797079, 0.527331,
		0.925852, -0.374615, -0.049608,
		0.237088, 0.473633, 0.848210,
		40.481300, 37.878872, 15.840936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.826260, 37.942123, 14.919236>,  <40.315342, 37.547329, 15.247189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.826260, 37.942123, 14.919236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.040092, 37.988300, 15.254115>,  <41.168392, 38.016006, 15.455042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.040092, 37.988300, 15.254115>,  <40.826260, 37.942123, 14.919236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.040092, 37.988300, 15.254115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281868, -0.909548, 0.305405,
		0.796728, -0.399242, -0.453685,
		0.534579, 0.115445, 0.837196,
		41.200466, 38.022934, 15.505274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.162563, 37.289806, 15.015121>,  <40.826260, 37.942123, 14.919236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.162563, 37.289806, 15.015121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.130669, 37.486370, 15.362029>,  <41.111530, 37.604309, 15.570174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.130669, 37.486370, 15.362029>,  <41.162563, 37.289806, 15.015121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.130669, 37.486370, 15.362029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521403, -0.762091, 0.383871,
		0.849577, -0.421589, 0.316989,
		-0.079738, 0.491407, 0.867272,
		41.106747, 37.633793, 15.622211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.311810, 36.839157, 15.566083>,  <41.162563, 37.289806, 15.015121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.311810, 36.839157, 15.566083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.103436, 37.128334, 15.747624>,  <40.978413, 37.301842, 15.856549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.103436, 37.128334, 15.747624>,  <41.311810, 36.839157, 15.566083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.103436, 37.128334, 15.747624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586582, -0.689450, 0.424948,
		0.620122, -0.044854, 0.783222,
		-0.520932, 0.722944, 0.453853,
		40.947155, 37.345219, 15.883780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.204597, 36.582512, 16.156645>,  <41.311810, 36.839157, 15.566083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.204597, 36.582512, 16.156645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.945477, 36.886055, 16.183445>,  <40.790005, 37.068180, 16.199526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.945477, 36.886055, 16.183445>,  <41.204597, 36.582512, 16.156645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.945477, 36.886055, 16.183445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605237, -0.566082, 0.559678,
		0.462643, 0.322009, 0.825997,
		-0.647804, 0.758855, 0.067002,
		40.751137, 37.113712, 16.203547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.031723, 36.488792, 16.811852>,  <41.204597, 36.582512, 16.156645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.031723, 36.488792, 16.811852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.752598, 36.731522, 16.659634>,  <40.585121, 36.877159, 16.568304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.752598, 36.731522, 16.659634>,  <41.031723, 36.488792, 16.811852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.752598, 36.731522, 16.659634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687233, -0.417461, 0.594506,
		0.201901, 0.676377, 0.708343,
		-0.697816, 0.606828, -0.380543,
		40.543255, 36.913570, 16.545471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.758747, 36.779949, 17.377033>,  <41.031723, 36.488792, 16.811852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.758747, 36.779949, 17.377033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.489258, 36.783043, 17.081455>,  <40.327564, 36.784901, 16.904108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.489258, 36.783043, 17.081455>,  <40.758747, 36.779949, 17.377033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.489258, 36.783043, 17.081455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679835, -0.398477, 0.615662,
		-0.289691, 0.917145, 0.273721,
		-0.673723, 0.007734, -0.738943,
		40.287140, 36.785362, 16.859772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.100838, 37.089382, 17.693581>,  <40.758747, 36.779949, 17.377033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.100838, 37.089382, 17.693581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.017651, 36.898106, 17.352268>,  <39.967739, 36.783340, 17.147482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.017651, 36.898106, 17.352268>,  <40.100838, 37.089382, 17.693581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.017651, 36.898106, 17.352268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721495, -0.514029, 0.463917,
		-0.660451, 0.712116, -0.238110,
		-0.207967, -0.478190, -0.853279,
		39.955261, 36.754650, 17.096285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.498409, 37.167358, 17.779343>,  <40.100838, 37.089382, 17.693581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.498409, 37.167358, 17.779343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.536446, 36.879242, 17.504494>,  <39.559269, 36.706371, 17.339584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.536446, 36.879242, 17.504494>,  <39.498409, 37.167358, 17.779343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.536446, 36.879242, 17.504494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758268, -0.499630, 0.418808,
		-0.644971, 0.481195, -0.593687,
		0.095096, -0.720293, -0.687121,
		39.564976, 36.663155, 17.298357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.876160, 37.133854, 17.472462>,  <39.498409, 37.167358, 17.779343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.876160, 37.133854, 17.472462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.071686, 36.786041, 17.444225>,  <39.189003, 36.577354, 17.427284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.071686, 36.786041, 17.444225>,  <38.876160, 37.133854, 17.472462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.071686, 36.786041, 17.444225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742913, -0.457320, 0.488814,
		-0.457320, -0.186497, -0.869528,
		-0.488814, 0.869528, 0.070590,
		39.218330, 36.525185, 17.423048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.415176, 36.712139, 17.291443>,  <38.876160, 37.133854, 17.472462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.415176, 36.712139, 17.291443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.672844, 36.452473, 17.453247>,  <38.827442, 36.296673, 17.550329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.672844, 36.452473, 17.453247>,  <38.415176, 36.712139, 17.291443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.672844, 36.452473, 17.453247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748360, -0.425566, 0.508774,
		-0.158135, -0.630455, -0.759948,
		0.644166, -0.649169, 0.404510,
		38.866093, 36.257721, 17.574600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.129330, 35.990871, 17.313015>,  <38.415176, 36.712139, 17.291443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.129330, 35.990871, 17.313015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.411793, 35.944134, 17.592354>,  <38.581272, 35.916092, 17.759956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.411793, 35.944134, 17.592354>,  <38.129330, 35.990871, 17.313015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.411793, 35.944134, 17.592354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640539, -0.525740, 0.559739,
		0.301744, -0.842582, -0.446101,
		0.706159, -0.116847, 0.698346,
		38.623642, 35.909081, 17.801857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.140038, 35.314194, 17.522308>,  <38.129330, 35.990871, 17.313015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.140038, 35.314194, 17.522308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.318550, 35.497578, 17.829723>,  <38.425655, 35.607609, 18.014174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.318550, 35.497578, 17.829723>,  <38.140038, 35.314194, 17.522308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.318550, 35.497578, 17.829723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539728, -0.547135, 0.639794,
		0.713813, -0.700329, 0.003267,
		0.446279, 0.458457, 0.768539,
		38.452435, 35.635117, 18.060286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.372795, 34.775318, 17.972973>,  <38.140038, 35.314194, 17.522308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.372795, 34.775318, 17.972973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.378281, 35.089733, 18.220184>,  <38.381573, 35.278381, 18.368511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.378281, 35.089733, 18.220184>,  <38.372795, 34.775318, 17.972973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.378281, 35.089733, 18.220184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403107, -0.561285, 0.722817,
		0.915050, -0.259046, 0.309157,
		0.013718, 0.786037, 0.618027,
		38.382397, 35.325542, 18.405592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.620090, 34.512287, 18.510794>,  <38.372795, 34.775318, 17.972973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.620090, 34.512287, 18.510794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.439331, 34.839989, 18.651997>,  <38.330875, 35.036610, 18.736719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.439331, 34.839989, 18.651997>,  <38.620090, 34.512287, 18.510794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.439331, 34.839989, 18.651997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300104, -0.512268, 0.804686,
		0.840075, 0.257697, 0.477353,
		-0.451898, 0.819252, 0.353008,
		38.303761, 35.085766, 18.757898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.819424, 34.618954, 19.218685>,  <38.620090, 34.512287, 18.510794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.819424, 34.618954, 19.218685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.470512, 34.812809, 19.192596>,  <38.261166, 34.929123, 19.176943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.470512, 34.812809, 19.192596>,  <38.819424, 34.618954, 19.218685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.470512, 34.812809, 19.192596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318320, -0.461496, 0.828067,
		0.371209, 0.743069, 0.556823,
		-0.872282, 0.484634, -0.065222,
		38.208828, 34.958199, 19.173029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.649326, 34.765110, 19.949364>,  <38.819424, 34.618954, 19.218685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.649326, 34.765110, 19.949364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.296684, 34.800747, 19.763962>,  <38.085098, 34.822128, 19.652721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.296684, 34.800747, 19.763962>,  <38.649326, 34.765110, 19.949364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.296684, 34.800747, 19.763962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445680, -0.480423, 0.755356,
		-0.155378, 0.872500, 0.463252,
		-0.881605, 0.089096, -0.463503,
		38.032204, 34.827477, 19.624910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.114670, 34.754440, 20.509565>,  <38.649326, 34.765110, 19.949364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.114670, 34.754440, 20.509565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.907665, 34.706852, 20.170620>,  <37.783463, 34.678299, 19.967253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.907665, 34.706852, 20.170620>,  <38.114670, 34.754440, 20.509565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.907665, 34.706852, 20.170620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632062, -0.614368, 0.472281,
		-0.576781, 0.779999, 0.242747,
		-0.517515, -0.118972, -0.847363,
		37.752411, 34.671162, 19.916410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.450039, 34.981621, 20.629740>,  <38.114670, 34.754440, 20.509565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.450039, 34.981621, 20.629740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.417831, 34.726425, 20.323410>,  <37.398506, 34.573307, 20.139612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.417831, 34.726425, 20.323410>,  <37.450039, 34.981621, 20.629740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.417831, 34.726425, 20.323410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673023, -0.531931, 0.513897,
		-0.735226, 0.556794, -0.386552,
		-0.080515, -0.637989, -0.765825,
		37.393677, 34.535030, 20.093662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.822060, 34.788177, 20.624388>,  <37.450039, 34.981621, 20.629740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.822060, 34.788177, 20.624388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.972191, 34.487320, 20.407722>,  <37.062271, 34.306805, 20.277723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.972191, 34.487320, 20.407722>,  <36.822060, 34.788177, 20.624388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.972191, 34.487320, 20.407722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545976, -0.651650, 0.526557,
		-0.749025, 0.098105, -0.655238,
		0.375329, -0.752148, -0.541666,
		37.084789, 34.261677, 20.245222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.286266, 34.349426, 20.462288>,  <36.822060, 34.788177, 20.624388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.286266, 34.349426, 20.462288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.622433, 34.132793, 20.470112>,  <36.824135, 34.002815, 20.474806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.622433, 34.132793, 20.470112>,  <36.286266, 34.349426, 20.462288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.622433, 34.132793, 20.470112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462473, -0.697906, 0.546851,
		-0.282514, -0.468631, -0.837001,
		0.840419, -0.541583, 0.019561,
		36.874557, 33.970318, 20.475981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.002243, 33.697948, 20.496683>,  <36.286266, 34.349426, 20.462288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.002243, 33.697948, 20.496683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.384834, 33.647205, 20.601799>,  <36.614388, 33.616760, 20.664869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.384834, 33.647205, 20.601799>,  <36.002243, 33.697948, 20.496683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.384834, 33.647205, 20.601799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288190, -0.552098, 0.782390,
		0.045831, -0.824072, -0.564629,
		0.956476, -0.126863, 0.262792,
		36.671776, 33.609146, 20.680637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.218449, 33.090759, 20.472183>,  <36.002243, 33.697948, 20.496683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.218449, 33.090759, 20.472183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.426388, 33.277252, 20.758507>,  <36.551151, 33.389149, 20.930300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.426388, 33.277252, 20.758507>,  <36.218449, 33.090759, 20.472183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.426388, 33.277252, 20.758507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534325, -0.476319, 0.698296,
		0.666522, -0.745484, 0.001506,
		0.519851, 0.466234, 0.715808,
		36.582344, 33.417122, 20.973249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.448505, 32.527386, 20.896395>,  <36.218449, 33.090759, 20.472183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.448505, 32.527386, 20.896395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.419422, 32.884979, 21.073257>,  <36.401970, 33.099537, 21.179375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.419422, 32.884979, 21.073257>,  <36.448505, 32.527386, 20.896395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.419422, 32.884979, 21.073257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737307, -0.346726, 0.579792,
		0.671633, -0.283847, 0.684354,
		-0.072711, 0.893987, 0.442155,
		36.397610, 33.153175, 21.205904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.627663, 32.434135, 21.654909>,  <36.448505, 32.527386, 20.896395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.627663, 32.434135, 21.654909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.376152, 32.706757, 21.505173>,  <36.225246, 32.870327, 21.415331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.376152, 32.706757, 21.505173>,  <36.627663, 32.434135, 21.654909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.376152, 32.706757, 21.505173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744370, -0.388373, 0.543213,
		0.224843, 0.620207, 0.751525,
		-0.628777, 0.681549, -0.374341,
		36.187519, 32.911221, 21.392870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.378895, 32.980045, 22.092646>,  <36.627663, 32.434135, 21.654909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.378895, 32.980045, 22.092646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.111061, 32.899033, 21.806808>,  <35.950363, 32.850426, 21.635307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.111061, 32.899033, 21.806808>,  <36.378895, 32.980045, 22.092646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.111061, 32.899033, 21.806808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648443, -0.309758, 0.695393,
		-0.362191, 0.928994, 0.076077,
		-0.669582, -0.202534, -0.714591,
		35.910187, 32.838272, 21.592432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.751686, 33.437283, 22.165035>,  <36.378895, 32.980045, 22.092646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.751686, 33.437283, 22.165035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.691509, 33.092361, 21.971622>,  <35.655403, 32.885410, 21.855574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.691509, 33.092361, 21.971622>,  <35.751686, 33.437283, 22.165035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.691509, 33.092361, 21.971622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539524, -0.338235, 0.771045,
		-0.828421, 0.376872, -0.414349,
		-0.150438, -0.862302, -0.483533,
		35.646378, 32.833672, 21.826563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.031132, 33.122635, 22.257759>,  <35.751686, 33.437283, 22.165035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.031132, 33.122635, 22.257759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.324482, 32.853500, 22.218868>,  <35.500492, 32.692020, 22.195534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.324482, 32.853500, 22.218868>,  <35.031132, 33.122635, 22.257759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.324482, 32.853500, 22.218868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266756, -0.416358, 0.869188,
		-0.625304, -0.611503, -0.484829,
		0.733373, -0.672837, -0.097228,
		35.544495, 32.651649, 22.189699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.652691, 32.586102, 22.444824>,  <35.031132, 33.122635, 22.257759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.652691, 32.586102, 22.444824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.048470, 32.554932, 22.493702>,  <35.285934, 32.536232, 22.523027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.048470, 32.554932, 22.493702>,  <34.652691, 32.586102, 22.444824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.048470, 32.554932, 22.493702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136679, -0.221405, 0.965556,
		-0.048182, -0.972064, -0.229718,
		0.989443, -0.077920, 0.122193,
		35.345303, 32.531555, 22.530359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.810543, 31.898252, 22.568634>,  <34.652691, 32.586102, 22.444824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.810543, 31.898252, 22.568634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.088776, 32.114017, 22.758453>,  <35.255714, 32.243477, 22.872345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.088776, 32.114017, 22.758453>,  <34.810543, 31.898252, 22.568634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.088776, 32.114017, 22.758453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359119, -0.311031, 0.879939,
		0.622250, -0.782491, -0.022635,
		0.695585, 0.539413, 0.474547,
		35.297451, 32.275841, 22.900818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.203957, 31.420221, 23.011862>,  <34.810543, 31.898252, 22.568634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.203957, 31.420221, 23.011862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.249550, 31.785103, 23.169285>,  <35.276905, 32.004032, 23.263739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.249550, 31.785103, 23.169285>,  <35.203957, 31.420221, 23.011862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.249550, 31.785103, 23.169285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461871, -0.302074, 0.833922,
		0.879593, -0.276824, 0.386891,
		0.113980, 0.912206, 0.393560,
		35.283745, 32.058765, 23.287354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.361847, 31.239424, 23.764252>,  <35.203957, 31.420221, 23.011862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.361847, 31.239424, 23.764252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.249256, 31.623066, 23.752331>,  <35.181702, 31.853251, 23.745178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.249256, 31.623066, 23.752331>,  <35.361847, 31.239424, 23.764252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.249256, 31.623066, 23.752331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522824, -0.127248, 0.842890,
		0.804626, 0.252840, 0.537260,
		-0.281481, 0.959103, -0.029803,
		35.164810, 31.910797, 23.743389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.394459, 31.438469, 24.402321>,  <35.361847, 31.239424, 23.764252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.394459, 31.438469, 24.402321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.150387, 31.718243, 24.253475>,  <35.003944, 31.886106, 24.164167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.150387, 31.718243, 24.253475>,  <35.394459, 31.438469, 24.402321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.150387, 31.718243, 24.253475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598693, -0.099455, 0.794780,
		0.518887, 0.707744, 0.479432,
		-0.610183, 0.699434, -0.372115,
		34.967331, 31.928072, 24.141840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.349873, 31.828331, 24.921476>,  <35.394459, 31.438469, 24.402321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.349873, 31.828331, 24.921476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.027557, 31.901550, 24.696198>,  <34.834167, 31.945482, 24.561029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.027557, 31.901550, 24.696198>,  <35.349873, 31.828331, 24.921476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.027557, 31.901550, 24.696198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590573, -0.177969, 0.787116,
		0.043850, 0.966861, 0.251510,
		-0.805792, 0.183050, -0.563198,
		34.785820, 31.956465, 24.527239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.006985, 32.312897, 25.265406>,  <35.349873, 31.828331, 24.921476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.006985, 32.312897, 25.265406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.732231, 32.148216, 25.025841>,  <34.567379, 32.049408, 24.882101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.732231, 32.148216, 25.025841>,  <35.006985, 32.312897, 25.265406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.732231, 32.148216, 25.025841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551995, -0.240514, 0.798407,
		-0.472750, 0.879009, -0.062051,
		-0.686883, -0.411699, -0.598912,
		34.526165, 32.024708, 24.846167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.270840, 32.609791, 25.425928>,  <35.006985, 32.312897, 25.265406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.270840, 32.609791, 25.425928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.190502, 32.261768, 25.245857>,  <34.142300, 32.052956, 25.137814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.190502, 32.261768, 25.245857>,  <34.270840, 32.609791, 25.425928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.190502, 32.261768, 25.245857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666131, -0.215654, 0.713977,
		-0.718284, 0.443274, -0.536261,
		-0.200841, -0.870058, -0.450179,
		34.130249, 32.000751, 25.110804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.476532, 32.581615, 25.368788>,  <34.270840, 32.609791, 25.425928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.476532, 32.581615, 25.368788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.627632, 32.211365, 25.359634>,  <33.718292, 31.989214, 25.354143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.627632, 32.211365, 25.359634>,  <33.476532, 32.581615, 25.368788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.627632, 32.211365, 25.359634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747618, -0.319495, 0.582229,
		-0.546237, -0.202828, -0.812703,
		0.377747, -0.925626, -0.022882,
		33.740955, 31.933678, 25.352770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.941399, 32.152000, 25.284664>,  <33.476532, 32.581615, 25.368788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.941399, 32.152000, 25.284664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.225910, 31.926975, 25.453232>,  <33.396618, 31.791960, 25.554373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.225910, 31.926975, 25.453232>,  <32.941399, 32.152000, 25.284664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.225910, 31.926975, 25.453232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661057, -0.331598, 0.673087,
		-0.238912, -0.757340, -0.607748,
		0.711284, -0.562564, 0.421422,
		33.439297, 31.758205, 25.579659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.560665, 31.486118, 25.500082>,  <32.941399, 32.152000, 25.284664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.560665, 31.486118, 25.500082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.911087, 31.446754, 25.688904>,  <33.121342, 31.423136, 25.802197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.911087, 31.446754, 25.688904>,  <32.560665, 31.486118, 25.500082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.911087, 31.446754, 25.688904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456767, -0.483106, 0.746976,
		0.154545, -0.870014, -0.468178,
		0.876059, -0.098407, 0.472055,
		33.173904, 31.417233, 25.830521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.599136, 30.771650, 25.673332>,  <32.560665, 31.486118, 25.500082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.599136, 30.771650, 25.673332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.804207, 30.976479, 25.948997>,  <32.927250, 31.099377, 26.114397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.804207, 30.976479, 25.948997>,  <32.599136, 30.771650, 25.673332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.804207, 30.976479, 25.948997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358639, -0.601570, 0.713787,
		0.780089, -0.613103, -0.124762,
		0.512678, 0.512073, 0.689161,
		32.958012, 31.130100, 26.155746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.674976, 30.314747, 26.333025>,  <32.599136, 30.771650, 25.673332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.674976, 30.314747, 26.333025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.795155, 30.670486, 26.470890>,  <32.867264, 30.883930, 26.553608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.795155, 30.670486, 26.470890>,  <32.674976, 30.314747, 26.333025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.795155, 30.670486, 26.470890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295434, -0.256811, 0.920199,
		0.906890, -0.378297, 0.185585,
		0.300448, 0.889348, 0.344661,
		32.885288, 30.937290, 26.574289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.077568, 30.188921, 26.969828>,  <32.674976, 30.314747, 26.333025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.077568, 30.188921, 26.969828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.956291, 30.569851, 26.983372>,  <32.883526, 30.798409, 26.991499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.956291, 30.569851, 26.983372>,  <33.077568, 30.188921, 26.969828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.956291, 30.569851, 26.983372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210145, -0.101480, 0.972389,
		0.929468, 0.287709, 0.230895,
		-0.303196, 0.952326, 0.033862,
		32.865334, 30.855549, 26.993530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.436020, 30.505201, 27.478504>,  <33.077568, 30.188921, 26.969828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.436020, 30.505201, 27.478504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.133541, 30.759865, 27.418064>,  <32.952053, 30.912663, 27.381800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.133541, 30.759865, 27.418064>,  <33.436020, 30.505201, 27.478504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.133541, 30.759865, 27.418064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251983, -0.070226, 0.965180,
		0.603880, 0.767941, 0.213532,
		-0.756197, 0.636659, -0.151100,
		32.906681, 30.950863, 27.372734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.539165, 31.078747, 27.952211>,  <33.436020, 30.505201, 27.478504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.539165, 31.078747, 27.952211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.154617, 30.997509, 27.877892>,  <32.923889, 30.948767, 27.833300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.154617, 30.997509, 27.877892>,  <33.539165, 31.078747, 27.952211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.154617, 30.997509, 27.877892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171134, -0.087692, 0.981337,
		-0.215597, 0.975225, 0.049548,
		-0.961369, -0.203094, -0.185801,
		32.866207, 30.936581, 27.822151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.177074, 31.489243, 28.365780>,  <33.539165, 31.078747, 27.952211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.177074, 31.489243, 28.365780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.932011, 31.190701, 28.261780>,  <32.784973, 31.011576, 28.199379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.932011, 31.190701, 28.261780>,  <33.177074, 31.489243, 28.365780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.932011, 31.190701, 28.261780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206955, -0.165995, 0.964165,
		-0.762768, 0.644516, -0.052763,
		-0.612662, -0.746354, -0.260002,
		32.748211, 30.966795, 28.183779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.715786, 31.492357, 28.871370>,  <33.177074, 31.489243, 28.365780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.715786, 31.492357, 28.871370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.646275, 31.122215, 28.736599>,  <32.604568, 30.900129, 28.655735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.646275, 31.122215, 28.736599>,  <32.715786, 31.492357, 28.871370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.646275, 31.122215, 28.736599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108706, -0.322019, 0.940471,
		-0.978767, 0.200056, -0.044633,
		-0.173774, -0.925355, -0.336929,
		32.594143, 30.844608, 28.635521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.127892, 31.306599, 29.123959>,  <32.715786, 31.492357, 28.871370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.127892, 31.306599, 29.123959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.280636, 30.947277, 29.037029>,  <32.372284, 30.731684, 28.984871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.280636, 30.947277, 29.037029>,  <32.127892, 31.306599, 29.123959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.280636, 30.947277, 29.037029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192005, -0.307122, 0.932100,
		-0.904054, -0.314208, -0.289758,
		0.381864, -0.898304, -0.217325,
		32.395195, 30.677786, 28.971832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.678427, 30.803688, 29.454681>,  <32.127892, 31.306599, 29.123959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.678427, 30.803688, 29.454681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.021492, 30.609962, 29.385571>,  <32.227333, 30.493727, 29.344105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.021492, 30.609962, 29.385571>,  <31.678427, 30.803688, 29.454681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.021492, 30.609962, 29.385571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001740, -0.333268, 0.942830,
		-0.514209, -0.808932, -0.284989,
		0.857663, -0.484316, -0.172777,
		32.278790, 30.464668, 29.333738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.479401, 30.034500, 29.578276>,  <31.678427, 30.803688, 29.454681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.479401, 30.034500, 29.578276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.877436, 30.052414, 29.613583>,  <32.116257, 30.063162, 29.634768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.877436, 30.052414, 29.613583>,  <31.479401, 30.034500, 29.578276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.877436, 30.052414, 29.613583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061748, -0.416067, 0.907235,
		0.077358, -0.908231, -0.411258,
		0.995090, 0.044787, 0.088268,
		32.175964, 30.065849, 29.640062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.756271, 29.419374, 29.676378>,  <31.479401, 30.034500, 29.578276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.756271, 29.419374, 29.676378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.032253, 29.666733, 29.826870>,  <32.197842, 29.815147, 29.917166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.032253, 29.666733, 29.826870>,  <31.756271, 29.419374, 29.676378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.032253, 29.666733, 29.826870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063513, -0.466038, 0.882482,
		0.721060, -0.632769, -0.282269,
		0.689955, 0.618395, 0.376231,
		32.239239, 29.852251, 29.939739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.961235, 29.026426, 30.126348>,  <31.756271, 29.419374, 29.676378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.961235, 29.026426, 30.126348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.129574, 29.372768, 30.234558>,  <32.230576, 29.580574, 30.299484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.129574, 29.372768, 30.234558>,  <31.961235, 29.026426, 30.126348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.129574, 29.372768, 30.234558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121860, -0.349478, 0.928986,
		0.898909, -0.357996, -0.252590,
		0.420848, 0.865855, 0.270524,
		32.255829, 29.632524, 30.315716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.514336, 28.857561, 30.604685>,  <31.961235, 29.026426, 30.126348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.514336, 28.857561, 30.604685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.415981, 29.238281, 30.678028>,  <32.356968, 29.466713, 30.722034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.415981, 29.238281, 30.678028>,  <32.514336, 28.857561, 30.604685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.415981, 29.238281, 30.678028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090548, -0.165786, 0.981996,
		0.965061, 0.258061, -0.045419,
		-0.245885, 0.951798, 0.183360,
		32.342216, 29.523821, 30.733036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.994358, 29.086617, 31.173424>,  <32.514336, 28.857561, 30.604685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.994358, 29.086617, 31.173424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.668633, 29.318508, 31.162056>,  <32.473198, 29.457644, 31.155235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.668633, 29.318508, 31.162056>,  <32.994358, 29.086617, 31.173424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.668633, 29.318508, 31.162056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128483, -0.132291, 0.982848,
		0.566027, 0.803998, 0.182211,
		-0.814313, 0.579730, -0.028420,
		32.424339, 29.492428, 31.153530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.071743, 29.675652, 31.685141>,  <32.994358, 29.086617, 31.173424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.071743, 29.675652, 31.685141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.676861, 29.651657, 31.626041>,  <32.439930, 29.637260, 31.590582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.676861, 29.651657, 31.626041>,  <33.071743, 29.675652, 31.685141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.676861, 29.651657, 31.626041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143067, -0.076009, 0.986790,
		-0.070426, 0.995301, 0.066454,
		-0.987204, -0.059988, -0.147748,
		32.380699, 29.633661, 31.581717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.850956, 30.228622, 32.136765>,  <33.071743, 29.675652, 31.685141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.850956, 30.228622, 32.136765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.555435, 29.967892, 32.068298>,  <32.378124, 29.811453, 32.027218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.555435, 29.967892, 32.068298>,  <32.850956, 30.228622, 32.136765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.555435, 29.967892, 32.068298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205983, -0.023420, 0.978275,
		-0.641674, 0.758007, -0.116962,
		-0.738800, -0.651826, -0.171164,
		32.333794, 29.772345, 32.016949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.315697, 30.522709, 32.428127>,  <32.850956, 30.228622, 32.136765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.315697, 30.522709, 32.428127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.230068, 30.133007, 32.399845>,  <32.178692, 29.899185, 32.382877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.230068, 30.133007, 32.399845>,  <32.315697, 30.522709, 32.428127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.230068, 30.133007, 32.399845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208741, -0.025080, 0.977649,
		-0.954253, 0.224049, -0.197998,
		-0.214076, -0.974255, -0.070701,
		32.165844, 29.840731, 32.378635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.743385, 30.483332, 32.929783>,  <32.315697, 30.522709, 32.428127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.743385, 30.483332, 32.929783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.828493, 30.098381, 32.862183>,  <31.879557, 29.867411, 32.821621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.828493, 30.098381, 32.862183>,  <31.743385, 30.483332, 32.929783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.828493, 30.098381, 32.862183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020117, -0.177240, 0.983962,
		-0.976896, -0.205956, -0.057071,
		0.212768, -0.962376, -0.169002,
		31.892324, 29.809668, 32.811481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.183849, 29.999523, 33.166092>,  <31.743385, 30.483332, 32.929783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.183849, 29.999523, 33.166092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.548643, 29.836006, 33.179798>,  <31.767519, 29.737896, 33.188023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.548643, 29.836006, 33.179798>,  <31.183849, 29.999523, 33.166092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.548643, 29.836006, 33.179798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166653, -0.292881, 0.941513,
		-0.374847, -0.864356, -0.335230,
		0.911985, -0.408790, 0.034262,
		31.822239, 29.713369, 33.190075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.019386, 29.363314, 33.475697>,  <31.183849, 29.999523, 33.166092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.019386, 29.363314, 33.475697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.418594, 29.347290, 33.495075>,  <31.658119, 29.337677, 33.506702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.418594, 29.347290, 33.495075>,  <31.019386, 29.363314, 33.475697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.418594, 29.347290, 33.495075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058760, -0.320516, 0.945419,
		-0.022342, -0.946396, -0.322236,
		0.998022, -0.040057, 0.048449,
		31.718000, 29.335272, 33.509609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.094353, 28.793339, 33.816544>,  <31.019386, 29.363314, 33.475697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.094353, 28.793339, 33.816544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.443386, 28.979584, 33.875607>,  <31.652805, 29.091331, 33.911045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.443386, 28.979584, 33.875607>,  <31.094353, 28.793339, 33.816544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.443386, 28.979584, 33.875607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109726, -0.481411, 0.869600,
		0.475984, -0.742595, -0.471161,
		0.872582, 0.465614, 0.147662,
		31.705160, 29.119268, 33.919907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.512873, 28.211563, 34.136616>,  <31.094353, 28.793339, 33.816544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.512873, 28.211563, 34.136616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.654278, 28.575001, 34.225594>,  <31.739120, 28.793064, 34.278980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.654278, 28.575001, 34.225594>,  <31.512873, 28.211563, 34.136616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.654278, 28.575001, 34.225594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072782, -0.263793, 0.961829,
		0.932593, -0.323831, -0.159384,
		0.353515, 0.908596, 0.222442,
		31.760332, 28.847580, 34.292328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.060314, 28.004215, 34.516407>,  <31.512873, 28.211563, 34.136616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.060314, 28.004215, 34.516407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.979582, 28.385544, 34.606243>,  <31.931143, 28.614342, 34.660145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.979582, 28.385544, 34.606243>,  <32.060314, 28.004215, 34.516407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.979582, 28.385544, 34.606243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240330, -0.174094, 0.954951,
		0.949476, 0.246716, -0.193974,
		-0.201832, 0.953322, 0.224591,
		31.919033, 28.671541, 34.673622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.517605, 28.015711, 35.044552>,  <32.060314, 28.004215, 34.516407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.517605, 28.015711, 35.044552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.254810, 28.313225, 35.093792>,  <32.097134, 28.491734, 35.123337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.254810, 28.313225, 35.093792>,  <32.517605, 28.015711, 35.044552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.254810, 28.313225, 35.093792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005670, -0.168149, 0.985745,
		0.753882, 0.646922, 0.114688,
		-0.656985, 0.743786, 0.123096,
		32.057716, 28.536360, 35.130722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.714870, 28.365206, 35.522434>,  <32.517605, 28.015711, 35.044552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.714870, 28.365206, 35.522434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.318352, 28.414833, 35.504787>,  <32.080441, 28.444609, 35.494202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.318352, 28.414833, 35.504787>,  <32.714870, 28.365206, 35.522434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.318352, 28.414833, 35.504787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086902, -0.364726, 0.927051,
		0.098928, 0.922812, 0.372332,
		-0.991293, 0.124068, -0.044113,
		32.020966, 28.452053, 35.491554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.555042, 28.701277, 36.018097>,  <32.714870, 28.365206, 35.522434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.555042, 28.701277, 36.018097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.185982, 28.569946, 35.937187>,  <31.964546, 28.491148, 35.888641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.185982, 28.569946, 35.937187>,  <32.555042, 28.701277, 36.018097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.185982, 28.569946, 35.937187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117183, -0.261024, 0.958193,
		-0.367400, 0.907782, 0.202360,
		-0.922651, -0.328327, -0.202276,
		31.909185, 28.471449, 35.876503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.162491, 28.893177, 36.554798>,  <32.555042, 28.701277, 36.018097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.162491, 28.893177, 36.554798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.942167, 28.607864, 36.381439>,  <31.809973, 28.436676, 36.277424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.942167, 28.607864, 36.381439>,  <32.162491, 28.893177, 36.554798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.942167, 28.607864, 36.381439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271802, -0.337669, 0.901168,
		-0.789132, 0.614173, -0.007879,
		-0.550812, -0.713282, -0.433399,
		31.776924, 28.393879, 36.251419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.646992, 28.830990, 37.046509>,  <32.162491, 28.893177, 36.554798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.646992, 28.830990, 37.046509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.623468, 28.488464, 36.841270>,  <31.609354, 28.282949, 36.718128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.623468, 28.488464, 36.841270>,  <31.646992, 28.830990, 37.046509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.623468, 28.488464, 36.841270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189119, -0.495123, 0.847990,
		-0.980192, 0.146904, -0.132828,
		-0.058806, -0.856313, -0.513098,
		31.605827, 28.231571, 36.687340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.935007, 28.517368, 37.272499>,  <31.646992, 28.830990, 37.046509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.935007, 28.517368, 37.272499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.179832, 28.245907, 37.110115>,  <31.326727, 28.083029, 37.012684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.179832, 28.245907, 37.110115>,  <30.935007, 28.517368, 37.272499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.179832, 28.245907, 37.110115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133612, -0.594718, 0.792753,
		-0.779441, -0.430973, -0.454681,
		0.612062, -0.678655, -0.405965,
		31.363451, 28.042311, 36.988327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.664564, 27.914518, 37.519875>,  <30.935007, 28.517368, 37.272499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.664564, 27.914518, 37.519875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.021687, 27.810135, 37.373016>,  <31.235960, 27.747505, 37.284901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.021687, 27.810135, 37.373016>,  <30.664564, 27.914518, 37.519875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.021687, 27.810135, 37.373016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055198, -0.745562, 0.664147,
		-0.447047, -0.613220, -0.651237,
		0.892805, -0.260958, -0.367150,
		31.289528, 27.731848, 37.262871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.689426, 27.226156, 37.267601>,  <30.664564, 27.914518, 37.519875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.689426, 27.226156, 37.267601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.063520, 27.281643, 37.397888>,  <31.287977, 27.314934, 37.476063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.063520, 27.281643, 37.397888>,  <30.689426, 27.226156, 37.267601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.063520, 27.281643, 37.397888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105233, -0.769534, 0.629876,
		0.338028, -0.623358, -0.705097,
		0.935234, 0.138716, 0.325722,
		31.344091, 27.323257, 37.495605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.955912, 26.607601, 37.317184>,  <30.689426, 27.226156, 37.267601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.955912, 26.607601, 37.317184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.211792, 26.801147, 37.556068>,  <31.365320, 26.917274, 37.699398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.211792, 26.801147, 37.556068>,  <30.955912, 26.607601, 37.317184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.211792, 26.801147, 37.556068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069470, -0.737406, 0.671867,
		0.765478, -0.471282, -0.438106,
		0.639701, 0.483865, 0.597208,
		31.403702, 26.946306, 37.735229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.536747, 26.165051, 37.563000>,  <30.955912, 26.607601, 37.317184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.536747, 26.165051, 37.563000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.393581, 26.431049, 37.825199>,  <31.307682, 26.590649, 37.982517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.393581, 26.431049, 37.825199>,  <31.536747, 26.165051, 37.563000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.393581, 26.431049, 37.825199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274652, -0.745924, 0.606765,
		0.892449, 0.037135, 0.449618,
		-0.357913, 0.664995, 0.655500,
		31.286207, 26.630548, 38.021851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.692183, 25.950258, 38.260799>,  <31.536747, 26.165051, 37.563000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.692183, 25.950258, 38.260799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.402376, 26.221504, 38.310177>,  <31.228493, 26.384251, 38.339802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.402376, 26.221504, 38.310177>,  <31.692183, 25.950258, 38.260799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.402376, 26.221504, 38.310177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169087, -0.348483, 0.921938,
		0.668195, 0.647087, 0.367142,
		-0.724517, 0.678113, 0.123441,
		31.185020, 26.424938, 38.347210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.826824, 26.315178, 38.828033>,  <31.692183, 25.950258, 38.260799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.826824, 26.315178, 38.828033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.433046, 26.311771, 38.757843>,  <31.196779, 26.309729, 38.715729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.433046, 26.311771, 38.757843>,  <31.826824, 26.315178, 38.828033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.433046, 26.311771, 38.757843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170493, -0.194702, 0.965931,
		-0.042391, 0.980825, 0.190222,
		-0.984447, -0.008515, -0.175478,
		31.137712, 26.309217, 38.705200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.372803, 26.847654, 39.257759>,  <31.826824, 26.315178, 38.828033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.372803, 26.847654, 39.257759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.201349, 26.497929, 39.166683>,  <31.098476, 26.288094, 39.112038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.201349, 26.497929, 39.166683>,  <31.372803, 26.847654, 39.257759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.201349, 26.497929, 39.166683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019638, -0.242941, 0.969842,
		-0.903264, 0.420180, 0.086963,
		-0.428636, -0.874316, -0.227692,
		31.072758, 26.235634, 39.098377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.859396, 26.533092, 39.861897>,  <31.372803, 26.847654, 39.257759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.859396, 26.533092, 39.861897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.959551, 26.276386, 39.571949>,  <32.019646, 26.122362, 39.397980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.959551, 26.276386, 39.571949>,  <31.859396, 26.533092, 39.861897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.959551, 26.276386, 39.571949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121503, -0.721972, 0.681170,
		-0.960491, -0.258632, -0.102797,
		0.250389, -0.641768, -0.724872,
		32.034668, 26.083857, 39.354488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.607836, 27.269548, 39.843613>,  <31.859396, 26.533092, 39.861897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.607836, 27.269548, 39.843613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.861490, 27.302666, 40.151123>,  <32.013683, 27.322536, 40.335629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.861490, 27.302666, 40.151123>,  <31.607836, 27.269548, 39.843613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.861490, 27.302666, 40.151123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479688, -0.821920, -0.307159,
		0.606444, 0.563553, -0.560922,
		0.634134, 0.082793, 0.768778,
		32.051731, 27.327503, 40.381756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.925894, 27.723783, 39.471066>,  <31.607836, 27.269548, 39.843613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.925894, 27.723783, 39.471066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.119545, 27.899155, 39.773960>,  <32.235737, 28.004377, 39.955696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.119545, 27.899155, 39.773960>,  <31.925894, 27.723783, 39.471066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.119545, 27.899155, 39.773960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135440, 0.817433, -0.559874,
		-0.864452, 0.373610, 0.336361,
		0.484128, 0.438427, 0.757233,
		32.264782, 28.030684, 40.001129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.736156, 28.391293, 39.611301>,  <31.925894, 27.723783, 39.471066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.736156, 28.391293, 39.611301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.112854, 28.408268, 39.744759>,  <32.338871, 28.418453, 39.824833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.112854, 28.408268, 39.744759>,  <31.736156, 28.391293, 39.611301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.112854, 28.408268, 39.744759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204018, 0.716574, -0.667007,
		-0.267390, 0.696219, 0.666170,
		0.941743, 0.042441, 0.333646,
		32.395378, 28.421000, 39.844852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.003716, 29.175274, 39.904625>,  <31.736156, 28.391293, 39.611301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.003716, 29.175274, 39.904625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.282017, 28.950272, 39.725952>,  <32.448997, 28.815269, 39.618748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.282017, 28.950272, 39.725952>,  <32.003716, 29.175274, 39.904625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.282017, 28.950272, 39.725952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287399, 0.787926, -0.544586,
		0.658282, 0.250520, 0.709862,
		0.695748, -0.562505, -0.446678,
		32.490742, 28.781521, 39.591949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.644470, 29.574413, 39.933765>,  <32.003716, 29.175274, 39.904625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.644470, 29.574413, 39.933765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.657112, 29.316700, 39.628113>,  <32.664696, 29.162071, 39.444721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.657112, 29.316700, 39.628113>,  <32.644470, 29.574413, 39.933765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.657112, 29.316700, 39.628113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285789, 0.738421, -0.610785,
		0.957771, -0.199078, 0.207466,
		0.031603, -0.644284, -0.764133,
		32.666592, 29.123415, 39.398872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.154308, 29.717003, 39.454643>,  <32.644470, 29.574413, 39.933765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.154308, 29.717003, 39.454643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.896915, 29.514435, 39.225044>,  <32.742481, 29.392895, 39.087284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.896915, 29.514435, 39.225044>,  <33.154308, 29.717003, 39.454643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.896915, 29.514435, 39.225044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187917, 0.622406, -0.759801,
		0.742035, -0.596783, -0.305343,
		-0.643484, -0.506420, -0.573993,
		32.703869, 29.362509, 39.052845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.396698, 29.894417, 38.893044>,  <33.154308, 29.717003, 39.454643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.396698, 29.894417, 38.893044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.071144, 29.698891, 38.767406>,  <32.875813, 29.581575, 38.692024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.071144, 29.698891, 38.767406>,  <33.396698, 29.894417, 38.893044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.071144, 29.698891, 38.767406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113367, 0.396596, -0.910966,
		0.569866, -0.777025, -0.267366,
		-0.813880, -0.488818, -0.314096,
		32.826981, 29.552246, 38.673180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.533939, 29.723412, 38.202343>,  <33.396698, 29.894417, 38.893044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.533939, 29.723412, 38.202343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.134212, 29.721443, 38.216961>,  <32.894375, 29.720263, 38.225731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.134212, 29.721443, 38.216961>,  <33.533939, 29.723412, 38.202343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.134212, 29.721443, 38.216961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034992, 0.438926, -0.897841,
		-0.011620, -0.898510, -0.438800,
		-0.999320, -0.004922, 0.036541,
		32.834415, 29.719967, 38.227924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.398945, 29.673679, 37.515453>,  <33.533939, 29.723412, 38.202343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.398945, 29.673679, 37.515453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.064362, 29.794250, 37.698528>,  <32.863613, 29.866592, 37.808372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.064362, 29.794250, 37.698528>,  <33.398945, 29.673679, 37.515453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.064362, 29.794250, 37.698528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281647, 0.479985, -0.830836,
		-0.470120, -0.823867, -0.316592,
		-0.836458, 0.301426, 0.457691,
		32.813423, 29.884678, 37.835835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.899200, 29.517262, 37.018787>,  <33.398945, 29.673679, 37.515453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.899200, 29.517262, 37.018787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.751202, 29.806297, 37.252357>,  <32.662403, 29.979719, 37.392498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.751202, 29.806297, 37.252357>,  <32.899200, 29.517262, 37.018787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.751202, 29.806297, 37.252357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186220, 0.558092, -0.808614,
		-0.910179, -0.407923, -0.071931,
		-0.369996, 0.722588, 0.583926,
		32.640202, 30.023073, 37.427536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.326122, 29.721632, 36.638756>,  <32.899200, 29.517262, 37.018787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.326122, 29.721632, 36.638756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.409695, 30.019119, 36.892757>,  <32.459839, 30.197611, 37.045158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.409695, 30.019119, 36.892757>,  <32.326122, 29.721632, 36.638756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.409695, 30.019119, 36.892757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035630, 0.643118, -0.764938,
		-0.977282, 0.182443, 0.107867,
		0.208929, 0.743716, 0.635008,
		32.472374, 30.242233, 37.083260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.895163, 30.184978, 36.492832>,  <32.326122, 29.721632, 36.638756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.895163, 30.184978, 36.492832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.187374, 30.378582, 36.685524>,  <32.362701, 30.494743, 36.801140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.187374, 30.378582, 36.685524>,  <31.895163, 30.184978, 36.492832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.187374, 30.378582, 36.685524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031906, 0.680478, -0.732074,
		-0.682137, 0.550171, 0.481665,
		0.730528, 0.484007, 0.481733,
		32.406532, 30.523785, 36.830044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.679119, 30.879776, 36.628605>,  <31.895163, 30.184978, 36.492832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.679119, 30.879776, 36.628605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.078602, 30.862423, 36.639217>,  <32.318291, 30.852011, 36.645584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.078602, 30.862423, 36.639217>,  <31.679119, 30.879776, 36.628605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.078602, 30.862423, 36.639217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050738, 0.814322, -0.578191,
		0.003476, 0.578789, 0.815470,
		0.998706, -0.043385, 0.026536,
		32.378212, 30.849407, 36.647179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.888311, 31.518848, 36.833565>,  <31.679119, 30.879776, 36.628605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.888311, 31.518848, 36.833565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.219044, 31.376083, 36.659687>,  <32.417484, 31.290424, 36.555359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.219044, 31.376083, 36.659687>,  <31.888311, 31.518848, 36.833565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.219044, 31.376083, 36.659687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082477, 0.687569, -0.721420,
		0.556368, 0.632346, 0.539067,
		0.826832, -0.356915, -0.434695,
		32.467094, 31.269009, 36.529278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.176285, 32.056850, 36.491821>,  <31.888311, 31.518848, 36.833565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.176285, 32.056850, 36.491821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.427124, 31.793652, 36.325069>,  <32.577629, 31.635733, 36.225018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.427124, 31.793652, 36.325069>,  <32.176285, 32.056850, 36.491821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.427124, 31.793652, 36.325069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036945, 0.559707, -0.827867,
		0.778063, 0.503753, 0.375302,
		0.627099, -0.657998, -0.416876,
		32.615253, 31.596252, 36.200008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.696678, 32.431362, 36.249020>,  <32.176285, 32.056850, 36.491821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.696678, 32.431362, 36.249020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.703228, 32.088718, 36.042740>,  <32.707157, 31.883131, 35.918972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.703228, 32.088718, 36.042740>,  <32.696678, 32.431362, 36.249020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.703228, 32.088718, 36.042740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197486, 0.508379, -0.838182,
		0.980169, -0.088120, 0.177492,
		0.016373, -0.856613, -0.515700,
		32.708141, 31.831734, 35.888031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.288406, 32.475380, 35.869495>,  <32.696678, 32.431362, 36.249020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.288406, 32.475380, 35.869495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.059273, 32.238926, 35.642368>,  <32.921795, 32.097054, 35.506092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.059273, 32.238926, 35.642368>,  <33.288406, 32.475380, 35.869495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.059273, 32.238926, 35.642368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439916, 0.362800, -0.821493,
		0.691621, -0.720370, 0.052228,
		-0.572830, -0.591138, -0.567822,
		32.887424, 32.061584, 35.472023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.620998, 32.454304, 35.200279>,  <33.288406, 32.475380, 35.869495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.620998, 32.454304, 35.200279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.274044, 32.284637, 35.096188>,  <33.065872, 32.182838, 35.033733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.274044, 32.284637, 35.096188>,  <33.620998, 32.454304, 35.200279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.274044, 32.284637, 35.096188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232028, 0.117887, -0.965539,
		0.440228, -0.897878, -0.003836,
		-0.867388, -0.424167, -0.260230,
		33.013828, 32.157387, 35.018120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.812984, 31.878645, 34.742950>,  <33.620998, 32.454304, 35.200279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.812984, 31.878645, 34.742950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.438290, 31.972229, 34.638809>,  <33.213474, 32.028378, 34.576324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.438290, 31.972229, 34.638809>,  <33.812984, 31.878645, 34.742950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.438290, 31.972229, 34.638809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276682, 0.039308, -0.960157,
		-0.214403, -0.971452, -0.101554,
		-0.936738, 0.233959, -0.260355,
		33.157269, 32.042416, 34.560703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.671154, 31.507437, 34.204342>,  <33.812984, 31.878645, 34.742950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.671154, 31.507437, 34.204342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.416622, 31.814548, 34.174408>,  <33.263905, 31.998816, 34.156448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.416622, 31.814548, 34.174408>,  <33.671154, 31.507437, 34.204342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.416622, 31.814548, 34.174408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276442, 0.136390, -0.951303,
		-0.720185, -0.626028, -0.299035,
		-0.636328, 0.767781, -0.074835,
		33.225723, 32.044884, 34.151958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.523483, 31.528191, 33.514420>,  <33.671154, 31.507437, 34.204342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.523483, 31.528191, 33.514420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.412125, 31.898201, 33.617817>,  <33.345310, 32.120209, 33.679855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.412125, 31.898201, 33.617817>,  <33.523483, 31.528191, 33.514420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.412125, 31.898201, 33.617817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262364, 0.332142, -0.906006,
		-0.923936, -0.184413, -0.335162,
		-0.278401, 0.925026, 0.258494,
		33.328606, 32.175709, 33.695366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.937187, 31.749176, 33.054344>,  <33.523483, 31.528191, 33.514420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.937187, 31.749176, 33.054344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.102272, 32.090313, 33.182301>,  <33.201324, 32.294994, 33.259075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.102272, 32.090313, 33.182301>,  <32.937187, 31.749176, 33.054344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.102272, 32.090313, 33.182301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143274, 0.286037, -0.947447,
		-0.899522, 0.436856, -0.004138,
		0.412714, 0.852842, 0.319887,
		33.226086, 32.346165, 33.278267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.762798, 32.101517, 32.547256>,  <32.937187, 31.749176, 33.054344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.762798, 32.101517, 32.547256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.056271, 32.316505, 32.713551>,  <33.232353, 32.445499, 32.813328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.056271, 32.316505, 32.713551>,  <32.762798, 32.101517, 32.547256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.056271, 32.316505, 32.713551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378219, 0.185262, -0.906989,
		-0.564501, 0.822679, -0.067359,
		0.733682, 0.537472, 0.415733,
		33.276375, 32.477749, 32.838272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.754211, 32.799984, 32.290588>,  <32.762798, 32.101517, 32.547256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.754211, 32.799984, 32.290588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.128262, 32.746582, 32.421875>,  <33.352692, 32.714542, 32.500648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.128262, 32.746582, 32.421875>,  <32.754211, 32.799984, 32.290588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.128262, 32.746582, 32.421875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352012, 0.455795, -0.817520,
		-0.040455, 0.880016, 0.473219,
		0.935121, -0.133506, 0.328215,
		33.408798, 32.706532, 32.520340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.120918, 33.325386, 31.923283>,  <32.754211, 32.799984, 32.290588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.120918, 33.325386, 31.923283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.427715, 33.118603, 32.075321>,  <33.611794, 32.994534, 32.166542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.427715, 33.118603, 32.075321>,  <33.120918, 33.325386, 31.923283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.427715, 33.118603, 32.075321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597962, 0.361016, -0.715618,
		0.232726, 0.776157, 0.586020,
		0.766994, -0.516961, 0.380095,
		33.657814, 32.963516, 32.189350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.686687, 33.713562, 31.790716>,  <33.120918, 33.325386, 31.923283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.686687, 33.713562, 31.790716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.834309, 33.347225, 31.854004>,  <33.922882, 33.127422, 31.891977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.834309, 33.347225, 31.854004>,  <33.686687, 33.713562, 31.790716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.834309, 33.347225, 31.854004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732143, 0.181617, -0.656492,
		0.572506, 0.358123, 0.737553,
		0.369057, -0.915840, 0.158221,
		33.945026, 33.072472, 31.901470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.418762, 33.817219, 32.038422>,  <33.686687, 33.713562, 31.790716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.418762, 33.817219, 32.038422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.374397, 33.452122, 31.881142>,  <34.347778, 33.233063, 31.786774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.374397, 33.452122, 31.881142>,  <34.418762, 33.817219, 32.038422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.374397, 33.452122, 31.881142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658348, 0.228907, -0.717063,
		0.744498, -0.338393, 0.575511,
		-0.110911, -0.912739, -0.393201,
		34.341125, 33.178299, 31.763182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.078831, 33.627346, 31.959442>,  <34.418762, 33.817219, 32.038422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.078831, 33.627346, 31.959442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.841309, 33.407322, 31.724556>,  <34.698795, 33.275307, 31.583624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.841309, 33.407322, 31.724556>,  <35.078831, 33.627346, 31.959442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.841309, 33.407322, 31.724556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729632, -0.060494, -0.681159,
		0.339159, -0.832928, 0.437267,
		-0.593809, -0.550065, -0.587214,
		34.663166, 33.242302, 31.548391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.532909, 33.330975, 31.557249>,  <35.078831, 33.627346, 31.959442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.532909, 33.330975, 31.557249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.200882, 33.210644, 31.369423>,  <35.001667, 33.138443, 31.256727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.200882, 33.210644, 31.369423>,  <35.532909, 33.330975, 31.557249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.200882, 33.210644, 31.369423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528272, -0.154421, -0.834915,
		0.178657, -0.941092, 0.287100,
		-0.830066, -0.300831, -0.469564,
		34.951862, 33.120396, 31.228554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.644806, 32.671806, 31.170527>,  <35.532909, 33.330975, 31.557249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.644806, 32.671806, 31.170527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.345898, 32.872910, 30.996716>,  <35.166553, 32.993572, 30.892429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.345898, 32.872910, 30.996716>,  <35.644806, 32.671806, 31.170527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.345898, 32.872910, 30.996716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454367, -0.090584, -0.886197,
		-0.484902, -0.859669, -0.160745,
		-0.747275, 0.502756, -0.434530,
		35.121716, 33.023735, 30.866356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.475601, 32.287361, 30.631245>,  <35.644806, 32.671806, 31.170527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.475601, 32.287361, 30.631245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.356579, 32.661114, 30.552876>,  <35.285164, 32.885365, 30.505854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.356579, 32.661114, 30.552876>,  <35.475601, 32.287361, 30.631245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.356579, 32.661114, 30.552876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349589, -0.084326, -0.933100,
		-0.888396, -0.346144, -0.301559,
		-0.297557, 0.934384, -0.195923,
		35.267311, 32.941429, 30.494099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.255821, 32.197952, 29.971838>,  <35.475601, 32.287361, 30.631245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.255821, 32.197952, 29.971838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.295971, 32.594460, 30.006042>,  <35.320061, 32.832363, 30.026566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.295971, 32.594460, 30.006042>,  <35.255821, 32.197952, 29.971838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.295971, 32.594460, 30.006042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330169, 0.047890, -0.942706,
		-0.938570, 0.122856, -0.322480,
		0.100373, 0.991269, 0.085511,
		35.326084, 32.891842, 30.031696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.972950, 32.470249, 29.406336>,  <35.255821, 32.197952, 29.971838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.972950, 32.470249, 29.406336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.184624, 32.793446, 29.509960>,  <35.311626, 32.987366, 29.572134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.184624, 32.793446, 29.509960>,  <34.972950, 32.470249, 29.406336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.184624, 32.793446, 29.509960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246776, 0.145557, -0.958079,
		-0.811831, 0.570926, -0.122368,
		0.529181, 0.807995, 0.259059,
		35.343376, 33.035843, 29.587677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.669941, 33.016281, 29.029413>,  <34.972950, 32.470249, 29.406336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.669941, 33.016281, 29.029413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.041775, 33.122456, 29.131721>,  <35.264874, 33.186161, 29.193108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.041775, 33.122456, 29.131721>,  <34.669941, 33.016281, 29.029413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.041775, 33.122456, 29.131721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181962, 0.273006, -0.944647,
		-0.320569, 0.924669, 0.205482,
		0.929583, 0.265434, 0.255772,
		35.320648, 33.202087, 29.208452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.670868, 33.610527, 28.734739>,  <34.669941, 33.016281, 29.029413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.670868, 33.610527, 28.734739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.060123, 33.547066, 28.801464>,  <35.293678, 33.508987, 28.841499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.060123, 33.547066, 28.801464>,  <34.670868, 33.610527, 28.734739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.060123, 33.547066, 28.801464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203231, 0.251661, -0.946237,
		0.108142, 0.954723, 0.277145,
		0.973140, -0.158653, 0.166814,
		35.352066, 33.499470, 28.851509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.013157, 34.293030, 28.581997>,  <34.670868, 33.610527, 28.734739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.013157, 34.293030, 28.581997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.282917, 33.999672, 28.547794>,  <35.444775, 33.823658, 28.527273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.282917, 33.999672, 28.547794>,  <35.013157, 34.293030, 28.581997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.282917, 33.999672, 28.547794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162635, 0.260512, -0.951674,
		0.720229, 0.627906, 0.294966,
		0.674404, -0.733395, -0.085509,
		35.485237, 33.779652, 28.522142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.382580, 34.578789, 28.060621>,  <35.013157, 34.293030, 28.581997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.382580, 34.578789, 28.060621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.529053, 34.206890, 28.075981>,  <35.616936, 33.983749, 28.085197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.529053, 34.206890, 28.075981>,  <35.382580, 34.578789, 28.060621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.529053, 34.206890, 28.075981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245630, 0.056773, -0.967700,
		0.897539, 0.363786, 0.249164,
		0.366182, -0.929751, 0.038401,
		35.638908, 33.927963, 28.087502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.038464, 34.688313, 27.775679>,  <35.382580, 34.578789, 28.060621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.038464, 34.688313, 27.775679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.921566, 34.306252, 27.756596>,  <35.851429, 34.077015, 27.745146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.921566, 34.306252, 27.756596>,  <36.038464, 34.688313, 27.775679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.921566, 34.306252, 27.756596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115010, 0.014422, -0.993259,
		0.949404, -0.295756, 0.105637,
		-0.292239, -0.955154, -0.047707,
		35.833893, 34.019707, 27.742283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.623672, 34.227886, 27.539646>,  <36.038464, 34.688313, 27.775679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.623672, 34.227886, 27.539646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.289696, 34.037521, 27.429104>,  <36.089310, 33.923302, 27.362780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.289696, 34.037521, 27.429104>,  <36.623672, 34.227886, 27.539646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.289696, 34.037521, 27.429104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223256, 0.166067, -0.960510,
		0.503013, -0.863671, -0.032406,
		-0.834946, -0.475914, -0.276354,
		36.039211, 33.894749, 27.346197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.800426, 33.669716, 27.001179>,  <36.623672, 34.227886, 27.539646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.800426, 33.669716, 27.001179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.407917, 33.728004, 26.950787>,  <36.172413, 33.762978, 26.920551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.407917, 33.728004, 26.950787>,  <36.800426, 33.669716, 27.001179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.407917, 33.728004, 26.950787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122652, -0.031647, -0.991945,
		-0.148537, -0.988819, 0.013181,
		-0.981271, 0.145724, -0.125981,
		36.113537, 33.771721, 26.912992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.635342, 33.125095, 26.522232>,  <36.800426, 33.669716, 27.001179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.635342, 33.125095, 26.522232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.353508, 33.408714, 26.510910>,  <36.184406, 33.578888, 26.504116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.353508, 33.408714, 26.510910>,  <36.635342, 33.125095, 26.522232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.353508, 33.408714, 26.510910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006575, -0.046411, -0.998901,
		-0.709586, -0.703627, 0.037363,
		-0.704588, 0.709052, -0.028306,
		36.142132, 33.621429, 26.502419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.252029, 32.913445, 26.030388>,  <36.635342, 33.125095, 26.522232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.252029, 32.913445, 26.030388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.121208, 33.289547, 26.068233>,  <36.042717, 33.515209, 26.090940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.121208, 33.289547, 26.068233>,  <36.252029, 32.913445, 26.030388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.121208, 33.289547, 26.068233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215545, 0.023259, -0.976217,
		-0.920098, -0.339664, 0.195061,
		-0.327049, 0.940259, 0.094613,
		36.023094, 33.571625, 26.096617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.610435, 32.989582, 25.722328>,  <36.252029, 32.913445, 26.030388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.610435, 32.989582, 25.722328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.784355, 33.349739, 25.716068>,  <35.888706, 33.565834, 25.712313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.784355, 33.349739, 25.716068>,  <35.610435, 32.989582, 25.722328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.784355, 33.349739, 25.716068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234648, 0.096500, -0.967279,
		-0.869420, 0.424242, 0.253234,
		0.434797, 0.900393, -0.015649,
		35.914795, 33.619858, 25.711374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.148216, 33.442665, 25.429817>,  <35.610435, 32.989582, 25.722328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.148216, 33.442665, 25.429817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.491741, 33.639954, 25.374435>,  <35.697857, 33.758327, 25.341206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.491741, 33.639954, 25.374435>,  <35.148216, 33.442665, 25.429817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.491741, 33.639954, 25.374435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228329, 0.126597, -0.965318,
		-0.458586, 0.860644, 0.221340,
		0.858816, 0.493220, -0.138455,
		35.749386, 33.787918, 25.332899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.879288, 33.938236, 25.026920>,  <35.148216, 33.442665, 25.429817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.879288, 33.938236, 25.026920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.274517, 33.910545, 24.971916>,  <35.511658, 33.893932, 24.938913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.274517, 33.910545, 24.971916>,  <34.879288, 33.938236, 25.026920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.274517, 33.910545, 24.971916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129423, 0.110211, -0.985446,
		0.083375, 0.991494, 0.099938,
		0.988078, -0.069228, -0.137511,
		35.570942, 33.889778, 24.930662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.588455, 34.710705, 24.929501>,  <34.879288, 33.938236, 25.026920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.588455, 34.710705, 24.929501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.343670, 35.023987, 24.885517>,  <34.196800, 35.211956, 24.859127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.343670, 35.023987, 24.885517>,  <34.588455, 34.710705, 24.929501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.343670, 35.023987, 24.885517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318273, -0.116596, 0.940802,
		0.724021, 0.610731, 0.320626,
		-0.611960, 0.783207, -0.109961,
		34.160080, 35.258949, 24.852530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.724548, 35.044918, 25.569370>,  <34.588455, 34.710705, 24.929501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.724548, 35.044918, 25.569370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.384396, 35.176697, 25.405270>,  <34.180302, 35.255764, 25.306808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.384396, 35.176697, 25.405270>,  <34.724548, 35.044918, 25.569370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.384396, 35.176697, 25.405270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427521, 0.021864, 0.903741,
		0.306709, 0.943919, 0.122255,
		-0.850386, 0.329452, -0.410251,
		34.129280, 35.275532, 25.282194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.517601, 35.466053, 26.081692>,  <34.724548, 35.044918, 25.569370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.517601, 35.466053, 26.081692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.197624, 35.396507, 25.851955>,  <34.005638, 35.354778, 25.714113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.197624, 35.396507, 25.851955>,  <34.517601, 35.466053, 26.081692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.197624, 35.396507, 25.851955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599767, 0.200824, 0.774564,
		-0.019327, 0.964076, -0.264925,
		-0.799941, -0.173864, -0.574339,
		33.957642, 35.344349, 25.679653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.071400, 36.100960, 26.108543>,  <34.517601, 35.466053, 26.081692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.071400, 36.100960, 26.108543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.835648, 35.792847, 26.011143>,  <33.694199, 35.607979, 25.952703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.835648, 35.792847, 26.011143>,  <34.071400, 36.100960, 26.108543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.835648, 35.792847, 26.011143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573786, 0.186962, 0.797380,
		-0.568686, 0.609674, -0.552172,
		-0.589377, -0.770287, -0.243500,
		33.658833, 35.561760, 25.938093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.444950, 36.352314, 26.234852>,  <34.071400, 36.100960, 26.108543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.444950, 36.352314, 26.234852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.395416, 35.955757, 26.251892>,  <33.365696, 35.717823, 26.262117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.395416, 35.955757, 26.251892>,  <33.444950, 36.352314, 26.234852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.395416, 35.955757, 26.251892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603032, 0.109281, 0.790196,
		-0.788047, 0.072161, -0.611371,
		-0.123832, -0.991388, 0.042603,
		33.358265, 35.658340, 26.264673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.633732, 36.292507, 26.455023>,  <33.444950, 36.352314, 26.234852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.633732, 36.292507, 26.455023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.810749, 35.947941, 26.554714>,  <32.916962, 35.741199, 26.614529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.810749, 35.947941, 26.554714>,  <32.633732, 36.292507, 26.455023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.810749, 35.947941, 26.554714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532394, -0.028742, 0.846009,
		-0.721602, -0.507086, -0.471332,
		0.442546, -0.861416, 0.249229,
		32.943512, 35.689514, 26.629482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.988041, 35.858562, 26.639132>,  <32.633732, 36.292507, 26.455023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.988041, 35.858562, 26.639132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.323700, 35.694038, 26.781487>,  <32.525097, 35.595325, 26.866899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.323700, 35.694038, 26.781487>,  <31.988041, 35.858562, 26.639132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.323700, 35.694038, 26.781487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422866, -0.081843, 0.902489,
		-0.342076, -0.907814, -0.242607,
		0.839147, -0.411310, 0.355887,
		32.575443, 35.570644, 26.888252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.775923, 35.269009, 27.006142>,  <31.988041, 35.858562, 26.639132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.775923, 35.269009, 27.006142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.136631, 35.340401, 27.163601>,  <32.353054, 35.383236, 27.258076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.136631, 35.340401, 27.163601>,  <31.775923, 35.269009, 27.006142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.136631, 35.340401, 27.163601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361111, -0.189368, 0.913093,
		0.237512, -0.965549, -0.106315,
		0.901769, 0.178479, 0.393648,
		32.407162, 35.393944, 27.281694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.924248, 34.692986, 27.541250>,  <31.775923, 35.269009, 27.006142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.924248, 34.692986, 27.541250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.202171, 34.967735, 27.626530>,  <32.368923, 35.132584, 27.677696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.202171, 34.967735, 27.626530>,  <31.924248, 34.692986, 27.541250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.202171, 34.967735, 27.626530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051303, -0.248346, 0.967312,
		0.717364, -0.683033, -0.137314,
		0.694807, 0.686870, 0.213196,
		32.410614, 35.173798, 27.690489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.513313, 34.326797, 27.985903>,  <31.924248, 34.692986, 27.541250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.513313, 34.326797, 27.985903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.518288, 34.720768, 28.054916>,  <32.521271, 34.957150, 28.096325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.518288, 34.720768, 28.054916>,  <32.513313, 34.326797, 27.985903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.518288, 34.720768, 28.054916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007644, -0.172637, 0.984956,
		0.999894, -0.010927, -0.009675,
		0.012433, 0.984925, 0.172536,
		32.522018, 35.016247, 28.106676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.987270, 34.343929, 28.480726>,  <32.513313, 34.326797, 27.985903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.987270, 34.343929, 28.480726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.817772, 34.705040, 28.510208>,  <32.716072, 34.921707, 28.527897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.817772, 34.705040, 28.510208>,  <32.987270, 34.343929, 28.480726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.817772, 34.705040, 28.510208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082694, -0.042475, 0.995669,
		0.901999, 0.428004, -0.056656,
		-0.423744, 0.902778, 0.073705,
		32.690647, 34.975872, 28.532320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.253693, 34.647690, 29.056374>,  <32.987270, 34.343929, 28.480726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.253693, 34.647690, 29.056374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.932793, 34.883797, 29.020657>,  <32.740253, 35.025463, 28.999226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.932793, 34.883797, 29.020657>,  <33.253693, 34.647690, 29.056374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.932793, 34.883797, 29.020657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090564, 0.027506, 0.995511,
		0.590077, 0.806736, 0.031391,
		-0.802251, 0.590271, -0.089292,
		32.692116, 35.060879, 28.993870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.371628, 35.314785, 29.473251>,  <33.253693, 34.647690, 29.056374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.371628, 35.314785, 29.473251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.989487, 35.210358, 29.417896>,  <32.760204, 35.147701, 29.384684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.989487, 35.210358, 29.417896>,  <33.371628, 35.314785, 29.473251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.989487, 35.210358, 29.417896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147774, 0.016582, 0.988882,
		-0.255870, 0.965178, -0.054421,
		-0.955350, -0.261067, -0.138385,
		32.702881, 35.132038, 29.376381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.119762, 35.645908, 30.015219>,  <33.371628, 35.314785, 29.473251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.119762, 35.645908, 30.015219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.811893, 35.411106, 29.914799>,  <32.627174, 35.270226, 29.854546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.811893, 35.411106, 29.914799>,  <33.119762, 35.645908, 30.015219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.811893, 35.411106, 29.914799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290305, -0.028441, 0.956512,
		-0.568622, 0.809080, -0.148522,
		-0.769671, -0.587010, -0.251052,
		32.580994, 35.235004, 29.839483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.630821, 35.935883, 30.342484>,  <33.119762, 35.645908, 30.015219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.630821, 35.935883, 30.342484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.514305, 35.561172, 30.264908>,  <32.444397, 35.336346, 30.218363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.514305, 35.561172, 30.264908>,  <32.630821, 35.935883, 30.342484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.514305, 35.561172, 30.264908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226465, -0.129445, 0.965380,
		-0.929444, 0.325123, -0.174440,
		-0.291286, -0.936771, -0.193941,
		32.426918, 35.280140, 30.206726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.926605, 35.814163, 30.694834>,  <32.630821, 35.935883, 30.342484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.926605, 35.814163, 30.694834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.112198, 35.462933, 30.648006>,  <32.223553, 35.252193, 30.619911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.112198, 35.462933, 30.648006>,  <31.926605, 35.814163, 30.694834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.112198, 35.462933, 30.648006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218931, -0.241717, 0.945327,
		-0.858365, -0.412984, -0.304390,
		0.463981, -0.878076, -0.117066,
		32.251392, 35.199509, 30.612886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.603045, 35.375359, 31.201149>,  <31.926605, 35.814163, 30.694834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.603045, 35.375359, 31.201149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.933474, 35.179020, 31.090393>,  <32.131733, 35.061214, 31.023939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.933474, 35.179020, 31.090393>,  <31.603045, 35.375359, 31.201149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.933474, 35.179020, 31.090393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006483, -0.499563, 0.866253,
		-0.563525, -0.713794, -0.415858,
		0.826074, -0.490851, -0.276889,
		32.181297, 35.031765, 31.007326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.403036, 34.620350, 31.181479>,  <31.603045, 35.375359, 31.201149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.403036, 34.620350, 31.181479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.797327, 34.654430, 31.239559>,  <32.033901, 34.674877, 31.274408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.797327, 34.654430, 31.239559>,  <31.403036, 34.620350, 31.181479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.797327, 34.654430, 31.239559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100215, -0.396078, 0.912732,
		0.135273, -0.914256, -0.381886,
		0.985727, 0.085197, 0.145201,
		32.093044, 34.679989, 31.283119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.601242, 33.981277, 31.426840>,  <31.403036, 34.620350, 31.181479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.601242, 33.981277, 31.426840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.914083, 34.201542, 31.543514>,  <32.101788, 34.333702, 31.613520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.914083, 34.201542, 31.543514>,  <31.601242, 33.981277, 31.426840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.914083, 34.201542, 31.543514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085467, -0.368873, 0.925542,
		0.617258, -0.748801, -0.241434,
		0.782105, 0.550664, 0.291687,
		32.148716, 34.366741, 31.631020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.022968, 33.575027, 31.842054>,  <31.601242, 33.981277, 31.426840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.022968, 33.575027, 31.842054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.175518, 33.928646, 31.950138>,  <32.267048, 34.140820, 32.014988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.175518, 33.928646, 31.950138>,  <32.022968, 33.575027, 31.842054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.175518, 33.928646, 31.950138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208598, -0.202461, 0.956816,
		0.900580, -0.421265, 0.107198,
		0.381370, 0.884050, 0.270208,
		32.289928, 34.193863, 32.031200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.418205, 33.470287, 32.419567>,  <32.022968, 33.575027, 31.842054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.418205, 33.470287, 32.419567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.326420, 33.858856, 32.443821>,  <32.271347, 34.091999, 32.458374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.326420, 33.858856, 32.443821>,  <32.418205, 33.470287, 32.419567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.326420, 33.858856, 32.443821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186702, -0.105070, 0.976782,
		0.955243, 0.212816, 0.205477,
		-0.229464, 0.971427, 0.060634,
		32.257580, 34.150284, 32.462009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.668549, 33.647987, 33.088287>,  <32.418205, 33.470287, 32.419567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.668549, 33.647987, 33.088287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.413307, 33.938286, 32.985435>,  <32.260162, 34.112465, 32.923725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.413307, 33.938286, 32.985435>,  <32.668549, 33.647987, 33.088287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.413307, 33.938286, 32.985435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302987, 0.070324, 0.950396,
		0.707829, 0.684359, 0.175018,
		-0.638104, 0.725746, -0.257130,
		32.221874, 34.156010, 32.908298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.768101, 34.086044, 33.604939>,  <32.668549, 33.647987, 33.088287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.768101, 34.086044, 33.604939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.416515, 34.137218, 33.421177>,  <32.205563, 34.167923, 33.310921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.416515, 34.137218, 33.421177>,  <32.768101, 34.086044, 33.604939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.416515, 34.137218, 33.421177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458542, 0.037909, 0.887864,
		0.131001, 0.991059, 0.025342,
		-0.878964, 0.127931, -0.459408,
		32.152824, 34.175598, 33.283356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.537682, 34.429241, 34.120560>,  <32.768101, 34.086044, 33.604939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.537682, 34.429241, 34.120560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.212868, 34.303070, 33.924149>,  <32.017979, 34.227367, 33.806301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.212868, 34.303070, 33.924149>,  <32.537682, 34.429241, 34.120560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.212868, 34.303070, 33.924149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505658, -0.039840, 0.861814,
		-0.291400, 0.948114, -0.127146,
		-0.812032, -0.315425, -0.491030,
		31.969257, 34.208443, 33.776840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.959698, 34.764202, 34.389084>,  <32.537682, 34.429241, 34.120560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.959698, 34.764202, 34.389084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.814814, 34.426926, 34.230171>,  <31.727882, 34.224560, 34.134823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.814814, 34.426926, 34.230171>,  <31.959698, 34.764202, 34.389084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.814814, 34.426926, 34.230171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597440, -0.117139, 0.793312,
		-0.715450, 0.524700, -0.461326,
		-0.362211, -0.843189, -0.397283,
		31.706150, 34.173969, 34.110985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.315357, 34.664982, 34.585484>,  <31.959698, 34.764202, 34.389084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.315357, 34.664982, 34.585484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.373142, 34.290756, 34.456581>,  <31.407814, 34.066219, 34.379242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.373142, 34.290756, 34.456581>,  <31.315357, 34.664982, 34.585484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.373142, 34.290756, 34.456581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635173, -0.337395, 0.694780,
		-0.758740, 0.104317, -0.642987,
		0.144463, -0.935565, -0.322254,
		31.416481, 34.010086, 34.359905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.687490, 34.527428, 34.784042>,  <31.315357, 34.664982, 34.585484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.687490, 34.527428, 34.784042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.941442, 34.221508, 34.740196>,  <31.093813, 34.037956, 34.713886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.941442, 34.221508, 34.740196>,  <30.687490, 34.527428, 34.784042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.941442, 34.221508, 34.740196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417763, -0.459165, 0.783990,
		-0.649926, -0.451944, -0.611018,
		0.634878, -0.764797, -0.109618,
		31.131907, 33.992069, 34.707310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.263876, 33.979359, 34.812611>,  <30.687490, 34.527428, 34.784042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.263876, 33.979359, 34.812611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.623728, 33.826038, 34.896271>,  <30.839640, 33.734047, 34.946465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.623728, 33.826038, 34.896271>,  <30.263876, 33.979359, 34.812611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.623728, 33.826038, 34.896271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418493, -0.620189, 0.663498,
		-0.124609, -0.684430, -0.718351,
		0.899631, -0.383302, 0.209148,
		30.893618, 33.711048, 34.959015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.213701, 33.211590, 34.781696>,  <30.263876, 33.979359, 34.812611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.213701, 33.211590, 34.781696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.533562, 33.306290, 35.002426>,  <30.725477, 33.363110, 35.134865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.533562, 33.306290, 35.002426>,  <30.213701, 33.211590, 34.781696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.533562, 33.306290, 35.002426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226269, -0.732443, 0.642129,
		0.556202, -0.638339, -0.532130,
		0.799651, 0.236748, 0.551822,
		30.773457, 33.377316, 35.167973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.508419, 32.529282, 34.952965>,  <30.213701, 33.211590, 34.781696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.508419, 32.529282, 34.952965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.672131, 32.776997, 35.220989>,  <30.770357, 32.925625, 35.381802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.672131, 32.776997, 35.220989>,  <30.508419, 32.529282, 34.952965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.672131, 32.776997, 35.220989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187315, -0.661711, 0.725983,
		0.892974, -0.422643, -0.154825,
		0.409281, 0.619283, 0.670058,
		30.794914, 32.962780, 35.422005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.923088, 32.087662, 35.345055>,  <30.508419, 32.529282, 34.952965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.923088, 32.087662, 35.345055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.865820, 32.409115, 35.576115>,  <30.831459, 32.601986, 35.714752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.865820, 32.409115, 35.576115>,  <30.923088, 32.087662, 35.345055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.865820, 32.409115, 35.576115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064126, -0.589970, 0.804875,
		0.987618, 0.078191, 0.136000,
		-0.143170, 0.803630, 0.577651,
		30.822868, 32.650204, 35.749409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.220081, 31.987301, 36.021225>,  <30.923088, 32.087662, 35.345055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.220081, 31.987301, 36.021225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.957253, 32.271469, 36.122066>,  <30.799555, 32.441971, 36.182571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.957253, 32.271469, 36.122066>,  <31.220081, 31.987301, 36.021225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.957253, 32.271469, 36.122066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102461, -0.415498, 0.903805,
		0.746832, 0.568035, 0.345803,
		-0.657073, 0.710421, 0.252105,
		30.760130, 32.484596, 36.197697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.388897, 32.153530, 36.691597>,  <31.220081, 31.987301, 36.021225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.388897, 32.153530, 36.691597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.010744, 32.275711, 36.646076>,  <30.783852, 32.349018, 36.618763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.010744, 32.275711, 36.646076>,  <31.388897, 32.153530, 36.691597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.010744, 32.275711, 36.646076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269792, -0.537287, 0.799084,
		0.182936, 0.786143, 0.590350,
		-0.945382, 0.305453, -0.113806,
		30.727129, 32.367348, 36.611935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.204956, 32.118523, 37.285812>,  <31.388897, 32.153530, 36.691597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.204956, 32.118523, 37.285812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.862442, 32.138680, 37.080196>,  <30.656935, 32.150772, 36.956825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.862442, 32.138680, 37.080196>,  <31.204956, 32.118523, 37.285812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.862442, 32.138680, 37.080196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396270, -0.702428, 0.591240,
		-0.331286, 0.709968, 0.621446,
		-0.856283, 0.050391, -0.514043,
		30.605556, 32.153797, 36.925983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.721123, 32.179626, 37.759575>,  <31.204956, 32.118523, 37.285812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.721123, 32.179626, 37.759575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.553682, 31.994022, 37.447300>,  <30.453218, 31.882660, 37.259937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.553682, 31.994022, 37.447300>,  <30.721123, 32.179626, 37.759575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.553682, 31.994022, 37.447300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366275, -0.700350, 0.612660,
		-0.831034, 0.542404, 0.123210,
		-0.418599, -0.464012, -0.780684,
		30.428102, 31.854818, 37.213097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.002249, 32.094501, 37.808605>,  <30.721123, 32.179626, 37.759575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.002249, 32.094501, 37.808605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.088778, 31.803967, 37.547642>,  <30.140696, 31.629646, 37.391064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.088778, 31.803967, 37.547642>,  <30.002249, 32.094501, 37.808605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.088778, 31.803967, 37.547642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580876, -0.632843, 0.511950,
		-0.784721, 0.268224, -0.558810,
		0.216322, -0.726337, -0.652410,
		30.153675, 31.586065, 37.351917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.325674, 31.715546, 37.793686>,  <30.002249, 32.094501, 37.808605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.325674, 31.715546, 37.793686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.597631, 31.488857, 37.607536>,  <29.760805, 31.352844, 37.495846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.597631, 31.488857, 37.607536>,  <29.325674, 31.715546, 37.793686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.597631, 31.488857, 37.607536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394123, -0.817569, 0.419819,
		-0.618395, -0.102019, -0.779218,
		0.679894, -0.566721, -0.465373,
		29.801600, 31.318840, 37.467926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.004185, 31.083639, 37.549706>,  <29.325674, 31.715546, 37.793686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.004185, 31.083639, 37.549706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.394981, 30.999298, 37.562508>,  <29.629459, 30.948692, 37.570190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.394981, 30.999298, 37.562508>,  <29.004185, 31.083639, 37.549706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.394981, 30.999298, 37.562508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186772, -0.773465, 0.605696,
		-0.102956, -0.597739, -0.795052,
		0.976993, -0.210853, 0.032009,
		29.688080, 30.936043, 37.572109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.792946, 30.348455, 37.396103>,  <29.004185, 31.083639, 37.549706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.792946, 30.348455, 37.396103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.392992, 30.343750, 37.399921>,  <28.153019, 30.340927, 37.402210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.392992, 30.343750, 37.399921>,  <28.792946, 30.348455, 37.396103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.392992, 30.343750, 37.399921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010416, 0.076591, -0.997008,
		0.010994, -0.996993, -0.076705,
		-0.999885, -0.011760, 0.009543,
		28.093027, 30.340221, 37.402782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.592443, 29.819471, 36.921612>,  <28.792946, 30.348455, 37.396103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.592443, 29.819471, 36.921612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.298130, 30.086823, 36.965229>,  <28.121542, 30.247234, 36.991398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.298130, 30.086823, 36.965229>,  <28.592443, 29.819471, 36.921612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.298130, 30.086823, 36.965229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021230, 0.138171, -0.990181,
		-0.676883, -0.730875, -0.087474,
		-0.735785, 0.668379, 0.109042,
		28.077394, 30.287336, 36.997940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.259562, 29.717770, 36.287083>,  <28.592443, 29.819471, 36.921612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.259562, 29.717770, 36.287083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.088781, 30.050945, 36.427895>,  <27.986313, 30.250851, 36.512383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.088781, 30.050945, 36.427895>,  <28.259562, 29.717770, 36.287083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.088781, 30.050945, 36.427895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103208, 0.341868, -0.934063,
		-0.898367, -0.435129, -0.059994,
		-0.426949, 0.832940, 0.352032,
		27.960697, 30.300827, 36.533504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.665539, 29.874889, 35.830822>,  <28.259562, 29.717770, 36.287083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.665539, 29.874889, 35.830822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.806316, 30.207760, 36.002224>,  <27.890783, 30.407482, 36.105064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.806316, 30.207760, 36.002224>,  <27.665539, 29.874889, 35.830822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.806316, 30.207760, 36.002224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149620, 0.401892, -0.903381,
		-0.923986, 0.382052, 0.016934,
		0.351944, 0.832177, 0.428505,
		27.911900, 30.457413, 36.130775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.445919, 30.402159, 35.370537>,  <27.665539, 29.874889, 35.830822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.445919, 30.402159, 35.370537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.730745, 30.598919, 35.570934>,  <27.901642, 30.716976, 35.691174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.730745, 30.598919, 35.570934>,  <27.445919, 30.402159, 35.370537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.730745, 30.598919, 35.570934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179191, 0.562599, -0.807077,
		-0.678860, 0.664466, 0.312464,
		0.712067, 0.491902, 0.500992,
		27.944365, 30.746489, 35.721233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.255728, 31.084385, 35.185230>,  <27.445919, 30.402159, 35.370537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.255728, 31.084385, 35.185230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.637974, 31.091343, 35.302872>,  <27.867321, 31.095518, 35.373455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.637974, 31.091343, 35.302872>,  <27.255728, 31.084385, 35.185230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.637974, 31.091343, 35.302872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205419, 0.676235, -0.707467,
		-0.211187, 0.736481, 0.642648,
		0.955617, 0.017396, 0.294099,
		27.924660, 31.096561, 35.391102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.410767, 31.855942, 35.238262>,  <27.255728, 31.084385, 35.185230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.410767, 31.855942, 35.238262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.745094, 31.640209, 35.197216>,  <27.945690, 31.510771, 35.172588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.745094, 31.640209, 35.197216>,  <27.410767, 31.855942, 35.238262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.745094, 31.640209, 35.197216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248630, 0.538499, -0.805110,
		0.489479, 0.647412, 0.584181,
		0.835819, -0.539329, -0.102618,
		27.995840, 31.478411, 35.166431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.018698, 32.319618, 35.159515>,  <27.410767, 31.855942, 35.238262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.018698, 32.319618, 35.159515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.140242, 31.973297, 35.000492>,  <28.213169, 31.765505, 34.905079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.140242, 31.973297, 35.000492>,  <28.018698, 32.319618, 35.159515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.140242, 31.973297, 35.000492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397030, 0.494402, -0.773262,
		0.866046, 0.077124, 0.493980,
		0.303862, -0.865805, -0.397554,
		28.231400, 31.713556, 34.881226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.564989, 32.522720, 34.798401>,  <28.018698, 32.319618, 35.159515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.564989, 32.522720, 34.798401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.539310, 32.146679, 34.664486>,  <28.523903, 31.921053, 34.584137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.539310, 32.146679, 34.664486>,  <28.564989, 32.522720, 34.798401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.539310, 32.146679, 34.664486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330341, 0.296544, -0.896067,
		0.941676, -0.168118, 0.291518,
		-0.064197, -0.940105, -0.334785,
		28.520052, 31.864647, 34.564049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.258188, 32.364029, 34.572052>,  <28.564989, 32.522720, 34.798401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.258188, 32.364029, 34.572052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.000587, 32.119553, 34.388004>,  <28.846027, 31.972866, 34.277576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.000587, 32.119553, 34.388004>,  <29.258188, 32.364029, 34.572052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.000587, 32.119553, 34.388004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406379, 0.236264, -0.882630,
		0.648165, -0.755396, 0.096221,
		-0.644001, -0.611192, -0.460116,
		28.807386, 31.936195, 34.249969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.636780, 31.805292, 34.095146>,  <29.258188, 32.364029, 34.572052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.636780, 31.805292, 34.095146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.269260, 31.862751, 33.948082>,  <29.048748, 31.897226, 33.859844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.269260, 31.862751, 33.948082>,  <29.636780, 31.805292, 34.095146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.269260, 31.862751, 33.948082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372759, 0.009367, -0.927881,
		-0.129847, -0.989584, -0.062153,
		-0.918798, 0.143651, -0.367660,
		28.993620, 31.905846, 33.837784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.710766, 31.622677, 33.355118>,  <29.636780, 31.805292, 34.095146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.710766, 31.622677, 33.355118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.357803, 31.810833, 33.351265>,  <29.146027, 31.923727, 33.348953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.357803, 31.810833, 33.351265>,  <29.710766, 31.622677, 33.355118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.357803, 31.810833, 33.351265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175520, 0.310120, -0.934355,
		-0.436522, -0.826172, -0.356214,
		-0.882407, 0.470389, -0.009636,
		29.093081, 31.951950, 33.348373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.454710, 31.623762, 32.682175>,  <29.710766, 31.622677, 33.355118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.454710, 31.623762, 32.682175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.201056, 31.896362, 32.828289>,  <29.048862, 32.059921, 32.915958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.201056, 31.896362, 32.828289>,  <29.454710, 31.623762, 32.682175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.201056, 31.896362, 32.828289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148456, 0.570936, -0.807461,
		-0.758837, -0.457810, -0.463223,
		-0.634135, 0.681500, 0.365283,
		29.010815, 32.100811, 32.937874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.906694, 31.724049, 32.146194>,  <29.454710, 31.623762, 32.682175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.906694, 31.724049, 32.146194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.872997, 32.060890, 32.359272>,  <28.852779, 32.262997, 32.487118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.872997, 32.060890, 32.359272>,  <28.906694, 31.724049, 32.146194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.872997, 32.060890, 32.359272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178159, 0.538708, -0.823440,
		-0.980389, 0.025535, -0.195411,
		-0.084243, 0.842106, 0.532692,
		28.847725, 32.313522, 32.519081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.369183, 32.119225, 31.881630>,  <28.906694, 31.724049, 32.146194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.369183, 32.119225, 31.881630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.603022, 32.374069, 32.082561>,  <28.743324, 32.526978, 32.203121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.603022, 32.374069, 32.082561>,  <28.369183, 32.119225, 31.881630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.603022, 32.374069, 32.082561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127762, 0.539131, -0.832475,
		-0.801200, 0.550842, 0.233776,
		0.584598, 0.637112, 0.502329,
		28.778400, 32.565205, 32.233261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.433887, 32.662457, 31.421169>,  <28.369183, 32.119225, 31.881630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.433887, 32.662457, 31.421169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.718613, 32.758339, 31.685249>,  <28.889448, 32.815868, 31.843697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.718613, 32.758339, 31.685249>,  <28.433887, 32.662457, 31.421169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.718613, 32.758339, 31.685249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351047, 0.692720, -0.630004,
		-0.608350, 0.680206, 0.408939,
		0.711812, 0.239706, 0.660200,
		28.932156, 32.830250, 31.883308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.479343, 33.388264, 31.588797>,  <28.433887, 32.662457, 31.421169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.479343, 33.388264, 31.588797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.842270, 33.229271, 31.643620>,  <29.060026, 33.133873, 31.676514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.842270, 33.229271, 31.643620>,  <28.479343, 33.388264, 31.588797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.842270, 33.229271, 31.643620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376034, 0.621308, -0.687440,
		0.188092, 0.675264, 0.713190,
		0.907315, -0.397485, 0.137059,
		29.114464, 33.110023, 31.684738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.920750, 33.941101, 31.548815>,  <28.479343, 33.388264, 31.588797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.920750, 33.941101, 31.548815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.192123, 33.651157, 31.500965>,  <29.354948, 33.477192, 31.472256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.192123, 33.651157, 31.500965>,  <28.920750, 33.941101, 31.548815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.192123, 33.651157, 31.500965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432862, 0.525961, -0.732117,
		0.593596, 0.444914, 0.670593,
		0.678435, -0.724857, -0.119622,
		29.395655, 33.433701, 31.465078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.511686, 34.356125, 31.349485>,  <28.920750, 33.941101, 31.548815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.511686, 34.356125, 31.349485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.639153, 33.987541, 31.260609>,  <29.715631, 33.766392, 31.207283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.639153, 33.987541, 31.260609>,  <29.511686, 34.356125, 31.349485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.639153, 33.987541, 31.260609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401904, 0.343648, -0.848751,
		0.858444, 0.181168, 0.479846,
		0.318665, -0.921457, -0.222190,
		29.734753, 33.711105, 31.193951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.111061, 34.396900, 31.318451>,  <29.511686, 34.356125, 31.349485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.111061, 34.396900, 31.318451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.076540, 34.059647, 31.106155>,  <30.055828, 33.857296, 30.978779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.076540, 34.059647, 31.106155>,  <30.111061, 34.396900, 31.318451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.076540, 34.059647, 31.106155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466774, 0.436418, -0.769195,
		0.880155, -0.314119, 0.355887,
		-0.086303, -0.843130, -0.530739,
		30.050650, 33.806709, 30.946934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.741602, 34.305084, 30.884989>,  <30.111061, 34.396900, 31.318451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.741602, 34.305084, 30.884989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.478014, 34.057583, 30.713921>,  <30.319860, 33.909081, 30.611279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.478014, 34.057583, 30.713921>,  <30.741602, 34.305084, 30.884989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.478014, 34.057583, 30.713921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230485, 0.375123, -0.897864,
		0.715985, -0.690238, -0.104582,
		-0.658971, -0.618753, -0.427672,
		30.280323, 33.871956, 30.585619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.063784, 34.119514, 30.370127>,  <30.741602, 34.305084, 30.884989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.063784, 34.119514, 30.370127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.684475, 34.032436, 30.277702>,  <30.456890, 33.980190, 30.222248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.684475, 34.032436, 30.277702>,  <31.063784, 34.119514, 30.370127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.684475, 34.032436, 30.277702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167032, 0.276816, -0.946294,
		0.269944, -0.935944, -0.226140,
		-0.948277, -0.217674, -0.231058,
		30.399994, 33.967129, 30.208384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.006548, 33.693920, 29.797846>,  <31.063784, 34.119514, 30.370127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.006548, 33.693920, 29.797846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.657927, 33.889866, 29.806137>,  <30.448753, 34.007435, 29.811111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.657927, 33.889866, 29.806137>,  <31.006548, 33.693920, 29.797846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.657927, 33.889866, 29.806137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091707, 0.204398, -0.974583,
		-0.481648, -0.847499, -0.223068,
		-0.871553, 0.489863, 0.020726,
		30.396461, 34.036823, 29.812355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.710842, 33.507637, 29.159716>,  <31.006548, 33.693920, 29.797846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.710842, 33.507637, 29.159716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.481331, 33.814526, 29.274368>,  <30.343624, 33.998657, 29.343161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.481331, 33.814526, 29.274368>,  <30.710842, 33.507637, 29.159716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.481331, 33.814526, 29.274368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086678, 0.291124, -0.952751,
		-0.814412, -0.571511, -0.100539,
		-0.573777, 0.767218, 0.286632,
		30.309198, 34.044689, 29.360357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.048527, 33.587418, 28.833282>,  <30.710842, 33.507637, 29.159716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.048527, 33.587418, 28.833282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.127188, 33.961514, 28.951035>,  <30.174383, 34.185970, 29.021687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.127188, 33.961514, 28.951035>,  <30.048527, 33.587418, 28.833282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.127188, 33.961514, 28.951035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181229, 0.329743, -0.926512,
		-0.963579, 0.128849, 0.234336,
		0.196651, 0.935237, 0.294382,
		30.186182, 34.242085, 29.039349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.477856, 34.021717, 28.565971>,  <30.048527, 33.587418, 28.833282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.477856, 34.021717, 28.565971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.751593, 34.303432, 28.641499>,  <29.915834, 34.472462, 28.686815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.751593, 34.303432, 28.641499>,  <29.477856, 34.021717, 28.565971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.751593, 34.303432, 28.641499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187309, 0.420063, -0.887954,
		-0.704692, 0.572297, 0.419387,
		0.684342, 0.704289, 0.188818,
		29.956896, 34.514721, 28.698145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.219252, 34.578625, 28.261759>,  <29.477856, 34.021717, 28.565971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.219252, 34.578625, 28.261759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.590115, 34.705818, 28.341019>,  <29.812632, 34.782135, 28.388575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.590115, 34.705818, 28.341019>,  <29.219252, 34.578625, 28.261759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.590115, 34.705818, 28.341019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029039, 0.588262, -0.808149,
		-0.373546, 0.743527, 0.554645,
		0.927157, 0.317987, 0.198151,
		29.868261, 34.801216, 28.400465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.176172, 35.347900, 28.158716>,  <29.219252, 34.578625, 28.261759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.176172, 35.347900, 28.158716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.553549, 35.224876, 28.109203>,  <29.779976, 35.151062, 28.079496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.553549, 35.224876, 28.109203>,  <29.176172, 35.347900, 28.158716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.553549, 35.224876, 28.109203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015659, 0.414274, -0.910017,
		0.331166, 0.856610, 0.395660,
		0.943442, -0.307563, -0.123780,
		29.836582, 35.132607, 28.072069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.493402, 35.903305, 27.793770>,  <29.176172, 35.347900, 28.158716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.493402, 35.903305, 27.793770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.742767, 35.596352, 27.733791>,  <29.892385, 35.412178, 27.697803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.742767, 35.596352, 27.733791>,  <29.493402, 35.903305, 27.793770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.742767, 35.596352, 27.733791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205890, 0.346118, -0.915321,
		0.754300, 0.539747, 0.373770,
		0.623410, -0.767382, -0.149949,
		29.929790, 35.366138, 27.688807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.073015, 36.173889, 27.494171>,  <29.493402, 35.903305, 27.793770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.073015, 36.173889, 27.494171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.085129, 35.785908, 27.397606>,  <30.092398, 35.553120, 27.339666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.085129, 35.785908, 27.397606>,  <30.073015, 36.173889, 27.494171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.085129, 35.785908, 27.397606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066638, 0.242947, -0.967748,
		0.997317, 0.013220, 0.071993,
		0.030284, -0.969949, -0.241415,
		30.094213, 35.494923, 27.325182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.617052, 36.050148, 26.967855>,  <30.073015, 36.173889, 27.494171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.617052, 36.050148, 26.967855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.368263, 35.741604, 26.913967>,  <30.218990, 35.556477, 26.881634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.368263, 35.741604, 26.913967>,  <30.617052, 36.050148, 26.967855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.368263, 35.741604, 26.913967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082211, 0.235421, -0.968410,
		0.778713, -0.591247, -0.209840,
		-0.621970, -0.771365, -0.134719,
		30.181671, 35.510193, 26.873552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.756693, 35.755173, 26.239067>,  <30.617052, 36.050148, 26.967855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.756693, 35.755173, 26.239067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.390766, 35.618256, 26.324806>,  <30.171209, 35.536106, 26.376249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.390766, 35.618256, 26.324806>,  <30.756693, 35.755173, 26.239067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.390766, 35.618256, 26.324806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310829, 0.257862, -0.914818,
		0.257862, -0.903518, -0.342291,
		0.914818, 0.342291, -0.214347,
		30.116322, 35.515568, 26.389111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.604397, 35.259743, 25.764246>,  <30.756693, 35.755173, 26.239067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.604397, 35.259743, 25.764246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.262569, 35.406971, 25.910801>,  <30.057474, 35.495308, 25.998734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.262569, 35.406971, 25.910801>,  <30.604397, 35.259743, 25.764246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.262569, 35.406971, 25.910801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365838, 0.074105, -0.927724,
		-0.368619, -0.926840, 0.071327,
		-0.854566, 0.368071, 0.366389,
		30.006199, 35.517391, 26.020718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.147556, 35.089737, 25.339903>,  <30.604397, 35.259743, 25.764246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.147556, 35.089737, 25.339903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.922964, 35.349079, 25.545574>,  <29.788208, 35.504684, 25.668976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.922964, 35.349079, 25.545574>,  <30.147556, 35.089737, 25.339903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.922964, 35.349079, 25.545574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594810, 0.115752, -0.795489,
		-0.575275, -0.752489, 0.320655,
		-0.561480, 0.648353, 0.514177,
		29.754520, 35.543587, 25.699827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.455900, 34.852734, 25.307926>,  <30.147556, 35.089737, 25.339903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.455900, 34.852734, 25.307926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.430107, 35.245110, 25.381241>,  <29.414631, 35.480537, 25.425230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.430107, 35.245110, 25.381241>,  <29.455900, 34.852734, 25.307926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.430107, 35.245110, 25.381241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736619, 0.077123, -0.671897,
		-0.673227, -0.178339, 0.717607,
		-0.064481, 0.980942, 0.183289,
		29.410763, 35.539391, 25.436228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.714609, 34.972149, 25.228153>,  <29.455900, 34.852734, 25.307926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.714609, 34.972149, 25.228153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.866215, 35.341736, 25.207600>,  <28.957178, 35.563488, 25.195267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.866215, 35.341736, 25.207600>,  <28.714609, 34.972149, 25.228153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.866215, 35.341736, 25.207600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718738, 0.258944, -0.645262,
		-0.582893, 0.281494, 0.762231,
		0.379012, 0.923964, -0.051384,
		28.979919, 35.618923, 25.192184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.151354, 35.343285, 25.370897>,  <28.714609, 34.972149, 25.228153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.151354, 35.343285, 25.370897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.413460, 35.542648, 25.143841>,  <28.570724, 35.662266, 25.007607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.413460, 35.542648, 25.143841>,  <28.151354, 35.343285, 25.370897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.413460, 35.542648, 25.143841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738945, 0.266941, -0.618630,
		-0.156801, 0.824824, 0.543211,
		0.655266, 0.498405, -0.567643,
		28.610039, 35.692169, 24.973547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.920769, 36.036304, 25.334929>,  <28.151354, 35.343285, 25.370897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.920769, 36.036304, 25.334929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.141340, 35.968853, 25.008129>,  <28.273684, 35.928383, 24.812050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.141340, 35.968853, 25.008129>,  <27.920769, 36.036304, 25.334929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.141340, 35.968853, 25.008129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784667, 0.227667, -0.576598,
		0.283232, 0.959027, -0.006771,
		0.551431, -0.168624, -0.817000,
		28.306770, 35.918266, 24.763029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.713305, 36.520443, 24.891464>,  <27.920769, 36.036304, 25.334929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.713305, 36.520443, 24.891464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.915270, 36.283978, 24.639881>,  <28.036449, 36.142097, 24.488932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.915270, 36.283978, 24.639881>,  <27.713305, 36.520443, 24.891464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.915270, 36.283978, 24.639881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794789, -0.034169, -0.605924,
		0.336708, 0.805828, -0.487102,
		0.504914, -0.591163, -0.628958,
		28.066744, 36.106628, 24.451193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.122990, 36.737350, 24.191906>,  <27.713305, 36.520443, 24.891464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.122990, 36.737350, 24.191906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.939543, 36.381958, 24.185406>,  <27.829475, 36.168720, 24.181505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.939543, 36.381958, 24.185406>,  <28.122990, 36.737350, 24.191906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.939543, 36.381958, 24.185406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571132, 0.308717, -0.760593,
		0.680792, -0.339540, -0.649025,
		-0.458617, -0.888485, -0.016250,
		27.801958, 36.115414, 24.180531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.086359, 36.416191, 23.509834>,  <28.122990, 36.737350, 24.191906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.086359, 36.416191, 23.509834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.767920, 36.277878, 23.708496>,  <27.576857, 36.194889, 23.827692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.767920, 36.277878, 23.708496>,  <28.086359, 36.416191, 23.509834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.767920, 36.277878, 23.708496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596208, 0.307446, -0.741628,
		0.103744, -0.886518, -0.450913,
		-0.796099, -0.345778, 0.496654,
		27.529091, 36.174145, 23.857492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.685249, 35.975410, 23.131462>,  <28.086359, 36.416191, 23.509834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.685249, 35.975410, 23.131462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.437744, 36.157219, 23.387756>,  <27.289240, 36.266304, 23.541533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.437744, 36.157219, 23.387756>,  <27.685249, 35.975410, 23.131462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.437744, 36.157219, 23.387756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539982, 0.346312, -0.767129,
		-0.570570, -0.820658, 0.031147,
		-0.618764, 0.454520, 0.640736,
		27.252115, 36.293575, 23.579977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.062664, 35.871979, 22.925365>,  <27.685249, 35.975410, 23.131462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.062664, 35.871979, 22.925365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.049271, 36.199795, 23.154182>,  <27.041235, 36.396484, 23.291471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.049271, 36.199795, 23.154182>,  <27.062664, 35.871979, 22.925365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.049271, 36.199795, 23.154182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457668, 0.496252, -0.737750,
		-0.888493, -0.286505, 0.358463,
		-0.033481, 0.819542, 0.572040,
		27.039227, 36.445656, 23.325794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.341299, 36.090981, 22.892992>,  <27.062664, 35.871979, 22.925365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.341299, 36.090981, 22.892992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.545647, 36.422359, 22.984814>,  <26.668255, 36.621185, 23.039906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.545647, 36.422359, 22.984814>,  <26.341299, 36.090981, 22.892992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.545647, 36.422359, 22.984814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668209, 0.550675, -0.500254,
		-0.540840, 0.102176, 0.834896,
		0.510871, 0.828443, 0.229552,
		26.698908, 36.670891, 23.053679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.985327, 36.670296, 23.400497>,  <26.341299, 36.090981, 22.892992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.985327, 36.670296, 23.400497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.220886, 36.810097, 23.109005>,  <26.362223, 36.893978, 22.934111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.220886, 36.810097, 23.109005>,  <25.985327, 36.670296, 23.400497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.220886, 36.810097, 23.109005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808184, 0.247913, -0.534207,
		-0.006046, 0.903541, 0.428459,
		0.588899, 0.349503, -0.728729,
		26.397556, 36.914948, 22.890387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.674292, 37.381390, 23.221292>,  <25.985327, 36.670296, 23.400497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.674292, 37.381390, 23.221292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.905907, 37.241611, 22.926647>,  <26.044876, 37.157745, 22.749859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.905907, 37.241611, 22.926647>,  <25.674292, 37.381390, 23.221292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.905907, 37.241611, 22.926647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629482, 0.382566, -0.676311,
		0.518137, 0.855297, 0.001551,
		0.579039, -0.349445, -0.736615,
		26.079618, 37.136780, 22.705662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.775513, 37.960304, 22.675550>,  <25.674292, 37.381390, 23.221292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.775513, 37.960304, 22.675550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.799772, 37.607433, 22.488750>,  <25.814327, 37.395710, 22.376671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.799772, 37.607433, 22.488750>,  <25.775513, 37.960304, 22.675550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.799772, 37.607433, 22.488750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516953, 0.372468, -0.770732,
		0.853862, 0.288161, -0.433454,
		0.060648, -0.882174, -0.467002,
		25.817966, 37.342781, 22.348650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.062748, 37.838058, 23.048084>,  <25.775513, 37.960304, 22.675550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.062748, 37.838058, 23.048084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.718004, 38.001732, 22.928238>,  <24.511158, 38.099934, 22.856331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.718004, 38.001732, 22.928238>,  <25.062748, 37.838058, 23.048084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.718004, 38.001732, 22.928238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345287, 0.040735, -0.937613,
		-0.371447, -0.911544, -0.176392,
		-0.861860, 0.409179, -0.299613,
		24.459446, 38.124485, 22.838354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.909248, 37.553375, 22.475348>,  <25.062748, 37.838058, 23.048084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.909248, 37.553375, 22.475348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.653028, 37.858776, 22.442459>,  <24.499296, 38.042015, 22.422726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.653028, 37.858776, 22.442459>,  <24.909248, 37.553375, 22.475348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.653028, 37.858776, 22.442459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360307, 0.204268, -0.910194,
		-0.678141, -0.612648, -0.405939,
		-0.640549, 0.763503, -0.082219,
		24.460863, 38.087826, 22.417793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.592665, 37.541920, 21.825686>,  <24.909248, 37.553375, 22.475348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.592665, 37.541920, 21.825686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.538872, 37.924713, 21.928520>,  <24.506596, 38.154388, 21.990221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.538872, 37.924713, 21.928520>,  <24.592665, 37.541920, 21.825686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.538872, 37.924713, 21.928520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220558, 0.281843, -0.933766,
		-0.966058, -0.068875, -0.248974,
		-0.134485, 0.956985, 0.257086,
		24.498526, 38.211807, 22.005646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.183849, 37.848419, 21.239365>,  <24.592665, 37.541920, 21.825686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.183849, 37.848419, 21.239365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.384909, 38.137970, 21.428402>,  <24.505545, 38.311699, 21.541824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.384909, 38.137970, 21.428402>,  <24.183849, 37.848419, 21.239365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.384909, 38.137970, 21.428402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273372, 0.385527, -0.881270,
		-0.820129, 0.572164, -0.004103,
		0.502649, 0.723876, 0.472596,
		24.535704, 38.355133, 21.570181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.117256, 38.367363, 20.839479>,  <24.183849, 37.848419, 21.239365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.117256, 38.367363, 20.839479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.431492, 38.470188, 21.064606>,  <24.620033, 38.531883, 21.199682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.431492, 38.470188, 21.064606>,  <24.117256, 38.367363, 20.839479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.431492, 38.470188, 21.064606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400903, 0.481377, -0.779457,
		-0.471299, 0.837970, 0.275107,
		0.785592, 0.257067, 0.562817,
		24.667170, 38.547310, 21.233450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.233007, 39.026390, 20.649185>,  <24.117256, 38.367363, 20.839479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.233007, 39.026390, 20.649185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.585760, 38.921505, 20.805916>,  <24.797413, 38.858574, 20.899954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.585760, 38.921505, 20.805916>,  <24.233007, 39.026390, 20.649185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.585760, 38.921505, 20.805916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469976, 0.422849, -0.774804,
		0.037480, 0.867435, 0.496137,
		0.881883, -0.262213, 0.391825,
		24.850325, 38.842842, 20.923464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.561068, 39.704163, 20.690331>,  <24.233007, 39.026390, 20.649185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.561068, 39.704163, 20.690331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.826347, 39.405087, 20.703770>,  <24.985516, 39.225643, 20.711834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.826347, 39.405087, 20.703770>,  <24.561068, 39.704163, 20.690331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.826347, 39.405087, 20.703770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569921, 0.475402, -0.670211,
		0.485136, 0.463632, 0.741410,
		0.663199, -0.747688, 0.033599,
		25.025307, 39.180779, 20.713850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.130085, 40.030594, 20.700937>,  <24.561068, 39.704163, 20.690331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.130085, 40.030594, 20.700937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.240816, 39.661572, 20.593418>,  <25.307255, 39.440159, 20.528906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.240816, 39.661572, 20.593418>,  <25.130085, 40.030594, 20.700937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.240816, 39.661572, 20.593418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571329, 0.382938, -0.725908,
		0.772626, 0.047378, 0.633092,
		0.276827, -0.922558, -0.268799,
		25.323864, 39.384804, 20.512779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.831253, 40.134968, 20.557083>,  <25.130085, 40.030594, 20.700937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.831253, 40.134968, 20.557083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.745502, 39.789925, 20.373798>,  <25.694052, 39.582901, 20.263828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.745502, 39.789925, 20.373798>,  <25.831253, 40.134968, 20.557083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.745502, 39.789925, 20.373798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444745, 0.331462, -0.832067,
		0.869624, -0.382162, 0.312581,
		-0.214376, -0.862604, -0.458211,
		25.681189, 39.531143, 20.236336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.383934, 40.103111, 20.161659>,  <25.831253, 40.134968, 20.557083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.383934, 40.103111, 20.161659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.111378, 39.851959, 20.011208>,  <25.947844, 39.701267, 19.920937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.111378, 39.851959, 20.011208>,  <26.383934, 40.103111, 20.161659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.111378, 39.851959, 20.011208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313638, 0.213839, -0.925151,
		0.661314, -0.748358, 0.051219,
		-0.681392, -0.627880, -0.376128,
		25.906960, 39.663597, 19.898369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.687761, 39.566341, 19.662228>,  <26.383934, 40.103111, 20.161659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.687761, 39.566341, 19.662228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.304819, 39.633045, 19.567856>,  <26.075054, 39.673069, 19.511232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.304819, 39.633045, 19.567856>,  <26.687761, 39.566341, 19.662228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.304819, 39.633045, 19.567856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270338, 0.228963, -0.935144,
		-0.101927, -0.959044, -0.264281,
		-0.957355, 0.166762, -0.235928,
		26.017612, 39.683075, 19.497078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.893797, 39.578453, 18.986488>,  <26.687761, 39.566341, 19.662228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.893797, 39.578453, 18.986488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.507193, 39.674431, 19.022896>,  <26.275230, 39.732018, 19.044741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.507193, 39.674431, 19.022896>,  <26.893797, 39.578453, 18.986488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.507193, 39.674431, 19.022896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038045, 0.484731, -0.873836,
		-0.253788, -0.841109, -0.477626,
		-0.966511, 0.239940, 0.091019,
		26.217239, 39.746414, 19.050201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.511082, 39.541222, 18.309875>,  <26.893797, 39.578453, 18.986488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.511082, 39.541222, 18.309875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.272570, 39.782143, 18.522171>,  <26.129463, 39.926697, 18.649548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.272570, 39.782143, 18.522171>,  <26.511082, 39.541222, 18.309875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.272570, 39.782143, 18.522171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198985, 0.529606, -0.824574,
		-0.777725, -0.597285, -0.195944,
		-0.596279, 0.602302, 0.530739,
		26.093685, 39.962833, 18.681393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.975489, 39.651150, 17.850206>,  <26.511082, 39.541222, 18.309875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.975489, 39.651150, 17.850206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.971289, 39.948654, 18.117550>,  <25.968769, 40.127159, 18.277956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.971289, 39.948654, 18.117550>,  <25.975489, 39.651150, 17.850206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.971289, 39.948654, 18.117550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181056, 0.655934, -0.732781,
		-0.983417, -0.128706, 0.127774,
		-0.010502, 0.743764, 0.668360,
		25.968138, 40.171783, 18.318058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.295492, 40.087818, 17.731003>,  <25.975489, 39.651150, 17.850206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.295492, 40.087818, 17.731003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.527552, 40.337280, 17.940567>,  <25.666786, 40.486958, 18.066305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.527552, 40.337280, 17.940567>,  <25.295492, 40.087818, 17.731003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.527552, 40.337280, 17.940567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356859, 0.772820, -0.524786,
		-0.732175, 0.117491, 0.670906,
		0.580148, 0.623654, 0.523912,
		25.701595, 40.524376, 18.097740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.889713, 40.733089, 17.973499>,  <25.295492, 40.087818, 17.731003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.889713, 40.733089, 17.973499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.266941, 40.860439, 18.011982>,  <25.493279, 40.936848, 18.035072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.266941, 40.860439, 18.011982>,  <24.889713, 40.733089, 17.973499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.266941, 40.860439, 18.011982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249082, 0.867771, -0.430037,
		-0.220398, 0.381591, 0.897670,
		0.943071, 0.318373, 0.096207,
		25.549862, 40.955952, 18.040844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.849953, 41.482002, 18.065178>,  <24.889713, 40.733089, 17.973499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.849953, 41.482002, 18.065178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.241079, 41.474026, 17.981777>,  <25.475756, 41.469242, 17.931736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.241079, 41.474026, 17.981777>,  <24.849953, 41.482002, 18.065178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.241079, 41.474026, 17.981777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085860, 0.869825, -0.485832,
		0.191046, 0.492957, 0.848820,
		0.977819, -0.019937, -0.208502,
		25.534426, 41.468044, 17.919228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.208868, 41.990089, 18.392763>,  <24.849953, 41.482002, 18.065178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.208868, 41.990089, 18.392763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.379156, 41.889015, 18.045219>,  <25.481329, 41.828373, 17.836693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.379156, 41.889015, 18.045219>,  <25.208868, 41.990089, 18.392763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.379156, 41.889015, 18.045219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206988, 0.907563, -0.365356,
		0.880863, 0.335382, 0.334064,
		0.425718, -0.252681, -0.868859,
		25.506872, 41.813210, 17.784561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.647650, 42.715244, 18.155195>,  <25.208868, 41.990089, 18.392763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.647650, 42.715244, 18.155195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.658848, 42.488396, 17.825932>,  <25.665567, 42.352287, 17.628374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.658848, 42.488396, 17.825932>,  <25.647650, 42.715244, 18.155195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.658848, 42.488396, 17.825932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142268, 0.812838, -0.564848,
		0.989432, 0.132923, -0.057926,
		0.027997, -0.567120, -0.823159,
		25.667248, 42.318260, 17.578983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.957355, 43.155514, 17.667803>,  <25.647650, 42.715244, 18.155195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.957355, 43.155514, 17.667803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.760298, 42.875858, 17.460529>,  <25.642063, 42.708065, 17.336164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.760298, 42.875858, 17.460529>,  <25.957355, 43.155514, 17.667803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.760298, 42.875858, 17.460529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124245, 0.645861, -0.753278,
		0.861317, -0.306714, -0.405042,
		-0.492642, -0.699135, -0.518183,
		25.612505, 42.666119, 17.305075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.181316, 43.274002, 16.971226>,  <25.957355, 43.155514, 17.667803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.181316, 43.274002, 16.971226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.846905, 43.054901, 16.958408>,  <25.646257, 42.923443, 16.950718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.846905, 43.054901, 16.958408>,  <26.181316, 43.274002, 16.971226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.846905, 43.054901, 16.958408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317752, 0.530943, -0.785579,
		0.447311, -0.646586, -0.617932,
		-0.836030, -0.547746, -0.032043,
		25.596096, 42.890575, 16.948795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.052811, 43.017754, 16.257965>,  <26.181316, 43.274002, 16.971226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.052811, 43.017754, 16.257965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.695543, 43.038811, 16.436619>,  <25.481184, 43.051445, 16.543810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.695543, 43.038811, 16.436619>,  <26.052811, 43.017754, 16.257965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.695543, 43.038811, 16.436619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378253, 0.449255, -0.809379,
		-0.243262, -0.891851, -0.381347,
		-0.893167, 0.052645, 0.446632,
		25.427593, 43.054604, 16.570608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.523165, 42.842735, 15.731091>,  <26.052811, 43.017754, 16.257965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.523165, 42.842735, 15.731091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.349192, 43.049469, 16.026039>,  <25.244808, 43.173508, 16.203009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.349192, 43.049469, 16.026039>,  <25.523165, 42.842735, 15.731091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.349192, 43.049469, 16.026039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299745, 0.689079, -0.659790,
		-0.849109, -0.507988, -0.144784,
		-0.434933, 0.516835, 0.737370,
		25.218712, 43.204521, 16.247250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.824581, 42.926395, 15.525268>,  <25.523165, 42.842735, 15.731091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.824581, 42.926395, 15.525268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.981279, 43.216061, 15.752290>,  <25.075298, 43.389858, 15.888503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.981279, 43.216061, 15.752290>,  <24.824581, 42.926395, 15.525268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.981279, 43.216061, 15.752290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387401, 0.689339, -0.612153,
		-0.834538, 0.019938, 0.550589,
		0.391747, 0.724164, 0.567556,
		25.098804, 43.433311, 15.922557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.528284, 43.480923, 15.347882>,  <24.824581, 42.926395, 15.525268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.528284, 43.480923, 15.347882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.827980, 43.644718, 15.556098>,  <25.007797, 43.742996, 15.681027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.827980, 43.644718, 15.556098>,  <24.528284, 43.480923, 15.347882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.827980, 43.644718, 15.556098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136424, 0.864525, -0.483720,
		-0.648095, 0.291408, 0.703601,
		0.749240, 0.409485, 0.520540,
		25.052752, 43.767563, 15.712260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.491091, 43.217155, 14.682982>,  <24.528284, 43.480923, 15.347882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.491091, 43.217155, 14.682982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.464968, 42.878967, 14.894990>,  <24.449293, 42.676056, 15.022195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.464968, 42.878967, 14.894990>,  <24.491091, 43.217155, 14.682982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.464968, 42.878967, 14.894990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861803, 0.315543, 0.397151,
		-0.503022, -0.430834, -0.749234,
		-0.065310, -0.845467, 0.530020,
		24.445375, 42.625328, 15.053996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.837635, 42.830067, 14.545248>,  <24.491091, 43.217155, 14.682982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.837635, 42.830067, 14.545248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.964710, 42.758389, 14.917691>,  <24.040956, 42.715382, 15.141157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.964710, 42.758389, 14.917691>,  <23.837635, 42.830067, 14.545248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.964710, 42.758389, 14.917691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.878418, 0.314109, 0.360163,
		-0.357010, -0.932321, -0.057622,
		0.317689, -0.179198, 0.931108,
		24.060017, 42.704628, 15.197023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.353039, 42.284771, 14.973705>,  <23.837635, 42.830067, 14.545248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.353039, 42.284771, 14.973705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.557722, 42.580414, 15.148919>,  <23.680532, 42.757801, 15.254047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.557722, 42.580414, 15.148919>,  <23.353039, 42.284771, 14.973705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.557722, 42.580414, 15.148919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806051, 0.236523, 0.542530,
		0.297384, -0.630693, 0.716791,
		0.511708, 0.739110, 0.438032,
		23.711235, 42.802147, 15.280330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.830280, 42.020893, 15.538520>,  <23.353039, 42.284771, 14.973705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.830280, 42.020893, 15.538520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.547504, 42.039360, 15.256215>,  <22.377838, 42.050442, 15.086832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.547504, 42.039360, 15.256215>,  <22.830280, 42.020893, 15.538520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.547504, 42.039360, 15.256215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582969, -0.603052, 0.544495,
		-0.400474, 0.796365, 0.453237,
		-0.706942, 0.046167, -0.705763,
		22.335423, 42.053211, 15.044486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.152813, 42.393188, 15.775613>,  <22.830280, 42.020893, 15.538520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.152813, 42.393188, 15.775613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.128164, 42.076118, 15.533004>,  <22.113375, 41.885876, 15.387439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.128164, 42.076118, 15.533004>,  <22.152813, 42.393188, 15.775613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.128164, 42.076118, 15.533004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557520, -0.476702, 0.679652,
		-0.827874, 0.380028, -0.412558,
		-0.061620, -0.792675, -0.606522,
		22.109678, 41.838314, 15.351048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.491161, 42.188641, 15.842304>,  <22.152813, 42.393188, 15.775613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.491161, 42.188641, 15.842304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.725304, 41.884628, 15.729371>,  <21.865789, 41.702221, 15.661611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.725304, 41.884628, 15.729371>,  <21.491161, 42.188641, 15.842304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.725304, 41.884628, 15.729371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460639, -0.598317, 0.655613,
		-0.667213, -0.253710, -0.700327,
		0.585354, -0.760032, -0.282336,
		21.900909, 41.656620, 15.644671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.152487, 41.563320, 15.581918>,  <21.491161, 42.188641, 15.842304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.152487, 41.563320, 15.581918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.490372, 41.449844, 15.763459>,  <21.693102, 41.381760, 15.872384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.490372, 41.449844, 15.763459>,  <21.152487, 41.563320, 15.581918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.490372, 41.449844, 15.763459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532002, -0.537925, 0.653920,
		0.058628, -0.793824, -0.605315,
		0.844711, -0.283691, 0.453853,
		21.743786, 41.364738, 15.899615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.024876, 40.864025, 15.854016>,  <21.152487, 41.563320, 15.581918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.024876, 40.864025, 15.854016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.331776, 41.000645, 16.071152>,  <21.515915, 41.082619, 16.201433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.331776, 41.000645, 16.071152>,  <21.024876, 40.864025, 15.854016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.331776, 41.000645, 16.071152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276717, -0.587270, 0.760620,
		0.578583, -0.733796, -0.356069,
		0.767248, 0.341551, 0.542838,
		21.561951, 41.103111, 16.234003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.304857, 40.342072, 16.220003>,  <21.024876, 40.864025, 15.854016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.304857, 40.342072, 16.220003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.419460, 40.664806, 16.426662>,  <21.488222, 40.858448, 16.550657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.419460, 40.664806, 16.426662>,  <21.304857, 40.342072, 16.220003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.419460, 40.664806, 16.426662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146424, -0.496043, 0.855863,
		0.946823, -0.320861, -0.023980,
		0.286508, 0.806839, 0.516646,
		21.505413, 40.906857, 16.581656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.879807, 40.175617, 16.603420>,  <21.304857, 40.342072, 16.220003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.879807, 40.175617, 16.603420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.723997, 40.482967, 16.806545>,  <21.630512, 40.667377, 16.928421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.723997, 40.482967, 16.806545>,  <21.879807, 40.175617, 16.603420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.723997, 40.482967, 16.806545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041547, -0.565460, 0.823729,
		0.920079, 0.299763, 0.252184,
		-0.389524, 0.768373, 0.507813,
		21.607140, 40.713478, 16.958889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.203337, 40.082863, 17.231625>,  <21.879807, 40.175617, 16.603420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.203337, 40.082863, 17.231625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.908030, 40.345428, 17.293705>,  <21.730846, 40.502968, 17.330954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.908030, 40.345428, 17.293705>,  <22.203337, 40.082863, 17.231625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.908030, 40.345428, 17.293705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141613, -0.375806, 0.915814,
		0.659475, 0.654137, 0.370401,
		-0.738267, 0.656410, 0.155201,
		21.686550, 40.542351, 17.340265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.331738, 40.390106, 17.947300>,  <22.203337, 40.082863, 17.231625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.331738, 40.390106, 17.947300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.947178, 40.437332, 17.847881>,  <21.716442, 40.465668, 17.788231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.947178, 40.437332, 17.847881>,  <22.331738, 40.390106, 17.947300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.947178, 40.437332, 17.847881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272900, -0.293492, 0.916181,
		0.035224, 0.948643, 0.314383,
		-0.961397, 0.118067, -0.248547,
		21.658758, 40.472752, 17.773317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.019485, 40.831284, 18.498940>,  <22.331738, 40.390106, 17.947300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.019485, 40.831284, 18.498940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.711790, 40.654736, 18.314129>,  <21.527172, 40.548809, 18.203243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.711790, 40.654736, 18.314129>,  <22.019485, 40.831284, 18.498940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.711790, 40.654736, 18.314129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387526, -0.252652, 0.886561,
		-0.508029, 0.861024, 0.023309,
		-0.769240, -0.441366, -0.462024,
		21.481018, 40.522327, 18.175522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.346203, 41.115734, 18.767998>,  <22.019485, 40.831284, 18.498940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.346203, 41.115734, 18.767998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.263763, 40.762775, 18.598812>,  <21.214300, 40.550999, 18.497301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.263763, 40.762775, 18.598812>,  <21.346203, 41.115734, 18.767998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.263763, 40.762775, 18.598812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438581, -0.303098, 0.846037,
		-0.874740, 0.359873, -0.324534,
		-0.206100, -0.882396, -0.422965,
		21.201933, 40.498058, 18.471922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.752752, 40.941948, 19.080069>,  <21.346203, 41.115734, 18.767998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.752752, 40.941948, 19.080069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.880877, 40.588585, 18.943253>,  <20.957750, 40.376568, 18.861162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.880877, 40.588585, 18.943253>,  <20.752752, 40.941948, 19.080069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.880877, 40.588585, 18.943253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345475, -0.445131, 0.826139,
		-0.882070, -0.146454, -0.447775,
		0.320311, -0.883408, -0.342041,
		20.976971, 40.323563, 18.840641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.252634, 40.427036, 19.256899>,  <20.752752, 40.941948, 19.080069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.252634, 40.427036, 19.256899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.556259, 40.174915, 19.191742>,  <20.738434, 40.023643, 19.152647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.556259, 40.174915, 19.191742>,  <20.252634, 40.427036, 19.256899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.556259, 40.174915, 19.191742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141083, -0.403534, 0.904022,
		-0.635545, -0.663230, -0.395234,
		0.759064, -0.630307, -0.162893,
		20.783979, 39.985825, 19.142874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.041117, 39.651287, 19.442047>,  <20.252634, 40.427036, 19.256899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.041117, 39.651287, 19.442047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.438591, 39.692917, 19.458809>,  <20.677076, 39.717896, 19.468866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.438591, 39.692917, 19.458809>,  <20.041117, 39.651287, 19.442047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.438591, 39.692917, 19.458809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021986, -0.546882, 0.836921,
		0.110018, -0.830716, -0.545717,
		0.993686, 0.104074, 0.041903,
		20.736696, 39.724140, 19.471380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.297680, 38.993088, 19.504354>,  <20.041117, 39.651287, 19.442047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.297680, 38.993088, 19.504354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.600685, 39.228737, 19.616856>,  <20.782488, 39.370129, 19.684357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.600685, 39.228737, 19.616856>,  <20.297680, 38.993088, 19.504354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.600685, 39.228737, 19.616856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118991, -0.548216, 0.827829,
		0.641884, -0.593624, -0.485382,
		0.757513, 0.589126, 0.281255,
		20.827940, 39.405476, 19.701233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.852459, 38.522816, 19.648293>,  <20.297680, 38.993088, 19.504354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.852459, 38.522816, 19.648293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.941957, 38.874821, 19.815868>,  <20.995657, 39.086025, 19.916414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.941957, 38.874821, 19.815868>,  <20.852459, 38.522816, 19.648293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.941957, 38.874821, 19.815868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130749, -0.453054, 0.881843,
		0.965838, -0.142533, -0.216430,
		0.223746, 0.880015, 0.418941,
		21.009081, 39.138824, 19.941551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.449341, 38.368000, 19.974749>,  <20.852459, 38.522816, 19.648293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.449341, 38.368000, 19.974749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.328526, 38.708920, 20.145561>,  <21.256037, 38.913471, 20.248049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.328526, 38.708920, 20.145561>,  <21.449341, 38.368000, 19.974749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.328526, 38.708920, 20.145561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351876, -0.316646, 0.880862,
		0.885978, 0.416315, -0.204266,
		-0.302036, 0.852301, 0.427033,
		21.237915, 38.964611, 20.273670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.049101, 38.527420, 20.409382>,  <21.449341, 38.368000, 19.974749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.049101, 38.527420, 20.409382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.709635, 38.713448, 20.510159>,  <21.505955, 38.825066, 20.570625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.709635, 38.713448, 20.510159>,  <22.049101, 38.527420, 20.409382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.709635, 38.713448, 20.510159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085479, -0.349471, 0.933040,
		0.521974, 0.813376, 0.256831,
		-0.848667, 0.465069, 0.251941,
		21.455034, 38.852970, 20.585741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.225536, 39.031124, 20.880594>,  <22.049101, 38.527420, 20.409382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.225536, 39.031124, 20.880594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.842159, 38.929249, 20.932011>,  <21.612133, 38.868122, 20.962860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.842159, 38.929249, 20.932011>,  <22.225536, 39.031124, 20.880594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.842159, 38.929249, 20.932011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221931, -0.382508, 0.896903,
		-0.179264, 0.888156, 0.423135,
		-0.958442, -0.254690, 0.128540,
		21.554626, 38.852840, 20.970573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.105007, 39.234165, 21.550911>,  <22.225536, 39.031124, 20.880594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.105007, 39.234165, 21.550911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.775393, 39.018715, 21.480659>,  <21.577623, 38.889442, 21.438509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.775393, 39.018715, 21.480659>,  <22.105007, 39.234165, 21.550911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.775393, 39.018715, 21.480659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069771, -0.404129, 0.912037,
		-0.562227, 0.739296, 0.370596,
		-0.824034, -0.538629, -0.175631,
		21.528183, 38.857124, 21.427971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.561928, 39.346527, 22.074715>,  <22.105007, 39.234165, 21.550911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.561928, 39.346527, 22.074715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.494923, 38.978668, 21.932625>,  <21.454720, 38.757954, 21.847370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.494923, 38.978668, 21.932625>,  <21.561928, 39.346527, 22.074715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.494923, 38.978668, 21.932625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205685, -0.384990, 0.899709,
		-0.964175, 0.077647, 0.253649,
		-0.167512, -0.919649, -0.355227,
		21.444670, 38.702774, 21.826057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.144104, 38.998291, 22.573359>,  <21.561928, 39.346527, 22.074715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.144104, 38.998291, 22.573359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.304255, 38.703369, 22.355705>,  <21.400345, 38.526417, 22.225113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.304255, 38.703369, 22.355705>,  <21.144104, 38.998291, 22.573359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.304255, 38.703369, 22.355705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280817, -0.466514, 0.838753,
		-0.872262, -0.488618, 0.020267,
		0.400376, -0.737304, -0.544134,
		21.424368, 38.482178, 22.192465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.929802, 38.367134, 22.871059>,  <21.144104, 38.998291, 22.573359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.929802, 38.367134, 22.871059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.277185, 38.306576, 22.682228>,  <21.485617, 38.270241, 22.568930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.277185, 38.306576, 22.682228>,  <20.929802, 38.367134, 22.871059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.277185, 38.306576, 22.682228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377667, -0.414834, 0.827816,
		-0.321160, -0.897214, -0.303091,
		0.868461, -0.151394, -0.472076,
		21.537724, 38.261158, 22.540606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.133240, 37.716583, 23.101797>,  <20.929802, 38.367134, 22.871059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.133240, 37.716583, 23.101797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.458685, 37.850334, 22.911545>,  <21.653952, 37.930584, 22.797394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.458685, 37.850334, 22.911545>,  <21.133240, 37.716583, 23.101797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.458685, 37.850334, 22.911545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580930, -0.500675, 0.641752,
		-0.023548, -0.798446, -0.601606,
		0.813613, 0.334379, -0.475631,
		21.702768, 37.950649, 22.768856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.666059, 37.364994, 23.447132>,  <21.133240, 37.716583, 23.101797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.666059, 37.364994, 23.447132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.340429, 37.303722, 23.671207>,  <20.145050, 37.266960, 23.805653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.340429, 37.303722, 23.671207>,  <20.666059, 37.364994, 23.447132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.340429, 37.303722, 23.671207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467662, 0.744828, -0.475944,
		-0.344339, -0.649436, -0.677985,
		-0.814078, -0.153182, 0.560190,
		20.096207, 37.257767, 23.839264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.080294, 37.365585, 22.998945>,  <20.666059, 37.364994, 23.447132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.080294, 37.365585, 22.998945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.991549, 37.460228, 23.377319>,  <19.938301, 37.517014, 23.604343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.991549, 37.460228, 23.377319>,  <20.080294, 37.365585, 22.998945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.991549, 37.460228, 23.377319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636288, 0.699967, -0.324320,
		-0.738861, -0.673842, -0.004744,
		-0.221861, 0.236609, 0.945935,
		19.924990, 37.531212, 23.661100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.362993, 37.462166, 23.191526>,  <20.080294, 37.365585, 22.998945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.362993, 37.462166, 23.191526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.562315, 37.686729, 23.455803>,  <19.681908, 37.821468, 23.614368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.562315, 37.686729, 23.455803>,  <19.362993, 37.462166, 23.191526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.562315, 37.686729, 23.455803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490015, 0.811025, -0.319568,
		-0.715246, -0.164507, 0.679236,
		0.498306, 0.561405, 0.660693,
		19.711807, 37.855152, 23.654011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.968037, 37.843361, 23.455999>,  <19.362993, 37.462166, 23.191526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.968037, 37.843361, 23.455999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.301426, 38.060028, 23.499660>,  <19.501459, 38.190029, 23.525856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.301426, 38.060028, 23.499660>,  <18.968037, 37.843361, 23.455999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.301426, 38.060028, 23.499660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435766, 0.765812, -0.472906,
		-0.339749, 0.346591, 0.874326,
		0.833474, 0.541670, 0.109152,
		19.551468, 38.222530, 23.532406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.222134, 37.921364, 23.614771>,  <18.968037, 37.843361, 23.455999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.222134, 37.921364, 23.614771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.383060, 37.717911, 23.310287>,  <18.479616, 37.595840, 23.127598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.383060, 37.717911, 23.310287>,  <18.222134, 37.921364, 23.614771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.383060, 37.717911, 23.310287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889804, -0.412858, -0.194418,
		-0.215385, 0.755543, -0.618679,
		0.402317, -0.508628, -0.761208,
		18.503756, 37.565323, 23.081924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<29.003899, 28.741297, 29.801270> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.364174, 28.820202, 29.956112>,  <29.580339, 28.867546, 30.049017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.364174, 28.820202, 29.956112>,  <29.003899, 28.741297, 29.801270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.364174, 28.820202, 29.956112> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160613, 0.676691, -0.718535,
		-0.403693, 0.709349, 0.577803,
		0.900686, 0.197264, 0.387106,
		29.634380, 28.879381, 30.072245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.992998, 29.510826, 29.972076>,  <29.003899, 28.741297, 29.801270>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.992998, 29.510826, 29.972076> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.352613, 29.356461, 29.889324>,  <29.568382, 29.263842, 29.839672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.352613, 29.356461, 29.889324>,  <28.992998, 29.510826, 29.972076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.352613, 29.356461, 29.889324> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106852, 0.651546, -0.751047,
		0.424632, 0.653114, 0.627000,
		0.899038, -0.385915, -0.206881,
		29.622326, 29.240686, 29.827259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.505610, 30.126776, 29.795624>,  <28.992998, 29.510826, 29.972076>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.505610, 30.126776, 29.795624> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.704704, 29.811466, 29.650913>,  <29.824162, 29.622280, 29.564087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.704704, 29.811466, 29.650913>,  <29.505610, 30.126776, 29.795624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.704704, 29.811466, 29.650913> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275272, 0.539122, -0.795973,
		0.822486, 0.296599, 0.485331,
		0.497737, -0.788274, -0.361775,
		29.854025, 29.574984, 29.542381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.236149, 30.334715, 29.638149>,  <29.505610, 30.126776, 29.795624>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.236149, 30.334715, 29.638149> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.167086, 30.003277, 29.425125>,  <30.125648, 29.804415, 29.297312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.167086, 30.003277, 29.425125>,  <30.236149, 30.334715, 29.638149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.167086, 30.003277, 29.425125> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486043, 0.398596, -0.777742,
		0.856710, -0.393129, 0.333912,
		-0.172657, -0.828595, -0.532559,
		30.115288, 29.754698, 29.265358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.897478, 30.276751, 29.171356>,  <30.236149, 30.334715, 29.638149>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.897478, 30.276751, 29.171356> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.639408, 30.027374, 28.994690>,  <30.484566, 29.877748, 28.888689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.639408, 30.027374, 28.994690>,  <30.897478, 30.276751, 29.171356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.639408, 30.027374, 28.994690> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377119, 0.242895, -0.893747,
		0.664478, -0.743183, 0.078402,
		-0.645174, -0.623442, -0.441667,
		30.445856, 29.840342, 28.862190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.388363, 29.935171, 28.664240>,  <30.897478, 30.276751, 29.171356>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.388363, 29.935171, 28.664240> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.005037, 29.957027, 28.552063>,  <30.775042, 29.970142, 28.484756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.005037, 29.957027, 28.552063>,  <31.388363, 29.935171, 28.664240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.005037, 29.957027, 28.552063> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276052, 0.430197, -0.859492,
		0.073680, -0.901080, -0.427348,
		-0.958314, 0.054643, -0.280442,
		30.717543, 29.973421, 28.467930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.384714, 29.628660, 28.090519>,  <31.388363, 29.935171, 28.664240>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.384714, 29.628660, 28.090519> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.053556, 29.852634, 28.077484>,  <30.854862, 29.987019, 28.069664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.053556, 29.852634, 28.077484>,  <31.384714, 29.628660, 28.090519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.053556, 29.852634, 28.077484> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304881, 0.400495, -0.864090,
		-0.470784, -0.725310, -0.502282,
		-0.827895, 0.559936, -0.032587,
		30.805187, 30.020615, 28.067709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.111794, 29.524801, 27.454773>,  <31.384714, 29.628660, 28.090519>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.111794, 29.524801, 27.454773> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.937143, 29.859917, 27.585899>,  <30.832354, 30.060986, 27.664576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.937143, 29.859917, 27.585899>,  <31.111794, 29.524801, 27.454773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.937143, 29.859917, 27.585899> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201510, 0.446204, -0.871950,
		-0.876785, -0.314658, -0.363647,
		-0.436627, 0.837790, 0.327818,
		30.806156, 30.111254, 27.684244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.537998, 29.695543, 26.825399>,  <31.111794, 29.524801, 27.454773>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.537998, 29.695543, 26.825399> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.547905, 30.037228, 27.033134>,  <30.553848, 30.242237, 27.157776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.547905, 30.037228, 27.033134>,  <30.537998, 29.695543, 26.825399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.547905, 30.037228, 27.033134> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092603, 0.519226, -0.849605,
		-0.995395, -0.027051, 0.091961,
		0.024766, 0.854209, 0.519340,
		30.555334, 30.293489, 27.188936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.922359, 30.140583, 26.698811>,  <30.537998, 29.695543, 26.825399>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.922359, 30.140583, 26.698811> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.191380, 30.407669, 26.826454>,  <30.352791, 30.567921, 26.903040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.191380, 30.407669, 26.826454>,  <29.922359, 30.140583, 26.698811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.191380, 30.407669, 26.826454> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093432, 0.504358, -0.858425,
		-0.734129, 0.547520, 0.401592,
		0.672551, 0.667716, 0.319108,
		30.393145, 30.607985, 26.922186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.734037, 30.723326, 26.486120>,  <29.922359, 30.140583, 26.698811>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.734037, 30.723326, 26.486120> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.117483, 30.815994, 26.552319>,  <30.347549, 30.871595, 26.592037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.117483, 30.815994, 26.552319>,  <29.734037, 30.723326, 26.486120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.117483, 30.815994, 26.552319> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002821, 0.573525, -0.819183,
		-0.284698, 0.785747, 0.549135,
		0.958613, 0.231670, 0.165498,
		30.405067, 30.885496, 26.601969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.751211, 31.463932, 26.286671>,  <29.734037, 30.723326, 26.486120>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.751211, 31.463932, 26.286671> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.137043, 31.358925, 26.297062>,  <30.368542, 31.295921, 26.303297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.137043, 31.358925, 26.297062>,  <29.751211, 31.463932, 26.286671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.137043, 31.358925, 26.297062> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184415, 0.600610, -0.777984,
		0.188630, 0.755217, 0.627747,
		0.964578, -0.262517, 0.025980,
		30.426416, 31.280170, 26.304855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.217382, 32.064350, 26.341114>,  <29.751211, 31.463932, 26.286671>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.217382, 32.064350, 26.341114> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.433525, 31.772099, 26.174168>,  <30.563211, 31.596746, 26.073999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.433525, 31.772099, 26.174168>,  <30.217382, 32.064350, 26.341114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.433525, 31.772099, 26.174168> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143641, 0.568832, -0.809813,
		0.829085, 0.377637, 0.412320,
		0.540356, -0.730630, -0.417366,
		30.595633, 31.552910, 26.048958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.857615, 32.369240, 26.077070>,  <30.217382, 32.064350, 26.341114>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.857615, 32.369240, 26.077070> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.792160, 32.028809, 25.877514>,  <30.752888, 31.824551, 25.757780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.792160, 32.028809, 25.877514>,  <30.857615, 32.369240, 26.077070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.792160, 32.028809, 25.877514> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065554, 0.495210, -0.866296,
		0.984340, -0.174462, -0.025243,
		-0.163637, -0.851075, -0.498892,
		30.743069, 31.773485, 25.727846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.210247, 32.457039, 25.482691>,  <30.857615, 32.369240, 26.077070>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.210247, 32.457039, 25.482691> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.962017, 32.167088, 25.363068>,  <30.813078, 31.993116, 25.291294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.962017, 32.167088, 25.363068>,  <31.210247, 32.457039, 25.482691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.962017, 32.167088, 25.363068> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047341, 0.346049, -0.937021,
		0.782715, -0.595651, -0.180433,
		-0.620577, -0.724879, -0.299056,
		30.775845, 31.949623, 25.273350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.348797, 32.296345, 24.801077>,  <31.210247, 32.457039, 25.482691>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.348797, 32.296345, 24.801077> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.990194, 32.119129, 24.800667>,  <30.775034, 32.012802, 24.800421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.990194, 32.119129, 24.800667>,  <31.348797, 32.296345, 24.801077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.990194, 32.119129, 24.800667> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212006, 0.431034, -0.877077,
		0.389014, -0.786087, -0.480349,
		-0.896505, -0.443032, -0.001023,
		30.721243, 31.986219, 24.800360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.103987, 32.261898, 24.122076>,  <31.348797, 32.296345, 24.801077>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.103987, 32.261898, 24.122076> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.748835, 32.197773, 24.294571>,  <30.535744, 32.159298, 24.398067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.748835, 32.197773, 24.294571>,  <31.103987, 32.261898, 24.122076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.748835, 32.197773, 24.294571> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458289, 0.225783, -0.859647,
		0.040443, -0.960897, -0.273937,
		-0.887883, -0.160310, 0.431237,
		30.482470, 32.149681, 24.423943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.675533, 31.844212, 23.663971>,  <31.103987, 32.261898, 24.122076>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.675533, 31.844212, 23.663971> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.418961, 32.048420, 23.893032>,  <30.265017, 32.170944, 24.030470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.418961, 32.048420, 23.893032>,  <30.675533, 31.844212, 23.663971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.418961, 32.048420, 23.893032> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464977, 0.335016, -0.819488,
		-0.610216, -0.791916, 0.022493,
		-0.641430, 0.510523, 0.572655,
		30.226532, 32.201576, 24.064829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.962160, 31.677500, 23.470585>,  <30.675533, 31.844212, 23.663971>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.962160, 31.677500, 23.470585> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.923855, 32.016827, 23.678886>,  <29.900871, 32.220425, 23.803867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.923855, 32.016827, 23.678886>,  <29.962160, 31.677500, 23.470585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.923855, 32.016827, 23.678886> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421780, 0.439292, -0.793173,
		-0.901627, -0.295599, 0.315737,
		-0.095761, 0.848318, 0.520755,
		29.895126, 32.271320, 23.835114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.357454, 31.925304, 23.254652>,  <29.962160, 31.677500, 23.470585>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.357454, 31.925304, 23.254652> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.489498, 32.264454, 23.420609>,  <29.568724, 32.467945, 23.520182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.489498, 32.264454, 23.420609>,  <29.357454, 31.925304, 23.254652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.489498, 32.264454, 23.420609> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337676, 0.516515, -0.786884,
		-0.881477, 0.119660, 0.456814,
		0.330110, 0.847876, 0.414890,
		29.588531, 32.518818, 23.545076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.861156, 32.462231, 23.100054>,  <29.357454, 31.925304, 23.254652>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.861156, 32.462231, 23.100054> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.198484, 32.662056, 23.179298>,  <29.400881, 32.781952, 23.226845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.198484, 32.662056, 23.179298>,  <28.861156, 32.462231, 23.100054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.198484, 32.662056, 23.179298> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045114, 0.433144, -0.900195,
		-0.535519, 0.750213, 0.387815,
		0.843318, 0.499567, 0.198112,
		29.451479, 32.811928, 23.238731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.805700, 33.257908, 22.996960>,  <28.861156, 32.462231, 23.100054>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.805700, 33.257908, 22.996960> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.200548, 33.208324, 22.956501>,  <29.437456, 33.178574, 22.932226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.200548, 33.208324, 22.956501>,  <28.805700, 33.257908, 22.996960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.200548, 33.208324, 22.956501> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028309, 0.486914, -0.872991,
		0.157462, 0.864610, 0.477133,
		0.987119, -0.123955, -0.101146,
		29.496683, 33.171139, 22.926157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.543188, 33.969551, 22.995218>,  <28.805700, 33.257908, 22.996960>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.543188, 33.969551, 22.995218> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.150608, 34.000919, 23.065201>,  <27.915060, 34.019741, 23.107191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.150608, 34.000919, 23.065201>,  <28.543188, 33.969551, 22.995218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.150608, 34.000919, 23.065201> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102250, -0.557826, 0.823635,
		0.162188, 0.826244, 0.539458,
		-0.981448, 0.078425, 0.174956,
		27.856174, 34.024448, 23.117687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.454908, 34.148712, 23.729998>,  <28.543188, 33.969551, 22.995218>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.454908, 34.148712, 23.729998> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.095224, 33.995331, 23.645729>,  <27.879414, 33.903301, 23.595167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.095224, 33.995331, 23.645729>,  <28.454908, 34.148712, 23.729998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.095224, 33.995331, 23.645729> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089918, -0.309270, 0.946714,
		-0.428174, 0.870239, 0.243621,
		-0.899212, -0.383452, -0.210671,
		27.825460, 33.880295, 23.582527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.058744, 34.303471, 24.291929>,  <28.454908, 34.148712, 23.729998>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.058744, 34.303471, 24.291929> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.810549, 34.047745, 24.110260>,  <27.661631, 33.894310, 24.001259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.810549, 34.047745, 24.110260>,  <28.058744, 34.303471, 24.291929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.810549, 34.047745, 24.110260> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233589, -0.402185, 0.885259,
		-0.748618, 0.655384, 0.100216,
		-0.620490, -0.639311, -0.454174,
		27.624401, 33.855953, 23.974009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.385977, 34.276470, 24.716328>,  <28.058744, 34.303471, 24.291929>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.385977, 34.276470, 24.716328> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.409657, 33.935825, 24.507999>,  <27.423864, 33.731438, 24.383003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.409657, 33.935825, 24.507999>,  <27.385977, 34.276470, 24.716328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.409657, 33.935825, 24.507999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235735, -0.518903, 0.821686,
		-0.970013, 0.074131, -0.231474,
		0.059200, -0.851612, -0.520818,
		27.427416, 33.680340, 24.351753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.768597, 33.795769, 24.933374>,  <27.385977, 34.276470, 24.716328>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.768597, 33.795769, 24.933374> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.049332, 33.551727, 24.786297>,  <27.217772, 33.405300, 24.698051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.049332, 33.551727, 24.786297>,  <26.768597, 33.795769, 24.933374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.049332, 33.551727, 24.786297> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231429, -0.683465, 0.692327,
		-0.673690, -0.400812, -0.620880,
		0.701842, -0.610103, -0.367684,
		27.259882, 33.368694, 24.675989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.423214, 33.133850, 25.007967>,  <26.768597, 33.795769, 24.933374>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.423214, 33.133850, 25.007967> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.820736, 33.090256, 24.999241>,  <27.059250, 33.064098, 24.994005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.820736, 33.090256, 24.999241>,  <26.423214, 33.133850, 25.007967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.820736, 33.090256, 24.999241> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041326, -0.544541, 0.837715,
		-0.103176, -0.831623, -0.545671,
		0.993804, -0.108982, -0.021816,
		27.118877, 33.057560, 24.992697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.456371, 32.525085, 25.087749>,  <26.423214, 33.133850, 25.007967>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.456371, 32.525085, 25.087749> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.833189, 32.623653, 25.178810>,  <27.059280, 32.682796, 25.233446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.833189, 32.623653, 25.178810>,  <26.456371, 32.525085, 25.087749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.833189, 32.623653, 25.178810> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016811, -0.643050, 0.765640,
		0.335063, -0.725094, -0.601640,
		0.942045, 0.246424, 0.227652,
		27.115803, 32.697582, 25.247107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.831676, 31.879688, 25.024136>,  <26.456371, 32.525085, 25.087749>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.831676, 31.879688, 25.024136> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.053019, 32.118698, 25.256260>,  <27.185823, 32.262104, 25.395535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.053019, 32.118698, 25.256260>,  <26.831676, 31.879688, 25.024136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.053019, 32.118698, 25.256260> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051030, -0.719707, 0.692400,
		0.831380, -0.353531, -0.428747,
		0.553357, 0.597526, 0.580308,
		27.219027, 32.297955, 25.430353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.370804, 31.484028, 25.281780>,  <26.831676, 31.879688, 25.024136>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.370804, 31.484028, 25.281780> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.371181, 31.793312, 25.535439>,  <27.371408, 31.978884, 25.687634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.371181, 31.793312, 25.535439>,  <27.370804, 31.484028, 25.281780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.371181, 31.793312, 25.535439> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189014, -0.622855, 0.759161,
		0.981974, 0.119146, -0.146736,
		0.000945, 0.773212, 0.634148,
		27.371466, 32.025276, 25.725683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.895908, 31.383465, 25.713373>,  <27.370804, 31.484028, 25.281780>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.895908, 31.383465, 25.713373> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.659554, 31.649849, 25.895515>,  <27.517740, 31.809679, 26.004801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.659554, 31.649849, 25.895515>,  <27.895908, 31.383465, 25.713373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.659554, 31.649849, 25.895515> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181105, -0.440528, 0.879282,
		0.786162, 0.602025, 0.139695,
		-0.590889, 0.665959, 0.455356,
		27.482286, 31.849636, 26.032122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.203579, 31.458033, 26.395302>,  <27.895908, 31.383465, 25.713373>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.203579, 31.458033, 26.395302> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.834553, 31.609680, 26.423988>,  <27.613136, 31.700668, 26.441200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.834553, 31.609680, 26.423988>,  <28.203579, 31.458033, 26.395302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.834553, 31.609680, 26.423988> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086274, -0.383857, 0.919353,
		0.376071, 0.841976, 0.386841,
		-0.922565, 0.379117, 0.071717,
		27.557783, 31.723415, 26.445503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.194540, 31.867502, 27.067165>,  <28.203579, 31.458033, 26.395302>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.194540, 31.867502, 27.067165> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.822132, 31.767738, 26.960583>,  <27.598688, 31.707880, 26.896633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.822132, 31.767738, 26.960583>,  <28.194540, 31.867502, 27.067165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.822132, 31.767738, 26.960583> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181657, -0.316551, 0.931019,
		-0.316551, 0.915200, 0.249408,
		-0.931019, -0.249408, -0.266457,
		27.542826, 31.692915, 26.880646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.891361, 31.992325, 27.715124>,  <28.194540, 31.867502, 27.067165>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.891361, 31.992325, 27.715124> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.625654, 31.754436, 27.533993>,  <27.466230, 31.611704, 27.425314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.625654, 31.754436, 27.533993>,  <27.891361, 31.992325, 27.715124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.625654, 31.754436, 27.533993> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285186, -0.358337, 0.888968,
		-0.690952, 0.719654, 0.068426,
		-0.664269, -0.594720, -0.452829,
		27.426373, 31.576021, 27.398144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.180820, 32.136147, 28.117918>,  <27.891361, 31.992325, 27.715124>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.180820, 32.136147, 28.117918> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.183172, 31.783318, 27.929485>,  <27.184584, 31.571621, 27.816425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.183172, 31.783318, 27.929485>,  <27.180820, 32.136147, 28.117918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.183172, 31.783318, 27.929485> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376224, -0.438426, 0.816234,
		-0.926510, 0.172433, -0.334434,
		0.005878, -0.882071, -0.471080,
		27.184937, 31.518696, 27.788162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.515944, 31.860962, 28.159294>,  <27.180820, 32.136147, 28.117918>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.515944, 31.860962, 28.159294> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.733429, 31.530830, 28.098358>,  <26.863920, 31.332752, 28.061796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.733429, 31.530830, 28.098358>,  <26.515944, 31.860962, 28.159294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.733429, 31.530830, 28.098358> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355430, -0.390871, 0.849052,
		-0.760293, -0.407494, -0.505868,
		0.543713, -0.825329, -0.152340,
		26.896544, 31.283232, 28.052656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.157084, 31.333641, 28.466717>,  <26.515944, 31.860962, 28.159294>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.157084, 31.333641, 28.466717> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.504450, 31.140572, 28.421322>,  <26.712870, 31.024731, 28.394085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.504450, 31.140572, 28.421322>,  <26.157084, 31.333641, 28.466717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.504450, 31.140572, 28.421322> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194506, -0.542153, 0.817458,
		-0.456091, -0.687821, -0.564697,
		0.868417, -0.482672, -0.113486,
		26.764975, 30.995770, 28.387276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.996033, 30.664125, 28.722095>,  <26.157084, 31.333641, 28.466717>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.996033, 30.664125, 28.722095> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.394094, 30.657486, 28.683327>,  <26.632931, 30.653502, 28.660065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.394094, 30.657486, 28.683327>,  <25.996033, 30.664125, 28.722095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.394094, 30.657486, 28.683327> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045682, -0.794787, 0.605167,
		-0.087080, -0.606662, -0.790176,
		0.995154, -0.016601, -0.096924,
		26.692640, 30.652506, 28.654249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.344685, 30.001654, 28.430117>,  <25.996033, 30.664125, 28.722095>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.344685, 30.001654, 28.430117> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.610689, 30.187706, 28.663837>,  <26.770292, 30.299337, 28.804070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.610689, 30.187706, 28.663837>,  <26.344685, 30.001654, 28.430117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.610689, 30.187706, 28.663837> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067893, -0.816789, 0.572928,
		0.743740, -0.341334, -0.574753,
		0.665012, 0.465132, 0.584304,
		26.810192, 30.327246, 28.839128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<27.039419, 29.475412, 28.664820> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.006119, 29.789272, 28.910549>,  <26.986139, 29.977589, 29.057987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.006119, 29.789272, 28.910549>,  <27.039419, 29.475412, 28.664820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.006119, 29.789272, 28.910549> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265526, -0.576713, 0.772591,
		0.960503, 0.227438, -0.160333,
		-0.083250, 0.784649, 0.614325,
		26.981144, 30.024668, 29.094847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.651587, 29.486263, 29.011238>,  <27.039419, 29.475412, 28.664820>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.651587, 29.486263, 29.011238> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.376926, 29.686520, 29.222092>,  <27.212132, 29.806673, 29.348604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.376926, 29.686520, 29.222092>,  <27.651587, 29.486263, 29.011238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.376926, 29.686520, 29.222092> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223057, -0.545035, 0.808197,
		0.691924, 0.672529, 0.262576,
		-0.686649, 0.500642, 0.527135,
		27.170931, 29.836712, 29.380232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.826077, 29.243525, 29.612240>,  <27.651587, 29.486263, 29.011238>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.826077, 29.243525, 29.612240> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.504860, 29.457478, 29.717331>,  <27.312130, 29.585850, 29.780386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.504860, 29.457478, 29.717331>,  <27.826077, 29.243525, 29.612240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.504860, 29.457478, 29.717331> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051500, -0.376932, 0.924808,
		0.593694, 0.756190, 0.275145,
		-0.803041, 0.534883, 0.262726,
		27.263948, 29.617943, 29.796148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.990042, 29.611231, 30.241308>,  <27.826077, 29.243525, 29.612240>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.990042, 29.611231, 30.241308> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.595488, 29.553032, 30.210640>,  <27.358755, 29.518112, 30.192240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.595488, 29.553032, 30.210640>,  <27.990042, 29.611231, 30.241308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.595488, 29.553032, 30.210640> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009810, -0.413303, 0.910541,
		-0.164170, 0.898894, 0.406248,
		-0.986383, -0.145498, -0.076670,
		27.299572, 29.509382, 30.187639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.858898, 29.945419, 30.817135>,  <27.990042, 29.611231, 30.241308>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.858898, 29.945419, 30.817135> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.532215, 29.730038, 30.734135>,  <27.336206, 29.600809, 30.684334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.532215, 29.730038, 30.734135>,  <27.858898, 29.945419, 30.817135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.532215, 29.730038, 30.734135> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009979, -0.346353, 0.938051,
		-0.576967, 0.768183, 0.277495,
		-0.816706, -0.538456, -0.207500,
		27.287203, 29.568501, 30.671885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.375778, 30.061842, 31.371260>,  <27.858898, 29.945419, 30.817135>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.375778, 30.061842, 31.371260> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.277998, 29.713676, 31.200321>,  <27.219330, 29.504778, 31.097759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.277998, 29.713676, 31.200321>,  <27.375778, 30.061842, 31.371260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.277998, 29.713676, 31.200321> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059750, -0.426356, 0.902580,
		-0.967819, 0.246171, 0.052216,
		-0.244452, -0.870414, -0.427345,
		27.204662, 29.452553, 31.072119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.888081, 29.768312, 31.832806>,  <27.375778, 30.061842, 31.371260>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.888081, 29.768312, 31.832806> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.926476, 29.432556, 31.618813>,  <26.949512, 29.231102, 31.490417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.926476, 29.432556, 31.618813>,  <26.888081, 29.768312, 31.832806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.926476, 29.432556, 31.618813> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136524, -0.543487, 0.828241,
		-0.985975, -0.006463, -0.166765,
		0.095988, -0.839393, -0.534982,
		26.955273, 29.180738, 31.458319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.393156, 29.307785, 31.889666>,  <26.888081, 29.768312, 31.832806>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.393156, 29.307785, 31.889666> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.709641, 29.076046, 31.811340>,  <26.899530, 28.937002, 31.764345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.709641, 29.076046, 31.811340>,  <26.393156, 29.307785, 31.889666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.709641, 29.076046, 31.811340> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097277, -0.435346, 0.894992,
		-0.603760, -0.689078, -0.400807,
		0.791209, -0.579350, -0.195812,
		26.947002, 28.902241, 31.752596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.155424, 28.542397, 31.875904>,  <26.393156, 29.307785, 31.889666>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.155424, 28.542397, 31.875904> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.550863, 28.567070, 31.930847>,  <26.788128, 28.581875, 31.963814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.550863, 28.567070, 31.930847>,  <26.155424, 28.542397, 31.875904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.550863, 28.567070, 31.930847> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071021, -0.613371, 0.786596,
		0.132773, -0.787383, -0.601996,
		0.988599, 0.061684, 0.137359,
		26.847443, 28.585575, 31.972055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.412394, 27.892748, 32.072796>,  <26.155424, 28.542397, 31.875904>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.412394, 27.892748, 32.072796> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.730042, 28.110035, 32.181820>,  <26.920630, 28.240406, 32.247234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.730042, 28.110035, 32.181820>,  <26.412394, 27.892748, 32.072796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.730042, 28.110035, 32.181820> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023971, -0.476116, 0.879056,
		0.607289, -0.691541, -0.391114,
		0.794119, 0.543217, 0.272564,
		26.968277, 28.273001, 32.263588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.952803, 27.408211, 32.376915>,  <26.412394, 27.892748, 32.072796>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.952803, 27.408211, 32.376915> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.051506, 27.766705, 32.524357>,  <27.110727, 27.981802, 32.612823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.051506, 27.766705, 32.524357>,  <26.952803, 27.408211, 32.376915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.051506, 27.766705, 32.524357> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121499, -0.405981, 0.905769,
		0.961431, -0.178719, -0.209070,
		0.246757, 0.896236, 0.368609,
		27.125534, 28.035576, 32.634941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.445818, 27.324675, 32.856239>,  <26.952803, 27.408211, 32.376915>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.445818, 27.324675, 32.856239> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.330202, 27.688740, 32.974937>,  <27.260834, 27.907179, 33.046158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.330202, 27.688740, 32.974937>,  <27.445818, 27.324675, 32.856239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.330202, 27.688740, 32.974937> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131568, -0.269270, 0.954035,
		0.948233, 0.314795, -0.041919,
		-0.289039, 0.910164, 0.296748,
		27.243490, 27.961788, 33.063961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.006933, 27.558746, 33.341621>,  <27.445818, 27.324675, 32.856239>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.006933, 27.558746, 33.341621> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.662859, 27.753006, 33.403881>,  <27.456415, 27.869562, 33.441238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.662859, 27.753006, 33.403881>,  <28.006933, 27.558746, 33.341621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.662859, 27.753006, 33.403881> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147708, -0.054879, 0.987507,
		0.488125, 0.872429, -0.024528,
		-0.860184, 0.485650, 0.155653,
		27.404804, 27.898701, 33.450577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.239986, 28.065847, 33.911034>,  <28.006933, 27.558746, 33.341621>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.239986, 28.065847, 33.911034> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.841694, 28.029049, 33.914135>,  <27.602718, 28.006969, 33.915997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.841694, 28.029049, 33.914135>,  <28.239986, 28.065847, 33.911034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.841694, 28.029049, 33.914135> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012447, -0.050517, 0.998646,
		-0.091479, 0.994477, 0.051446,
		-0.995729, -0.091995, 0.007757,
		27.542974, 28.001450, 33.916462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.919827, 28.573963, 34.334240>,  <28.239986, 28.065847, 33.911034>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.919827, 28.573963, 34.334240> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.635834, 28.295956, 34.288849>,  <27.465439, 28.129150, 34.261616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.635834, 28.295956, 34.288849>,  <27.919827, 28.573963, 34.334240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.635834, 28.295956, 34.288849> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196173, 0.040436, 0.979735,
		-0.676346, 0.717854, -0.165053,
		-0.709981, -0.695019, -0.113476,
		27.422840, 28.087450, 34.254807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.379631, 28.766197, 34.791485>,  <27.919827, 28.573963, 34.334240>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.379631, 28.766197, 34.791485> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.337801, 28.374432, 34.722420>,  <27.312702, 28.139372, 34.680981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.337801, 28.374432, 34.722420>,  <27.379631, 28.766197, 34.791485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.337801, 28.374432, 34.722420> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282314, -0.137242, 0.949454,
		-0.953605, 0.148035, -0.262150,
		-0.104574, -0.979413, -0.172667,
		27.306429, 28.080608, 34.670620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.015932, 28.622284, 35.379482>,  <27.379631, 28.766197, 34.791485>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.015932, 28.622284, 35.379482> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.080910, 28.254707, 35.235725>,  <27.119896, 28.034161, 35.149471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.080910, 28.254707, 35.235725>,  <27.015932, 28.622284, 35.379482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.080910, 28.254707, 35.235725> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076147, -0.374815, 0.923967,
		-0.983776, -0.122725, -0.130860,
		0.162442, -0.918941, -0.359389,
		27.129642, 27.979025, 35.127907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.420702, 28.191021, 35.523922>,  <27.015932, 28.622284, 35.379482>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.420702, 28.191021, 35.523922> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.763481, 27.991074, 35.473694>,  <26.969149, 27.871105, 35.443558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.763481, 27.991074, 35.473694>,  <26.420702, 28.191021, 35.523922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.763481, 27.991074, 35.473694> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155079, -0.482429, 0.862098,
		-0.491526, -0.719295, -0.490935,
		0.856944, -0.499877, -0.125579,
		27.020565, 27.841112, 35.436024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.306122, 27.458410, 35.630455>,  <26.420702, 28.191021, 35.523922>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.306122, 27.458410, 35.630455> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.687962, 27.552826, 35.703152>,  <26.917065, 27.609476, 35.746769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.687962, 27.552826, 35.703152>,  <26.306122, 27.458410, 35.630455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.687962, 27.552826, 35.703152> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104320, -0.306568, 0.946115,
		0.279037, -0.922117, -0.268026,
		0.954597, 0.236041, 0.181739,
		26.974340, 27.623638, 35.757675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.464886, 26.970810, 36.177216>,  <26.306122, 27.458410, 35.630455>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.464886, 26.970810, 36.177216> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.769007, 27.229622, 36.200169>,  <26.951479, 27.384909, 36.213940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.769007, 27.229622, 36.200169>,  <26.464886, 26.970810, 36.177216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.769007, 27.229622, 36.200169> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164032, -0.276724, 0.946846,
		0.628518, -0.710475, -0.316527,
		0.760301, 0.647030, 0.057385,
		26.997097, 27.423731, 36.217384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.871069, 26.686541, 36.689865>,  <26.464886, 26.970810, 36.177216>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.871069, 26.686541, 36.689865> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.002964, 27.063454, 36.666618>,  <27.082100, 27.289602, 36.652672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.002964, 27.063454, 36.666618>,  <26.871069, 26.686541, 36.689865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.002964, 27.063454, 36.666618> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302275, -0.047060, 0.952058,
		0.894373, -0.331495, -0.300346,
		0.329736, 0.942282, -0.058113,
		27.101885, 27.346138, 36.649185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.505257, 26.730434, 37.131626>,  <26.871069, 26.686541, 36.689865>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.505257, 26.730434, 37.131626> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.371750, 27.107117, 37.114693>,  <27.291647, 27.333126, 37.104534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.371750, 27.107117, 37.114693>,  <27.505257, 26.730434, 37.131626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.371750, 27.107117, 37.114693> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249363, 0.131508, 0.959439,
		0.909076, 0.309672, -0.278720,
		-0.333766, 0.941705, -0.042330,
		27.271620, 27.389627, 37.101994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.057741, 27.181822, 37.386227>,  <27.505257, 26.730434, 37.131626>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.057741, 27.181822, 37.386227> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.689110, 27.332695, 37.422935>,  <27.467930, 27.423220, 37.444962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.689110, 27.332695, 37.422935>,  <28.057741, 27.181822, 37.386227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.689110, 27.332695, 37.422935> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196250, 0.248724, 0.948484,
		0.334925, 0.892115, -0.303241,
		-0.921581, 0.377183, 0.091774,
		27.412636, 27.445850, 37.450466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.045776, 27.838722, 37.551979>,  <28.057741, 27.181822, 37.386227>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.045776, 27.838722, 37.551979> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.715174, 27.673801, 37.705284>,  <27.516811, 27.574848, 37.797268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.715174, 27.673801, 37.705284>,  <28.045776, 27.838722, 37.551979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.715174, 27.673801, 37.705284> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306762, 0.240982, 0.920774,
		-0.471998, 0.878598, -0.072695,
		-0.826508, -0.412303, 0.383263,
		27.467222, 27.550110, 37.820263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.563662, 27.515427, 37.922516>,  <28.045776, 27.838722, 37.551979>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.563662, 27.515427, 37.922516> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.942295, 27.532455, 38.050369>,  <29.169476, 27.542673, 38.127083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.942295, 27.532455, 38.050369>,  <28.563662, 27.515427, 37.922516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.942295, 27.532455, 38.050369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311892, 0.130783, -0.941073,
		-0.081867, 0.990497, 0.110519,
		0.946584, 0.042573, 0.319635,
		29.226271, 27.545227, 38.146259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.841051, 27.994455, 37.531551>,  <28.563662, 27.515427, 37.922516>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.841051, 27.994455, 37.531551> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.138645, 27.766975, 37.671871>,  <29.317202, 27.630487, 37.756065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.138645, 27.766975, 37.671871>,  <28.841051, 27.994455, 37.531551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.138645, 27.766975, 37.671871> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370328, -0.086055, -0.924906,
		0.556184, 0.818030, 0.146583,
		0.743987, -0.568702, 0.350802,
		29.361841, 27.596365, 37.777111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.412109, 28.292933, 37.268024>,  <28.841051, 27.994455, 37.531551>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.412109, 28.292933, 37.268024> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.500385, 27.908813, 37.336281>,  <29.553352, 27.678341, 37.377235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.500385, 27.908813, 37.336281>,  <29.412109, 28.292933, 37.268024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.500385, 27.908813, 37.336281> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281115, -0.104907, -0.953923,
		0.933954, 0.258494, 0.246802,
		0.220692, -0.960300, 0.170644,
		29.566593, 27.620724, 37.387474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.088425, 28.177580, 37.079651>,  <29.412109, 28.292933, 37.268024>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.088425, 28.177580, 37.079651> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.929951, 27.812126, 37.043186>,  <29.834866, 27.592854, 37.021309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.929951, 27.812126, 37.043186>,  <30.088425, 28.177580, 37.079651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.929951, 27.812126, 37.043186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445656, -0.104544, -0.889079,
		0.802763, -0.392865, 0.448585,
		-0.396185, -0.913634, -0.091159,
		29.811094, 27.538036, 37.015839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.590437, 27.732290, 36.717537>,  <30.088425, 28.177580, 37.079651>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.590437, 27.732290, 36.717537> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.246958, 27.528522, 36.695141>,  <30.040871, 27.406261, 36.681702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.246958, 27.528522, 36.695141>,  <30.590437, 27.732290, 36.717537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.246958, 27.528522, 36.695141> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179111, -0.195945, -0.964119,
		0.480168, -0.837914, 0.259499,
		-0.858696, -0.509418, -0.055993,
		29.989349, 27.375698, 36.678345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.772713, 27.182091, 36.262077>,  <30.590437, 27.732290, 36.717537>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.772713, 27.182091, 36.262077> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.378256, 27.247952, 36.270245>,  <30.141582, 27.287468, 36.275146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.378256, 27.247952, 36.270245>,  <30.772713, 27.182091, 36.262077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.378256, 27.247952, 36.270245> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048346, -0.167452, -0.984694,
		-0.158690, -0.972038, 0.173091,
		-0.986144, 0.164629, 0.020421,
		30.082415, 27.297348, 36.276371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.492855, 26.634647, 35.814125>,  <30.772713, 27.182091, 36.262077>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.492855, 26.634647, 35.814125> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.231466, 26.937202, 35.825787>,  <30.074633, 27.118736, 35.832783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.231466, 26.937202, 35.825787>,  <30.492855, 26.634647, 35.814125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.231466, 26.937202, 35.825787> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026670, 0.015490, -0.999524,
		-0.756480, -0.653939, 0.010050,
		-0.653472, 0.756389, 0.029158,
		30.035425, 27.164120, 35.834534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.942141, 26.482483, 35.231636>,  <30.492855, 26.634647, 35.814125>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.942141, 26.482483, 35.231636> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.877014, 26.866222, 35.323845>,  <29.837938, 27.096466, 35.379169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.877014, 26.866222, 35.323845>,  <29.942141, 26.482483, 35.231636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.877014, 26.866222, 35.323845> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225883, 0.191194, -0.955208,
		-0.960452, -0.207596, 0.185570,
		-0.162818, 0.959348, 0.230525,
		29.828169, 27.154026, 35.393002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.405060, 26.611423, 34.842842>,  <29.942141, 26.482483, 35.231636>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.405060, 26.611423, 34.842842> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.557878, 26.970795, 34.929440>,  <29.649569, 27.186417, 34.981400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.557878, 26.970795, 34.929440>,  <29.405060, 26.611423, 34.842842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.557878, 26.970795, 34.929440> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274348, 0.333968, -0.901775,
		-0.882482, 0.285124, 0.374073,
		0.382046, 0.898426, 0.216497,
		29.672493, 27.240322, 34.994389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.024965, 26.970840, 34.385056>,  <29.405060, 26.611423, 34.842842>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.024965, 26.970840, 34.385056> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.321844, 27.217918, 34.489048>,  <29.499971, 27.366165, 34.551445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.321844, 27.217918, 34.489048>,  <29.024965, 26.970840, 34.385056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.321844, 27.217918, 34.489048> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071592, 0.458789, -0.885656,
		-0.666345, 0.638720, 0.384735,
		0.742199, 0.617696, 0.259985,
		29.544504, 27.403227, 34.567043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.786858, 27.712847, 34.356689>,  <29.024965, 26.970840, 34.385056>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.786858, 27.712847, 34.356689> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.178976, 27.688694, 34.281456>,  <29.414248, 27.674202, 34.236317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.178976, 27.688694, 34.281456>,  <28.786858, 27.712847, 34.356689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.178976, 27.688694, 34.281456> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142685, 0.442033, -0.885577,
		0.136611, 0.894964, 0.424708,
		0.980295, -0.060381, -0.188085,
		29.473064, 27.670580, 34.225029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.914145, 28.358322, 34.210022>,  <28.786858, 27.712847, 34.356689>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.914145, 28.358322, 34.210022> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.213684, 28.146301, 34.050888>,  <29.393408, 28.019089, 33.955406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.213684, 28.146301, 34.050888>,  <28.914145, 28.358322, 34.210022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.213684, 28.146301, 34.050888> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126226, 0.475228, -0.870761,
		0.650611, 0.702284, 0.288967,
		0.748847, -0.530052, -0.397835,
		29.438339, 27.987286, 33.931538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.284094, 28.728910, 33.736301>,  <28.914145, 28.358322, 34.210022>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.284094, 28.728910, 33.736301> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.452942, 28.383400, 33.626247>,  <29.554251, 28.176094, 33.560215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.452942, 28.383400, 33.626247>,  <29.284094, 28.728910, 33.736301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.452942, 28.383400, 33.626247> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006724, 0.300514, -0.953754,
		0.906514, 0.404451, 0.121045,
		0.422123, -0.863777, -0.275139,
		29.579578, 28.124268, 33.543705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.871773, 28.898567, 33.286655>,  <29.284094, 28.728910, 33.736301>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.871773, 28.898567, 33.286655> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.748648, 28.530834, 33.188610>,  <29.674772, 28.310194, 33.129784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.748648, 28.530834, 33.188610>,  <29.871773, 28.898567, 33.286655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.748648, 28.530834, 33.188610> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117449, 0.218941, -0.968644,
		0.944170, -0.326951, 0.040581,
		-0.307814, -0.919330, -0.245117,
		29.656303, 28.255035, 33.115074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.260742, 28.717333, 32.687222>,  <29.871773, 28.898567, 33.286655>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.260742, 28.717333, 32.687222> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.989128, 28.429008, 32.631588>,  <29.826160, 28.256014, 32.598209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.989128, 28.429008, 32.631588>,  <30.260742, 28.717333, 32.687222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.989128, 28.429008, 32.631588> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160815, 0.038798, -0.986222,
		0.716274, -0.692046, 0.089572,
		-0.679036, -0.720810, -0.139082,
		29.785418, 28.212765, 32.589863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.568569, 28.310987, 32.106270>,  <30.260742, 28.717333, 32.687222>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.568569, 28.310987, 32.106270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.179461, 28.225197, 32.141396>,  <29.945995, 28.173723, 32.162472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.179461, 28.225197, 32.141396>,  <30.568569, 28.310987, 32.106270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.179461, 28.225197, 32.141396> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108994, 0.088976, -0.990052,
		0.204531, -0.972668, -0.109930,
		-0.972773, -0.214478, 0.087817,
		29.887629, 28.160854, 32.167740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.511324, 27.743872, 31.606951>,  <30.568569, 28.310987, 32.106270>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.511324, 27.743872, 31.606951> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.174374, 27.952049, 31.662861>,  <29.972202, 28.076956, 31.696407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.174374, 27.952049, 31.662861>,  <30.511324, 27.743872, 31.606951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.174374, 27.952049, 31.662861> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007512, 0.248008, -0.968729,
		-0.538836, -0.817085, -0.205006,
		-0.842377, 0.520446, 0.139773,
		29.921661, 28.108183, 31.704792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.170214, 27.690662, 30.943054>,  <30.511324, 27.743872, 31.606951>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.170214, 27.690662, 30.943054> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.982374, 27.986305, 31.136215>,  <29.869671, 28.163691, 31.252111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.982374, 27.986305, 31.136215>,  <30.170214, 27.690662, 30.943054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.982374, 27.986305, 31.136215> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175790, 0.457734, -0.871538,
		-0.865201, -0.494164, -0.085024,
		-0.469601, 0.739109, 0.482901,
		29.841494, 28.208038, 31.281086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.533730, 27.690813, 30.621466>,  <30.170214, 27.690662, 30.943054>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.533730, 27.690813, 30.621466> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.635378, 28.051392, 30.761646>,  <29.696367, 28.267738, 30.845755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.635378, 28.051392, 30.761646>,  <29.533730, 27.690813, 30.621466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.635378, 28.051392, 30.761646> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154683, 0.395565, -0.905318,
		-0.954723, 0.175850, 0.239960,
		0.254120, 0.901446, 0.350454,
		29.711615, 28.321825, 30.866783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.229910, 28.090168, 30.202629>,  <29.533730, 27.690813, 30.621466>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.229910, 28.090168, 30.202629> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.494074, 28.353615, 30.346897>,  <29.652573, 28.511683, 30.433458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.494074, 28.353615, 30.346897>,  <29.229910, 28.090168, 30.202629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.494074, 28.353615, 30.346897> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022756, 0.497647, -0.867081,
		-0.750560, 0.564422, 0.343639,
		0.660411, 0.658616, 0.360670,
		29.692198, 28.551199, 30.455099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<24.461842, 42.287033, 16.780880> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.822645, 42.456917, 16.811871>,  <25.039127, 42.558846, 16.830465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.822645, 42.456917, 16.811871>,  <24.461842, 42.287033, 16.780880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.822645, 42.456917, 16.811871> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297150, -0.740965, 0.602224,
		0.313175, -0.520190, -0.794559,
		0.902011, 0.424705, 0.077477,
		25.093248, 42.584328, 16.835114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.918890, 41.798519, 16.669939>,  <24.461842, 42.287033, 16.780880>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.918890, 41.798519, 16.669939> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.128019, 42.067787, 16.879124>,  <25.253498, 42.229347, 17.004635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.128019, 42.067787, 16.879124>,  <24.918890, 41.798519, 16.669939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.128019, 42.067787, 16.879124> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448947, -0.738958, 0.502381,
		0.724638, -0.027873, -0.688565,
		0.522824, 0.673174, 0.522964,
		25.284866, 42.269741, 17.036013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.576344, 41.578884, 16.519293>,  <24.918890, 41.798519, 16.669939>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.576344, 41.578884, 16.519293> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.574738, 41.808884, 16.846550>,  <25.573774, 41.946884, 17.042904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.574738, 41.808884, 16.846550>,  <25.576344, 41.578884, 16.519293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.574738, 41.808884, 16.846550> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396359, -0.750222, 0.529213,
		0.918087, 0.326402, -0.224896,
		-0.004015, 0.575003, 0.818142,
		25.573534, 41.981384, 17.091993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.235605, 41.551441, 16.760654>,  <25.576344, 41.578884, 16.519293>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.235605, 41.551441, 16.760654> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.984735, 41.631046, 17.061863>,  <25.834213, 41.678810, 17.242588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.984735, 41.631046, 17.061863>,  <26.235605, 41.551441, 16.760654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.984735, 41.631046, 17.061863> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438076, -0.709253, 0.552312,
		0.644004, 0.676278, 0.357641,
		-0.627175, 0.199017, 0.753023,
		25.796583, 41.690750, 17.287769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.592155, 41.200291, 17.305569>,  <26.235605, 41.551441, 16.760654>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.592155, 41.200291, 17.305569> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.255667, 41.297070, 17.498981>,  <26.053774, 41.355137, 17.615030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.255667, 41.297070, 17.498981>,  <26.592155, 41.200291, 17.305569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.255667, 41.297070, 17.498981> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166643, -0.734745, 0.657556,
		0.514366, 0.633730, 0.577767,
		-0.841224, 0.241944, 0.483534,
		26.003300, 41.369652, 17.644041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.799664, 41.340435, 18.025181>,  <26.592155, 41.200291, 17.305569>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.799664, 41.340435, 18.025181> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.425741, 41.198368, 18.025627>,  <26.201387, 41.113129, 18.025896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.425741, 41.198368, 18.025627>,  <26.799664, 41.340435, 18.025181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.425741, 41.198368, 18.025627> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254567, -0.667830, 0.699428,
		-0.247664, 0.654112, 0.714703,
		-0.934804, -0.355163, 0.001118,
		26.145300, 41.091820, 18.025963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.558353, 41.216091, 18.764090>,  <26.799664, 41.340435, 18.025181>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.558353, 41.216091, 18.764090> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.286377, 41.008816, 18.556568>,  <26.123192, 40.884449, 18.432055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.286377, 41.008816, 18.556568>,  <26.558353, 41.216091, 18.764090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.286377, 41.008816, 18.556568> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123139, -0.616786, 0.777440,
		-0.722854, 0.592498, 0.355568,
		-0.679940, -0.518191, -0.518806,
		26.082396, 40.853359, 18.400927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.875708, 41.215137, 19.130209>,  <26.558353, 41.216091, 18.764090>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.875708, 41.215137, 19.130209> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.906141, 40.894447, 18.893078>,  <25.924402, 40.702034, 18.750799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.906141, 40.894447, 18.893078>,  <25.875708, 41.215137, 19.130209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.906141, 40.894447, 18.893078> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106150, -0.597687, 0.794671,
		-0.991435, 0.002467, -0.130578,
		0.076084, -0.801726, -0.592830,
		25.928967, 40.653931, 18.715229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.411428, 40.799892, 19.444893>,  <25.875708, 41.215137, 19.130209>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.411428, 40.799892, 19.444893> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.634644, 40.568832, 19.206596>,  <25.768574, 40.430195, 19.063618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.634644, 40.568832, 19.206596>,  <25.411428, 40.799892, 19.444893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.634644, 40.568832, 19.206596> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254268, -0.802421, 0.539877,
		-0.789892, -0.149801, -0.594668,
		0.558048, -0.577650, -0.595737,
		25.802055, 40.395538, 19.027874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.122736, 40.250637, 19.402250>,  <25.411428, 40.799892, 19.444893>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.122736, 40.250637, 19.402250> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.458540, 40.095818, 19.249718>,  <25.660023, 40.002926, 19.158199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.458540, 40.095818, 19.249718>,  <25.122736, 40.250637, 19.402250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.458540, 40.095818, 19.249718> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246114, -0.896578, 0.368206,
		-0.484407, -0.215262, -0.847946,
		0.839511, -0.387053, -0.381330,
		25.710394, 39.979702, 19.135319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.748255, 39.658405, 19.272728>,  <25.122736, 40.250637, 19.402250>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.748255, 39.658405, 19.272728> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.146284, 39.636517, 19.305809>,  <25.385101, 39.623383, 19.325657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.146284, 39.636517, 19.305809>,  <24.748255, 39.658405, 19.272728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.146284, 39.636517, 19.305809> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098228, -0.658281, 0.746336,
		0.013603, -0.750781, -0.660411,
		0.995071, -0.054719, 0.082702,
		25.444805, 39.620102, 19.330620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.058941, 38.973774, 19.177893>,  <24.748255, 39.658405, 19.272728>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.058941, 38.973774, 19.177893> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.306904, 39.175640, 19.418236>,  <25.455681, 39.296761, 19.562441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.306904, 39.175640, 19.418236>,  <25.058941, 38.973774, 19.177893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.306904, 39.175640, 19.418236> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258359, -0.591769, 0.763584,
		0.740922, -0.628588, -0.236457,
		0.619908, 0.504665, 0.600856,
		25.492876, 39.327038, 19.598492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.361301, 38.461067, 19.497309>,  <25.058941, 38.973774, 19.177893>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.361301, 38.461067, 19.497309> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.462553, 38.771355, 19.728546>,  <25.523304, 38.957527, 19.867289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.462553, 38.771355, 19.728546>,  <25.361301, 38.461067, 19.497309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.462553, 38.771355, 19.728546> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264549, -0.519275, 0.812630,
		0.930559, -0.358632, 0.073773,
		0.253127, 0.775717, 0.578092,
		25.538490, 39.004070, 19.901974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.645048, 38.232952, 20.144478>,  <25.361301, 38.461067, 19.497309>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.645048, 38.232952, 20.144478> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.578976, 38.600956, 20.286633>,  <25.539333, 38.821758, 20.371925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.578976, 38.600956, 20.286633>,  <25.645048, 38.232952, 20.144478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.578976, 38.600956, 20.286633> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232066, -0.386477, 0.892626,
		0.958573, 0.064970, 0.277340,
		-0.165179, 0.920008, 0.355389,
		25.529423, 38.876957, 20.393250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.972164, 38.233463, 20.751608>,  <25.645048, 38.232952, 20.144478>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.972164, 38.233463, 20.751608> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.706566, 38.532265, 20.764881>,  <25.547207, 38.711544, 20.772844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.706566, 38.532265, 20.764881>,  <25.972164, 38.233463, 20.751608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.706566, 38.532265, 20.764881> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340721, -0.341768, 0.875845,
		0.665597, 0.570251, 0.481451,
		-0.663996, 0.747000, 0.033183,
		25.507368, 38.756363, 20.774836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.910046, 38.386227, 21.485685>,  <25.972164, 38.233463, 20.751608>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.910046, 38.386227, 21.485685> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.591976, 38.549530, 21.306343>,  <25.401134, 38.647511, 21.198738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.591976, 38.549530, 21.306343>,  <25.910046, 38.386227, 21.485685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.591976, 38.549530, 21.306343> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548463, -0.168875, 0.818944,
		0.258624, 0.897110, 0.358199,
		-0.795174, 0.408258, -0.448356,
		25.353424, 38.672009, 21.171837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.689993, 38.797535, 21.972973>,  <25.910046, 38.386227, 21.485685>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.689993, 38.797535, 21.972973> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.378834, 38.749130, 21.726322>,  <25.192139, 38.720085, 21.578333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.378834, 38.749130, 21.726322>,  <25.689993, 38.797535, 21.972973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.378834, 38.749130, 21.726322> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607299, -0.107302, 0.787194,
		-0.161428, 0.986834, 0.009978,
		-0.777900, -0.121016, -0.616625,
		25.145464, 38.712826, 21.541334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.135332, 39.364441, 22.124481>,  <25.689993, 38.797535, 21.972973>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.135332, 39.364441, 22.124481> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.983953, 39.023834, 21.979321>,  <24.893126, 38.819469, 21.892223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.983953, 39.023834, 21.979321>,  <25.135332, 39.364441, 22.124481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.983953, 39.023834, 21.979321> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464963, -0.164125, 0.869985,
		-0.800367, 0.497979, -0.333811,
		-0.378447, -0.851516, -0.362901,
		24.870419, 38.768379, 21.870451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.424669, 39.458752, 22.309118>,  <25.135332, 39.364441, 22.124481>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.424669, 39.458752, 22.309118> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.451435, 39.068008, 22.227856>,  <24.467495, 38.833561, 22.179098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.451435, 39.068008, 22.227856>,  <24.424669, 39.458752, 22.309118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.451435, 39.068008, 22.227856> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482255, -0.209915, 0.850509,
		-0.873472, 0.041061, -0.485141,
		0.066916, -0.976857, -0.203157,
		24.471510, 38.774952, 22.166908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.723885, 39.188717, 22.354111>,  <24.424669, 39.458752, 22.309118>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.723885, 39.188717, 22.354111> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.952539, 38.862637, 22.391384>,  <24.089733, 38.666988, 22.413748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.952539, 38.862637, 22.391384>,  <23.723885, 39.188717, 22.354111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.952539, 38.862637, 22.391384> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576689, -0.318389, 0.752369,
		-0.583660, -0.483820, -0.652118,
		0.571639, -0.815197, 0.093183,
		24.124031, 38.618076, 22.419338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.261381, 38.602646, 22.457632>,  <23.723885, 39.188717, 22.354111>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.261381, 38.602646, 22.457632> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.620049, 38.477753, 22.583168>,  <23.835249, 38.402817, 22.658489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.620049, 38.477753, 22.583168>,  <23.261381, 38.602646, 22.457632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.620049, 38.477753, 22.583168> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439875, -0.548348, 0.711213,
		-0.049971, -0.775773, -0.629031,
		0.896667, -0.312235, 0.313842,
		23.889050, 38.384083, 22.677320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.776714, 38.191391, 22.091597>,  <23.261381, 38.602646, 22.457632>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.776714, 38.191391, 22.091597> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.472618, 38.064762, 22.318512>,  <22.290159, 37.988785, 22.454662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.472618, 38.064762, 22.318512>,  <22.776714, 38.191391, 22.091597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.472618, 38.064762, 22.318512> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636660, 0.189368, -0.747532,
		0.129217, -0.929476, -0.345511,
		-0.760242, -0.316567, 0.567290,
		22.244545, 37.969791, 22.488699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.408297, 37.694466, 21.748171>,  <22.776714, 38.191391, 22.091597>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.408297, 37.694466, 21.748171> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.126223, 37.838303, 21.992599>,  <21.956978, 37.924606, 22.139257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.126223, 37.838303, 21.992599>,  <22.408297, 37.694466, 21.748171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.126223, 37.838303, 21.992599> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436803, 0.458543, -0.773913,
		-0.558496, -0.812669, -0.166286,
		-0.705184, 0.359593, 0.611071,
		21.914667, 37.946182, 22.175920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.813755, 37.440136, 21.500528>,  <22.408297, 37.694466, 21.748171>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.813755, 37.440136, 21.500528> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.686193, 37.749104, 21.720226>,  <21.609657, 37.934483, 21.852045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.686193, 37.749104, 21.720226>,  <21.813755, 37.440136, 21.500528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.686193, 37.749104, 21.720226> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568620, 0.307702, -0.762883,
		-0.758270, -0.555597, 0.341085,
		-0.318903, 0.772419, 0.549245,
		21.590523, 37.980827, 21.885000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.120825, 37.583805, 21.295483>,  <21.813755, 37.440136, 21.500528>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.120825, 37.583805, 21.295483> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.218357, 37.932755, 21.464962>,  <21.276876, 38.142124, 21.566648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.218357, 37.932755, 21.464962>,  <21.120825, 37.583805, 21.295483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.218357, 37.932755, 21.464962> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398611, 0.488422, -0.776243,
		-0.884114, 0.020380, 0.466827,
		0.243828, 0.872369, 0.423697,
		21.291506, 38.194466, 21.592072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.531290, 37.994709, 21.213310>,  <21.120825, 37.583805, 21.295483>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.531290, 37.994709, 21.213310> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.825159, 38.255970, 21.286694>,  <21.001480, 38.412727, 21.330723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.825159, 38.255970, 21.286694>,  <20.531290, 37.994709, 21.213310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.825159, 38.255970, 21.286694> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364325, 0.607947, -0.705455,
		-0.572299, 0.451440, 0.684600,
		0.734671, 0.653148, 0.183456,
		21.045561, 38.451916, 21.341730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.246241, 38.646927, 21.139669>,  <20.531290, 37.994709, 21.213310>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.246241, 38.646927, 21.139669> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.639341, 38.691612, 21.080723>,  <20.875202, 38.718422, 21.045355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.639341, 38.691612, 21.080723>,  <20.246241, 38.646927, 21.139669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.639341, 38.691612, 21.080723> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184262, 0.524203, -0.831420,
		-0.015628, 0.844235, 0.535746,
		0.982753, 0.111711, -0.147368,
		20.934168, 38.725124, 21.036512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.296103, 39.366165, 21.046070>,  <20.246241, 38.646927, 21.139669>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.296103, 39.366165, 21.046070> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.633812, 39.208508, 20.900822>,  <20.836437, 39.113914, 20.813673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.633812, 39.208508, 20.900822>,  <20.296103, 39.366165, 21.046070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.633812, 39.208508, 20.900822> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026926, 0.645518, -0.763270,
		0.535239, 0.654185, 0.534380,
		0.844271, -0.394143, -0.363122,
		20.887093, 39.090263, 20.791885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.705397, 39.949257, 20.981331>,  <20.296103, 39.366165, 21.046070>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.705397, 39.949257, 20.981331> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.884085, 39.660172, 20.770378>,  <20.991297, 39.486721, 20.643806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.884085, 39.660172, 20.770378>,  <20.705397, 39.949257, 20.981331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.884085, 39.660172, 20.770378> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103128, 0.627134, -0.772054,
		0.888710, 0.290505, 0.354686,
		0.446721, -0.722710, -0.527381,
		21.018101, 39.443359, 20.612164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.316956, 40.231628, 20.673475>,  <20.705397, 39.949257, 20.981331>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.316956, 40.231628, 20.673475> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.239042, 39.911594, 20.446522>,  <21.192295, 39.719574, 20.310350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.239042, 39.911594, 20.446522>,  <21.316956, 40.231628, 20.673475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.239042, 39.911594, 20.446522> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050589, 0.569496, -0.820435,
		0.979541, -0.188509, -0.070451,
		-0.194781, -0.800086, -0.567382,
		21.180609, 39.671570, 20.276308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.830042, 40.210411, 20.077557>,  <21.316956, 40.231628, 20.673475>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.830042, 40.210411, 20.077557> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.550285, 39.946682, 19.967182>,  <21.382431, 39.788445, 19.900957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.550285, 39.946682, 19.967182>,  <21.830042, 40.210411, 20.077557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.550285, 39.946682, 19.967182> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059872, 0.330666, -0.941847,
		0.712225, -0.675242, -0.191790,
		-0.699393, -0.659324, -0.275936,
		21.340467, 39.748886, 19.884401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.010454, 39.683819, 19.457014>,  <21.830042, 40.210411, 20.077557>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.010454, 39.683819, 19.457014> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.610655, 39.693417, 19.465260>,  <21.370775, 39.699173, 19.470207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.610655, 39.693417, 19.465260>,  <22.010454, 39.683819, 19.457014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.610655, 39.693417, 19.465260> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015669, 0.190571, -0.981548,
		-0.027476, -0.981380, -0.190100,
		-0.999500, 0.023991, 0.020613,
		21.310804, 39.700615, 19.471443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.795992, 39.211926, 18.972679>,  <22.010454, 39.683819, 19.457014>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.795992, 39.211926, 18.972679> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.479765, 39.452393, 19.019329>,  <21.290030, 39.596672, 19.047319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.479765, 39.452393, 19.019329>,  <21.795992, 39.211926, 18.972679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.479765, 39.452393, 19.019329> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022464, 0.161846, -0.986560,
		-0.611963, -0.782562, -0.114446,
		-0.790568, 0.601167, 0.116623,
		21.242594, 39.632744, 19.054316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.516048, 39.207191, 18.338961>,  <21.795992, 39.211926, 18.972679>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.516048, 39.207191, 18.338961> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.353016, 39.539635, 18.490292>,  <21.255198, 39.739101, 18.581091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.353016, 39.539635, 18.490292>,  <21.516048, 39.207191, 18.338961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.353016, 39.539635, 18.490292> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147829, 0.348786, -0.925470,
		-0.901125, -0.433131, -0.019295,
		-0.407579, 0.831111, 0.378329,
		21.230742, 39.788967, 18.603790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.876345, 39.392132, 17.854704>,  <21.516048, 39.207191, 18.338961>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.876345, 39.392132, 17.854704> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.987623, 39.716061, 18.061314>,  <21.054390, 39.910416, 18.185280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.987623, 39.716061, 18.061314>,  <20.876345, 39.392132, 17.854704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.987623, 39.716061, 18.061314> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105755, 0.560308, -0.821505,
		-0.954684, 0.173916, 0.241519,
		0.278198, 0.809820, 0.516525,
		21.071083, 39.959007, 18.216270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.403173, 39.981949, 17.572702>,  <20.876345, 39.392132, 17.854704>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.403173, 39.981949, 17.572702> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.726858, 40.141407, 17.745335>,  <20.921068, 40.237083, 17.848913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.726858, 40.141407, 17.745335>,  <20.403173, 39.981949, 17.572702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.726858, 40.141407, 17.745335> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233487, 0.455873, -0.858873,
		-0.539130, 0.795778, 0.275819,
		0.809211, 0.398644, 0.431579,
		20.969622, 40.261002, 17.874807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.403820, 40.660336, 17.469379>,  <20.403173, 39.981949, 17.572702>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.403820, 40.660336, 17.469379> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.783617, 40.586441, 17.570839>,  <21.011496, 40.542103, 17.631714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.783617, 40.586441, 17.570839>,  <20.403820, 40.660336, 17.469379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.783617, 40.586441, 17.570839> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308338, 0.699331, -0.644875,
		-0.058252, 0.690513, 0.720970,
		0.949492, -0.184737, 0.253649,
		21.068464, 40.531021, 17.646935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.701502, 41.372772, 17.483389>,  <20.403820, 40.660336, 17.469379>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.701502, 41.372772, 17.483389> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.012474, 41.123657, 17.448215>,  <21.199059, 40.974186, 17.427113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.012474, 41.123657, 17.448215>,  <20.701502, 41.372772, 17.483389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.012474, 41.123657, 17.448215> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358912, 0.554084, -0.751115,
		0.516508, 0.552381, 0.654289,
		0.777433, -0.622789, -0.087932,
		21.245705, 40.936821, 17.421837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.198545, 41.830364, 17.400011>,  <20.701502, 41.372772, 17.483389>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.198545, 41.830364, 17.400011> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.328865, 41.477261, 17.264603>,  <21.407057, 41.265400, 17.183357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.328865, 41.477261, 17.264603>,  <21.198545, 41.830364, 17.400011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.328865, 41.477261, 17.264603> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499656, 0.464735, -0.731003,
		0.802621, 0.069014, 0.592484,
		0.325797, -0.882756, -0.338522,
		21.426603, 41.212433, 17.163046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.920534, 41.920891, 17.263910>,  <21.198545, 41.830364, 17.400011>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.920534, 41.920891, 17.263910> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.814543, 41.597134, 17.054276>,  <21.750948, 41.402878, 16.928493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.814543, 41.597134, 17.054276>,  <21.920534, 41.920891, 17.263910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.814543, 41.597134, 17.054276> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446979, 0.378491, -0.810527,
		0.854398, -0.449028, 0.261491,
		-0.264978, -0.809394, -0.524088,
		21.735050, 41.354317, 16.897049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.461937, 41.655476, 16.937342>,  <21.920534, 41.920891, 17.263910>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.461937, 41.655476, 16.937342> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.169472, 41.514740, 16.703552>,  <21.993994, 41.430298, 16.563278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.169472, 41.514740, 16.703552>,  <22.461937, 41.655476, 16.937342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.169472, 41.514740, 16.703552> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442409, 0.407623, -0.798823,
		0.519305, -0.842645, -0.142380,
		-0.731161, -0.351842, -0.584474,
		21.950123, 41.409187, 16.528210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.357952, 41.089703, 17.316172>,  <22.461937, 41.655476, 16.937342>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.357952, 41.089703, 17.316172> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.595860, 40.843658, 17.109138>,  <22.738604, 40.696033, 16.984919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.595860, 40.843658, 17.109138>,  <22.357952, 41.089703, 17.316172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.595860, 40.843658, 17.109138> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262995, 0.757294, -0.597779,
		0.759661, 0.219419, 0.612185,
		0.594768, -0.615111, -0.517581,
		22.774290, 40.659126, 16.953865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<26.296045, 31.507679, 26.620987> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.684151, 31.571194, 26.694065>,  <26.917013, 31.609303, 26.737913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.684151, 31.571194, 26.694065>,  <26.296045, 31.507679, 26.620987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.684151, 31.571194, 26.694065> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090967, 0.460241, -0.883121,
		-0.224314, 0.873478, 0.432110,
		0.970262, 0.158789, 0.182696,
		26.975229, 31.618830, 26.748875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.355375, 32.176876, 26.566450>,  <26.296045, 31.507679, 26.620987>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.355375, 32.176876, 26.566450> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.731997, 32.047279, 26.529556>,  <26.957970, 31.969521, 26.507420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.731997, 32.047279, 26.529556>,  <26.355375, 32.176876, 26.566450>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.731997, 32.047279, 26.529556> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124900, 0.590048, -0.797648,
		0.312857, 0.739507, 0.596028,
		0.941552, -0.323994, -0.092236,
		27.014462, 31.950081, 26.501886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.783875, 32.734940, 26.705256>,  <26.355375, 32.176876, 26.566450>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.783875, 32.734940, 26.705256> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.023167, 32.484570, 26.505119>,  <27.166742, 32.334347, 26.385038>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.023167, 32.484570, 26.505119>,  <26.783875, 32.734940, 26.705256>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.023167, 32.484570, 26.505119> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132926, 0.693255, -0.708328,
		0.790220, 0.357237, 0.497929,
		0.598233, -0.625923, -0.500338,
		27.202637, 32.296791, 26.355019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.431095, 33.096024, 26.490320>,  <26.783875, 32.734940, 26.705256>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.431095, 33.096024, 26.490320> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.380733, 32.771976, 26.261288>,  <27.350517, 32.577549, 26.123867>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.380733, 32.771976, 26.261288>,  <27.431095, 33.096024, 26.490320>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.380733, 32.771976, 26.261288> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236029, 0.536139, -0.810460,
		0.963555, -0.237186, 0.123711,
		-0.125903, -0.810122, -0.572582,
		27.342962, 32.528938, 26.089514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.046511, 33.104961, 26.025396>,  <27.431095, 33.096024, 26.490320>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.046511, 33.104961, 26.025396> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.771074, 32.863834, 25.864174>,  <27.605812, 32.719158, 25.767441>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.771074, 32.863834, 25.864174>,  <28.046511, 33.104961, 26.025396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.771074, 32.863834, 25.864174> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166963, 0.409095, -0.897087,
		0.705668, -0.685021, -0.181051,
		-0.688590, -0.602816, -0.403058,
		27.564497, 32.682991, 25.743256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.416363, 32.833496, 25.466412>,  <28.046511, 33.104961, 26.025396>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.416363, 32.833496, 25.466412> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.022825, 32.806553, 25.400059>,  <27.786703, 32.790386, 25.360247>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.022825, 32.806553, 25.400059>,  <28.416363, 32.833496, 25.466412>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.022825, 32.806553, 25.400059> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122669, 0.421264, -0.898604,
		0.130412, -0.904433, -0.406194,
		-0.983842, -0.067362, -0.165884,
		27.727673, 32.786343, 25.350294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.336800, 32.680065, 24.793514>,  <28.416363, 32.833496, 25.466412>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.336800, 32.680065, 24.793514> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.964960, 32.811649, 24.860004>,  <27.741856, 32.890598, 24.899899>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.964960, 32.811649, 24.860004>,  <28.336800, 32.680065, 24.793514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.964960, 32.811649, 24.860004> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035772, 0.529394, -0.847621,
		-0.366835, -0.782001, -0.503892,
		-0.929598, 0.328962, 0.166227,
		27.686081, 32.910339, 24.909872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.057686, 32.527431, 24.147152>,  <28.336800, 32.680065, 24.793514>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.057686, 32.527431, 24.147152> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.807037, 32.793808, 24.309074>,  <27.656649, 32.953632, 24.406229>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.807037, 32.793808, 24.309074>,  <28.057686, 32.527431, 24.147152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.807037, 32.793808, 24.309074> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008081, 0.513854, -0.857840,
		-0.779283, -0.540811, -0.316610,
		-0.626620, 0.665941, 0.404808,
		27.619051, 32.993591, 24.430517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.331644, 32.524632, 23.830299>,  <28.057686, 32.527431, 24.147152>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.331644, 32.524632, 23.830299> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.382921, 32.889820, 23.985241>,  <27.413689, 33.108932, 24.078205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.382921, 32.889820, 23.985241>,  <27.331644, 32.524632, 23.830299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.382921, 32.889820, 23.985241> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075430, 0.398420, -0.914096,
		-0.988877, 0.087963, 0.119941,
		0.128194, 0.912975, 0.387353,
		27.421379, 33.163712, 24.101446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.876787, 32.991879, 23.352531>,  <27.331644, 32.524632, 23.830299>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.876787, 32.991879, 23.352531> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.095234, 33.258316, 23.555737>,  <27.226301, 33.418179, 23.677660>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.095234, 33.258316, 23.555737>,  <26.876787, 32.991879, 23.352531>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.095234, 33.258316, 23.555737> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044545, 0.582485, -0.811620,
		-0.836524, 0.465869, 0.288434,
		0.546117, 0.666091, 0.508015,
		27.259069, 33.458145, 23.708141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.588930, 33.547783, 23.192791>,  <26.876787, 32.991879, 23.352531>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.588930, 33.547783, 23.192791> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.956312, 33.651772, 23.312027>,  <27.176741, 33.714165, 23.383568>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.956312, 33.651772, 23.312027>,  <26.588930, 33.547783, 23.192791>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.956312, 33.651772, 23.312027> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058021, 0.656942, -0.751706,
		-0.391251, 0.707702, 0.588286,
		0.918453, 0.259972, 0.298090,
		27.231848, 33.729763, 23.401455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.545214, 34.166817, 23.261271>,  <26.588930, 33.547783, 23.192791>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.545214, 34.166817, 23.261271> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.938721, 34.109241, 23.218410>,  <27.174826, 34.074696, 23.192694>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.938721, 34.109241, 23.218410>,  <26.545214, 34.166817, 23.261271>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.938721, 34.109241, 23.218410> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046733, 0.782028, -0.621489,
		0.173253, 0.606393, 0.776061,
		0.983768, -0.143942, -0.107150,
		27.233850, 34.066059, 23.186266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.960548, 34.854004, 23.205509>,  <26.545214, 34.166817, 23.261271>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.960548, 34.854004, 23.205509> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.171539, 34.578247, 23.006912>,  <27.298134, 34.412792, 22.887754>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.171539, 34.578247, 23.006912>,  <26.960548, 34.854004, 23.205509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.171539, 34.578247, 23.006912> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169258, 0.657964, -0.733781,
		0.832538, 0.303018, 0.463747,
		0.527478, -0.689393, -0.496492,
		27.329782, 34.371429, 22.857965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.675430, 34.993000, 23.208052>,  <26.960548, 34.854004, 23.205509>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.675430, 34.993000, 23.208052> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.608831, 34.809719, 22.858807>,  <27.568872, 34.699749, 22.649260>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.608831, 34.809719, 22.858807>,  <27.675430, 34.993000, 23.208052>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.608831, 34.809719, 22.858807> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257060, 0.834684, -0.487055,
		0.951945, -0.305536, -0.021185,
		-0.166496, -0.458204, -0.873114,
		27.558882, 34.672256, 22.596872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.054350, 35.173317, 23.772429>,  <27.675430, 34.993000, 23.208052>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.054350, 35.173317, 23.772429> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.114962, 35.567898, 23.797562>,  <28.151329, 35.804646, 23.812641>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.114962, 35.567898, 23.797562>,  <28.054350, 35.173317, 23.772429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.114962, 35.567898, 23.797562> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734539, -0.154911, 0.660648,
		0.661432, -0.053953, -0.748062,
		0.151527, 0.986454, 0.062833,
		28.160419, 35.863834, 23.816412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.709299, 35.348354, 23.536400>,  <28.054350, 35.173317, 23.772429>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.709299, 35.348354, 23.536400> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.597046, 35.632687, 23.794380>,  <28.529694, 35.803288, 23.949169>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.597046, 35.632687, 23.794380>,  <28.709299, 35.348354, 23.536400>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.597046, 35.632687, 23.794380> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817947, -0.174469, 0.548200,
		0.502201, 0.681381, -0.532460,
		-0.280635, 0.710831, 0.644953,
		28.512856, 35.845936, 23.987865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.234030, 35.826488, 23.817551>,  <28.709299, 35.348354, 23.536400>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.234030, 35.826488, 23.817551> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.959471, 35.887074, 24.102062>,  <28.794735, 35.923424, 24.272770>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.959471, 35.887074, 24.102062>,  <29.234030, 35.826488, 23.817551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.959471, 35.887074, 24.102062> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727225, 0.143724, 0.671183,
		-0.000571, 0.977959, -0.208797,
		-0.686399, 0.151460, 0.711278,
		28.753551, 35.932510, 24.315445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.430672, 36.382271, 24.285585>,  <29.234030, 35.826488, 23.817551>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.430672, 36.382271, 24.285585> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.164595, 36.196285, 24.519279>,  <29.004948, 36.084694, 24.659496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.164595, 36.196285, 24.519279>,  <29.430672, 36.382271, 24.285585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.164595, 36.196285, 24.519279> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664600, -0.012056, 0.747102,
		-0.340330, 0.885249, 0.317033,
		-0.665193, -0.464962, 0.584233,
		28.965036, 36.056797, 24.694550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.475670, 36.788189, 24.854313>,  <29.430672, 36.382271, 24.285585>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.475670, 36.788189, 24.854313> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.322145, 36.444134, 24.988686>,  <29.230030, 36.237701, 25.069309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.322145, 36.444134, 24.988686>,  <29.475670, 36.788189, 24.854313>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.322145, 36.444134, 24.988686> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599152, 0.044847, 0.799378,
		-0.702642, 0.508084, 0.498141,
		-0.383811, -0.860139, 0.335931,
		29.207003, 36.186092, 25.089464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.430248, 36.824585, 25.627344>,  <29.475670, 36.788189, 24.854313>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.430248, 36.824585, 25.627344> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.405399, 36.431229, 25.559120>,  <29.390490, 36.195217, 25.518187>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.405399, 36.431229, 25.559120>,  <29.430248, 36.824585, 25.627344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.405399, 36.431229, 25.559120> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411364, -0.180927, 0.893334,
		-0.909352, -0.014667, 0.415770,
		-0.062122, -0.983387, -0.170560,
		29.386763, 36.136211, 25.507952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.204344, 36.505844, 26.284124>,  <29.430248, 36.824585, 25.627344>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.204344, 36.505844, 26.284124> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.375509, 36.194923, 26.099651>,  <29.478209, 36.008369, 25.988968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.375509, 36.194923, 26.099651>,  <29.204344, 36.505844, 26.284124>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.375509, 36.194923, 26.099651> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441554, -0.265430, 0.857075,
		-0.788620, -0.570388, 0.229643,
		0.427911, -0.777306, -0.461180,
		29.503883, 35.961731, 25.961298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.835920, 35.875210, 26.497196>,  <29.204344, 36.505844, 26.284124>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.835920, 35.875210, 26.497196> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.204178, 35.765575, 26.385990>,  <29.425133, 35.699795, 26.319265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.204178, 35.765575, 26.385990>,  <28.835920, 35.875210, 26.497196>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.204178, 35.765575, 26.385990> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135253, -0.444096, 0.885712,
		-0.366229, -0.853026, -0.371783,
		0.920643, -0.274089, -0.278015,
		29.480370, 35.683350, 26.302586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.941790, 35.145252, 26.695961>,  <28.835920, 35.875210, 26.497196>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.941790, 35.145252, 26.695961> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.314817, 35.265453, 26.615948>,  <29.538633, 35.337574, 26.567940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.314817, 35.265453, 26.615948>,  <28.941790, 35.145252, 26.695961>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.314817, 35.265453, 26.615948> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336396, -0.522372, 0.783559,
		0.130969, -0.798014, -0.588236,
		0.932569, 0.300503, -0.200034,
		29.594587, 35.355602, 26.555937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.398869, 34.489902, 26.664984>,  <28.941790, 35.145252, 26.695961>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.398869, 34.489902, 26.664984> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.603525, 34.819481, 26.762424>,  <29.726318, 35.017227, 26.820889>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.603525, 34.819481, 26.762424>,  <29.398869, 34.489902, 26.664984>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.603525, 34.819481, 26.762424> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333958, -0.451935, 0.827180,
		0.791641, -0.341867, -0.506392,
		0.511642, 0.823943, 0.243601,
		29.757017, 35.066662, 26.835505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.046675, 34.272358, 27.008512>,  <29.398869, 34.489902, 26.664984>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.046675, 34.272358, 27.008512> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.054384, 34.658146, 27.113911>,  <30.059010, 34.889618, 27.177151>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.054384, 34.658146, 27.113911>,  <30.046675, 34.272358, 27.008512>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.054384, 34.658146, 27.113911> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429197, -0.246009, 0.869063,
		0.903005, 0.096342, -0.418688,
		0.019274, 0.964468, 0.263497,
		30.060167, 34.947487, 27.192959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.628914, 34.302158, 27.399704>,  <30.046675, 34.272358, 27.008512>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.628914, 34.302158, 27.399704> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.449528, 34.648918, 27.486759>,  <30.341896, 34.856976, 27.538992>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.449528, 34.648918, 27.486759>,  <30.628914, 34.302158, 27.399704>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.449528, 34.648918, 27.486759> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287084, -0.090886, 0.953584,
		0.846441, 0.490129, -0.208113,
		-0.448464, 0.866899, 0.217638,
		30.314989, 34.908989, 27.552050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.015594, 34.716759, 27.853094>,  <30.628914, 34.302158, 27.399704>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.015594, 34.716759, 27.853094> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.639843, 34.836521, 27.919933>,  <30.414392, 34.908379, 27.960037>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.639843, 34.836521, 27.919933>,  <31.015594, 34.716759, 27.853094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.639843, 34.836521, 27.919933> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133796, -0.128626, 0.982626,
		0.315695, 0.945417, 0.080770,
		-0.939380, 0.299403, 0.167100,
		30.358028, 34.926342, 27.970064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.156225, 35.130398, 28.447468>,  <31.015594, 34.716759, 27.853094>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.156225, 35.130398, 28.447468> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.769403, 35.029053, 28.437538>,  <30.537312, 34.968246, 28.431580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.769403, 35.029053, 28.437538>,  <31.156225, 35.130398, 28.447468>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.769403, 35.029053, 28.437538> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013126, -0.147004, 0.989049,
		-0.254239, 0.956136, 0.145486,
		-0.967052, -0.253365, -0.024824,
		30.479288, 34.953045, 28.430092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.543455, 35.676212, 28.962414>,  <31.156225, 35.130398, 28.447468>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.543455, 35.676212, 28.962414> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.899351, 35.493626, 28.963097>,  <32.112888, 35.384071, 28.963507>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.899351, 35.493626, 28.963097>,  <31.543455, 35.676212, 28.962414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.899351, 35.493626, 28.963097> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143939, 0.277009, -0.950025,
		0.433184, 0.845519, 0.312169,
		0.889738, -0.456469, 0.001707,
		32.166271, 35.356686, 28.963610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.079987, 36.187057, 28.673822>,  <31.543455, 35.676212, 28.962414>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.079987, 36.187057, 28.673822> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.253304, 35.831329, 28.615349>,  <32.357292, 35.617893, 28.580265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.253304, 35.831329, 28.615349>,  <32.079987, 36.187057, 28.673822>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.253304, 35.831329, 28.615349> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025100, 0.174047, -0.984417,
		0.900904, 0.422872, 0.097735,
		0.433293, -0.889318, -0.146185,
		32.383293, 35.564533, 28.571493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.802986, 36.217869, 28.467066>,  <32.079987, 36.187057, 28.673822>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.802986, 36.217869, 28.467066> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.692070, 35.860798, 28.324947>,  <32.625519, 35.646557, 28.239676>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.692070, 35.860798, 28.324947>,  <32.802986, 36.217869, 28.467066>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.692070, 35.860798, 28.324947> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320748, 0.262575, -0.910041,
		0.905666, -0.366308, 0.213514,
		-0.277292, -0.892677, -0.355298,
		32.608883, 35.592995, 28.218357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.219303, 36.183636, 27.901196>,  <32.802986, 36.217869, 28.467066>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.219303, 36.183636, 27.901196> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.980667, 35.866936, 27.848713>,  <32.837486, 35.676914, 27.817223>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.980667, 35.866936, 27.848713>,  <33.219303, 36.183636, 27.901196>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.980667, 35.866936, 27.848713> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283015, -0.054568, -0.957562,
		0.750991, -0.608401, 0.256632,
		-0.596586, -0.791752, -0.131207,
		32.801693, 35.629410, 27.809351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.642048, 35.633663, 27.732502>,  <33.219303, 36.183636, 27.901196>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.642048, 35.633663, 27.732502> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.271572, 35.567230, 27.597103>,  <33.049286, 35.527370, 27.515863>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.271572, 35.567230, 27.597103>,  <33.642048, 35.633663, 27.732502>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.271572, 35.567230, 27.597103> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360896, -0.130543, -0.923424,
		0.109178, -0.977432, 0.180848,
		-0.926193, -0.166085, -0.338499,
		32.993713, 35.517406, 27.495554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.726467, 35.010109, 27.311392>,  <33.642048, 35.633663, 27.732502>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.726467, 35.010109, 27.311392> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.375343, 35.162369, 27.195072>,  <33.164669, 35.253723, 27.125280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.375343, 35.162369, 27.195072>,  <33.726467, 35.010109, 27.311392>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.375343, 35.162369, 27.195072> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294688, -0.049484, -0.954312,
		-0.377645, -0.923396, -0.068734,
		-0.877806, 0.380646, -0.290801,
		33.112000, 35.276562, 27.107832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.522526, 34.609825, 26.845322>,  <33.726467, 35.010109, 27.311392>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.522526, 34.609825, 26.845322> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.304054, 34.932808, 26.756149>,  <33.172970, 35.126598, 26.702646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.304054, 34.932808, 26.756149>,  <33.522526, 34.609825, 26.845322>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.304054, 34.932808, 26.756149> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182370, -0.145127, -0.972461,
		-0.817577, -0.571792, -0.067991,
		-0.546177, 0.807461, -0.222930,
		33.140202, 35.175045, 26.689270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.107388, 34.409782, 26.275805>,  <33.522526, 34.609825, 26.845322>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.107388, 34.409782, 26.275805> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.160385, 34.804680, 26.240494>,  <33.192184, 35.041618, 26.219307>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.160385, 34.804680, 26.240494>,  <33.107388, 34.409782, 26.275805>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.160385, 34.804680, 26.240494> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358200, -0.130734, -0.924446,
		-0.924196, 0.090862, -0.370953,
		0.132493, 0.987245, -0.088277,
		33.200134, 35.100853, 26.214010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.980457, 34.556164, 25.545845>,  <33.107388, 34.409782, 26.275805>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.980457, 34.556164, 25.545845> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.208672, 34.847622, 25.697403>,  <33.345600, 35.022499, 25.788338>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.208672, 34.847622, 25.697403>,  <32.980457, 34.556164, 25.545845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.208672, 34.847622, 25.697403> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466196, 0.092480, -0.879835,
		-0.676130, 0.678616, -0.286930,
		0.570535, 0.728648, 0.378896,
		33.379833, 35.066216, 25.811071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.915764, 35.071388, 24.989147>,  <32.980457, 34.556164, 25.545845>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.915764, 35.071388, 24.989147> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.234455, 35.171028, 25.209393>,  <33.425671, 35.230812, 25.341539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.234455, 35.171028, 25.209393>,  <32.915764, 35.071388, 24.989147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.234455, 35.171028, 25.209393> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417346, 0.432165, -0.799410,
		-0.437088, 0.866708, 0.240358,
		0.796729, 0.249100, 0.550611,
		33.473473, 35.245758, 25.374577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.033577, 35.812523, 24.789660>,  <32.915764, 35.071388, 24.989147>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.033577, 35.812523, 24.789660> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.369942, 35.648785, 24.931252>,  <33.571762, 35.550541, 25.016207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.369942, 35.648785, 24.931252>,  <33.033577, 35.812523, 24.789660>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.369942, 35.648785, 24.931252> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523163, 0.447563, -0.725250,
		0.138453, 0.795060, 0.590517,
		0.840911, -0.409350, 0.353980,
		33.622215, 35.525978, 25.037445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.499901, 36.307529, 24.762695>,  <33.033577, 35.812523, 24.789660>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.499901, 36.307529, 24.762695> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.702164, 35.962719, 24.776718>,  <33.823521, 35.755833, 24.785131>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.702164, 35.962719, 24.776718>,  <33.499901, 36.307529, 24.762695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.702164, 35.962719, 24.776718> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478337, 0.246306, -0.842928,
		0.717987, 0.443002, 0.536883,
		0.505656, -0.862022, 0.035059,
		33.853859, 35.704113, 24.787235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<31.974453, 35.405388, 32.566078> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.096840, 35.026333, 32.529476>,  <32.170273, 34.798901, 32.507515>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.096840, 35.026333, 32.529476>,  <31.974453, 35.405388, 32.566078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.096840, 35.026333, 32.529476> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350487, 0.201481, -0.914639,
		0.885180, 0.247779, 0.393780,
		0.305968, -0.947634, -0.091504,
		32.188629, 34.742043, 32.502026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.628113, 35.416882, 32.392445>,  <31.974453, 35.405388, 32.566078>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.628113, 35.416882, 32.392445> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.515991, 35.054176, 32.266460>,  <32.448719, 34.836552, 32.190868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.515991, 35.054176, 32.266460>,  <32.628113, 35.416882, 32.392445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.515991, 35.054176, 32.266460> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271582, 0.239798, -0.932062,
		0.920692, -0.346798, 0.179046,
		-0.280303, -0.906768, -0.314965,
		32.431900, 34.782146, 32.171970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.016724, 35.299973, 31.890621>,  <32.628113, 35.416882, 32.392445>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.016724, 35.299973, 31.890621> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.734051, 35.027496, 31.814117>,  <32.564449, 34.864010, 31.768215>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.734051, 35.027496, 31.814117>,  <33.016724, 35.299973, 31.890621>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.734051, 35.027496, 31.814117> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213762, 0.052130, -0.975494,
		0.674472, -0.730244, 0.108775,
		-0.706678, -0.681195, -0.191259,
		32.522049, 34.823139, 31.756741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.370724, 34.813869, 31.388641>,  <33.016724, 35.299973, 31.890621>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.370724, 34.813869, 31.388641> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.973427, 34.778656, 31.358368>,  <32.735050, 34.757526, 31.340204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.973427, 34.778656, 31.358368>,  <33.370724, 34.813869, 31.388641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.973427, 34.778656, 31.358368> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052262, 0.243040, -0.968607,
		0.103666, -0.966013, -0.236796,
		-0.993238, -0.088036, -0.075681,
		32.675457, 34.752243, 31.335663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.237370, 34.360378, 30.811672>,  <33.370724, 34.813869, 31.388641>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.237370, 34.360378, 30.811672> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.910854, 34.583763, 30.870720>,  <32.714943, 34.717793, 30.906149>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.910854, 34.583763, 30.870720>,  <33.237370, 34.360378, 30.811672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.910854, 34.583763, 30.870720> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084398, 0.137502, -0.986899,
		-0.571441, -0.818056, -0.065109,
		-0.816292, 0.558459, 0.147617,
		32.665966, 34.751301, 30.915005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.739208, 34.006016, 30.472807>,  <33.237370, 34.360378, 30.811672>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.739208, 34.006016, 30.472807> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.594776, 34.377075, 30.510944>,  <32.508118, 34.599709, 30.533827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.594776, 34.377075, 30.510944>,  <32.739208, 34.006016, 30.472807>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.594776, 34.377075, 30.510944> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219814, 0.014694, -0.975431,
		-0.906256, -0.373171, 0.198604,
		-0.361084, 0.927647, 0.095345,
		32.486450, 34.655369, 30.539547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.063942, 34.037971, 30.080374>,  <32.739208, 34.006016, 30.472807>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.063942, 34.037971, 30.080374> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.175137, 34.420803, 30.113197>,  <32.241852, 34.650501, 30.132891>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.175137, 34.420803, 30.113197>,  <32.063942, 34.037971, 30.080374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.175137, 34.420803, 30.113197> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082344, 0.108853, -0.990641,
		-0.957050, 0.268624, 0.109069,
		0.277983, 0.957075, 0.082059,
		32.258530, 34.707924, 30.137815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.539970, 34.408875, 29.678062>,  <32.063942, 34.037971, 30.080374>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.539970, 34.408875, 29.678062> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.840223, 34.672237, 29.700142>,  <32.020374, 34.830257, 29.713388>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.840223, 34.672237, 29.700142>,  <31.539970, 34.408875, 29.678062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.840223, 34.672237, 29.700142> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108132, 0.204833, -0.972806,
		-0.651811, 0.724251, 0.224949,
		0.750633, 0.658410, 0.055198,
		32.065414, 34.869759, 29.716702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.386881, 34.959904, 29.168106>,  <31.539970, 34.408875, 29.678062>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.386881, 34.959904, 29.168106> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.779680, 35.003525, 29.229794>,  <32.015362, 35.029697, 29.266806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.779680, 35.003525, 29.229794>,  <31.386881, 34.959904, 29.168106>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.779680, 35.003525, 29.229794> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100748, 0.388234, -0.916037,
		-0.159768, 0.915086, 0.370259,
		0.982000, 0.109050, 0.154220,
		32.074280, 35.036240, 29.276060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.805668, 35.439457, 29.022224>,  <31.386881, 34.959904, 29.168106>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.805668, 35.439457, 29.022224> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.536757, 35.153931, 28.943729>,  <30.375410, 34.982616, 28.896631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.536757, 35.153931, 28.943729>,  <30.805668, 35.439457, 29.022224>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.536757, 35.153931, 28.943729> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052852, -0.218125, 0.974489,
		-0.738410, 0.665498, 0.108914,
		-0.672278, -0.713816, -0.196239,
		30.335073, 34.939785, 28.884857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.307503, 35.394051, 29.599113>,  <30.805668, 35.439457, 29.022224>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.307503, 35.394051, 29.599113> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.285435, 35.042660, 29.409279>,  <30.272194, 34.831825, 29.295378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.285435, 35.042660, 29.409279>,  <30.307503, 35.394051, 29.599113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.285435, 35.042660, 29.409279> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318821, -0.434930, 0.842134,
		-0.946208, 0.197771, -0.256081,
		-0.055172, -0.878478, -0.474588,
		30.268883, 34.779118, 29.266903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.692314, 35.076370, 29.767630>,  <30.307503, 35.394051, 29.599113>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.692314, 35.076370, 29.767630> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.888275, 34.753300, 29.636387>,  <30.005852, 34.559456, 29.557642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.888275, 34.753300, 29.636387>,  <29.692314, 35.076370, 29.767630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.888275, 34.753300, 29.636387> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375558, -0.535182, 0.756661,
		-0.786734, -0.247468, -0.565517,
		0.489904, -0.807675, -0.328107,
		30.035246, 34.510998, 29.537954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.251368, 34.556595, 29.874619>,  <29.692314, 35.076370, 29.767630>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.251368, 34.556595, 29.874619> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.616009, 34.393425, 29.854313>,  <29.834793, 34.295521, 29.842129>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.616009, 34.393425, 29.854313>,  <29.251368, 34.556595, 29.874619>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.616009, 34.393425, 29.854313> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241544, -0.631474, 0.736815,
		-0.332622, -0.659421, -0.674185,
		0.911602, -0.407927, -0.050763,
		29.889490, 34.271046, 29.839085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.101013, 33.888504, 30.043444>,  <29.251368, 34.556595, 29.874619>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.101013, 33.888504, 30.043444> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.499035, 33.888702, 30.083176>,  <29.737848, 33.888821, 30.107014>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.499035, 33.888702, 30.083176>,  <29.101013, 33.888504, 30.043444>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.499035, 33.888702, 30.083176> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076191, -0.637730, 0.766482,
		0.063729, -0.770260, -0.634538,
		0.995055, 0.000501, 0.099329,
		29.797552, 33.888851, 30.112974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.288982, 33.195118, 30.039078>,  <29.101013, 33.888504, 30.043444>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.288982, 33.195118, 30.039078> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.578663, 33.404266, 30.218918>,  <29.752472, 33.529755, 30.326822>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.578663, 33.404266, 30.218918>,  <29.288982, 33.195118, 30.039078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.578663, 33.404266, 30.218918> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012230, -0.642140, 0.766490,
		0.689479, -0.560592, -0.458644,
		0.724202, 0.522870, 0.449598,
		29.795923, 33.561127, 30.353798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.646101, 32.666016, 30.334450>,  <29.288982, 33.195118, 30.039078>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.646101, 32.666016, 30.334450> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.774759, 33.004932, 30.503513>,  <29.851955, 33.208282, 30.604952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.774759, 33.004932, 30.503513>,  <29.646101, 32.666016, 30.334450>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.774759, 33.004932, 30.503513> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046028, -0.431863, 0.900764,
		0.945740, -0.309182, -0.099908,
		0.321647, 0.847290, 0.422661,
		29.871254, 33.259121, 30.630312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.044434, 32.489960, 30.849396>,  <29.646101, 32.666016, 30.334450>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.044434, 32.489960, 30.849396> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.952322, 32.861694, 30.964840>,  <29.897055, 33.084736, 31.034107>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.952322, 32.861694, 30.964840>,  <30.044434, 32.489960, 30.849396>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.952322, 32.861694, 30.964840> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186708, -0.333267, 0.924161,
		0.955045, 0.158929, 0.250260,
		-0.230279, 0.929341, 0.288611,
		29.883238, 33.140495, 31.051424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.487787, 32.738892, 31.417200>,  <30.044434, 32.489960, 30.849396>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.487787, 32.738892, 31.417200> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.139185, 32.933838, 31.438938>,  <29.930023, 33.050808, 31.451981>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.139185, 32.933838, 31.438938>,  <30.487787, 32.738892, 31.417200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.139185, 32.933838, 31.438938> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091281, -0.270104, 0.958494,
		0.481817, 0.830371, 0.279884,
		-0.871504, 0.487368, 0.054343,
		29.877733, 33.080048, 31.455240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.297962, 32.665958, 32.058064>,  <30.487787, 32.738892, 31.417200>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.297962, 32.665958, 32.058064> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.945862, 32.828785, 31.960529>,  <29.734602, 32.926479, 31.902010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.945862, 32.828785, 31.960529>,  <30.297962, 32.665958, 32.058064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.945862, 32.828785, 31.960529> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352208, -0.216169, 0.910615,
		0.317972, 0.887450, 0.333655,
		-0.880252, 0.407066, -0.243831,
		29.681786, 32.950905, 31.887381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.925728, 33.010044, 32.662113>,  <30.297962, 32.665958, 32.058064>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.925728, 33.010044, 32.662113> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.614664, 32.971210, 32.413654>,  <29.428026, 32.947910, 32.264580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.614664, 32.971210, 32.413654>,  <29.925728, 33.010044, 32.662113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.614664, 32.971210, 32.413654> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575820, -0.286579, 0.765705,
		-0.252342, 0.953125, 0.166960,
		-0.777660, -0.097081, -0.621145,
		29.381367, 32.942085, 32.227310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.460014, 33.438335, 32.916508>,  <29.925728, 33.010044, 32.662113>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.460014, 33.438335, 32.916508> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.246618, 33.174000, 32.705349>,  <29.118580, 33.015400, 32.578651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.246618, 33.174000, 32.705349>,  <29.460014, 33.438335, 32.916508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.246618, 33.174000, 32.705349> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592460, -0.153465, 0.790847,
		-0.603638, 0.734669, -0.309649,
		-0.533490, -0.660840, -0.527900,
		29.086571, 32.975746, 32.546978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.967661, 33.332130, 33.331329>,  <29.460014, 33.438335, 32.916508>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.967661, 33.332130, 33.331329> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.911715, 33.024395, 33.081989>,  <28.878147, 32.839756, 32.932384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.911715, 33.024395, 33.081989>,  <28.967661, 33.332130, 33.331329>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.911715, 33.024395, 33.081989> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436687, -0.517078, 0.736162,
		-0.888674, 0.375171, -0.263638,
		-0.139865, -0.769336, -0.623346,
		28.869755, 32.793594, 32.894985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.318939, 33.138332, 33.366524>,  <28.967661, 33.332130, 33.331329>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.318939, 33.138332, 33.366524> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.519703, 32.817867, 33.236156>,  <28.640162, 32.625587, 33.157936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.519703, 32.817867, 33.236156>,  <28.318939, 33.138332, 33.366524>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.519703, 32.817867, 33.236156> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470609, -0.569115, 0.674266,
		-0.725683, -0.185039, -0.662679,
		0.501906, -0.801167, -0.325916,
		28.670275, 32.577518, 33.138382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.394203, 28.631124, 32.680023> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.239311, 28.997940, 32.718166>,  <32.146374, 29.218029, 32.741051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.239311, 28.997940, 32.718166>,  <32.394203, 28.631124, 32.680023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.239311, 28.997940, 32.718166> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052909, 0.081152, -0.995297,
		-0.920463, -0.390456, 0.017095,
		-0.387232, 0.917038, 0.095356,
		32.123142, 29.273052, 32.746773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.754995, 28.599186, 32.317421>,  <32.394203, 28.631124, 32.680023>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.754995, 28.599186, 32.317421> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.870611, 28.981117, 32.345013>,  <31.939980, 29.210276, 32.361568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.870611, 28.981117, 32.345013>,  <31.754995, 28.599186, 32.317421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.870611, 28.981117, 32.345013> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157881, 0.118610, -0.980309,
		-0.944209, 0.272457, 0.185032,
		0.289038, 0.954829, 0.068976,
		31.957323, 29.267567, 32.365707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.410149, 28.916964, 31.784166>,  <31.754995, 28.599186, 32.317421>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.410149, 28.916964, 31.784166> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.682638, 29.196548, 31.871239>,  <31.846132, 29.364300, 31.923483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.682638, 29.196548, 31.871239>,  <31.410149, 28.916964, 31.784166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.682638, 29.196548, 31.871239> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083629, 0.369701, -0.925380,
		-0.727284, 0.612185, 0.310302,
		0.681222, 0.698964, 0.217681,
		31.887005, 29.406239, 31.936543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.122042, 29.617996, 31.418760>,  <31.410149, 28.916964, 31.784166>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.122042, 29.617996, 31.418760> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.518721, 29.607208, 31.469055>,  <31.756727, 29.600735, 31.499231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.518721, 29.607208, 31.469055>,  <31.122042, 29.617996, 31.418760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.518721, 29.607208, 31.469055> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127340, 0.342241, -0.930943,
		-0.017924, 0.939225, 0.342834,
		0.991697, -0.026970, 0.125735,
		31.816229, 29.599117, 31.506775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.428511, 30.311413, 31.250057>,  <31.122042, 29.617996, 31.418760>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.428511, 30.311413, 31.250057> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.740690, 30.063721, 31.215530>,  <31.927998, 29.915106, 31.194815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.740690, 30.063721, 31.215530>,  <31.428511, 30.311413, 31.250057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.740690, 30.063721, 31.215530> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111348, 0.273519, -0.955400,
		0.615222, 0.736031, 0.282418,
		0.780451, -0.619229, -0.086319,
		31.974825, 29.877953, 31.189634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.906628, 30.710674, 30.946941>,  <31.428511, 30.311413, 31.250057>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.906628, 30.710674, 30.946941> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.041420, 30.339008, 30.886150>,  <32.122295, 30.116009, 30.849676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.041420, 30.339008, 30.886150>,  <31.906628, 30.710674, 30.946941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.041420, 30.339008, 30.886150> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246321, 0.242804, -0.938281,
		0.908719, 0.278748, 0.310693,
		0.336981, -0.929164, -0.151979,
		32.142513, 30.060259, 30.840557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.627254, 30.806641, 30.719423>,  <31.906628, 30.710674, 30.946941>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.627254, 30.806641, 30.719423> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.491051, 30.451908, 30.594467>,  <32.409328, 30.239069, 30.519493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.491051, 30.451908, 30.594467>,  <32.627254, 30.806641, 30.719423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.491051, 30.451908, 30.594467> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336070, 0.195502, -0.921323,
		0.878130, -0.418701, 0.231468,
		-0.340507, -0.886831, -0.312389,
		32.388897, 30.185860, 30.500750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.220226, 30.660471, 30.323788>,  <32.627254, 30.806641, 30.719423>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.220226, 30.660471, 30.323788> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.917957, 30.417271, 30.226387>,  <32.736595, 30.271351, 30.167946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.917957, 30.417271, 30.226387>,  <33.220226, 30.660471, 30.323788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.917957, 30.417271, 30.226387> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222849, 0.110916, -0.968523,
		0.615871, -0.786151, 0.051677,
		-0.755673, -0.608001, -0.243503,
		32.691254, 30.234871, 30.153336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.479557, 30.251411, 29.766485>,  <33.220226, 30.660471, 30.323788>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.479557, 30.251411, 29.766485> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.086361, 30.188530, 29.728504>,  <32.850445, 30.150801, 29.705715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.086361, 30.188530, 29.728504>,  <33.479557, 30.251411, 29.766485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.086361, 30.188530, 29.728504> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076540, 0.119303, -0.989903,
		0.166950, -0.980333, -0.105241,
		-0.982990, -0.157209, -0.094952,
		32.791462, 30.141369, 29.700018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.399612, 29.928564, 29.147820>,  <33.479557, 30.251411, 29.766485>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.399612, 29.928564, 29.147820> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.022102, 30.048771, 29.202930>,  <32.795597, 30.120895, 29.235998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.022102, 30.048771, 29.202930>,  <33.399612, 29.928564, 29.147820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.022102, 30.048771, 29.202930> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086789, 0.176921, -0.980391,
		-0.319003, -0.937223, -0.140891,
		-0.943771, 0.300519, 0.137778,
		32.738972, 30.138927, 29.244265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.981209, 29.558975, 28.671564>,  <33.399612, 29.928564, 29.147820>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.981209, 29.558975, 28.671564> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.809559, 29.905880, 28.772526>,  <32.706570, 30.114023, 28.833103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.809559, 29.905880, 28.772526>,  <32.981209, 29.558975, 28.671564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.809559, 29.905880, 28.772526> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041079, 0.260413, -0.964623,
		-0.902312, -0.424309, -0.076123,
		-0.429122, 0.867264, 0.252404,
		32.680820, 30.166059, 28.848248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.529282, 29.645021, 28.193918>,  <32.981209, 29.558975, 28.671564>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.529282, 29.645021, 28.193918> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.532127, 30.021992, 28.327656>,  <32.533836, 30.248173, 28.407898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.532127, 30.021992, 28.327656>,  <32.529282, 29.645021, 28.193918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.532127, 30.021992, 28.327656> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040477, 0.333805, -0.941773,
		-0.999155, 0.020237, -0.035770,
		0.007118, 0.942425, 0.334343,
		32.534264, 30.304720, 28.427959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.932320, 30.050932, 27.827639>,  <32.529282, 29.645021, 28.193918>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.932320, 30.050932, 27.827639> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.199936, 30.331642, 27.925537>,  <32.360504, 30.500069, 27.984276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.199936, 30.331642, 27.925537>,  <31.932320, 30.050932, 27.827639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.199936, 30.331642, 27.925537> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190558, 0.480262, -0.856175,
		-0.718384, 0.526176, 0.455042,
		0.669038, 0.701774, 0.244746,
		32.400646, 30.542175, 27.998960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.599653, 30.744215, 27.529238>,  <31.932320, 30.050932, 27.827639>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.599653, 30.744215, 27.529238> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.983461, 30.820312, 27.612309>,  <32.213745, 30.865971, 27.662151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.983461, 30.820312, 27.612309>,  <31.599653, 30.744215, 27.529238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.983461, 30.820312, 27.612309> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082727, 0.514470, -0.853509,
		-0.269218, 0.836139, 0.477906,
		0.959520, 0.190244, 0.207676,
		32.271317, 30.877386, 27.674612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.296808, 31.329969, 27.462376>,  <31.599653, 30.744215, 27.529238>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.296808, 31.329969, 27.462376> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.001804, 31.138119, 27.272202>,  <30.824802, 31.023008, 27.158096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.001804, 31.138119, 27.272202>,  <31.296808, 31.329969, 27.462376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.001804, 31.138119, 27.272202> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196362, -0.521287, 0.830483,
		-0.646161, 0.705845, 0.290273,
		-0.737508, -0.479628, -0.475436,
		30.780552, 30.994230, 27.129570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.668070, 31.428570, 27.849792>,  <31.296808, 31.329969, 27.462376>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.668070, 31.428570, 27.849792> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.624731, 31.083942, 27.651413>,  <30.598728, 30.877167, 27.532385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.624731, 31.083942, 27.651413>,  <30.668070, 31.428570, 27.849792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.624731, 31.083942, 27.651413> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209544, -0.467883, 0.858590,
		-0.971778, 0.196948, -0.129843,
		-0.108346, -0.861567, -0.495948,
		30.592228, 30.825472, 27.502628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.095228, 31.099157, 28.112587>,  <30.668070, 31.428570, 27.849792>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.095228, 31.099157, 28.112587> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.304127, 30.798561, 27.951332>,  <30.429466, 30.618204, 27.854578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.304127, 30.798561, 27.951332>,  <30.095228, 31.099157, 28.112587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.304127, 30.798561, 27.951332> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398738, -0.633049, 0.663519,
		-0.753834, -0.185774, -0.630256,
		0.522247, -0.751490, -0.403138,
		30.460800, 30.573114, 27.830391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.590611, 30.550388, 28.011278>,  <30.095228, 31.099157, 28.112587>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.590611, 30.550388, 28.011278> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.960720, 30.398857, 28.018867>,  <30.182785, 30.307938, 28.023422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.960720, 30.398857, 28.018867>,  <29.590611, 30.550388, 28.011278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.960720, 30.398857, 28.018867> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302185, -0.705994, 0.640513,
		-0.229248, -0.598383, -0.767713,
		0.925272, -0.378827, 0.018975,
		30.238302, 30.285210, 28.024559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.478750, 29.823772, 27.995535>,  <29.590611, 30.550388, 28.011278>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.478750, 29.823772, 27.995535> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.848585, 29.868206, 28.141300>,  <30.070486, 29.894867, 28.228760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.848585, 29.868206, 28.141300>,  <29.478750, 29.823772, 27.995535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.848585, 29.868206, 28.141300> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212095, -0.644512, 0.734589,
		0.316470, -0.756482, -0.572348,
		0.924588, 0.111083, 0.364414,
		30.125961, 29.901531, 28.250624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.702049, 29.093370, 28.155418>,  <29.478750, 29.823772, 27.995535>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.702049, 29.093370, 28.155418> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.905491, 29.349304, 28.385872>,  <30.027555, 29.502865, 28.524143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.905491, 29.349304, 28.385872>,  <29.702049, 29.093370, 28.155418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.905491, 29.349304, 28.385872> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292620, -0.500861, 0.814562,
		0.809749, -0.582879, -0.067512,
		0.508605, 0.639836, 0.576134,
		30.058073, 29.541254, 28.558712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.090092, 28.678295, 28.641876>,  <29.702049, 29.093370, 28.155418>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.090092, 28.678295, 28.641876> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.063709, 29.030441, 28.829750>,  <30.047880, 29.241730, 28.942474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.063709, 29.030441, 28.829750>,  <30.090092, 28.678295, 28.641876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.063709, 29.030441, 28.829750> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034373, -0.472435, 0.880695,
		0.997230, 0.041943, 0.061421,
		-0.065956, 0.880367, 0.469684,
		30.043922, 29.294552, 28.970655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.570425, 28.552057, 29.144833>,  <30.090092, 28.678295, 28.641876>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.570425, 28.552057, 29.144833> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.333241, 28.851601, 29.263229>,  <30.190929, 29.031326, 29.334267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.333241, 28.851601, 29.263229>,  <30.570425, 28.552057, 29.144833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.333241, 28.851601, 29.263229> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027472, -0.348558, 0.936885,
		0.804763, 0.563667, 0.186108,
		-0.592960, 0.748857, 0.295991,
		30.155352, 29.076258, 29.352026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.939186, 28.915701, 29.722242>,  <30.570425, 28.552057, 29.144833>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.939186, 28.915701, 29.722242> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.543737, 28.973644, 29.738449>,  <30.306469, 29.008411, 29.748173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.543737, 28.973644, 29.738449>,  <30.939186, 28.915701, 29.722242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.543737, 28.973644, 29.738449> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011006, -0.338291, 0.940977,
		0.150017, 0.929825, 0.336036,
		-0.988622, 0.144861, 0.040516,
		30.247150, 29.017103, 29.750605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.792858, 29.249851, 30.381889>,  <30.939186, 28.915701, 29.722242>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.792858, 29.249851, 30.381889> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.423895, 29.119797, 30.298508>,  <30.202517, 29.041763, 30.248478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.423895, 29.119797, 30.298508>,  <30.792858, 29.249851, 30.381889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.423895, 29.119797, 30.298508> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105928, -0.306057, 0.946102,
		-0.371410, 0.894771, 0.247868,
		-0.922406, -0.325136, -0.208454,
		30.147173, 29.022257, 30.235971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.434021, 29.528093, 30.881020>,  <30.792858, 29.249851, 30.381889>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.434021, 29.528093, 30.881020> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.217789, 29.214848, 30.758053>,  <30.088049, 29.026899, 30.684273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.217789, 29.214848, 30.758053>,  <30.434021, 29.528093, 30.881020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.217789, 29.214848, 30.758053> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201838, -0.234017, 0.951051,
		-0.816722, 0.576167, -0.031558,
		-0.540579, -0.783114, -0.307419,
		30.055614, 28.979914, 30.665827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.827108, 29.448193, 31.384474>,  <30.434021, 29.528093, 30.881020>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.827108, 29.448193, 31.384474> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.808584, 29.089863, 31.207676>,  <29.797470, 28.874865, 31.101597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.808584, 29.089863, 31.207676>,  <29.827108, 29.448193, 31.384474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.808584, 29.089863, 31.207676> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181644, -0.427540, 0.885559,
		-0.982273, 0.121295, -0.142922,
		-0.046309, -0.895822, -0.441993,
		29.794691, 28.821115, 31.075077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.138168, 29.218172, 31.630453>,  <29.827108, 29.448193, 31.384474>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.138168, 29.218172, 31.630453> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.350552, 28.894009, 31.531403>,  <29.477982, 28.699511, 31.471972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.350552, 28.894009, 31.531403>,  <29.138168, 29.218172, 31.630453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.350552, 28.894009, 31.531403> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183919, -0.395463, 0.899879,
		-0.827198, -0.432257, -0.359025,
		0.530960, -0.810409, -0.247626,
		29.509840, 28.650887, 31.457115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.701040, 28.557657, 31.775249>,  <29.138168, 29.218172, 31.630453>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.701040, 28.557657, 31.775249> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.086460, 28.451542, 31.761436>,  <29.317713, 28.387873, 31.753149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.086460, 28.451542, 31.761436>,  <28.701040, 28.557657, 31.775249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.086460, 28.451542, 31.761436> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102466, -0.485197, 0.868380,
		-0.247126, -0.833190, -0.494695,
		0.963550, -0.265288, -0.034531,
		29.375525, 28.371956, 31.751078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.067429, 28.329889, 31.413881>,  <28.701040, 28.557657, 31.775249>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.067429, 28.329889, 31.413881> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.685886, 28.417603, 31.495934>,  <27.456961, 28.470230, 31.545166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.685886, 28.417603, 31.495934>,  <28.067429, 28.329889, 31.413881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.685886, 28.417603, 31.495934> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172447, 0.159210, -0.972067,
		-0.245817, -0.962584, -0.114048,
		-0.953853, 0.219283, 0.205132,
		27.399731, 28.483387, 31.557472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.604860, 28.232349, 30.881392>,  <28.067429, 28.329889, 31.413881>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.604860, 28.232349, 30.881392> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.387392, 28.517807, 31.058086>,  <27.256910, 28.689081, 31.164104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.387392, 28.517807, 31.058086>,  <27.604860, 28.232349, 30.881392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.387392, 28.517807, 31.058086> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099545, 0.467776, -0.878223,
		-0.833375, -0.521437, -0.183276,
		-0.543670, 0.713645, 0.441739,
		27.224291, 28.731901, 31.190607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.014570, 28.330532, 30.425610>,  <27.604860, 28.232349, 30.881392>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.014570, 28.330532, 30.425610> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.010199, 28.667789, 30.640640>,  <27.007576, 28.870144, 30.769659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.010199, 28.667789, 30.640640>,  <27.014570, 28.330532, 30.425610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.010199, 28.667789, 30.640640> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313888, 0.507544, -0.802417,
		-0.949397, -0.177509, 0.259106,
		-0.010929, 0.843143, 0.537579,
		27.006920, 28.920732, 30.801914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.266249, 28.665541, 30.477015>,  <27.014570, 28.330532, 30.425610>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.266249, 28.665541, 30.477015> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.560946, 28.934723, 30.503372>,  <26.737764, 29.096231, 30.519186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.560946, 28.934723, 30.503372>,  <26.266249, 28.665541, 30.477015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.560946, 28.934723, 30.503372> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416572, 0.528486, -0.739710,
		-0.532614, 0.517527, 0.669692,
		0.736743, 0.672954, 0.065892,
		26.781969, 29.136610, 30.523140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.984306, 29.423248, 30.326696>,  <26.266249, 28.665541, 30.477015>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.984306, 29.423248, 30.326696> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.379534, 29.436859, 30.266613>,  <26.616671, 29.445026, 30.230562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.379534, 29.436859, 30.266613>,  <25.984306, 29.423248, 30.326696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.379534, 29.436859, 30.266613> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142593, 0.570702, -0.808682,
		0.058207, 0.820452, 0.568745,
		0.988069, 0.034027, -0.150209,
		26.675955, 29.447067, 30.221550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.084599, 30.088026, 30.102880>,  <25.984306, 29.423248, 30.326696>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.084599, 30.088026, 30.102880> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.439047, 29.936661, 29.995850>,  <26.651716, 29.845842, 29.931631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.439047, 29.936661, 29.995850>,  <26.084599, 30.088026, 30.102880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.439047, 29.936661, 29.995850> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056242, 0.485282, -0.872547,
		0.460033, 0.788230, 0.408735,
		0.886119, -0.378412, -0.267578,
		26.704882, 29.823137, 29.915577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.516726, 30.711555, 30.100691>,  <26.084599, 30.088026, 30.102880>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.516726, 30.711555, 30.100691> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.698275, 30.430244, 29.881821>,  <26.807205, 30.261457, 29.750500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.698275, 30.430244, 29.881821>,  <26.516726, 30.711555, 30.100691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.698275, 30.430244, 29.881821> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230421, 0.685813, -0.690339,
		0.860758, 0.187247, 0.473322,
		0.453874, -0.703278, -0.547174,
		26.834436, 30.219261, 29.717669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.065018, 31.085512, 29.816650>,  <26.516726, 30.711555, 30.100691>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.065018, 31.085512, 29.816650> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.044216, 30.750229, 29.599503>,  <27.031736, 30.549059, 29.469213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.044216, 30.750229, 29.599503>,  <27.065018, 31.085512, 29.816650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.044216, 30.750229, 29.599503> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338198, 0.496701, -0.799318,
		0.939637, -0.225164, 0.257650,
		-0.052003, -0.838206, -0.542869,
		27.028616, 30.498768, 29.436642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.685486, 31.101973, 29.427181>,  <27.065018, 31.085512, 29.816650>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.685486, 31.101973, 29.427181> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.426910, 30.852455, 29.251453>,  <27.271765, 30.702745, 29.146017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.426910, 30.852455, 29.251453>,  <27.685486, 31.101973, 29.427181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.426910, 30.852455, 29.251453> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163143, 0.449477, -0.878268,
		0.745322, -0.639416, -0.188791,
		-0.646436, -0.623793, -0.439321,
		27.232979, 30.665318, 29.119658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.988585, 30.760738, 28.771935>,  <27.685486, 31.101973, 29.427181>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.988585, 30.760738, 28.771935> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.591005, 30.748158, 28.729832>,  <27.352457, 30.740610, 28.704571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.591005, 30.748158, 28.729832>,  <27.988585, 30.760738, 28.771935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.591005, 30.748158, 28.729832> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087998, 0.345611, -0.934243,
		0.065760, -0.937851, -0.340752,
		-0.993948, -0.031450, -0.105257,
		27.292822, 30.738722, 28.698256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.899746, 30.467129, 28.194830>,  <27.988585, 30.760738, 28.771935>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.899746, 30.467129, 28.194830> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.540710, 30.637585, 28.239975>,  <27.325289, 30.739859, 28.267063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.540710, 30.637585, 28.239975>,  <27.899746, 30.467129, 28.194830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.540710, 30.637585, 28.239975> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035248, 0.185829, -0.981950,
		-0.439421, -0.885366, -0.151778,
		-0.897590, 0.426139, 0.112865,
		27.271433, 30.765427, 28.273834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.514696, 30.269241, 27.613298>,  <27.899746, 30.467129, 28.194830>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.514696, 30.269241, 27.613298> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.316006, 30.585472, 27.756546>,  <27.196793, 30.775211, 27.842495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.316006, 30.585472, 27.756546>,  <27.514696, 30.269241, 27.613298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.316006, 30.585472, 27.756546> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048962, 0.386443, -0.921013,
		-0.866526, -0.475024, -0.153247,
		-0.496725, 0.790578, 0.358121,
		27.166988, 30.822645, 27.863983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.896233, 30.363876, 27.203783>,  <27.514696, 30.269241, 27.613298>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.896233, 30.363876, 27.203783> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.979137, 30.721962, 27.361584>,  <27.028881, 30.936813, 27.456264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.979137, 30.721962, 27.361584>,  <26.896233, 30.363876, 27.203783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.979137, 30.721962, 27.361584> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125279, 0.424228, -0.896848,
		-0.970230, 0.136461, 0.200079,
		0.207264, 0.895215, 0.394503,
		27.041317, 30.990526, 27.479935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.547365, 30.831329, 26.794151>,  <26.896233, 30.363876, 27.203783>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.547365, 30.831329, 26.794151> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.793999, 31.085999, 26.979397>,  <26.941978, 31.238800, 27.090544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.793999, 31.085999, 26.979397>,  <26.547365, 30.831329, 26.794151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.793999, 31.085999, 26.979397> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015161, 0.597729, -0.801555,
		-0.787144, 0.487204, 0.378202,
		0.616583, 0.636673, 0.463112,
		26.978973, 31.277000, 27.118330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<41.649132, 37.020618, 16.871033> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.928822, 37.299938, 16.932304>,  <42.096634, 37.467529, 16.969067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.928822, 37.299938, 16.932304>,  <41.649132, 37.020618, 16.871033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.928822, 37.299938, 16.932304> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470748, -0.610986, 0.636469,
		0.538036, -0.372925, -0.755939,
		0.699223, 0.698300, 0.153179,
		42.138588, 37.509430, 16.978258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.242344, 36.655346, 16.785942>,  <41.649132, 37.020618, 16.871033>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.242344, 36.655346, 16.785942> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.369549, 36.977226, 16.986469>,  <42.445873, 37.170357, 17.106785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.369549, 36.977226, 16.986469>,  <42.242344, 36.655346, 16.785942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.369549, 36.977226, 16.986469> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444872, -0.593598, 0.670619,
		0.837230, 0.009754, -0.546763,
		0.318016, 0.804703, 0.501318,
		42.464954, 37.218636, 17.136864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.023819, 36.582985, 16.984564>,  <42.242344, 36.655346, 16.785942>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.023819, 36.582985, 16.984564> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.870262, 36.877323, 17.207691>,  <42.778130, 37.053925, 17.341568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.870262, 36.877323, 17.207691>,  <43.023819, 36.582985, 16.984564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.870262, 36.877323, 17.207691> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336884, -0.450852, 0.826585,
		0.859732, 0.505235, -0.074818,
		-0.383888, 0.735846, 0.557817,
		42.755096, 37.098076, 17.375036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.556274, 36.710945, 17.519081>,  <43.023819, 36.582985, 16.984564>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.556274, 36.710945, 17.519081> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.201618, 36.845699, 17.645813>,  <42.988827, 36.926552, 17.721853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.201618, 36.845699, 17.645813>,  <43.556274, 36.710945, 17.519081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.201618, 36.845699, 17.645813> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108408, -0.514603, 0.850548,
		0.449578, 0.788475, 0.419746,
		-0.886638, 0.336884, 0.316831,
		42.935627, 36.946766, 17.740862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.612587, 36.749775, 18.266665>,  <43.556274, 36.710945, 17.519081>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.612587, 36.749775, 18.266665> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.219486, 36.723587, 18.197491>,  <42.983624, 36.707874, 18.155987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.219486, 36.723587, 18.197491>,  <43.612587, 36.749775, 18.266665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.219486, 36.723587, 18.197491> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121844, -0.474195, 0.871948,
		-0.139088, 0.877982, 0.458041,
		-0.982755, -0.065468, -0.172932,
		42.924660, 36.703945, 18.145611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.322289, 36.773140, 18.909243>,  <43.612587, 36.749775, 18.266665>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.322289, 36.773140, 18.909243> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.047981, 36.606022, 18.670856>,  <42.883396, 36.505749, 18.527824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.047981, 36.606022, 18.670856>,  <43.322289, 36.773140, 18.909243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.047981, 36.606022, 18.670856> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306874, -0.576510, 0.757275,
		-0.659966, 0.702197, 0.267139,
		-0.685764, -0.417798, -0.595963,
		42.842251, 36.480682, 18.492067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.690662, 36.628506, 19.321178>,  <43.322289, 36.773140, 18.909243>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.690662, 36.628506, 19.321178> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.639210, 36.393215, 19.001820>,  <42.608337, 36.252041, 18.810204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.639210, 36.393215, 19.001820>,  <42.690662, 36.628506, 19.321178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.639210, 36.393215, 19.001820> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404271, -0.704049, 0.583849,
		-0.905549, 0.397869, -0.147243,
		-0.128629, -0.588230, -0.798398,
		42.600620, 36.216747, 18.762300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.926903, 36.504162, 19.280525>,  <42.690662, 36.628506, 19.321178>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.926903, 36.504162, 19.280525> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.126221, 36.206348, 19.102821>,  <42.245811, 36.027660, 18.996199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.126221, 36.206348, 19.102821>,  <41.926903, 36.504162, 19.280525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.126221, 36.206348, 19.102821> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420587, -0.655655, 0.627075,
		-0.758164, -0.125615, -0.639850,
		0.498291, -0.744538, -0.444262,
		42.275707, 35.982986, 18.969543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.366299, 36.008640, 19.314388>,  <41.926903, 36.504162, 19.280525>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.366299, 36.008640, 19.314388> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.682194, 35.779953, 19.225430>,  <41.871731, 35.642742, 19.172054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.682194, 35.779953, 19.225430>,  <41.366299, 36.008640, 19.314388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.682194, 35.779953, 19.225430> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384828, -0.744040, 0.546179,
		-0.477730, -0.345753, -0.807607,
		0.789735, -0.571716, -0.222395,
		41.919113, 35.608437, 19.158710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.005066, 35.432766, 19.134096>,  <41.366299, 36.008640, 19.314388>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.005066, 35.432766, 19.134096> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.384270, 35.311352, 19.172337>,  <41.611794, 35.238503, 19.195280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.384270, 35.311352, 19.172337>,  <41.005066, 35.432766, 19.134096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.384270, 35.311352, 19.172337> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315634, -0.858478, 0.404217,
		-0.040624, -0.413377, -0.909653,
		0.948011, -0.303538, 0.095601,
		41.668674, 35.220291, 19.201017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.183403, 34.815079, 18.697042>,  <41.005066, 35.432766, 19.134096>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.183403, 34.815079, 18.697042> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.419319, 34.816589, 19.020061>,  <41.560867, 34.817497, 19.213873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.419319, 34.816589, 19.020061>,  <41.183403, 34.815079, 18.697042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.419319, 34.816589, 19.020061> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256741, -0.947229, 0.191940,
		0.765658, -0.320534, -0.557697,
		0.589790, 0.003777, 0.807548,
		41.596256, 34.817722, 19.262325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.337254, 34.093922, 18.769594>,  <41.183403, 34.815079, 18.697042>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.337254, 34.093922, 18.769594> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.422688, 34.266541, 19.120171>,  <41.473946, 34.370113, 19.330517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.422688, 34.266541, 19.120171>,  <41.337254, 34.093922, 18.769594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.422688, 34.266541, 19.120171> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380518, -0.789542, 0.481488,
		0.899772, -0.436339, -0.004421,
		0.213582, 0.431547, 0.876442,
		41.486763, 34.396004, 19.383102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.502430, 33.500965, 19.215555>,  <41.337254, 34.093922, 18.769594>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.502430, 33.500965, 19.215555> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.460735, 33.791061, 19.487778>,  <41.435719, 33.965118, 19.651112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.460735, 33.791061, 19.487778>,  <41.502430, 33.500965, 19.215555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.460735, 33.791061, 19.487778> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384689, -0.660421, 0.644871,
		0.917142, -0.194585, 0.347832,
		-0.104234, 0.725245, 0.680555,
		41.429466, 34.008636, 19.691944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.678154, 33.237366, 19.895397>,  <41.502430, 33.500965, 19.215555>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.678154, 33.237366, 19.895397> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.443493, 33.553452, 19.966282>,  <41.302696, 33.743103, 20.008812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.443493, 33.553452, 19.966282>,  <41.678154, 33.237366, 19.895397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.443493, 33.553452, 19.966282> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392976, -0.469109, 0.790890,
		0.708100, 0.394340, 0.585739,
		-0.586655, 0.790211, 0.177210,
		41.267498, 33.790516, 20.019445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.568695, 33.317204, 20.604218>,  <41.678154, 33.237366, 19.895397>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.568695, 33.317204, 20.604218> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.256069, 33.533379, 20.479584>,  <41.068493, 33.663082, 20.404802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.256069, 33.533379, 20.479584>,  <41.568695, 33.317204, 20.604218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.256069, 33.533379, 20.479584> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574463, -0.428780, 0.697237,
		0.243212, 0.723930, 0.645580,
		-0.781563, 0.540439, -0.311587,
		41.021599, 33.695511, 20.386108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.273823, 33.343002, 21.157290>,  <41.568695, 33.317204, 20.604218>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.273823, 33.343002, 21.157290> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.966881, 33.483505, 20.942707>,  <40.782715, 33.567806, 20.813957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.966881, 33.483505, 20.942707>,  <41.273823, 33.343002, 21.157290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.966881, 33.483505, 20.942707> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638821, -0.346458, 0.686931,
		0.055429, 0.869820, 0.490246,
		-0.767356, 0.351256, -0.536456,
		40.736675, 33.588882, 20.781771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.817074, 33.710835, 21.626209>,  <41.273823, 33.343002, 21.157290>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.817074, 33.710835, 21.626209> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.612392, 33.588352, 21.305111>,  <40.489582, 33.514862, 21.112452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.612392, 33.588352, 21.305111>,  <40.817074, 33.710835, 21.626209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.612392, 33.588352, 21.305111> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616143, -0.520375, 0.591250,
		-0.598770, 0.797151, 0.077614,
		-0.511704, -0.306202, -0.802745,
		40.458881, 33.496490, 21.064287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.146713, 33.787243, 21.797401>,  <40.817074, 33.710835, 21.626209>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.146713, 33.787243, 21.797401> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.139317, 33.515678, 21.503807>,  <40.134880, 33.352737, 21.327650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.139317, 33.515678, 21.503807>,  <40.146713, 33.787243, 21.797401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.139317, 33.515678, 21.503807> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551997, -0.605157, 0.573659,
		-0.833641, 0.415764, -0.363570,
		-0.018490, -0.678916, -0.733984,
		40.133770, 33.312004, 21.283611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.430904, 33.471783, 21.838755>,  <40.146713, 33.787243, 21.797401>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.430904, 33.471783, 21.838755> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.653763, 33.220863, 21.621101>,  <39.787479, 33.070312, 21.490509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.653763, 33.220863, 21.621101>,  <39.430904, 33.471783, 21.838755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.653763, 33.220863, 21.621101> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354244, -0.772182, 0.527490,
		-0.751062, -0.101137, -0.652439,
		0.557150, -0.627301, -0.544130,
		39.820908, 33.032673, 21.457861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.018841, 32.908218, 21.765051>,  <39.430904, 33.471783, 21.838755>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.018841, 32.908218, 21.765051> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.395710, 32.782661, 21.718098>,  <39.621830, 32.707325, 21.689926>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.395710, 32.782661, 21.718098>,  <39.018841, 32.908218, 21.765051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.395710, 32.782661, 21.718098> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148885, -0.705862, 0.692526,
		-0.300235, -0.635004, -0.711779,
		0.942174, -0.313894, -0.117382,
		39.678364, 32.688492, 21.682882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.542728, 33.152126, 21.172277>,  <39.018841, 32.908218, 21.765051>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.542728, 33.152126, 21.172277> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.770992, 33.410046, 20.968876>,  <38.907951, 33.564796, 20.846834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.770992, 33.410046, 20.968876>,  <38.542728, 33.152126, 21.172277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.770992, 33.410046, 20.968876> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817980, 0.501004, -0.282673,
		0.072495, 0.577257, 0.813338,
		0.570660, 0.644802, -0.508505,
		38.942192, 33.603485, 20.816324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.886749, 33.422733, 21.034592>,  <38.542728, 33.152126, 21.172277>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.886749, 33.422733, 21.034592> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.507969, 33.446789, 20.908314>,  <37.280701, 33.461224, 20.832546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.507969, 33.446789, 20.908314>,  <37.886749, 33.422733, 21.034592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.507969, 33.446789, 20.908314> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317973, 0.317848, -0.893233,
		0.046627, -0.946232, -0.320109,
		-0.946953, 0.060138, -0.315697,
		37.223885, 33.464828, 20.813604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.795845, 33.011326, 20.398123>,  <37.886749, 33.422733, 21.034592>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.795845, 33.011326, 20.398123> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.522640, 33.302414, 20.423161>,  <37.358719, 33.477066, 20.438183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.522640, 33.302414, 20.423161>,  <37.795845, 33.011326, 20.398123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.522640, 33.302414, 20.423161> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305012, 0.362036, -0.880850,
		-0.663678, -0.582535, -0.469238,
		-0.683007, 0.727724, 0.062595,
		37.317738, 33.520733, 20.441938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.463417, 33.042381, 19.758781>,  <37.795845, 33.011326, 20.398123>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.463417, 33.042381, 19.758781> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.389580, 33.403919, 19.913181>,  <37.345276, 33.620842, 20.005821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.389580, 33.403919, 19.913181>,  <37.463417, 33.042381, 19.758781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.389580, 33.403919, 19.913181> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282068, 0.424949, -0.860149,
		-0.941469, -0.049899, -0.333388,
		-0.184593, 0.903841, 0.386001,
		37.334202, 33.675072, 20.028982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.380466, 33.507233, 19.223160>,  <37.463417, 33.042381, 19.758781>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.380466, 33.507233, 19.223160> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.422329, 33.800083, 19.492393>,  <37.447445, 33.975792, 19.653934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.422329, 33.800083, 19.492393>,  <37.380466, 33.507233, 19.223160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.422329, 33.800083, 19.492393> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397285, 0.589676, -0.703169,
		-0.911709, 0.340994, -0.229151,
		0.104652, 0.732124, 0.673084,
		37.453724, 34.019722, 19.694319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.989388, 34.183914, 19.035442>,  <37.380466, 33.507233, 19.223160>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.989388, 34.183914, 19.035442> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.271404, 34.316612, 19.286156>,  <37.440617, 34.396233, 19.436583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.271404, 34.316612, 19.286156>,  <36.989388, 34.183914, 19.035442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.271404, 34.316612, 19.286156> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152374, 0.792323, -0.590768,
		-0.692599, 0.512023, 0.508074,
		0.705045, 0.331749, 0.626781,
		37.482918, 34.416138, 19.474190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.994011, 34.871300, 18.933216>,  <36.989388, 34.183914, 19.035442>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.994011, 34.871300, 18.933216> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.309803, 34.898788, 19.177185>,  <37.499279, 34.915283, 19.323566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.309803, 34.898788, 19.177185>,  <36.994011, 34.871300, 18.933216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.309803, 34.898788, 19.177185> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376319, 0.730829, -0.569450,
		-0.484881, 0.679093, 0.551111,
		0.789477, 0.068722, 0.609921,
		37.546646, 34.919407, 19.360161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.117622, 35.605564, 18.935997>,  <36.994011, 34.871300, 18.933216>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.117622, 35.605564, 18.935997> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.448986, 35.404453, 19.034756>,  <37.647804, 35.283787, 19.094011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.448986, 35.404453, 19.034756>,  <37.117622, 35.605564, 18.935997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.448986, 35.404453, 19.034756> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514398, 0.508439, -0.690568,
		0.221671, 0.699073, 0.679823,
		0.828406, -0.502778, 0.246896,
		37.697506, 35.253620, 19.108824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.683304, 36.114563, 19.243664>,  <37.117622, 35.605564, 18.935997>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.683304, 36.114563, 19.243664> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.873844, 35.794388, 19.098122>,  <37.988171, 35.602283, 19.010796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.873844, 35.794388, 19.098122>,  <37.683304, 36.114563, 19.243664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.873844, 35.794388, 19.098122> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451918, 0.577868, -0.679587,
		0.754226, 0.159290, 0.637000,
		0.476354, -0.800434, -0.363858,
		38.016750, 35.554256, 18.988964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.396915, 36.428974, 19.044720>,  <37.683304, 36.114563, 19.243664>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.396915, 36.428974, 19.044720> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.408062, 36.072849, 18.862919>,  <38.414749, 35.859177, 18.753838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.408062, 36.072849, 18.862919>,  <38.396915, 36.428974, 19.044720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.408062, 36.072849, 18.862919> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543047, 0.395217, -0.740880,
		0.839239, -0.226167, 0.494495,
		0.027870, -0.890310, -0.454501,
		38.416424, 35.805756, 18.726568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.076885, 36.231110, 18.986717>,  <38.396915, 36.428974, 19.044720>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.076885, 36.231110, 18.986717> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.862305, 36.041111, 18.707691>,  <38.733555, 35.927113, 18.540276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.862305, 36.041111, 18.707691>,  <39.076885, 36.231110, 18.986717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.862305, 36.041111, 18.707691> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670466, 0.262116, -0.694097,
		0.512534, -0.840046, 0.177853,
		-0.536455, -0.474993, -0.697566,
		38.701366, 35.898613, 18.498421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.601532, 35.970963, 18.622581>,  <39.076885, 36.231110, 18.986717>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.601532, 35.970963, 18.622581> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.290985, 35.973080, 18.370480>,  <39.104656, 35.974350, 18.219217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.290985, 35.973080, 18.370480>,  <39.601532, 35.970963, 18.622581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.290985, 35.973080, 18.370480> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630278, 0.008691, -0.776321,
		0.001346, -0.999948, -0.010101,
		-0.776369, 0.005322, -0.630256,
		39.058075, 35.974667, 18.181402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.760262, 35.390247, 18.070496>,  <39.601532, 35.970963, 18.622581>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.760262, 35.390247, 18.070496> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.503159, 35.666660, 17.938225>,  <39.348896, 35.832508, 17.858862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.503159, 35.666660, 17.938225>,  <39.760262, 35.390247, 18.070496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.503159, 35.666660, 17.938225> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536740, 0.098230, -0.838010,
		-0.546606, -0.716122, -0.434040,
		-0.642754, 0.691028, -0.330678,
		39.310333, 35.873970, 17.839022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.876862, 35.423489, 17.349466>,  <39.760262, 35.390247, 18.070496>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.876862, 35.423489, 17.349466> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.680260, 35.769539, 17.389439>,  <39.562298, 35.977169, 17.413422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.680260, 35.769539, 17.389439>,  <39.876862, 35.423489, 17.349466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.680260, 35.769539, 17.389439> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434541, 0.343065, -0.832755,
		-0.754719, -0.365876, -0.544549,
		-0.491501, 0.865125, 0.099930,
		39.532810, 36.029076, 17.419418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.805511, 35.589043, 16.711239>,  <39.876862, 35.423489, 17.349466>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.805511, 35.589043, 16.711239> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.697052, 35.935135, 16.879929>,  <39.631977, 36.142792, 16.981142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.697052, 35.935135, 16.879929>,  <39.805511, 35.589043, 16.711239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.697052, 35.935135, 16.879929> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503974, 0.500897, -0.703642,
		-0.820055, 0.021750, -0.571871,
		-0.271144, 0.865233, 0.421725,
		39.615707, 36.194706, 17.006447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.489006, 36.071716, 16.091209>,  <39.805511, 35.589043, 16.711239>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.489006, 36.071716, 16.091209> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.634735, 36.286118, 16.395832>,  <39.722172, 36.414757, 16.578606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.634735, 36.286118, 16.395832>,  <39.489006, 36.071716, 16.091209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.634735, 36.286118, 16.395832> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604801, 0.485659, -0.631151,
		-0.708154, 0.690536, -0.147234,
		0.364327, 0.535999, 0.761558,
		39.744034, 36.446918, 16.624300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.359718, 36.941669, 15.907701>,  <39.489006, 36.071716, 16.091209>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.359718, 36.941669, 15.907701> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.627163, 36.885941, 16.199879>,  <39.787632, 36.852505, 16.375185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.627163, 36.885941, 16.199879>,  <39.359718, 36.941669, 15.907701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.627163, 36.885941, 16.199879> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616466, 0.653173, -0.439699,
		-0.415844, 0.744281, 0.522608,
		0.668613, -0.139323, 0.730442,
		39.827747, 36.844143, 16.419012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.514187, 37.582020, 15.999261>,  <39.359718, 36.941669, 15.907701>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.514187, 37.582020, 15.999261> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.819038, 37.384701, 16.166985>,  <40.001949, 37.266308, 16.267618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.819038, 37.384701, 16.166985>,  <39.514187, 37.582020, 15.999261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.819038, 37.384701, 16.166985> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633317, 0.702524, -0.324606,
		-0.134447, 0.512946, 0.847827,
		0.762124, -0.493301, 0.419310,
		40.047676, 37.236710, 16.292778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.868561, 38.084415, 16.246243>,  <39.514187, 37.582020, 15.999261>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.868561, 38.084415, 16.246243> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.132874, 37.784943, 16.267590>,  <40.291462, 37.605259, 16.280397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.132874, 37.784943, 16.267590>,  <39.868561, 38.084415, 16.246243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.132874, 37.784943, 16.267590> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734380, 0.630184, -0.252100,
		0.155110, 0.205775, 0.966228,
		0.660777, -0.748682, 0.053369,
		40.331108, 37.560337, 16.283600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.403400, 38.247353, 16.656633>,  <39.868561, 38.084415, 16.246243>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.403400, 38.247353, 16.656633> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.576321, 37.978416, 16.416279>,  <40.680073, 37.817055, 16.272066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.576321, 37.978416, 16.416279>,  <40.403400, 38.247353, 16.656633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.576321, 37.978416, 16.416279> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758494, 0.631504, -0.160906,
		0.487647, -0.386209, 0.782971,
		0.432305, -0.672344, -0.600888,
		40.706013, 37.776714, 16.236013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.098759, 38.264317, 16.751314>,  <40.403400, 38.247353, 16.656633>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.098759, 38.264317, 16.751314> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.068851, 38.090069, 16.392506>,  <41.050907, 37.985519, 16.177221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.068851, 38.090069, 16.392506>,  <41.098759, 38.264317, 16.751314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.068851, 38.090069, 16.392506> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814532, 0.492263, -0.306946,
		0.575281, -0.753601, 0.318021,
		-0.074765, -0.435619, -0.897021,
		41.046421, 37.959385, 16.123400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.850220, 37.970993, 16.511139>,  <41.098759, 38.264317, 16.751314>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.850220, 37.970993, 16.511139> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.604267, 38.082222, 16.215954>,  <41.456696, 38.148960, 16.038843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.604267, 38.082222, 16.215954>,  <41.850220, 37.970993, 16.511139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.604267, 38.082222, 16.215954> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728935, 0.557511, -0.397284,
		0.300949, -0.782212, -0.545503,
		-0.614885, 0.278074, -0.737965,
		41.419804, 38.165646, 15.994564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<27.875446, 32.531223, 33.337521> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.229044, 32.344429, 33.346245>,  <28.441202, 32.232353, 33.351479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.229044, 32.344429, 33.346245>,  <27.875446, 32.531223, 33.337521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.229044, 32.344429, 33.346245> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290326, -0.511814, 0.808553,
		-0.366416, -0.721092, -0.588019,
		0.883997, -0.466984, 0.021815,
		28.494244, 32.204334, 33.352791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.757078, 31.872667, 33.471695>,  <27.875446, 32.531223, 33.337521>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.757078, 31.872667, 33.471695> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.146477, 31.877670, 33.563034>,  <28.380116, 31.880672, 33.617840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.146477, 31.877670, 33.563034>,  <27.757078, 31.872667, 33.471695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.146477, 31.877670, 33.563034> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182810, -0.557383, 0.809879,
		0.137408, -0.830161, -0.540326,
		0.973499, 0.012507, 0.228350,
		28.438526, 31.881422, 33.631538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.882490, 31.149107, 33.712036>,  <27.757078, 31.872667, 33.471695>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.882490, 31.149107, 33.712036> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.185732, 31.372841, 33.846153>,  <28.367676, 31.507082, 33.926624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.185732, 31.372841, 33.846153>,  <27.882490, 31.149107, 33.712036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.185732, 31.372841, 33.846153> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036117, -0.477352, 0.877970,
		0.651134, -0.677701, -0.341681,
		0.758103, 0.559335, 0.335297,
		28.413162, 31.540642, 33.946743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.303631, 30.659037, 33.998306>,  <27.882490, 31.149107, 33.712036>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.303631, 30.659037, 33.998306> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.400471, 31.008919, 34.166248>,  <28.458574, 31.218847, 34.267014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.400471, 31.008919, 34.166248>,  <28.303631, 30.659037, 33.998306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.400471, 31.008919, 34.166248> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167112, -0.388667, 0.906097,
		0.955751, -0.289529, 0.052077,
		0.242101, 0.874706, 0.419853,
		28.473101, 31.271330, 34.292206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.664566, 30.520218, 34.614002>,  <28.303631, 30.659037, 33.998306>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.664566, 30.520218, 34.614002> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.543930, 30.898804, 34.660042>,  <28.471548, 31.125956, 34.687668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.543930, 30.898804, 34.660042>,  <28.664566, 30.520218, 34.614002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.543930, 30.898804, 34.660042> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061198, -0.139692, 0.988302,
		0.951472, 0.291017, 0.100051,
		-0.301589, 0.946465, 0.115103,
		28.453453, 31.182743, 34.694572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.077675, 30.783680, 35.073708>,  <28.664566, 30.520218, 34.614002>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.077675, 30.783680, 35.073708> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.749159, 31.009422, 35.107140>,  <28.552050, 31.144869, 35.127197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.749159, 31.009422, 35.107140>,  <29.077675, 30.783680, 35.073708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.749159, 31.009422, 35.107140> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103290, -0.291167, 0.951080,
		0.561084, 0.772479, 0.297425,
		-0.821289, 0.564357, 0.083579,
		28.502771, 31.178730, 35.132214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.168367, 31.136900, 35.762665>,  <29.077675, 30.783680, 35.073708>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.168367, 31.136900, 35.762665> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.786549, 31.114613, 35.645542>,  <28.557457, 31.101240, 35.575268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.786549, 31.114613, 35.645542>,  <29.168367, 31.136900, 35.762665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.786549, 31.114613, 35.645542> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255437, -0.353336, 0.899948,
		-0.153605, 0.933836, 0.323042,
		-0.954545, -0.055720, -0.292811,
		28.500185, 31.097897, 35.557697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.848660, 31.445044, 36.327805>,  <29.168367, 31.136900, 35.762665>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.848660, 31.445044, 36.327805> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.566267, 31.227123, 36.146793>,  <28.396832, 31.096371, 36.038185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.566267, 31.227123, 36.146793>,  <28.848660, 31.445044, 36.327805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.566267, 31.227123, 36.146793> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264908, -0.389446, 0.882131,
		-0.656821, 0.742647, 0.130620,
		-0.705982, -0.544800, -0.452530,
		28.354473, 31.063683, 36.011036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.229971, 31.649899, 36.602692>,  <28.848660, 31.445044, 36.327805>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.229971, 31.649899, 36.602692> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.134581, 31.287548, 36.462677>,  <28.077347, 31.070139, 36.378670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.134581, 31.287548, 36.462677>,  <28.229971, 31.649899, 36.602692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.134581, 31.287548, 36.462677> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292475, -0.276705, 0.915365,
		-0.926060, 0.320667, -0.198958,
		-0.238474, -0.905874, -0.350032,
		28.063038, 31.015785, 36.357666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.570072, 31.542482, 36.865036>,  <28.229971, 31.649899, 36.602692>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.570072, 31.542482, 36.865036> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.688816, 31.172565, 36.769848>,  <27.760063, 30.950615, 36.712734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.688816, 31.172565, 36.769848>,  <27.570072, 31.542482, 36.865036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.688816, 31.172565, 36.769848> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255085, -0.316943, 0.913498,
		-0.920220, -0.210481, -0.329990,
		0.296862, -0.924794, -0.237966,
		27.777874, 30.895126, 36.698460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.968012, 31.057272, 36.932594>,  <27.570072, 31.542482, 36.865036>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.968012, 31.057272, 36.932594> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.298246, 30.832977, 36.957829>,  <27.496387, 30.698400, 36.972969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.298246, 30.832977, 36.957829>,  <26.968012, 31.057272, 36.932594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.298246, 30.832977, 36.957829> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271196, -0.296261, 0.915796,
		-0.494833, -0.773177, -0.396659,
		0.825587, -0.560738, 0.063083,
		27.545923, 30.664757, 36.976753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.787825, 30.465197, 37.370087>,  <26.968012, 31.057272, 36.932594>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.787825, 30.465197, 37.370087> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.175270, 30.371445, 37.336983>,  <27.407738, 30.315193, 37.317120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.175270, 30.371445, 37.336983>,  <26.787825, 30.465197, 37.370087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.175270, 30.371445, 37.336983> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074304, -0.590769, 0.803412,
		-0.237196, -0.772048, -0.589644,
		0.968616, -0.234380, -0.082762,
		27.465855, 30.301130, 37.312153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.826473, 29.826967, 37.596058>,  <26.787825, 30.465197, 37.370087>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.826473, 29.826967, 37.596058> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.215855, 29.915970, 37.574589>,  <27.449484, 29.969372, 37.561707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.215855, 29.915970, 37.574589>,  <26.826473, 29.826967, 37.596058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.215855, 29.915970, 37.574589> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188835, -0.648216, 0.737670,
		0.129349, -0.728221, -0.673025,
		0.973453, 0.222508, -0.053668,
		27.507891, 29.982721, 37.558487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.279716, 29.235014, 37.362549>,  <26.826473, 29.826967, 37.596058>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.279716, 29.235014, 37.362549> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.486391, 29.476906, 37.604984>,  <27.610395, 29.622040, 37.750446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.486391, 29.476906, 37.604984>,  <27.279716, 29.235014, 37.362549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.486391, 29.476906, 37.604984> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168595, -0.765902, 0.620459,
		0.839410, -0.218400, -0.497687,
		0.516688, 0.604727, 0.606085,
		27.641397, 29.658323, 37.786808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.932484, 28.606749, 37.058887>,  <27.279716, 29.235014, 37.362549>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.932484, 28.606749, 37.058887> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.060234, 28.227711, 37.062008>,  <27.136885, 28.000288, 37.063881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.060234, 28.227711, 37.062008>,  <26.932484, 28.606749, 37.058887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.060234, 28.227711, 37.062008> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127475, -0.051120, -0.990524,
		0.939015, 0.315354, -0.137121,
		0.319376, -0.947596, 0.007803,
		27.156046, 27.943432, 37.064350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.571533, 28.527052, 36.698093>,  <26.932484, 28.606749, 37.058887>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.571533, 28.527052, 36.698093> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.392731, 28.170300, 36.670567>,  <27.285448, 27.956249, 36.654053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.392731, 28.170300, 36.670567>,  <27.571533, 28.527052, 36.698093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.392731, 28.170300, 36.670567> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108087, 0.022511, -0.993887,
		0.887976, -0.451712, 0.086338,
		-0.447007, -0.891880, -0.068813,
		27.258629, 27.902735, 36.649921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.008181, 28.194786, 36.255806>,  <27.571533, 28.527052, 36.698093>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.008181, 28.194786, 36.255806> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.684740, 27.959469, 36.259216>,  <27.490675, 27.818277, 36.261265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.684740, 27.959469, 36.259216>,  <28.008181, 28.194786, 36.255806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.684740, 27.959469, 36.259216> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056234, -0.091708, -0.994197,
		0.585663, -0.803430, 0.107237,
		-0.808602, -0.588295, 0.008530,
		27.442160, 27.782980, 36.261776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.228558, 27.609737, 35.798595>,  <28.008181, 28.194786, 36.255806>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.228558, 27.609737, 35.798595> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.829226, 27.632797, 35.799782>,  <27.589626, 27.646633, 35.800491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.829226, 27.632797, 35.799782>,  <28.228558, 27.609737, 35.798595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.829226, 27.632797, 35.799782> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009727, -0.117381, -0.993039,
		-0.056897, -0.991413, 0.117746,
		-0.998333, 0.057647, 0.002964,
		27.529726, 27.650091, 35.800671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.080780, 27.088285, 35.250317>,  <28.228558, 27.609737, 35.798595>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.080780, 27.088285, 35.250317> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.748245, 27.304558, 35.301762>,  <27.548725, 27.434322, 35.332630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.748245, 27.304558, 35.301762>,  <28.080780, 27.088285, 35.250317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.748245, 27.304558, 35.301762> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114331, 0.060092, -0.991624,
		-0.543883, -0.839077, 0.011860,
		-0.831336, 0.540684, 0.128616,
		27.498844, 27.466763, 35.340347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.574738, 26.815254, 34.764614>,  <28.080780, 27.088285, 35.250317>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.574738, 26.815254, 34.764614> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.431139, 27.175732, 34.861752>,  <27.344980, 27.392017, 34.920036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.431139, 27.175732, 34.861752>,  <27.574738, 26.815254, 34.764614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.431139, 27.175732, 34.861752> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191028, 0.183739, -0.964235,
		-0.913582, -0.392546, 0.106191,
		-0.358995, 0.901193, 0.242848,
		27.323441, 27.446089, 34.934605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.998762, 26.875498, 34.388489>,  <27.574738, 26.815254, 34.764614>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.998762, 26.875498, 34.388489> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.096592, 27.251980, 34.481712>,  <27.155291, 27.477869, 34.537647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.096592, 27.251980, 34.481712>,  <26.998762, 26.875498, 34.388489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.096592, 27.251980, 34.481712> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301530, 0.302270, -0.904274,
		-0.921554, 0.150890, 0.357730,
		0.244577, 0.941204, 0.233060,
		27.169966, 27.534342, 34.551632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.503614, 27.246277, 34.054340>,  <26.998762, 26.875498, 34.388489>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.503614, 27.246277, 34.054340> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.790380, 27.511497, 34.140495>,  <26.962440, 27.670630, 34.192188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.790380, 27.511497, 34.140495>,  <26.503614, 27.246277, 34.054340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.790380, 27.511497, 34.140495> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252893, 0.535244, -0.805952,
		-0.649674, 0.523331, 0.551406,
		0.716917, 0.663053, 0.215387,
		27.005455, 27.710413, 34.205112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.188841, 27.885546, 33.846470>,  <26.503614, 27.246277, 34.054340>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.188841, 27.885546, 33.846470> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.580345, 27.963409, 33.872189>,  <26.815248, 28.010128, 33.887619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.580345, 27.963409, 33.872189>,  <26.188841, 27.885546, 33.846470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.580345, 27.963409, 33.872189> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062778, 0.583178, -0.809915,
		-0.195155, 0.788677, 0.583012,
		0.978761, 0.194660, 0.064298,
		26.873974, 28.021807, 33.891479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.286911, 28.631439, 33.648731>,  <26.188841, 27.885546, 33.846470>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.286911, 28.631439, 33.648731> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.622381, 28.423405, 33.584068>,  <26.823664, 28.298584, 33.545269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.622381, 28.423405, 33.584068>,  <26.286911, 28.631439, 33.648731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.622381, 28.423405, 33.584068> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015441, 0.319412, -0.947490,
		0.544413, 0.792140, 0.275914,
		0.838675, -0.520086, -0.161661,
		26.873983, 28.267380, 33.535568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.750769, 29.130871, 33.346924>,  <26.286911, 28.631439, 33.648731>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.750769, 29.130871, 33.346924> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.895649, 28.767971, 33.261402>,  <26.982578, 28.550232, 33.210091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.895649, 28.767971, 33.261402>,  <26.750769, 29.130871, 33.346924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.895649, 28.767971, 33.261402> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341524, 0.342598, -0.875208,
		0.867278, 0.243985, 0.433937,
		0.362203, -0.907248, -0.213800,
		27.004311, 28.495796, 33.197262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.454870, 29.230946, 33.067669>,  <26.750769, 29.130871, 33.346924>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.454870, 29.230946, 33.067669> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.336004, 28.868954, 32.945877>,  <27.264685, 28.651758, 32.872803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.336004, 28.868954, 32.945877>,  <27.454870, 29.230946, 33.067669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.336004, 28.868954, 32.945877> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181867, 0.259399, -0.948492,
		0.937346, -0.337234, 0.087501,
		-0.297166, -0.904978, -0.304478,
		27.246855, 28.597460, 32.854534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.972544, 29.002413, 32.616299>,  <27.454870, 29.230946, 33.067669>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.972544, 29.002413, 32.616299> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.656462, 28.778934, 32.515556>,  <27.466812, 28.644848, 32.455112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.656462, 28.778934, 32.515556>,  <27.972544, 29.002413, 32.616299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.656462, 28.778934, 32.515556> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211886, 0.136546, -0.967708,
		0.575046, -0.818054, 0.010480,
		-0.790207, -0.558698, -0.251854,
		27.419399, 28.611326, 32.439999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.101797, 28.520910, 32.143486>,  <27.972544, 29.002413, 32.616299>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.101797, 28.520910, 32.143486> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.709139, 28.546421, 32.071587>,  <27.473545, 28.561728, 32.028446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.709139, 28.546421, 32.071587>,  <28.101797, 28.520910, 32.143486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.709139, 28.546421, 32.071587> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185306, 0.095863, -0.977994,
		-0.045142, -0.993349, -0.105921,
		-0.981643, 0.063776, -0.179746,
		27.414646, 28.565554, 32.017662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.650063, 27.830900, 32.074242>,  <28.101797, 28.520910, 32.143486>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.650063, 27.830900, 32.074242> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.037708, 27.926430, 32.098843>,  <29.270296, 27.983747, 32.113602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.037708, 27.926430, 32.098843>,  <28.650063, 27.830900, 32.074242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.037708, 27.926430, 32.098843> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041927, -0.405308, 0.913218,
		0.243025, -0.882433, -0.402803,
		0.969113, 0.238823, 0.061503,
		29.328442, 27.998077, 32.117294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.928875, 27.256336, 32.425632>,  <28.650063, 27.830900, 32.074242>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.928875, 27.256336, 32.425632> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.172638, 27.570080, 32.471939>,  <29.318895, 27.758326, 32.499722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.172638, 27.570080, 32.471939>,  <28.928875, 27.256336, 32.425632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.172638, 27.570080, 32.471939> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319700, -0.376707, 0.869416,
		0.725545, -0.492818, -0.480328,
		0.609407, 0.784361, 0.115764,
		29.355459, 27.805387, 32.506668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.425228, 27.017456, 32.864662>,  <28.928875, 27.256336, 32.425632>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.425228, 27.017456, 32.864662> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.501814, 27.406239, 32.919277>,  <29.547766, 27.639507, 32.952045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.501814, 27.406239, 32.919277>,  <29.425228, 27.017456, 32.864662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.501814, 27.406239, 32.919277> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390345, -0.203043, 0.898000,
		0.900540, -0.118638, -0.418274,
		0.191465, 0.971956, 0.136539,
		29.559254, 27.697824, 32.960239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.094673, 27.046644, 33.145687>,  <29.425228, 27.017456, 32.864662>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.094673, 27.046644, 33.145687> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.929241, 27.388191, 33.272091>,  <29.829983, 27.593119, 33.347935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.929241, 27.388191, 33.272091>,  <30.094673, 27.046644, 33.145687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.929241, 27.388191, 33.272091> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377773, -0.154867, 0.912855,
		0.828396, 0.496918, -0.258518,
		-0.413578, 0.853867, 0.316014,
		29.805168, 27.644352, 33.366894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.554705, 27.403576, 33.553188>,  <30.094673, 27.046644, 33.145687>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.554705, 27.403576, 33.553188> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.217541, 27.587460, 33.665028>,  <30.015244, 27.697790, 33.732132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.217541, 27.587460, 33.665028>,  <30.554705, 27.403576, 33.553188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.217541, 27.587460, 33.665028> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306941, -0.015968, 0.951595,
		0.441920, 0.887927, -0.127644,
		-0.842908, 0.459707, 0.279598,
		29.964668, 27.725372, 33.748905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.795389, 27.704046, 34.163422>,  <30.554705, 27.403576, 33.553188>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.795389, 27.704046, 34.163422> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.396400, 27.731968, 34.168720>,  <30.157007, 27.748722, 34.171898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.396400, 27.731968, 34.168720>,  <30.795389, 27.704046, 34.163422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.396400, 27.731968, 34.168720> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016412, 0.045040, 0.998850,
		0.069129, 0.996543, -0.046072,
		-0.997473, 0.069806, 0.013242,
		30.097158, 27.752911, 34.172691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.600454, 28.132696, 34.773705>,  <30.795389, 27.704046, 34.163422>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.600454, 28.132696, 34.773705> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.256845, 27.935780, 34.717522>,  <30.050680, 27.817629, 34.683811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.256845, 27.935780, 34.717522>,  <30.600454, 28.132696, 34.773705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.256845, 27.935780, 34.717522> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108535, -0.092988, 0.989734,
		-0.500298, 0.865449, 0.026448,
		-0.859024, -0.492291, -0.140453,
		29.999138, 27.788092, 34.675385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.770254, 28.692894, 35.215775>,  <30.600454, 28.132696, 34.773705>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.770254, 28.692894, 35.215775> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.143753, 28.619526, 35.338718>,  <31.367853, 28.575504, 35.412483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.143753, 28.619526, 35.338718>,  <30.770254, 28.692894, 35.215775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.143753, 28.619526, 35.338718> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357290, 0.528978, -0.769757,
		-0.021397, 0.828576, 0.559467,
		0.933748, -0.183422, 0.307360,
		31.423878, 28.564499, 35.430927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.070656, 29.379969, 35.313633>,  <30.770254, 28.692894, 35.215775>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.070656, 29.379969, 35.313633> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.382551, 29.135704, 35.258343>,  <31.569689, 28.989145, 35.225170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.382551, 29.135704, 35.258343>,  <31.070656, 29.379969, 35.313633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.382551, 29.135704, 35.258343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205272, 0.457894, -0.864984,
		0.591502, 0.646086, 0.482388,
		0.779736, -0.610660, -0.138222,
		31.616472, 28.952505, 35.216877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.610329, 29.806097, 35.088501>,  <31.070656, 29.379969, 35.313633>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.610329, 29.806097, 35.088501> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.747744, 29.448036, 34.974880>,  <31.830193, 29.233200, 34.906708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.747744, 29.448036, 34.974880>,  <31.610329, 29.806097, 35.088501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.747744, 29.448036, 34.974880> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183075, 0.360494, -0.914619,
		0.921122, 0.262202, 0.287722,
		0.343537, -0.895151, -0.284056,
		31.850805, 29.179491, 34.889664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.284157, 29.925896, 34.741558>,  <31.610329, 29.806097, 35.088501>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.284157, 29.925896, 34.741558> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.114910, 29.596844, 34.589638>,  <32.013363, 29.399412, 34.498486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.114910, 29.596844, 34.589638>,  <32.284157, 29.925896, 34.741558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.114910, 29.596844, 34.589638> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178593, 0.335228, -0.925055,
		0.888300, -0.459236, 0.005075,
		-0.423117, -0.822633, -0.379800,
		31.987974, 29.350054, 34.475697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.787735, 29.799065, 34.143513>,  <32.284157, 29.925896, 34.741558>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.787735, 29.799065, 34.143513> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.464916, 29.574806, 34.069386>,  <32.271225, 29.440250, 34.024910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.464916, 29.574806, 34.069386>,  <32.787735, 29.799065, 34.143513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.464916, 29.574806, 34.069386> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172513, 0.076275, -0.982050,
		0.564719, -0.824534, 0.035161,
		-0.807051, -0.560648, -0.185316,
		32.222801, 29.406612, 34.013790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.027309, 29.300007, 33.700275>,  <32.787735, 29.799065, 34.143513>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.027309, 29.300007, 33.700275> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.630241, 29.331963, 33.663994>,  <32.392002, 29.351135, 33.642223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.630241, 29.331963, 33.663994>,  <33.027309, 29.300007, 33.700275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.630241, 29.331963, 33.663994> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095886, 0.063550, -0.993362,
		-0.073596, -0.994776, -0.070744,
		-0.992668, 0.079891, -0.090709,
		32.332439, 29.355930, 33.636780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.940556, 29.043131, 33.008625>,  <33.027309, 29.300007, 33.700275>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.940556, 29.043131, 33.008625> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.604141, 29.242710, 33.092243>,  <32.402290, 29.362457, 33.142414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.604141, 29.242710, 33.092243>,  <32.940556, 29.043131, 33.008625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.604141, 29.242710, 33.092243> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116890, 0.209689, -0.970756,
		-0.528193, -0.840881, -0.118035,
		-0.841040, 0.498949, 0.209047,
		32.351830, 29.392395, 33.154957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<30.945456, 30.620663, 37.593651> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.553324, 30.692497, 37.560909>,  <30.318045, 30.735598, 37.541264>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.553324, 30.692497, 37.560909>,  <30.945456, 30.620663, 37.593651>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.553324, 30.692497, 37.560909> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188450, 0.728565, -0.658543,
		-0.058633, -0.661015, -0.748078,
		-0.980331, 0.179587, -0.081850,
		30.259224, 30.746374, 37.536354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.667192, 30.523062, 36.854549>,  <30.945456, 30.620663, 37.593651>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.667192, 30.523062, 36.854549> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.423046, 30.771683, 37.050968>,  <30.276558, 30.920855, 37.168819>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.423046, 30.771683, 37.050968>,  <30.667192, 30.523062, 36.854549>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.423046, 30.771683, 37.050968> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168906, 0.707779, -0.685944,
		-0.773901, -0.335738, -0.536990,
		-0.610368, 0.621553, 0.491043,
		30.239935, 30.958149, 37.198280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.390499, 30.867538, 36.354828>,  <30.667192, 30.523062, 36.854549>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.390499, 30.867538, 36.354828> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.273109, 31.091419, 36.664822>,  <30.202677, 31.225748, 36.850819>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.273109, 31.091419, 36.664822>,  <30.390499, 30.867538, 36.354828>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.273109, 31.091419, 36.664822> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142386, 0.827235, -0.543515,
		-0.945304, -0.049159, -0.322464,
		-0.293472, 0.559702, 0.774989,
		30.185068, 31.259329, 36.897320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.804644, 31.289585, 36.202785>,  <30.390499, 30.867538, 36.354828>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.804644, 31.289585, 36.202785> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.014826, 31.467049, 36.493179>,  <30.140936, 31.573526, 36.667416>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.014826, 31.467049, 36.493179>,  <29.804644, 31.289585, 36.202785>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.014826, 31.467049, 36.493179> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165577, 0.783644, -0.598737,
		-0.834553, 0.434818, 0.338312,
		0.525457, 0.443661, 0.725989,
		30.172462, 31.600147, 36.710976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.583769, 31.987906, 36.150818>,  <29.804644, 31.289585, 36.202785>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.583769, 31.987906, 36.150818> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.905815, 32.032127, 36.383907>,  <30.099043, 32.058662, 36.523762>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.905815, 32.032127, 36.383907>,  <29.583769, 31.987906, 36.150818>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.905815, 32.032127, 36.383907> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221757, 0.855112, -0.468622,
		-0.550104, 0.506518, 0.663947,
		0.805114, 0.110556, 0.582725,
		30.147350, 32.065292, 36.558723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.537596, 32.637112, 36.241455>,  <29.583769, 31.987906, 36.150818>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.537596, 32.637112, 36.241455> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.909115, 32.541939, 36.355103>,  <30.132027, 32.484837, 36.423290>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.909115, 32.541939, 36.355103>,  <29.537596, 32.637112, 36.241455>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.909115, 32.541939, 36.355103> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343485, 0.840515, -0.418989,
		-0.139120, 0.486748, 0.862393,
		0.928797, -0.237929, 0.284123,
		30.187754, 32.470562, 36.440338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.889921, 33.291142, 36.533829>,  <29.537596, 32.637112, 36.241455>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.889921, 33.291142, 36.533829> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.165943, 33.034924, 36.399059>,  <30.331556, 32.881191, 36.318195>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.165943, 33.034924, 36.399059>,  <29.889921, 33.291142, 36.533829>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.165943, 33.034924, 36.399059> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456496, 0.746451, -0.484172,
		0.561634, 0.180301, 0.807502,
		0.690057, -0.640548, -0.336926,
		30.372961, 32.842758, 36.297981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.514534, 33.638660, 36.509678>,  <29.889921, 33.291142, 36.533829>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.514534, 33.638660, 36.509678> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.610559, 33.327480, 36.277412>,  <30.668175, 33.140774, 36.138054>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.610559, 33.327480, 36.277412>,  <30.514534, 33.638660, 36.509678>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.610559, 33.327480, 36.277412> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549338, 0.602035, -0.579466,
		0.800373, -0.179871, 0.571883,
		0.240064, -0.777946, -0.580662,
		30.682579, 33.094097, 36.103214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.243650, 33.810280, 36.224472>,  <30.514534, 33.638660, 36.509678>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.243650, 33.810280, 36.224472> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.114740, 33.530766, 35.969021>,  <31.037394, 33.363056, 35.815750>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.114740, 33.530766, 35.969021>,  <31.243650, 33.810280, 36.224472>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.114740, 33.530766, 35.969021> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489922, 0.454128, -0.744140,
		0.810009, -0.552694, 0.195995,
		-0.322276, -0.698783, -0.638625,
		31.018057, 33.321133, 35.777435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.851831, 33.563744, 35.859600>,  <31.243650, 33.810280, 36.224472>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.851831, 33.563744, 35.859600> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.532452, 33.462318, 35.641174>,  <31.340824, 33.401463, 35.510120>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.532452, 33.462318, 35.641174>,  <31.851831, 33.563744, 35.859600>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.532452, 33.462318, 35.641174> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353910, 0.536072, -0.766403,
		0.487053, -0.805194, -0.338293,
		-0.798453, -0.253553, -0.546062,
		31.292917, 33.386250, 35.477356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.049023, 33.193439, 35.322201>,  <31.851831, 33.563744, 35.859600>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.049023, 33.193439, 35.322201> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.698318, 33.341133, 35.198940>,  <31.487896, 33.429749, 35.124985>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.698318, 33.341133, 35.198940>,  <32.049023, 33.193439, 35.322201>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.698318, 33.341133, 35.198940> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465417, 0.490035, -0.737057,
		-0.121140, -0.789642, -0.601490,
		-0.876763, 0.369231, -0.308150,
		31.435289, 33.451900, 35.106495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.924683, 32.947906, 34.675278>,  <32.049023, 33.193439, 35.322201>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.924683, 32.947906, 34.675278> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.693674, 33.272987, 34.706234>,  <31.555069, 33.468037, 34.724808>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.693674, 33.272987, 34.706234>,  <31.924683, 32.947906, 34.675278>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.693674, 33.272987, 34.706234> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443322, 0.391804, -0.806198,
		-0.685519, -0.431286, -0.586562,
		-0.577520, 0.812700, 0.077390,
		31.520418, 33.516796, 34.729450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.960672, 32.310390, 34.245586>,  <31.924683, 32.947906, 34.675278>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.960672, 32.310390, 34.245586> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.331364, 32.201469, 34.349144>,  <32.553780, 32.136116, 34.411278>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.331364, 32.201469, 34.349144>,  <31.960672, 32.310390, 34.245586>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.331364, 32.201469, 34.349144> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371449, -0.560245, 0.740373,
		-0.056559, -0.782291, -0.620341,
		0.926729, -0.272300, 0.258894,
		32.609383, 32.119778, 34.426811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.861561, 31.696157, 34.609615>,  <31.960672, 32.310390, 34.245586>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.861561, 31.696157, 34.609615> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.221897, 31.815624, 34.735653>,  <32.438099, 31.887304, 34.811275>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.221897, 31.815624, 34.735653>,  <31.861561, 31.696157, 34.609615>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.221897, 31.815624, 34.735653> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180917, -0.401496, 0.897814,
		0.394656, -0.865793, -0.307650,
		0.900842, 0.298668, 0.315090,
		32.492149, 31.905224, 34.830181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.206253, 31.155418, 34.870438>,  <31.861561, 31.696157, 34.609615>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.206253, 31.155418, 34.870438> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.401112, 31.450851, 35.056847>,  <32.518028, 31.628111, 35.168694>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.401112, 31.450851, 35.056847>,  <32.206253, 31.155418, 34.870438>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.401112, 31.450851, 35.056847> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083250, -0.570469, 0.817089,
		0.869341, -0.359248, -0.339391,
		0.487150, 0.738583, 0.466024,
		32.547256, 31.672426, 35.196655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.770649, 30.792992, 35.214230>,  <32.206253, 31.155418, 34.870438>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.770649, 30.792992, 35.214230> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.745213, 31.133816, 35.422054>,  <32.729950, 31.338310, 35.546749>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.745213, 31.133816, 35.422054>,  <32.770649, 30.792992, 35.214230>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.745213, 31.133816, 35.422054> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145584, -0.507131, 0.849485,
		0.987300, 0.129658, -0.091798,
		-0.063589, 0.852061, 0.519566,
		32.726135, 31.389435, 35.577923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.414829, 30.709940, 35.681828>,  <32.770649, 30.792992, 35.214230>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.414829, 30.709940, 35.681828> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.159569, 30.973602, 35.840965>,  <33.006413, 31.131800, 35.936447>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.159569, 30.973602, 35.840965>,  <33.414829, 30.709940, 35.681828>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.159569, 30.973602, 35.840965> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129649, -0.417360, 0.899445,
		0.758918, 0.625561, 0.180879,
		-0.638149, 0.659154, 0.397846,
		32.968124, 31.171349, 35.960320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.703983, 31.105846, 36.200607>,  <33.414829, 30.709940, 35.681828>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.703983, 31.105846, 36.200607> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.315456, 31.113167, 36.295444>,  <33.082340, 31.117559, 36.352348>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.315456, 31.113167, 36.295444>,  <33.703983, 31.105846, 36.200607>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.315456, 31.113167, 36.295444> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215001, -0.358431, 0.908461,
		0.101609, 0.933377, 0.344214,
		-0.971314, 0.018301, 0.237097,
		33.024063, 31.118658, 36.366573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.743683, 30.844454, 36.798161>,  <33.703983, 31.105846, 36.200607>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.743683, 30.844454, 36.798161> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.345757, 30.851307, 36.758072>,  <33.106998, 30.855419, 36.734016>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.345757, 30.851307, 36.758072>,  <33.743683, 30.844454, 36.798161>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.345757, 30.851307, 36.758072> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089763, -0.610970, 0.786548,
		-0.047759, 0.791468, 0.609341,
		-0.994817, 0.017131, -0.100224,
		33.047310, 30.856445, 36.728004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.394676, 31.103083, 37.483971>,  <33.743683, 30.844454, 36.798161>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.394676, 31.103083, 37.483971> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.084572, 30.951939, 37.281509>,  <32.898510, 30.861252, 37.160030>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.084572, 30.951939, 37.281509>,  <33.394676, 31.103083, 37.483971>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.084572, 30.951939, 37.281509> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276979, -0.516813, 0.810054,
		-0.567676, 0.768196, 0.296005,
		-0.775259, -0.377861, -0.506156,
		32.851994, 30.838581, 37.129662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.764454, 31.236275, 37.859512>,  <33.394676, 31.103083, 37.483971>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.764454, 31.236275, 37.859512> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.681099, 30.913269, 37.638786>,  <32.631088, 30.719465, 37.506351>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.681099, 30.913269, 37.638786>,  <32.764454, 31.236275, 37.859512>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.681099, 30.913269, 37.638786> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316061, -0.478327, 0.819334,
		-0.925571, 0.345142, -0.155548,
		-0.208384, -0.807515, -0.551812,
		32.618584, 30.671015, 37.473244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.259357, 30.992376, 38.216999>,  <32.764454, 31.236275, 37.859512>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.259357, 30.992376, 38.216999> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.368252, 30.682690, 37.988445>,  <32.433590, 30.496878, 37.851315>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.368252, 30.682690, 37.988445>,  <32.259357, 30.992376, 38.216999>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.368252, 30.682690, 37.988445> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280058, -0.631856, 0.722721,
		-0.920572, -0.036733, -0.388841,
		0.272240, -0.774215, -0.571382,
		32.449924, 30.450426, 37.817032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.789059, 30.382875, 38.374847>,  <32.259357, 30.992376, 38.216999>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.789059, 30.382875, 38.374847> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.112103, 30.218796, 38.205376>,  <32.305927, 30.120348, 38.103691>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.112103, 30.218796, 38.205376>,  <31.789059, 30.382875, 38.374847>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.112103, 30.218796, 38.205376> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078826, -0.787086, 0.611785,
		-0.584426, -0.460687, -0.667993,
		0.807609, -0.410198, -0.423679,
		32.354385, 30.095736, 38.078270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.592865, 29.664419, 38.312603>,  <31.789059, 30.382875, 38.374847>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.592865, 29.664419, 38.312603> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.991365, 29.643631, 38.284943>,  <32.230465, 29.631159, 38.268349>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.991365, 29.643631, 38.284943>,  <31.592865, 29.664419, 38.312603>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.991365, 29.643631, 38.284943> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002136, -0.784366, 0.620294,
		-0.086475, -0.618117, -0.781315,
		0.996252, -0.051971, -0.069148,
		32.290241, 29.628040, 38.264198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.747297, 28.973448, 38.177898>,  <31.592865, 29.664419, 38.312603>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.747297, 28.973448, 38.177898> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.068577, 29.146084, 38.342144>,  <32.261345, 29.249666, 38.440693>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.068577, 29.146084, 38.342144>,  <31.747297, 28.973448, 38.177898>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.068577, 29.146084, 38.342144> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011408, -0.700298, 0.713760,
		0.595605, -0.568605, -0.567401,
		0.803197, 0.431591, 0.410614,
		32.309536, 29.275560, 38.465328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.142670, 28.467663, 38.350262>,  <31.747297, 28.973448, 38.177898>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.142670, 28.467663, 38.350262> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.301170, 28.760765, 38.571552>,  <32.396271, 28.936626, 38.704327>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.301170, 28.760765, 38.571552>,  <32.142670, 28.467663, 38.350262>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.301170, 28.760765, 38.571552> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068878, -0.624572, 0.777924,
		0.915557, -0.270145, -0.297955,
		0.396247, 0.732756, 0.553225,
		32.420044, 28.980593, 38.737518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.241356, 27.708258, 38.344429>,  <32.142670, 28.467663, 38.350262>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.241356, 27.708258, 38.344429> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.981695, 27.468121, 38.157581>,  <31.825899, 27.324039, 38.045475>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.981695, 27.468121, 38.157581>,  <32.241356, 27.708258, 38.344429>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.981695, 27.468121, 38.157581> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242398, 0.418814, -0.875122,
		0.721007, -0.681311, -0.126351,
		-0.649147, -0.600342, -0.467116,
		31.786951, 27.288017, 38.017445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.620403, 27.391462, 37.750511>,  <32.241356, 27.708258, 38.344429>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.620403, 27.391462, 37.750511> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.226093, 27.384758, 37.683620>,  <31.989508, 27.380735, 37.643486>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.226093, 27.384758, 37.683620>,  <32.620403, 27.391462, 37.750511>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.226093, 27.384758, 37.683620> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143110, 0.438009, -0.887507,
		0.088122, -0.898815, -0.429380,
		-0.985776, -0.016761, -0.167227,
		31.930361, 27.379730, 37.633453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.487171, 27.278341, 37.057980>,  <32.620403, 27.391462, 37.750511>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.487171, 27.278341, 37.057980> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.110691, 27.404736, 37.105804>,  <31.884804, 27.480572, 37.134499>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.110691, 27.404736, 37.105804>,  <32.487171, 27.278341, 37.057980>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.110691, 27.404736, 37.105804> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017114, 0.398033, -0.917211,
		-0.337417, -0.861233, -0.380037,
		-0.941199, 0.315987, 0.119564,
		31.828331, 27.499531, 37.141674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.223167, 27.289536, 36.413357>,  <32.487171, 27.278341, 37.057980>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.223167, 27.289536, 36.413357> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.936956, 27.497440, 36.600060>,  <31.765228, 27.622183, 36.712082>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.936956, 27.497440, 36.600060>,  <32.223167, 27.289536, 36.413357>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.936956, 27.497440, 36.600060> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222071, 0.464259, -0.857407,
		-0.662346, -0.717154, -0.216767,
		-0.715530, 0.519762, 0.466759,
		31.722298, 27.653368, 36.740086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.608282, 27.222563, 35.912415>,  <32.223167, 27.289536, 36.413357>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.608282, 27.222563, 35.912415> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.603161, 27.542778, 36.152073>,  <31.600088, 27.734907, 36.295868>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.603161, 27.542778, 36.152073>,  <31.608282, 27.222563, 35.912415>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.603161, 27.542778, 36.152073> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215938, 0.582844, -0.783366,
		-0.976323, -0.139408, 0.165405,
		-0.012802, 0.800536, 0.599148,
		31.599319, 27.782938, 36.331818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.020229, 27.545416, 35.705936>,  <31.608282, 27.222563, 35.912415>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.020229, 27.545416, 35.705936> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.256220, 27.805931, 35.896832>,  <31.397814, 27.962240, 36.011368>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.256220, 27.805931, 35.896832>,  <31.020229, 27.545416, 35.705936>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.256220, 27.805931, 35.896832> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038454, 0.613055, -0.789104,
		-0.806506, 0.447199, 0.386731,
		0.589974, 0.651288, 0.477236,
		31.433212, 28.001318, 36.040001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.709469, 28.081400, 35.610176>,  <31.020229, 27.545416, 35.705936>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.709469, 28.081400, 35.610176> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.071821, 28.227310, 35.696266>,  <31.289232, 28.314856, 35.747921>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.071821, 28.227310, 35.696266>,  <30.709469, 28.081400, 35.610176>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.071821, 28.227310, 35.696266> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112374, 0.696950, -0.708260,
		-0.408356, 0.617413, 0.672344,
		0.905879, 0.364776, 0.215223,
		31.343586, 28.336742, 35.760834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.141758, 28.380083, 35.317554>,  <30.709469, 28.081400, 35.610176>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.141758, 28.380083, 35.317554> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.976091, 28.034275, 35.203663>,  <29.876692, 27.826790, 35.135326>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.976091, 28.034275, 35.203663>,  <30.141758, 28.380083, 35.317554>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.976091, 28.034275, 35.203663> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313346, -0.158273, 0.936357,
		-0.854564, 0.477026, -0.205342,
		-0.414167, -0.864520, -0.284729,
		29.851841, 27.774920, 35.118244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.574371, 28.411074, 35.683521>,  <30.141758, 28.380083, 35.317554>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.574371, 28.411074, 35.683521> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.672413, 28.031120, 35.605915>,  <29.731237, 27.803148, 35.559353>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.672413, 28.031120, 35.605915>,  <29.574371, 28.411074, 35.683521>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.672413, 28.031120, 35.605915> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142157, -0.233167, 0.961990,
		-0.959018, -0.208207, -0.192183,
		0.245104, -0.949885, -0.194013,
		29.745945, 27.746155, 35.547710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.031897, 28.107815, 35.943184>,  <29.574371, 28.411074, 35.683521>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.031897, 28.107815, 35.943184> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.323755, 27.834805, 35.926342>,  <29.498871, 27.670998, 35.916237>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.323755, 27.834805, 35.926342>,  <29.031897, 28.107815, 35.943184>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.323755, 27.834805, 35.926342> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134376, -0.203474, 0.969815,
		-0.670491, -0.701966, -0.240180,
		0.729647, -0.682526, -0.042100,
		29.542650, 27.630047, 35.913712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.794516, 27.335667, 36.137085>,  <29.031897, 28.107815, 35.943184>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.794516, 27.335667, 36.137085> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.191711, 27.318481, 36.181137>,  <29.430029, 27.308170, 36.207569>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.191711, 27.318481, 36.181137>,  <28.794516, 27.335667, 36.137085>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.191711, 27.318481, 36.181137> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117753, -0.441391, 0.889555,
		0.010390, -0.896286, -0.443356,
		0.992988, -0.042964, 0.110126,
		29.489609, 27.305592, 36.214176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.927612, 26.691608, 36.461567>,  <28.794516, 27.335667, 36.137085>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.927612, 26.691608, 36.461567> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.255524, 26.910744, 36.528301>,  <29.452271, 27.042225, 36.568340>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.255524, 26.910744, 36.528301>,  <28.927612, 26.691608, 36.461567>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.255524, 26.910744, 36.528301> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120610, -0.119632, 0.985465,
		0.559833, -0.827987, -0.031997,
		0.819780, 0.547837, 0.166837,
		29.501457, 27.075094, 36.578354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.260029, 26.386217, 37.025391>,  <28.927612, 26.691608, 36.461567>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.260029, 26.386217, 37.025391> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.442640, 26.741554, 37.045109>,  <29.552208, 26.954756, 37.056938>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.442640, 26.741554, 37.045109>,  <29.260029, 26.386217, 37.025391>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.442640, 26.741554, 37.045109> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091950, -0.008000, 0.995732,
		0.884944, -0.459114, 0.078031,
		0.456530, 0.888341, 0.049295,
		29.579599, 27.008057, 37.059898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.817680, 26.347366, 37.550617>,  <29.260029, 26.386217, 37.025391>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.817680, 26.347366, 37.550617> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.747923, 26.739944, 37.518749>,  <29.706068, 26.975492, 37.499630>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.747923, 26.739944, 37.518749>,  <29.817680, 26.347366, 37.550617>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.747923, 26.739944, 37.518749> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000190, 0.080940, 0.996719,
		0.984676, 0.173808, -0.014302,
		-0.174395, 0.981448, -0.079666,
		29.695604, 27.034378, 37.494850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.331011, 26.744316, 37.956711>,  <29.817680, 26.347366, 37.550617>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.331011, 26.744316, 37.956711> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.012150, 26.980331, 37.905483>,  <29.820833, 27.121941, 37.874744>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.012150, 26.980331, 37.905483>,  <30.331011, 26.744316, 37.956711>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.012150, 26.980331, 37.905483> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083652, 0.318001, 0.944393,
		0.597955, 0.742112, -0.302853,
		-0.797153, 0.590038, -0.128071,
		29.773005, 27.157343, 37.867062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.334064, 26.933716, 38.663494>,  <30.331011, 26.744316, 37.956711>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.334064, 26.933716, 38.663494> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.016632, 27.106342, 38.491920>,  <29.826174, 27.209917, 38.388977>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.016632, 27.106342, 38.491920>,  <30.334064, 26.933716, 38.663494>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.016632, 27.106342, 38.491920> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262966, 0.392449, 0.881381,
		0.548707, 0.812241, -0.197953,
		-0.793580, 0.431565, -0.428932,
		29.778559, 27.235811, 38.363239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<30.736609, 32.782970, 22.917215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.352333, 32.892769, 22.900600>,  <30.121767, 32.958649, 22.890631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.352333, 32.892769, 22.900600>,  <30.736609, 32.782970, 22.917215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.352333, 32.892769, 22.900600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147939, -0.379562, 0.913262,
		0.234919, 0.883507, 0.405250,
		-0.960691, 0.274495, -0.041539,
		30.064125, 32.975117, 22.888140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.657681, 33.151573, 23.478342>,  <30.736609, 32.782970, 22.917215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.657681, 33.151573, 23.478342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.271441, 33.084023, 23.399250>,  <30.039696, 33.043491, 23.351795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.271441, 33.084023, 23.399250>,  <30.657681, 33.151573, 23.478342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.271441, 33.084023, 23.399250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143449, -0.288276, 0.946741,
		-0.216887, 0.942537, 0.254134,
		-0.965600, -0.168880, -0.197729,
		29.981760, 33.033360, 23.339931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.222528, 33.575520, 23.970215>,  <30.657681, 33.151573, 23.478342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.222528, 33.575520, 23.970215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.022562, 33.259361, 23.828590>,  <29.902582, 33.069668, 23.743616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.022562, 33.259361, 23.828590>,  <30.222528, 33.575520, 23.970215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.022562, 33.259361, 23.828590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005862, -0.405715, 0.913981,
		-0.866055, 0.458988, 0.198190,
		-0.499914, -0.790396, -0.354062,
		29.872587, 33.022243, 23.722372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.871086, 33.373955, 24.562353>,  <30.222528, 33.575520, 23.970215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.871086, 33.373955, 24.562353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.865383, 33.039227, 24.343437>,  <29.861961, 32.838390, 24.212088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.865383, 33.039227, 24.343437>,  <29.871086, 33.373955, 24.562353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.865383, 33.039227, 24.343437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296793, -0.526221, 0.796873,
		-0.954836, -0.151071, 0.255865,
		-0.014257, -0.836821, -0.547291,
		29.861107, 32.788181, 24.179251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.497759, 32.922771, 24.863897>,  <29.871086, 33.373955, 24.562353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.497759, 32.922771, 24.863897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.710154, 32.680496, 24.626850>,  <29.837591, 32.535133, 24.484621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.710154, 32.680496, 24.626850>,  <29.497759, 32.922771, 24.863897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.710154, 32.680496, 24.626850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277969, -0.536155, 0.797039,
		-0.800490, -0.587948, -0.116331,
		0.530989, -0.605685, -0.592618,
		29.869450, 32.498791, 24.449064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.358183, 32.242672, 25.025597>,  <29.497759, 32.922771, 24.863897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.358183, 32.242672, 25.025597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.713087, 32.208622, 24.844257>,  <29.926029, 32.188190, 24.735455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.713087, 32.208622, 24.844257>,  <29.358183, 32.242672, 25.025597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.713087, 32.208622, 24.844257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253112, -0.731791, 0.632784,
		-0.385622, -0.676192, -0.627743,
		0.887260, -0.085126, -0.453347,
		29.979265, 32.183083, 24.708254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.560345, 31.524979, 25.043251>,  <29.358183, 32.242672, 25.025597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.560345, 31.524979, 25.043251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.921509, 31.647202, 24.922333>,  <30.138208, 31.720535, 24.849781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.921509, 31.647202, 24.922333>,  <29.560345, 31.524979, 25.043251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.921509, 31.647202, 24.922333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429464, -0.670152, 0.605356,
		-0.017612, -0.676409, -0.736316,
		0.902912, 0.305560, -0.302296,
		30.192383, 31.738869, 24.831644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.961842, 30.972742, 25.077896>,  <29.560345, 31.524979, 25.043251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.961842, 30.972742, 25.077896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.205315, 31.282906, 25.145123>,  <30.351398, 31.469004, 25.185457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.205315, 31.282906, 25.145123>,  <29.961842, 30.972742, 25.077896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.205315, 31.282906, 25.145123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345035, -0.449439, 0.823987,
		0.714464, -0.443557, -0.541109,
		0.608681, 0.775411, 0.168065,
		30.387918, 31.515530, 25.195541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.695162, 30.671001, 25.134026>,  <29.961842, 30.972742, 25.077896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.695162, 30.671001, 25.134026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.700760, 31.028980, 25.312408>,  <30.704119, 31.243767, 25.419437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.700760, 31.028980, 25.312408>,  <30.695162, 30.671001, 25.134026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.700760, 31.028980, 25.312408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327346, -0.425523, 0.843668,
		0.944801, 0.134173, -0.298913,
		0.013997, 0.894946, 0.445955,
		30.704960, 31.297464, 25.446196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.324968, 30.586304, 25.552231>,  <30.695162, 30.671001, 25.134026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.324968, 30.586304, 25.552231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.102728, 30.883732, 25.701046>,  <30.969383, 31.062189, 25.790335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.102728, 30.883732, 25.701046>,  <31.324968, 30.586304, 25.552231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.102728, 30.883732, 25.701046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104317, -0.381578, 0.918431,
		0.824879, 0.549090, 0.134438,
		-0.555601, 0.743571, 0.372036,
		30.936049, 31.106804, 25.812656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.630823, 30.860794, 26.109713>,  <31.324968, 30.586304, 25.552231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.630823, 30.860794, 26.109713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.265245, 31.004665, 26.184902>,  <31.045898, 31.090988, 26.230017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.265245, 31.004665, 26.184902>,  <31.630823, 30.860794, 26.109713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.265245, 31.004665, 26.184902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096336, -0.257667, 0.961419,
		0.394238, 0.896793, 0.200844,
		-0.913945, 0.359679, 0.187975,
		30.991062, 31.112570, 26.241295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.646097, 31.039429, 26.852104>,  <31.630823, 30.860794, 26.109713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.646097, 31.039429, 26.852104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.259018, 31.013496, 26.754654>,  <31.026770, 30.997936, 26.696184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.259018, 31.013496, 26.754654>,  <31.646097, 31.039429, 26.852104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.259018, 31.013496, 26.754654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221654, -0.241606, 0.944720,
		-0.120109, 0.968207, 0.219432,
		-0.967700, -0.064832, -0.243626,
		30.968708, 30.994047, 26.681566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.900856, 31.690258, 27.173548>,  <31.646097, 31.039429, 26.852104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.900856, 31.690258, 27.173548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.199413, 31.432133, 27.238628>,  <32.378548, 31.277258, 27.277678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.199413, 31.432133, 27.238628>,  <31.900856, 31.690258, 27.173548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.199413, 31.432133, 27.238628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420882, 0.268334, -0.866519,
		0.515516, 0.715241, 0.471882,
		0.746392, -0.645312, 0.162702,
		32.423332, 31.238539, 27.287439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.443657, 32.132111, 27.000093>,  <31.900856, 31.690258, 27.173548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.443657, 32.132111, 27.000093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.548420, 31.746166, 26.991627>,  <32.611279, 31.514599, 26.986547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.548420, 31.746166, 26.991627>,  <32.443657, 32.132111, 27.000093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.548420, 31.746166, 26.991627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625018, 0.186289, -0.758056,
		0.735361, 0.185311, 0.651846,
		0.261908, -0.964861, -0.021167,
		32.626991, 31.456709, 26.985277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.162029, 32.158474, 26.937674>,  <32.443657, 32.132111, 27.000093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.162029, 32.158474, 26.937674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.078011, 31.780434, 26.837547>,  <33.027599, 31.553608, 26.777472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.078011, 31.780434, 26.837547>,  <33.162029, 32.158474, 26.937674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.078011, 31.780434, 26.837547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629292, 0.065250, -0.774425,
		0.748246, -0.320186, 0.581041,
		-0.210047, -0.945105, -0.250314,
		33.014996, 31.496902, 26.762453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.725391, 31.824711, 26.894447>,  <33.162029, 32.158474, 26.937674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.725391, 31.824711, 26.894447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.504501, 31.590366, 26.657192>,  <33.371967, 31.449759, 26.514839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.504501, 31.590366, 26.657192>,  <33.725391, 31.824711, 26.894447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.504501, 31.590366, 26.657192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622086, 0.184082, -0.761001,
		0.555029, -0.789226, 0.262803,
		-0.552224, -0.585864, -0.593137,
		33.338833, 31.414608, 26.479252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.214401, 31.397928, 26.585997>,  <33.725391, 31.824711, 26.894447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.214401, 31.397928, 26.585997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.903748, 31.385468, 26.334324>,  <33.717354, 31.377991, 26.183321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.903748, 31.385468, 26.334324>,  <34.214401, 31.397928, 26.585997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.903748, 31.385468, 26.334324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611565, 0.202269, -0.764903,
		0.151089, -0.978835, -0.138040,
		-0.776635, -0.031148, -0.629181,
		33.670757, 31.376122, 26.145569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.365463, 30.963060, 25.965206>,  <34.214401, 31.397928, 26.585997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.365463, 30.963060, 25.965206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.067902, 31.201366, 25.844093>,  <33.889366, 31.344349, 25.771425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.067902, 31.201366, 25.844093>,  <34.365463, 30.963060, 25.965206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.067902, 31.201366, 25.844093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421874, 0.067260, -0.904156,
		-0.518299, -0.800338, -0.301372,
		-0.743901, 0.595764, -0.302781,
		33.844730, 31.380096, 25.753260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.220276, 30.739792, 25.246775>,  <34.365463, 30.963060, 25.965206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.220276, 30.739792, 25.246775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.069656, 31.109669, 25.269257>,  <33.979286, 31.331594, 25.282745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.069656, 31.109669, 25.269257>,  <34.220276, 30.739792, 25.246775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.069656, 31.109669, 25.269257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376166, 0.208059, -0.902890,
		-0.846589, -0.318837, -0.426182,
		-0.376546, 0.924691, 0.056205,
		33.956692, 31.387075, 25.286118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.876942, 30.878046, 24.552931>,  <34.220276, 30.739792, 25.246775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.876942, 30.878046, 24.552931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.975643, 31.219772, 24.735909>,  <34.034863, 31.424809, 24.845695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.975643, 31.219772, 24.735909>,  <33.876942, 30.878046, 24.552931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.975643, 31.219772, 24.735909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391880, 0.343758, -0.853382,
		-0.886309, 0.389837, -0.249967,
		0.246752, 0.854317, 0.457445,
		34.049667, 31.476067, 24.873142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.645519, 31.441721, 24.015387>,  <33.876942, 30.878046, 24.552931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.645519, 31.441721, 24.015387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.919895, 31.590733, 24.265415>,  <34.084518, 31.680140, 24.415432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.919895, 31.590733, 24.265415>,  <33.645519, 31.441721, 24.015387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.919895, 31.590733, 24.265415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395908, 0.529674, -0.750135,
		-0.610530, 0.762016, 0.215836,
		0.685937, 0.372529, 0.625070,
		34.125675, 31.702492, 24.452936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.722054, 32.114971, 23.697702>,  <33.645519, 31.441721, 24.015387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.722054, 32.114971, 23.697702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.032593, 32.056515, 23.942955>,  <34.218914, 32.021439, 24.090107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.032593, 32.056515, 23.942955>,  <33.722054, 32.114971, 23.697702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.032593, 32.056515, 23.942955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570232, 0.577316, -0.584415,
		-0.268563, 0.803335, 0.531532,
		0.776343, -0.146145, 0.613134,
		34.265495, 32.012672, 24.126896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.102242, 32.716412, 23.639252>,  <33.722054, 32.114971, 23.697702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.102242, 32.716412, 23.639252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.387360, 32.476791, 23.785168>,  <34.558430, 32.333019, 23.872717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.387360, 32.476791, 23.785168>,  <34.102242, 32.716412, 23.639252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.387360, 32.476791, 23.785168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650444, 0.370009, -0.663337,
		0.262396, 0.710095, 0.653386,
		0.712791, -0.599048, 0.364788,
		34.601196, 32.297077, 23.894604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.687820, 33.149834, 23.660215>,  <34.102242, 32.716412, 23.639252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.687820, 33.149834, 23.660215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.840252, 32.780937, 23.686298>,  <34.931709, 32.559601, 23.701948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.840252, 32.780937, 23.686298>,  <34.687820, 33.149834, 23.660215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.840252, 32.780937, 23.686298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788457, 0.287346, -0.543845,
		0.482819, 0.258662, 0.836648,
		0.381080, -0.922240, 0.065207,
		34.954575, 32.504265, 23.705860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.433693, 33.243561, 23.787354>,  <34.687820, 33.149834, 23.660215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.433693, 33.243561, 23.787354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.369514, 32.882462, 23.627697>,  <35.331009, 32.665802, 23.531904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.369514, 32.882462, 23.627697>,  <35.433693, 33.243561, 23.787354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.369514, 32.882462, 23.627697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617948, 0.223456, -0.753795,
		0.769674, -0.367589, 0.521997,
		-0.160443, -0.902744, -0.399139,
		35.321381, 32.611637, 23.507956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.132332, 32.991295, 23.576515>,  <35.433693, 33.243561, 23.787354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.132332, 32.991295, 23.576515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.869564, 32.787365, 23.354336>,  <35.711903, 32.665005, 23.221027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.869564, 32.787365, 23.354336>,  <36.132332, 32.991295, 23.576515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.869564, 32.787365, 23.354336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547318, 0.184224, -0.816398,
		0.518550, -0.840319, 0.158017,
		-0.656924, -0.509829, -0.555451,
		35.672485, 32.634415, 23.187700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.037201, 33.153500, 24.332327>,  <36.132332, 32.991295, 23.576515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.037201, 33.153500, 24.332327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.112972, 33.528656, 24.216072>,  <36.158436, 33.753750, 24.146318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.112972, 33.528656, 24.216072>,  <36.037201, 33.153500, 24.332327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.112972, 33.528656, 24.216072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240233, 0.242730, 0.939877,
		0.952053, -0.247862, -0.179333,
		0.189430, 0.937895, -0.290637,
		36.169800, 33.810024, 24.128881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.693836, 33.293941, 24.516571>,  <36.037201, 33.153500, 24.332327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.693836, 33.293941, 24.516571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.451427, 33.611290, 24.493626>,  <36.305981, 33.801701, 24.479858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.451427, 33.611290, 24.493626>,  <36.693836, 33.293941, 24.516571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.451427, 33.611290, 24.493626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035274, 0.098847, 0.994477,
		0.794664, 0.600654, -0.087889,
		-0.606024, 0.793375, -0.057363,
		36.269619, 33.849304, 24.476418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.965183, 33.777519, 24.960846>,  <36.693836, 33.293941, 24.516571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.965183, 33.777519, 24.960846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.569019, 33.813614, 24.919006>,  <36.331322, 33.835270, 24.893902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.569019, 33.813614, 24.919006>,  <36.965183, 33.777519, 24.960846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.569019, 33.813614, 24.919006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087714, 0.174196, 0.980797,
		0.106727, 0.980568, -0.164610,
		-0.990412, 0.090239, -0.104601,
		36.271896, 33.840687, 24.887627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.831375, 34.450161, 25.227409>,  <36.965183, 33.777519, 24.960846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.831375, 34.450161, 25.227409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.493908, 34.238312, 25.262558>,  <36.291428, 34.111202, 25.283648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.493908, 34.238312, 25.262558>,  <36.831375, 34.450161, 25.227409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.493908, 34.238312, 25.262558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001629, 0.161151, 0.986928,
		-0.536861, 0.832784, -0.135096,
		-0.843669, -0.529624, 0.087872,
		36.240807, 34.079426, 25.288919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.407639, 34.818008, 25.707125>,  <36.831375, 34.450161, 25.227409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.407639, 34.818008, 25.707125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.237034, 34.456226, 25.704632>,  <36.134670, 34.239155, 25.703136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.237034, 34.456226, 25.704632>,  <36.407639, 34.818008, 25.707125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.237034, 34.456226, 25.704632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086026, 0.033709, 0.995723,
		-0.900380, 0.425228, -0.092184,
		-0.426516, -0.904459, -0.006230,
		36.109077, 34.184887, 25.702763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.815639, 34.919941, 26.162601>,  <36.407639, 34.818008, 25.707125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.815639, 34.919941, 26.162601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.895485, 34.528393, 26.144852>,  <35.943390, 34.293465, 26.134201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.895485, 34.528393, 26.144852>,  <35.815639, 34.919941, 26.162601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.895485, 34.528393, 26.144852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071992, -0.059815, 0.995610,
		-0.977227, -0.195540, -0.082410,
		0.199611, -0.978870, -0.044376,
		35.955368, 34.234734, 26.131538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.194515, 34.610947, 26.506374>,  <35.815639, 34.919941, 26.162601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.194515, 34.610947, 26.506374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.483143, 34.334751, 26.486103>,  <35.656319, 34.169033, 26.473940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.483143, 34.334751, 26.486103>,  <35.194515, 34.610947, 26.506374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.483143, 34.334751, 26.486103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214768, -0.292816, 0.931737,
		-0.658194, -0.661425, -0.359581,
		0.721565, -0.690490, -0.050677,
		35.699612, 34.127605, 26.470900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.843445, 34.014709, 26.740185>,  <35.194515, 34.610947, 26.506374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.843445, 34.014709, 26.740185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.233208, 33.939953, 26.790157>,  <35.467064, 33.895100, 26.820141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.233208, 33.939953, 26.790157>,  <34.843445, 34.014709, 26.740185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.233208, 33.939953, 26.790157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182945, -0.336279, 0.923822,
		-0.130642, -0.923032, -0.361862,
		0.974404, -0.186891, 0.124932,
		35.525528, 33.883884, 26.827637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.928082, 33.324078, 27.205969>,  <34.843445, 34.014709, 26.740185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.928082, 33.324078, 27.205969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.262558, 33.541435, 27.235664>,  <35.463242, 33.671848, 27.253481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.262558, 33.541435, 27.235664>,  <34.928082, 33.324078, 27.205969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.262558, 33.541435, 27.235664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053330, -0.215283, 0.975094,
		0.545844, -0.811403, -0.208996,
		0.836188, 0.543395, 0.074239,
		35.513416, 33.704453, 27.257936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.303585, 32.785877, 27.699938>,  <34.928082, 33.324078, 27.205969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.303585, 32.785877, 27.699938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.461056, 33.153503, 27.692562>,  <35.555538, 33.374077, 27.688137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.461056, 33.153503, 27.692562>,  <35.303585, 32.785877, 27.699938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.461056, 33.153503, 27.692562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034038, 0.034621, 0.998821,
		0.918618, -0.392586, 0.044913,
		0.393678, 0.919063, -0.018441,
		35.579159, 33.429222, 27.687031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.995132, 32.723866, 27.971203>,  <35.303585, 32.785877, 27.699938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.995132, 32.723866, 27.971203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.905155, 33.110142, 28.023098>,  <35.851170, 33.341908, 28.054235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.905155, 33.110142, 28.023098>,  <35.995132, 32.723866, 27.971203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.905155, 33.110142, 28.023098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053954, -0.120601, 0.991234,
		0.972876, 0.229976, -0.024974,
		-0.224948, 0.965695, 0.129738,
		35.837669, 33.399849, 28.062019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.541553, 33.057838, 28.442566>,  <35.995132, 32.723866, 27.971203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.541553, 33.057838, 28.442566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.187847, 33.243401, 28.464008>,  <35.975624, 33.354736, 28.476873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.187847, 33.243401, 28.464008>,  <36.541553, 33.057838, 28.442566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.187847, 33.243401, 28.464008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014142, -0.088137, 0.996008,
		0.466776, 0.881491, 0.071376,
		-0.884262, 0.463903, 0.053607,
		35.922569, 33.382572, 28.480091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.604553, 33.344234, 29.081757>,  <36.541553, 33.057838, 28.442566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.604553, 33.344234, 29.081757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.217484, 33.411591, 29.006649>,  <35.985241, 33.452003, 28.961584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.217484, 33.411591, 29.006649>,  <36.604553, 33.344234, 29.081757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.217484, 33.411591, 29.006649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209874, -0.124732, 0.969740,
		0.139872, 0.977797, 0.156040,
		-0.967672, 0.168388, -0.187768,
		35.927181, 33.462109, 28.950319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.439358, 33.506123, 29.686775>,  <36.604553, 33.344234, 29.081757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.439358, 33.506123, 29.686775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.079334, 33.468266, 29.516632>,  <35.863319, 33.445553, 29.414545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.079334, 33.468266, 29.516632>,  <36.439358, 33.506123, 29.686775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.079334, 33.468266, 29.516632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418378, -0.085265, 0.904262,
		-0.121850, 0.991853, 0.037148,
		-0.900062, -0.094643, -0.425359,
		35.809315, 33.439873, 29.389025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.087540, 34.103630, 29.871935>,  <36.439358, 33.506123, 29.686775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.087540, 34.103630, 29.871935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.845905, 33.793999, 29.796173>,  <35.700924, 33.608219, 29.750715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.845905, 33.793999, 29.796173>,  <36.087540, 34.103630, 29.871935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.845905, 33.793999, 29.796173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306127, 0.005967, 0.951972,
		-0.735775, 0.633057, -0.240572,
		-0.604088, -0.774082, -0.189405,
		35.664680, 33.561775, 29.739351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.268528, 34.252434, 30.157200>,  <36.087540, 34.103630, 29.871935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.268528, 34.252434, 30.157200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.290310, 33.854160, 30.127155>,  <35.303379, 33.615196, 30.109129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.290310, 33.854160, 30.127155>,  <35.268528, 34.252434, 30.157200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.290310, 33.854160, 30.127155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583333, -0.092777, 0.806917,
		-0.810405, -0.000128, -0.585870,
		0.054458, -0.995687, -0.075113,
		35.306648, 33.555454, 30.104622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.620644, 34.067013, 30.308916>,  <35.268528, 34.252434, 30.157200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.620644, 34.067013, 30.308916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.837029, 33.733437, 30.352566>,  <34.966858, 33.533291, 30.378756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.837029, 33.733437, 30.352566>,  <34.620644, 34.067013, 30.308916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.837029, 33.733437, 30.352566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652744, -0.334473, 0.679744,
		-0.530366, -0.438945, -0.725285,
		0.540959, -0.833939, 0.109126,
		34.999317, 33.483253, 30.385303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.183571, 33.538757, 30.149740>,  <34.620644, 34.067013, 30.308916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.183571, 33.538757, 30.149740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.471542, 33.387108, 30.382278>,  <34.644325, 33.296120, 30.521801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.471542, 33.387108, 30.382278>,  <34.183571, 33.538757, 30.149740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.471542, 33.387108, 30.382278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666188, -0.142559, 0.732031,
		-0.194654, -0.914299, -0.355201,
		0.719932, -0.379123, 0.581345,
		34.687523, 33.273373, 30.556683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.855728, 33.031727, 30.503199>,  <34.183571, 33.538757, 30.149740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.855728, 33.031727, 30.503199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.199512, 33.068069, 30.704426>,  <34.405785, 33.089874, 30.825161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.199512, 33.068069, 30.704426>,  <33.855728, 33.031727, 30.503199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.199512, 33.068069, 30.704426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483612, -0.174433, 0.857725,
		0.165679, -0.980469, -0.105980,
		0.859459, 0.090854, 0.503066,
		34.457352, 33.095325, 30.855345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.039330, 32.343548, 30.840212>,  <33.855728, 33.031727, 30.503199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.039330, 32.343548, 30.840212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.210339, 32.633667, 31.056053>,  <34.312943, 32.807739, 31.185558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.210339, 32.633667, 31.056053>,  <34.039330, 32.343548, 30.840212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.210339, 32.633667, 31.056053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415459, -0.372493, 0.829845,
		0.802881, -0.578960, 0.142082,
		0.427522, 0.725296, 0.539602,
		34.338596, 32.851257, 31.217934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.288834, 31.936457, 31.267439>,  <34.039330, 32.343548, 30.840212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.288834, 31.936457, 31.267439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.306213, 32.308933, 31.412212>,  <34.316639, 32.532421, 31.499077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.306213, 32.308933, 31.412212>,  <34.288834, 31.936457, 31.267439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.306213, 32.308933, 31.412212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346987, -0.325658, 0.879515,
		0.936863, -0.163796, 0.308963,
		0.043445, 0.931192, 0.361932,
		34.319248, 32.588291, 31.520792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.424225, 31.925797, 32.024963>,  <34.288834, 31.936457, 31.267439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.424225, 31.925797, 32.024963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.292171, 32.302685, 32.002224>,  <34.212940, 32.528816, 31.988581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.292171, 32.302685, 32.002224>,  <34.424225, 31.925797, 32.024963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.292171, 32.302685, 32.002224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333001, -0.059899, 0.941022,
		0.883245, 0.329593, 0.333535,
		-0.330133, 0.942221, -0.056850,
		34.193130, 32.585350, 31.985168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.673294, 32.314369, 32.690796>,  <34.424225, 31.925797, 32.024963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.673294, 32.314369, 32.690796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.353580, 32.504677, 32.543938>,  <34.161751, 32.618862, 32.455822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.353580, 32.504677, 32.543938>,  <34.673294, 32.314369, 32.690796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.353580, 32.504677, 32.543938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345521, 0.136035, 0.928499,
		0.491693, 0.868988, 0.055657,
		-0.799283, 0.475767, -0.367141,
		34.113796, 32.647408, 32.433796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.572407, 32.742931, 33.187702>,  <34.673294, 32.314369, 32.690796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.572407, 32.742931, 33.187702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.219143, 32.741806, 33.000076>,  <34.007183, 32.741131, 32.887501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.219143, 32.741806, 33.000076>,  <34.572407, 32.742931, 33.187702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.219143, 32.741806, 33.000076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468935, 0.029769, 0.882731,
		0.011482, 0.999553, -0.027609,
		-0.883158, -0.002811, -0.469067,
		33.954197, 32.740963, 32.859356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.121807, 33.230743, 33.473579>,  <34.572407, 32.742931, 33.187702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.121807, 33.230743, 33.473579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.868389, 32.991093, 33.277756>,  <33.716339, 32.847301, 33.160259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.868389, 32.991093, 33.277756>,  <34.121807, 33.230743, 33.473579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.868389, 32.991093, 33.277756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458084, -0.219469, 0.861390,
		-0.623526, 0.769987, -0.135408,
		-0.633541, -0.599127, -0.489563,
		33.678326, 32.811356, 33.130886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.563099, 33.468727, 33.689232>,  <34.121807, 33.230743, 33.473579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.563099, 33.468727, 33.689232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.457169, 33.108498, 33.551338>,  <33.393608, 32.892361, 33.468601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.457169, 33.108498, 33.551338>,  <33.563099, 33.468727, 33.689232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.457169, 33.108498, 33.551338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502568, -0.176203, 0.846391,
		-0.822977, 0.397399, -0.405934,
		-0.264829, -0.900570, -0.344731,
		33.377720, 32.838326, 33.447918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.903290, 33.349941, 33.873413>,  <33.563099, 33.468727, 33.689232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.903290, 33.349941, 33.873413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.009235, 32.967167, 33.825878>,  <33.072803, 32.737503, 33.797359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.009235, 32.967167, 33.825878>,  <32.903290, 33.349941, 33.873413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.009235, 32.967167, 33.825878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448145, -0.231274, 0.863527,
		-0.853822, -0.175464, -0.490102,
		0.264866, -0.956935, -0.118834,
		33.088696, 32.680088, 33.790230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.303196, 32.943199, 33.970161>,  <32.903290, 33.349941, 33.873413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.303196, 32.943199, 33.970161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.598083, 32.680225, 34.032494>,  <32.775017, 32.522442, 34.069893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.598083, 32.680225, 34.032494>,  <32.303196, 32.943199, 33.970161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.598083, 32.680225, 34.032494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416040, -0.259985, 0.871389,
		-0.532369, -0.707238, -0.465186,
		0.737220, -0.657436, 0.155831,
		32.819248, 32.482994, 34.079243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.572229, 32.828400, 33.845787>,  <32.303196, 32.943199, 33.970161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.572229, 32.828400, 33.845787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.529167, 33.183651, 34.024513>,  <31.503330, 33.396801, 34.131748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.529167, 33.183651, 34.024513>,  <31.572229, 32.828400, 33.845787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.529167, 33.183651, 34.024513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247640, 0.459213, -0.853110,
		-0.962853, 0.018807, -0.269372,
		-0.107654, 0.888127, 0.446812,
		31.496870, 33.450089, 34.158558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.273756, 33.201794, 33.332993>,  <31.572229, 32.828400, 33.845787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.273756, 33.201794, 33.332993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.415636, 33.490009, 33.571327>,  <31.500763, 33.662937, 33.714329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.415636, 33.490009, 33.571327>,  <31.273756, 33.201794, 33.332993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.415636, 33.490009, 33.571327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298239, 0.516788, -0.802486,
		-0.886139, 0.462342, -0.031588,
		0.354698, 0.720535, 0.595834,
		31.522045, 33.706169, 33.750076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.999760, 33.738094, 33.098293>,  <31.273756, 33.201794, 33.332993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.999760, 33.738094, 33.098293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.321888, 33.874172, 33.292500>,  <31.515165, 33.955818, 33.409023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.321888, 33.874172, 33.292500>,  <30.999760, 33.738094, 33.098293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.321888, 33.874172, 33.292500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231899, 0.572943, -0.786104,
		-0.545601, 0.745657, 0.382512,
		0.805321, 0.340195, 0.485515,
		31.563484, 33.976231, 33.438152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.970772, 34.418865, 32.831123>,  <30.999760, 33.738094, 33.098293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.970772, 34.418865, 32.831123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.334677, 34.357025, 32.985229>,  <31.553019, 34.319920, 33.077694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.334677, 34.357025, 32.985229>,  <30.970772, 34.418865, 32.831123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.334677, 34.357025, 32.985229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405828, 0.526606, -0.746987,
		-0.087399, 0.835933, 0.541828,
		0.909761, -0.154603, 0.385270,
		31.607605, 34.310646, 33.100811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.315868, 35.003059, 32.664284>,  <30.970772, 34.418865, 32.831123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.315868, 35.003059, 32.664284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.620483, 34.750759, 32.723904>,  <31.803253, 34.599380, 32.759678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.620483, 34.750759, 32.723904>,  <31.315868, 35.003059, 32.664284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.620483, 34.750759, 32.723904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370913, 0.235546, -0.898299,
		0.531493, 0.739374, 0.413330,
		0.761537, -0.630749, 0.149052,
		31.848944, 34.561535, 32.768620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
