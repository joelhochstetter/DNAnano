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
	<43.140259, 32.415585, 22.947397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.434029, 32.687035, 22.951309>,  <43.610291, 32.849903, 22.953655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.434029, 32.687035, 22.951309>,  <43.140259, 32.415585, 22.947397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.434029, 32.687035, 22.951309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471260, -0.499534, -0.726897,
		-0.488405, 0.538457, -0.686677,
		0.734421, 0.678624, 0.009779,
		43.654354, 32.890621, 22.954243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.564739, 32.781994, 22.609980>,  <43.140259, 32.415585, 22.947397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.564739, 32.781994, 22.609980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.442192, 32.804180, 22.229862>,  <42.368664, 32.817493, 22.001791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.442192, 32.804180, 22.229862>,  <42.564739, 32.781994, 22.609980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.442192, 32.804180, 22.229862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696460, -0.693592, 0.184048,
		-0.648908, 0.718229, 0.251128,
		-0.306369, 0.055470, -0.950295,
		42.350281, 32.820820, 21.944773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.896126, 32.703156, 22.559038>,  <42.564739, 32.781994, 22.609980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.896126, 32.703156, 22.559038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.988026, 32.603474, 22.182716>,  <42.043167, 32.543667, 21.956924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.988026, 32.603474, 22.182716>,  <41.896126, 32.703156, 22.559038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.988026, 32.603474, 22.182716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728393, -0.685149, 0.003603,
		-0.645489, 0.684447, -0.338933,
		0.229754, -0.249203, -0.940803,
		42.056953, 32.528713, 21.900475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.440468, 32.961510, 21.910694>,  <41.896126, 32.703156, 22.559038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.440468, 32.961510, 21.910694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.616470, 32.602329, 21.914169>,  <41.722073, 32.386822, 21.916254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.616470, 32.602329, 21.914169>,  <41.440468, 32.961510, 21.910694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.616470, 32.602329, 21.914169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889271, -0.434366, 0.143258,
		-0.124866, -0.070759, -0.989647,
		0.440006, -0.897953, 0.008686,
		41.748470, 32.332943, 21.916775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.314373, 32.380138, 22.233147>,  <41.440468, 32.961510, 21.910694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.314373, 32.380138, 22.233147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.026630, 32.295341, 21.968548>,  <40.853985, 32.244461, 21.809788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.026630, 32.295341, 21.968548>,  <41.314373, 32.380138, 22.233147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.026630, 32.295341, 21.968548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145732, -0.885041, 0.442113,
		-0.679179, 0.414440, 0.605769,
		-0.719360, -0.211994, -0.661498,
		40.810822, 32.231743, 21.770098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.643883, 32.575031, 22.300695>,  <41.314373, 32.380138, 22.233147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.643883, 32.575031, 22.300695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.314404, 32.688126, 22.497303>,  <40.116718, 32.755981, 22.615267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.314404, 32.688126, 22.497303>,  <40.643883, 32.575031, 22.300695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.314404, 32.688126, 22.497303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533234, 0.091421, 0.841013,
		0.192849, 0.954831, -0.226067,
		-0.823693, 0.282735, 0.491518,
		40.067295, 32.772945, 22.644758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.724827, 33.260445, 22.664656>,  <40.643883, 32.575031, 22.300695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.724827, 33.260445, 22.664656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.418373, 33.083073, 22.850735>,  <40.234501, 32.976650, 22.962381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.418373, 33.083073, 22.850735>,  <40.724827, 33.260445, 22.664656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.418373, 33.083073, 22.850735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503431, 0.035871, 0.863291,
		-0.399496, 0.895591, 0.195755,
		-0.766133, -0.443430, 0.465198,
		40.188534, 32.950043, 22.990294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.825665, 33.420658, 23.385527>,  <40.724827, 33.260445, 22.664656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.825665, 33.420658, 23.385527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.530552, 33.152866, 23.420139>,  <40.353485, 32.992191, 23.440907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.530552, 33.152866, 23.420139>,  <40.825665, 33.420658, 23.385527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.530552, 33.152866, 23.420139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419182, -0.353880, 0.836095,
		-0.529123, 0.653124, 0.541717,
		-0.737777, -0.669475, 0.086532,
		40.309219, 32.952023, 23.446098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.649166, 33.391598, 24.087561>,  <40.825665, 33.420658, 23.385527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.649166, 33.391598, 24.087561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.524414, 33.023216, 23.994118>,  <40.449562, 32.802189, 23.938051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.524414, 33.023216, 23.994118>,  <40.649166, 33.391598, 24.087561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.524414, 33.023216, 23.994118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614454, -0.383040, 0.689729,
		-0.724691, 0.071570, 0.685347,
		-0.311880, -0.920955, -0.233609,
		40.430851, 32.746929, 23.924034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.421001, 33.056103, 24.748667>,  <40.649166, 33.391598, 24.087561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.421001, 33.056103, 24.748667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.511864, 32.747753, 24.510624>,  <40.566383, 32.562744, 24.367798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.511864, 32.747753, 24.510624>,  <40.421001, 33.056103, 24.748667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.511864, 32.747753, 24.510624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714253, -0.283516, 0.639891,
		-0.661998, -0.570415, 0.486195,
		0.227160, -0.770873, -0.595108,
		40.580013, 32.516491, 24.332092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.430450, 32.533005, 25.173615>,  <40.421001, 33.056103, 24.748667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.430450, 32.533005, 25.173615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.643017, 32.438644, 24.848175>,  <40.770557, 32.382027, 24.652910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.643017, 32.438644, 24.848175>,  <40.430450, 32.533005, 25.173615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.643017, 32.438644, 24.848175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667839, -0.474192, 0.573701,
		-0.521138, -0.848230, -0.094452,
		0.531418, -0.235899, -0.813601,
		40.802441, 32.367874, 24.604095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.752308, 31.774158, 25.239933>,  <40.430450, 32.533005, 25.173615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.752308, 31.774158, 25.239933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.985050, 31.901447, 24.940552>,  <41.124695, 31.977821, 24.760923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.985050, 31.901447, 24.940552>,  <40.752308, 31.774158, 25.239933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.985050, 31.901447, 24.940552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807068, -0.339574, 0.483043,
		-0.100439, -0.885112, -0.454410,
		0.581853, 0.318223, -0.748453,
		41.159607, 31.996914, 24.716017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.070404, 31.274872, 25.147097>,  <40.752308, 31.774158, 25.239933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.070404, 31.274872, 25.147097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.299217, 31.550541, 24.969189>,  <41.436504, 31.715942, 24.862444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.299217, 31.550541, 24.969189>,  <41.070404, 31.274872, 25.147097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.299217, 31.550541, 24.969189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798992, -0.345585, 0.492121,
		0.185451, -0.636876, -0.748329,
		0.572031, 0.689174, -0.444769,
		41.470825, 31.757294, 24.835758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.593510, 30.925615, 24.777157>,  <41.070404, 31.274872, 25.147097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.593510, 30.925615, 24.777157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.728657, 31.289085, 24.875263>,  <41.809746, 31.507168, 24.934128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.728657, 31.289085, 24.875263>,  <41.593510, 30.925615, 24.777157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.728657, 31.289085, 24.875263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794404, -0.415068, 0.443443,
		0.504748, 0.045017, -0.862092,
		0.337865, 0.908676, 0.245266,
		41.830017, 31.561687, 24.948843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.415573, 30.928959, 24.572220>,  <41.593510, 30.925615, 24.777157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.415573, 30.928959, 24.572220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.350880, 31.234798, 24.821774>,  <42.312065, 31.418303, 24.971506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.350880, 31.234798, 24.821774>,  <42.415573, 30.928959, 24.572220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.350880, 31.234798, 24.821774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790827, -0.277738, 0.545394,
		0.590284, 0.581591, -0.559747,
		-0.161733, 0.764600, 0.623882,
		42.302361, 31.464178, 25.008938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.014568, 31.211401, 24.596649>,  <42.415573, 30.928959, 24.572220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.014568, 31.211401, 24.596649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.848381, 31.355007, 24.930954>,  <42.748669, 31.441172, 25.131536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.848381, 31.355007, 24.930954>,  <43.014568, 31.211401, 24.596649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.848381, 31.355007, 24.930954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838285, -0.205532, 0.505010,
		0.353083, 0.910419, -0.215567,
		-0.415465, 0.359017, 0.835761,
		42.723743, 31.462711, 25.181683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.522728, 31.614317, 24.976181>,  <43.014568, 31.211401, 24.596649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.522728, 31.614317, 24.976181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.252541, 31.524620, 25.257168>,  <43.090427, 31.470802, 25.425760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.252541, 31.524620, 25.257168>,  <43.522728, 31.614317, 24.976181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.252541, 31.524620, 25.257168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735849, -0.143452, 0.661777,
		-0.047627, 0.963918, 0.261905,
		-0.675469, -0.224241, 0.702465,
		43.049900, 31.457348, 25.467907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.674068, 32.013405, 25.550871>,  <43.522728, 31.614317, 24.976181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.674068, 32.013405, 25.550871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.447315, 31.730141, 25.719231>,  <43.311264, 31.560183, 25.820246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.447315, 31.730141, 25.719231>,  <43.674068, 32.013405, 25.550871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.447315, 31.730141, 25.719231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644522, -0.063051, 0.761981,
		-0.513067, 0.703231, 0.492167,
		-0.566881, -0.708160, 0.420899,
		43.277252, 31.517693, 25.845501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.527302, 32.159245, 26.330418>,  <43.674068, 32.013405, 25.550871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.527302, 32.159245, 26.330418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.486832, 31.766197, 26.268150>,  <43.462551, 31.530369, 26.230791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.486832, 31.766197, 26.268150>,  <43.527302, 32.159245, 26.330418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.486832, 31.766197, 26.268150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540802, -0.185653, 0.820406,
		-0.835043, -0.001180, 0.550184,
		-0.101175, -0.982615, -0.155666,
		43.456478, 31.471413, 26.221451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.629391, 31.949064, 26.990412>,  <43.527302, 32.159245, 26.330418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.629391, 31.949064, 26.990412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.657669, 31.606678, 26.785542>,  <43.674637, 31.401245, 26.662619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.657669, 31.606678, 26.785542>,  <43.629391, 31.949064, 26.990412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.657669, 31.606678, 26.785542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501240, -0.413442, 0.760148,
		-0.862416, -0.310463, 0.399815,
		0.070697, -0.855966, -0.512175,
		43.678879, 31.349888, 26.631889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.466339, 31.365395, 27.477482>,  <43.629391, 31.949064, 26.990412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.466339, 31.365395, 27.477482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.678791, 31.239788, 27.162701>,  <43.806263, 31.164423, 26.973833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.678791, 31.239788, 27.162701>,  <43.466339, 31.365395, 27.477482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.678791, 31.239788, 27.162701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698511, -0.363412, 0.616453,
		-0.479565, -0.877111, 0.026325,
		0.531131, -0.314018, -0.786952,
		43.838131, 31.145582, 26.926615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.684582, 30.665346, 27.704235>,  <43.466339, 31.365395, 27.477482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.684582, 30.665346, 27.704235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.915970, 30.748158, 27.388638>,  <44.054802, 30.797844, 27.199280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.915970, 30.748158, 27.388638>,  <43.684582, 30.665346, 27.704235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.915970, 30.748158, 27.388638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763310, -0.478454, 0.434096,
		-0.287627, -0.853359, -0.434799,
		0.578471, 0.207028, -0.788994,
		44.089512, 30.810266, 27.151939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.759583, 30.066830, 27.251976>,  <43.684582, 30.665346, 27.704235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.759583, 30.066830, 27.251976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.088169, 30.289688, 27.203354>,  <44.285320, 30.423403, 27.174181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.088169, 30.289688, 27.203354>,  <43.759583, 30.066830, 27.251976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.088169, 30.289688, 27.203354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501187, -0.603703, 0.619963,
		0.272028, -0.570202, -0.775158,
		0.821470, 0.557146, -0.121553,
		44.334610, 30.456833, 27.166887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.361431, 29.533606, 27.041527>,  <43.759583, 30.066830, 27.251976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.361431, 29.533606, 27.041527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.526432, 29.877338, 27.162449>,  <44.625431, 30.083578, 27.235003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.526432, 29.877338, 27.162449>,  <44.361431, 29.533606, 27.041527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.526432, 29.877338, 27.162449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570027, -0.502351, 0.650165,
		0.710571, -0.095872, -0.697063,
		0.412503, 0.859333, 0.302306,
		44.650185, 30.135138, 27.253141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.983356, 29.300116, 27.039333>,  <44.361431, 29.533606, 27.041527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.983356, 29.300116, 27.039333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.988693, 29.634487, 27.258804>,  <44.991894, 29.835110, 27.390488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.988693, 29.634487, 27.258804>,  <44.983356, 29.300116, 27.039333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.988693, 29.634487, 27.258804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599419, -0.445882, 0.664746,
		0.800325, 0.320021, -0.507018,
		0.013337, 0.835928, 0.548677,
		44.992695, 29.885265, 27.423407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.674137, 29.427719, 27.279730>,  <44.983356, 29.300116, 27.039333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.674137, 29.427719, 27.279730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.432552, 29.606682, 27.543564>,  <45.287601, 29.714060, 27.701864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.432552, 29.606682, 27.543564>,  <45.674137, 29.427719, 27.279730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.432552, 29.606682, 27.543564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489367, -0.445033, 0.749976,
		0.629082, 0.775740, 0.049839,
		-0.603967, 0.447407, 0.659584,
		45.251362, 29.740904, 27.741440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.970669, 29.909893, 27.832388>,  <45.674137, 29.427719, 27.279730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.970669, 29.909893, 27.832388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.634304, 29.732544, 27.956509>,  <45.432484, 29.626135, 28.030981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.634304, 29.732544, 27.956509>,  <45.970669, 29.909893, 27.832388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.634304, 29.732544, 27.956509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511197, -0.462612, 0.724340,
		-0.177603, 0.767732, 0.615667,
		-0.840913, -0.443372, 0.310301,
		45.382030, 29.599533, 28.049599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.936256, 30.102900, 28.525375>,  <45.970669, 29.909893, 27.832388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.936256, 30.102900, 28.525375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.762184, 29.749733, 28.454861>,  <45.657742, 29.537834, 28.412552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.762184, 29.749733, 28.454861>,  <45.936256, 30.102900, 28.525375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.762184, 29.749733, 28.454861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540932, -0.412921, 0.732727,
		-0.719727, 0.223513, 0.657294,
		-0.435184, -0.882915, -0.176285,
		45.631630, 29.484859, 28.401976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.804317, 29.760721, 29.122068>,  <45.936256, 30.102900, 28.525375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.804317, 29.760721, 29.122068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.788651, 29.432396, 28.894127>,  <45.779251, 29.235401, 28.757362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.788651, 29.432396, 28.894127>,  <45.804317, 29.760721, 29.122068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.788651, 29.432396, 28.894127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420698, -0.530827, 0.735687,
		-0.906355, -0.210922, 0.366105,
		-0.039166, -0.820814, -0.569852,
		45.776901, 29.186152, 28.723171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.444828, 29.388174, 29.576584>,  <45.804317, 29.760721, 29.122068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.444828, 29.388174, 29.576584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.650948, 29.164627, 29.316696>,  <45.774620, 29.030499, 29.160763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.650948, 29.164627, 29.316696>,  <45.444828, 29.388174, 29.576584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.650948, 29.164627, 29.316696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336579, -0.565235, 0.753142,
		-0.788152, -0.606774, -0.103161,
		0.515297, -0.558869, -0.649719,
		45.805538, 28.996967, 29.121780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.186245, 28.648199, 29.609035>,  <45.444828, 29.388174, 29.576584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.186245, 28.648199, 29.609035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.397564, 28.308640, 29.602406>,  <45.524357, 28.104904, 29.598429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.397564, 28.308640, 29.602406>,  <45.186245, 28.648199, 29.609035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.397564, 28.308640, 29.602406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235189, -0.127555, -0.963543,
		0.815835, 0.512936, -0.267038,
		0.528298, -0.848897, -0.016573,
		45.556053, 28.053970, 29.597433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.884068, 29.170132, 30.136368>,  <45.186245, 28.648199, 29.609035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.884068, 29.170132, 30.136368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.545975, 28.979485, 30.039688>,  <44.343121, 28.865097, 29.981680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.545975, 28.979485, 30.039688>,  <44.884068, 29.170132, 30.136368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.545975, 28.979485, 30.039688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070308, 0.349171, -0.934418,
		0.529756, -0.806792, -0.261620,
		-0.845231, -0.476619, -0.241699,
		44.292404, 28.836498, 29.967178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.254475, 29.540562, 30.113098>,  <44.884068, 29.170132, 30.136368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.254475, 29.540562, 30.113098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.931019, 29.326565, 30.210987>,  <43.736946, 29.198166, 30.269720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.931019, 29.326565, 30.210987>,  <44.254475, 29.540562, 30.113098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.931019, 29.326565, 30.210987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488709, 0.379282, -0.785690,
		0.327514, -0.754940, -0.568156,
		-0.808640, -0.534987, 0.244726,
		43.688427, 29.166067, 30.284403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.057419, 29.189230, 29.506062>,  <44.254475, 29.540562, 30.113098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.057419, 29.189230, 29.506062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.739666, 29.202057, 29.748688>,  <43.549015, 29.209753, 29.894264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.739666, 29.202057, 29.748688>,  <44.057419, 29.189230, 29.506062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.739666, 29.202057, 29.748688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528537, 0.455617, -0.716283,
		-0.299331, -0.889598, -0.344987,
		-0.794386, 0.032068, 0.606566,
		43.501350, 29.211678, 29.930658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.519489, 28.800156, 29.204622>,  <44.057419, 29.189230, 29.506062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.519489, 28.800156, 29.204622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.377918, 29.091187, 29.439693>,  <43.292976, 29.265804, 29.580736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.377918, 29.091187, 29.439693>,  <43.519489, 28.800156, 29.204622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.377918, 29.091187, 29.439693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406087, 0.446482, -0.797337,
		-0.842511, -0.520851, 0.137435,
		-0.353932, 0.727577, 0.587677,
		43.271740, 29.309460, 29.615997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.715851, 28.826580, 29.204987>,  <43.519489, 28.800156, 29.204622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.715851, 28.826580, 29.204987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.906944, 29.173992, 29.257793>,  <43.021599, 29.382439, 29.289478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.906944, 29.173992, 29.257793>,  <42.715851, 28.826580, 29.204987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.906944, 29.173992, 29.257793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555375, 0.415020, -0.720636,
		-0.680685, 0.270949, 0.680628,
		0.477730, 0.868530, 0.132019,
		43.050262, 29.434551, 29.297400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.365685, 29.490355, 29.433880>,  <42.715851, 28.826580, 29.204987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.365685, 29.490355, 29.433880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.669670, 29.550236, 29.180885>,  <42.852062, 29.586164, 29.029089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.669670, 29.550236, 29.180885>,  <42.365685, 29.490355, 29.433880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.669670, 29.550236, 29.180885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642610, 0.319023, -0.696618,
		0.097492, 0.935849, 0.338648,
		0.759965, 0.149704, -0.632488,
		42.897659, 29.595146, 28.991138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.437355, 30.191599, 29.240543>,  <42.365685, 29.490355, 29.433880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.437355, 30.191599, 29.240543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.596970, 29.976528, 28.943443>,  <42.692738, 29.847486, 28.765182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.596970, 29.976528, 28.943443>,  <42.437355, 30.191599, 29.240543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.596970, 29.976528, 28.943443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689597, 0.357913, -0.629567,
		0.604343, 0.763416, -0.227960,
		0.399032, -0.537675, -0.742751,
		42.716679, 29.815226, 28.720617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.329361, 30.626175, 28.629318>,  <42.437355, 30.191599, 29.240543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.329361, 30.626175, 28.629318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.416847, 30.259216, 28.496326>,  <42.469341, 30.039042, 28.416533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.416847, 30.259216, 28.496326>,  <42.329361, 30.626175, 28.629318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.416847, 30.259216, 28.496326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637971, 0.123375, -0.760113,
		0.738346, 0.378362, -0.558289,
		0.218719, -0.917399, -0.332478,
		42.482464, 29.983997, 28.396584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.602406, 30.713186, 27.983200>,  <42.329361, 30.626175, 28.629318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.602406, 30.713186, 27.983200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.458321, 30.340584, 28.003357>,  <42.371868, 30.117022, 28.015451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.458321, 30.340584, 28.003357>,  <42.602406, 30.713186, 27.983200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.458321, 30.340584, 28.003357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645255, 0.209783, -0.734600,
		0.673714, -0.297128, -0.676627,
		-0.360214, -0.931507, 0.050390,
		42.350258, 30.061132, 28.018475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.557724, 30.443680, 27.230703>,  <42.602406, 30.713186, 27.983200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.557724, 30.443680, 27.230703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.337086, 30.199558, 27.458130>,  <42.204704, 30.053085, 27.594585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.337086, 30.199558, 27.458130>,  <42.557724, 30.443680, 27.230703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.337086, 30.199558, 27.458130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699644, -0.032596, -0.713748,
		0.454136, -0.791496, -0.409016,
		-0.551597, -0.610304, 0.568569,
		42.171608, 30.016468, 27.628700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.285110, 29.879019, 26.732040>,  <42.557724, 30.443680, 27.230703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.285110, 29.879019, 26.732040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.034466, 29.897289, 27.043236>,  <41.884079, 29.908251, 27.229954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.034466, 29.897289, 27.043236>,  <42.285110, 29.879019, 26.732040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.034466, 29.897289, 27.043236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760244, -0.255395, -0.597329,
		0.171411, -0.965757, 0.194759,
		-0.626616, 0.045675, 0.777989,
		41.846481, 29.910992, 27.276632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.820118, 29.258221, 26.735075>,  <42.285110, 29.879019, 26.732040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.820118, 29.258221, 26.735075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.610210, 29.529873, 26.940365>,  <41.484264, 29.692865, 27.063538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.610210, 29.529873, 26.940365>,  <41.820118, 29.258221, 26.735075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.610210, 29.529873, 26.940365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723436, -0.038065, -0.689341,
		-0.448617, -0.733029, 0.511283,
		-0.524769, 0.679131, 0.513224,
		41.452782, 29.733612, 27.094332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.190472, 28.983727, 26.769129>,  <41.820118, 29.258221, 26.735075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.190472, 28.983727, 26.769129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.149151, 29.378201, 26.820930>,  <41.124359, 29.614885, 26.852011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.149151, 29.378201, 26.820930>,  <41.190472, 28.983727, 26.769129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.149151, 29.378201, 26.820930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826785, -0.012758, -0.562374,
		-0.552951, -0.165167, 0.816679,
		-0.103304, 0.986183, 0.129503,
		41.118160, 29.674055, 26.859781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.350414, 29.107212, 26.785099>,  <41.190472, 28.983727, 26.769129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.350414, 29.107212, 26.785099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.506931, 29.473213, 26.745777>,  <40.600842, 29.692814, 26.722183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.506931, 29.473213, 26.745777>,  <40.350414, 29.107212, 26.785099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.506931, 29.473213, 26.745777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814191, 0.294414, -0.500413,
		-0.428937, 0.275846, 0.860187,
		0.391288, 0.915002, -0.098306,
		40.624317, 29.747713, 26.716286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.863602, 29.595127, 27.047171>,  <40.350414, 29.107212, 26.785099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.863602, 29.595127, 27.047171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.083504, 29.804237, 26.786564>,  <40.215443, 29.929705, 26.630199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.083504, 29.804237, 26.786564>,  <39.863602, 29.595127, 27.047171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.083504, 29.804237, 26.786564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833211, 0.398671, -0.383173,
		0.059427, 0.753502, 0.654755,
		0.549753, 0.522778, -0.651518,
		40.248428, 29.961071, 26.591108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.582352, 30.248613, 27.137987>,  <39.863602, 29.595127, 27.047171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.582352, 30.248613, 27.137987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.784286, 30.282745, 26.794392>,  <39.905445, 30.303225, 26.588234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.784286, 30.282745, 26.794392>,  <39.582352, 30.248613, 27.137987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.784286, 30.282745, 26.794392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704319, 0.616047, -0.352735,
		0.499077, 0.783074, 0.371102,
		0.504834, 0.085332, -0.858989,
		39.935738, 30.308346, 26.536695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.596779, 30.975376, 26.968065>,  <39.582352, 30.248613, 27.137987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.596779, 30.975376, 26.968065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.664600, 30.799301, 26.615364>,  <39.705292, 30.693657, 26.403744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.664600, 30.799301, 26.615364>,  <39.596779, 30.975376, 26.968065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.664600, 30.799301, 26.615364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494417, 0.735976, -0.462484,
		0.852528, 0.514370, -0.092847,
		0.169554, -0.440185, -0.881753,
		39.715466, 30.667246, 26.350838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.731289, 31.534668, 26.585529>,  <39.596779, 30.975376, 26.968065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.731289, 31.534668, 26.585529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.687855, 31.234863, 26.324318>,  <39.661797, 31.054981, 26.167591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.687855, 31.234863, 26.324318>,  <39.731289, 31.534668, 26.585529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.687855, 31.234863, 26.324318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302749, 0.650639, -0.696428,
		0.946865, 0.122083, -0.297562,
		-0.108584, -0.749510, -0.653027,
		39.655281, 31.010010, 26.128410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.997303, 31.757303, 25.954819>,  <39.731289, 31.534668, 26.585529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.997303, 31.757303, 25.954819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.733116, 31.467445, 25.876160>,  <39.574604, 31.293531, 25.828964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.733116, 31.467445, 25.876160>,  <39.997303, 31.757303, 25.954819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.733116, 31.467445, 25.876160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428808, 0.579014, -0.693445,
		0.616366, -0.373672, -0.693154,
		-0.660467, -0.724646, -0.196651,
		39.534973, 31.250051, 25.817165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.921261, 31.768703, 25.260584>,  <39.997303, 31.757303, 25.954819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.921261, 31.768703, 25.260584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.599060, 31.579926, 25.403938>,  <39.405739, 31.466658, 25.489950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.599060, 31.579926, 25.403938>,  <39.921261, 31.768703, 25.260584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.599060, 31.579926, 25.403938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580198, 0.505002, -0.639018,
		0.120597, -0.722662, -0.680600,
		-0.805498, -0.471946, 0.358385,
		39.357410, 31.438341, 25.511454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.489296, 31.737640, 24.710232>,  <39.921261, 31.768703, 25.260584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.489296, 31.737640, 24.710232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.232620, 31.684814, 25.012436>,  <39.078617, 31.653118, 25.193758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.232620, 31.684814, 25.012436>,  <39.489296, 31.737640, 24.710232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.232620, 31.684814, 25.012436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654004, 0.608795, -0.449052,
		-0.400649, -0.782258, -0.477026,
		-0.641685, -0.132064, 0.755512,
		39.040115, 31.645195, 25.239090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.788918, 31.612190, 24.374336>,  <39.489296, 31.737640, 24.710232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.788918, 31.612190, 24.374336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.735348, 31.748405, 24.746593>,  <38.703205, 31.830133, 24.969948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.735348, 31.748405, 24.746593>,  <38.788918, 31.612190, 24.374336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.735348, 31.748405, 24.746593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561296, 0.747878, -0.354435,
		-0.816707, -0.569835, 0.090981,
		-0.133927, 0.340537, 0.930644,
		38.695171, 31.850567, 25.025787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.038948, 31.603024, 24.449224>,  <38.788918, 31.612190, 24.374336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.038948, 31.603024, 24.449224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.169567, 31.843441, 24.741009>,  <38.247940, 31.987692, 24.916079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.169567, 31.843441, 24.741009>,  <38.038948, 31.603024, 24.449224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.169567, 31.843441, 24.741009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627535, 0.714991, -0.308200,
		-0.706799, -0.357119, 0.610656,
		0.326549, 0.601044, 0.729460,
		38.267532, 32.023754, 24.959846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.424541, 31.882425, 24.846498>,  <38.038948, 31.603024, 24.449224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.424541, 31.882425, 24.846498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.722614, 32.137192, 24.925537>,  <37.901459, 32.290051, 24.972961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.722614, 32.137192, 24.925537>,  <37.424541, 31.882425, 24.846498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.722614, 32.137192, 24.925537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537499, 0.749034, -0.387354,
		-0.394721, 0.182439, 0.900506,
		0.745178, 0.636918, 0.197599,
		37.946167, 32.328266, 24.984818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.079285, 32.424683, 25.102608>,  <37.424541, 31.882425, 24.846498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.079285, 32.424683, 25.102608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.442310, 32.565945, 25.011730>,  <37.660126, 32.650700, 24.957203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.442310, 32.565945, 25.011730>,  <37.079285, 32.424683, 25.102608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.442310, 32.565945, 25.011730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398645, 0.894619, -0.201840,
		0.131971, 0.273752, 0.952703,
		0.907560, 0.353154, -0.227193,
		37.714577, 32.671890, 24.943573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.158077, 33.098701, 25.396923>,  <37.079285, 32.424683, 25.102608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.158077, 33.098701, 25.396923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.468552, 33.156673, 25.151474>,  <37.654835, 33.191456, 25.004206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.468552, 33.156673, 25.151474>,  <37.158077, 33.098701, 25.396923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.468552, 33.156673, 25.151474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352180, 0.906906, -0.231282,
		0.522977, 0.395623, 0.754968,
		0.776186, 0.144930, -0.613622,
		37.701408, 33.200153, 24.967388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.606541, 33.774097, 25.497408>,  <37.158077, 33.098701, 25.396923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.606541, 33.774097, 25.497408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.603153, 33.662941, 25.113178>,  <37.601120, 33.596249, 24.882641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.603153, 33.662941, 25.113178>,  <37.606541, 33.774097, 25.497408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.603153, 33.662941, 25.113178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255291, 0.929378, -0.266614,
		0.966827, 0.242968, -0.078815,
		-0.008470, -0.277891, -0.960575,
		37.600613, 33.579575, 24.825006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.075775, 34.341190, 25.311865>,  <37.606541, 33.774097, 25.497408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.075775, 34.341190, 25.311865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.789116, 34.508076, 25.088314>,  <36.617119, 34.608208, 24.954184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.789116, 34.508076, 25.088314>,  <37.075775, 34.341190, 25.311865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.789116, 34.508076, 25.088314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140834, -0.698260, -0.701854,
		-0.683062, -0.581695, 0.441653,
		-0.716653, 0.417210, -0.558878,
		36.574120, 34.633240, 24.920650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.583981, 33.861176, 25.270254>,  <37.075775, 34.341190, 25.311865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.583981, 33.861176, 25.270254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.571564, 34.111214, 24.958282>,  <36.564114, 34.261238, 24.771099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.571564, 34.111214, 24.958282>,  <36.583981, 33.861176, 25.270254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.571564, 34.111214, 24.958282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132591, -0.770836, -0.623083,
		-0.990685, -0.122754, -0.058953,
		-0.031043, 0.625095, -0.779931,
		36.562252, 34.298740, 24.724302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.959961, 33.680405, 24.906969>,  <36.583981, 33.861176, 25.270254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.959961, 33.680405, 24.906969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.271358, 33.846169, 24.718410>,  <36.458195, 33.945629, 24.605274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.271358, 33.846169, 24.718410>,  <35.959961, 33.680405, 24.906969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.271358, 33.846169, 24.718410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201699, -0.876383, -0.437345,
		-0.594367, 0.245388, -0.765841,
		0.778489, 0.414413, -0.471398,
		36.504906, 33.970493, 24.576990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.466900, 33.955414, 24.490173>,  <35.959961, 33.680405, 24.906969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.466900, 33.955414, 24.490173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.480827, 34.005890, 24.886730>,  <35.489185, 34.036175, 25.124664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.480827, 34.005890, 24.886730>,  <35.466900, 33.955414, 24.490173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.480827, 34.005890, 24.886730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983148, 0.173810, -0.056655,
		-0.179464, 0.976661, -0.118012,
		0.034821, 0.126191, 0.991395,
		35.491272, 34.043747, 25.184149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.849007, 33.668541, 24.582266>,  <35.466900, 33.955414, 24.490173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.849007, 33.668541, 24.582266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.594807, 33.976784, 24.563034>,  <34.442287, 34.161728, 24.551495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.594807, 33.976784, 24.563034>,  <34.849007, 33.668541, 24.582266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.594807, 33.976784, 24.563034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593944, -0.527702, -0.607258,
		-0.493325, -0.357358, 0.793049,
		-0.635501, 0.770602, -0.048078,
		34.404156, 34.207966, 24.548611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.169590, 33.523945, 24.991554>,  <34.849007, 33.668541, 24.582266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.169590, 33.523945, 24.991554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.153439, 33.762962, 24.671227>,  <34.143749, 33.906372, 24.479029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.153439, 33.762962, 24.671227>,  <34.169590, 33.523945, 24.991554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.153439, 33.762962, 24.671227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578407, -0.667512, -0.468907,
		-0.814748, 0.444268, 0.372573,
		-0.040376, 0.597540, -0.800822,
		34.141327, 33.942223, 24.430981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.439198, 33.419754, 25.731316>,  <34.169590, 33.523945, 24.991554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.439198, 33.419754, 25.731316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.188938, 33.619732, 25.970856>,  <34.038780, 33.739719, 26.114580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.188938, 33.619732, 25.970856>,  <34.439198, 33.419754, 25.731316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.188938, 33.619732, 25.970856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175638, -0.838218, 0.516277,
		0.760074, 0.217828, 0.612240,
		-0.625651, 0.499941, 0.598849,
		34.001244, 33.769714, 26.150511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.696186, 33.267982, 26.355236>,  <34.439198, 33.419754, 25.731316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.696186, 33.267982, 26.355236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.307194, 33.359756, 26.371441>,  <34.073799, 33.414822, 26.381163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.307194, 33.359756, 26.371441>,  <34.696186, 33.267982, 26.355236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.307194, 33.359756, 26.371441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183854, -0.862520, 0.471442,
		0.143107, 0.451020, 0.880966,
		-0.972480, 0.229436, 0.040511,
		34.015450, 33.428589, 26.383595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.397495, 33.285320, 27.126348>,  <34.696186, 33.267982, 26.355236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.397495, 33.285320, 27.126348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.078285, 33.224594, 26.893074>,  <33.886757, 33.188160, 26.753109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.078285, 33.224594, 26.893074>,  <34.397495, 33.285320, 27.126348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.078285, 33.224594, 26.893074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263641, -0.782268, 0.564403,
		-0.541892, 0.604160, 0.584246,
		-0.798027, -0.151814, -0.583186,
		33.838879, 33.179050, 26.718119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.810352, 33.166580, 27.664520>,  <34.397495, 33.285320, 27.126348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.810352, 33.166580, 27.664520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.668049, 33.022141, 27.319721>,  <33.582668, 32.935474, 27.112841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.668049, 33.022141, 27.319721>,  <33.810352, 33.166580, 27.664520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.668049, 33.022141, 27.319721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111585, -0.899330, 0.422793,
		-0.927892, 0.246599, 0.279651,
		-0.355759, -0.361102, -0.861998,
		33.561321, 32.913811, 27.061121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.327847, 32.771496, 27.876276>,  <33.810352, 33.166580, 27.664520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.327847, 32.771496, 27.876276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.378765, 32.632298, 27.504749>,  <33.409317, 32.548779, 27.281834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.378765, 32.632298, 27.504749>,  <33.327847, 32.771496, 27.876276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.378765, 32.632298, 27.504749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194975, -0.926942, 0.320567,
		-0.972512, 0.140288, -0.185848,
		0.127299, -0.347991, -0.928815,
		33.416954, 32.527901, 27.226105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.820168, 32.256695, 27.783325>,  <33.327847, 32.771496, 27.876276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.820168, 32.256695, 27.783325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.111500, 32.172554, 27.522469>,  <33.286301, 32.122070, 27.365955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.111500, 32.172554, 27.522469>,  <32.820168, 32.256695, 27.783325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.111500, 32.172554, 27.522469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202664, -0.975265, 0.088237,
		-0.654571, 0.067899, -0.752946,
		0.728330, -0.210352, -0.652140,
		33.329998, 32.109447, 27.326826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.558929, 31.716116, 27.451464>,  <32.820168, 32.256695, 27.783325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.558929, 31.716116, 27.451464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.942322, 31.683716, 27.342094>,  <33.172356, 31.664276, 27.276474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.942322, 31.683716, 27.342094>,  <32.558929, 31.716116, 27.451464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.942322, 31.683716, 27.342094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025671, -0.979426, 0.200163,
		-0.284009, -0.184832, -0.940838,
		0.958478, -0.081001, -0.273421,
		33.229866, 31.659416, 27.260069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.704483, 31.089647, 27.030134>,  <32.558929, 31.716116, 27.451464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.704483, 31.089647, 27.030134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.065365, 31.180660, 27.176697>,  <33.281895, 31.235268, 27.264633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.065365, 31.180660, 27.176697>,  <32.704483, 31.089647, 27.030134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.065365, 31.180660, 27.176697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137324, -0.956856, 0.256063,
		0.408860, -0.180706, -0.894527,
		0.902206, 0.227534, 0.366405,
		33.336025, 31.248920, 27.286617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.043461, 30.532967, 26.881792>,  <32.704483, 31.089647, 27.030134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.043461, 30.532967, 26.881792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.302040, 30.685310, 27.146233>,  <33.457188, 30.776716, 27.304897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.302040, 30.685310, 27.146233>,  <33.043461, 30.532967, 26.881792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.302040, 30.685310, 27.146233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184871, -0.918866, 0.348581,
		0.740224, -0.103119, -0.664405,
		0.646445, 0.380857, 0.661103,
		33.495972, 30.799568, 27.344563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.554913, 30.197775, 26.739468>,  <33.043461, 30.532967, 26.881792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.554913, 30.197775, 26.739468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.558456, 30.321171, 27.119942>,  <33.560585, 30.395208, 27.348227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.558456, 30.321171, 27.119942>,  <33.554913, 30.197775, 26.739468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.558456, 30.321171, 27.119942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229670, -0.926422, 0.298318,
		0.973228, 0.215815, -0.079062,
		0.008863, 0.308489, 0.951186,
		33.561115, 30.413717, 27.405298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.265324, 30.011360, 27.109217>,  <33.554913, 30.197775, 26.739468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.265324, 30.011360, 27.109217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.988308, 30.057938, 27.393986>,  <33.822098, 30.085884, 27.564848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.988308, 30.057938, 27.393986>,  <34.265324, 30.011360, 27.109217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.988308, 30.057938, 27.393986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339678, -0.817997, 0.464219,
		0.636405, 0.563313, 0.526940,
		-0.692537, 0.116442, 0.711923,
		33.780548, 30.092871, 27.607563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.609867, 29.547909, 27.606728>,  <34.265324, 30.011360, 27.109217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.609867, 29.547909, 27.606728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.249950, 29.649540, 27.748608>,  <34.034000, 29.710518, 27.833736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.249950, 29.649540, 27.748608>,  <34.609867, 29.547909, 27.606728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.249950, 29.649540, 27.748608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055293, -0.872799, 0.484937,
		0.432793, 0.416732, 0.799390,
		-0.899796, 0.254078, 0.354700,
		33.980011, 29.725763, 27.855017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.530190, 29.188154, 28.311728>,  <34.609867, 29.547909, 27.606728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.530190, 29.188154, 28.311728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.144165, 29.270023, 28.246284>,  <33.912552, 29.319145, 28.207020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.144165, 29.270023, 28.246284>,  <34.530190, 29.188154, 28.311728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.144165, 29.270023, 28.246284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258906, -0.840943, 0.475167,
		-0.040329, 0.500923, 0.864552,
		-0.965060, 0.204675, -0.163606,
		33.854649, 29.331427, 28.197203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.135323, 29.190073, 28.990276>,  <34.530190, 29.188154, 28.311728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.135323, 29.190073, 28.990276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.851391, 29.113079, 28.719250>,  <33.681034, 29.066883, 28.556633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.851391, 29.113079, 28.719250>,  <34.135323, 29.190073, 28.990276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.851391, 29.113079, 28.719250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389287, -0.694476, 0.605111,
		-0.587029, 0.693291, 0.418025,
		-0.709826, -0.192486, -0.677567,
		33.638443, 29.055334, 28.515980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.578934, 29.132429, 29.335276>,  <34.135323, 29.190073, 28.990276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.578934, 29.132429, 29.335276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.465103, 28.940037, 29.003571>,  <33.396805, 28.824602, 28.804548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.465103, 28.940037, 29.003571>,  <33.578934, 29.132429, 29.335276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.465103, 28.940037, 29.003571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389479, -0.732411, 0.558463,
		-0.875969, 0.481905, 0.021096,
		-0.284578, -0.480980, -0.829261,
		33.379730, 28.795742, 28.754791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.933758, 28.834915, 29.440807>,  <33.578934, 29.132429, 29.335276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.933758, 28.834915, 29.440807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.086441, 28.616310, 29.142647>,  <33.178051, 28.485147, 28.963749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.086441, 28.616310, 29.142647>,  <32.933758, 28.834915, 29.440807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.086441, 28.616310, 29.142647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264601, -0.837324, 0.478408,
		-0.885600, 0.014624, -0.464218,
		0.381705, -0.546511, -0.745404,
		33.200954, 28.452356, 28.919025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.440697, 28.298100, 29.354685>,  <32.933758, 28.834915, 29.440807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.440697, 28.298100, 29.354685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.771069, 28.163132, 29.174023>,  <32.969292, 28.082151, 29.065626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.771069, 28.163132, 29.174023>,  <32.440697, 28.298100, 29.354685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.771069, 28.163132, 29.174023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120265, -0.888130, 0.443578,
		-0.550799, -0.312046, -0.774111,
		0.825928, -0.337421, -0.451653,
		33.018848, 28.061905, 29.038527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.274658, 27.703455, 28.977072>,  <32.440697, 28.298100, 29.354685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.274658, 27.703455, 28.977072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.667027, 27.682934, 29.052074>,  <32.902447, 27.670620, 29.097076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.667027, 27.682934, 29.052074>,  <32.274658, 27.703455, 28.977072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.667027, 27.682934, 29.052074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118190, -0.923196, 0.365704,
		0.154341, -0.380889, -0.911648,
		0.980923, -0.051305, 0.187505,
		32.961304, 27.667542, 29.108326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.441929, 27.021687, 28.701237>,  <32.274658, 27.703455, 28.977072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.441929, 27.021687, 28.701237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.728180, 27.149162, 28.949852>,  <32.899933, 27.225649, 29.099022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.728180, 27.149162, 28.949852>,  <32.441929, 27.021687, 28.701237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.728180, 27.149162, 28.949852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055474, -0.861101, 0.505399,
		0.696273, -0.396158, -0.598551,
		0.715630, 0.318692, 0.621538,
		32.942867, 27.244770, 29.136312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.817741, 26.460646, 28.833298>,  <32.441929, 27.021687, 28.701237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.817741, 26.460646, 28.833298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.933720, 26.714489, 29.119850>,  <33.003307, 26.866795, 29.291782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.933720, 26.714489, 29.119850>,  <32.817741, 26.460646, 28.833298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.933720, 26.714489, 29.119850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076273, -0.761479, 0.643687,
		0.954000, -0.131992, -0.269189,
		0.289943, 0.634609, 0.716383,
		33.020702, 26.904871, 29.334764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.462471, 26.202242, 29.072020>,  <32.817741, 26.460646, 28.833298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.462471, 26.202242, 29.072020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.311474, 26.420372, 29.371384>,  <33.220875, 26.551250, 29.551003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.311474, 26.420372, 29.371384>,  <33.462471, 26.202242, 29.072020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.311474, 26.420372, 29.371384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044735, -0.796525, 0.602949,
		0.924932, 0.261088, 0.276286,
		-0.377491, 0.545327, 0.748411,
		33.198227, 26.583971, 29.595907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.717583, 25.906990, 29.675022>,  <33.462471, 26.202242, 29.072020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.717583, 25.906990, 29.675022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.443752, 26.158100, 29.823215>,  <33.279453, 26.308765, 29.912132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.443752, 26.158100, 29.823215>,  <33.717583, 25.906990, 29.675022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.443752, 26.158100, 29.823215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201775, -0.651583, 0.731250,
		0.700460, 0.425840, 0.572726,
		-0.684574, 0.627773, 0.370484,
		33.238380, 26.346432, 29.934361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.826256, 26.055126, 30.397230>,  <33.717583, 25.906990, 29.675022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.826256, 26.055126, 30.397230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.434002, 26.096970, 30.331001>,  <33.198650, 26.122076, 30.291264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.434002, 26.096970, 30.331001>,  <33.826256, 26.055126, 30.397230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.434002, 26.096970, 30.331001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194494, -0.619401, 0.760601,
		-0.022991, 0.778074, 0.627751,
		-0.980634, 0.104607, -0.165571,
		33.139812, 26.128351, 30.281330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.571564, 26.066034, 31.137152>,  <33.826256, 26.055126, 30.397230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.571564, 26.066034, 31.137152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.263149, 25.980202, 30.897331>,  <33.078102, 25.928703, 30.753439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.263149, 25.980202, 30.897331>,  <33.571564, 26.066034, 31.137152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.263149, 25.980202, 30.897331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372813, -0.611183, 0.698188,
		-0.516253, 0.761847, 0.391245,
		-0.771034, -0.214580, -0.599551,
		33.031837, 25.915827, 30.717466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.088886, 25.852945, 31.564669>,  <33.571564, 26.066034, 31.137152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.088886, 25.852945, 31.564669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.911812, 25.726856, 31.228893>,  <32.805565, 25.651203, 31.027428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.911812, 25.726856, 31.228893>,  <33.088886, 25.852945, 31.564669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.911812, 25.726856, 31.228893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583137, -0.609953, 0.536571,
		-0.681159, 0.727043, 0.086202,
		-0.442690, -0.315223, -0.839441,
		32.779003, 25.632290, 30.977060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.456356, 25.794752, 31.763277>,  <33.088886, 25.852945, 31.564669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.456356, 25.794752, 31.763277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.488579, 25.556538, 31.443565>,  <32.507912, 25.413609, 31.251738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.488579, 25.556538, 31.443565>,  <32.456356, 25.794752, 31.763277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.488579, 25.556538, 31.443565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524209, -0.707347, 0.474200,
		-0.847771, 0.380789, -0.369168,
		0.080559, -0.595534, -0.799280,
		32.512745, 25.377878, 31.203781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.855612, 25.447165, 31.563982>,  <32.456356, 25.794752, 31.763277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.855612, 25.447165, 31.563982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.153839, 25.225380, 31.416092>,  <32.332775, 25.092310, 31.327358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.153839, 25.225380, 31.416092>,  <31.855612, 25.447165, 31.563982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.153839, 25.225380, 31.416092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404025, -0.817271, 0.410891,
		-0.529990, -0.156969, -0.833349,
		0.745570, -0.554462, -0.369727,
		32.377510, 25.059042, 31.305174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.528038, 24.852636, 31.324091>,  <31.855612, 25.447165, 31.563982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.528038, 24.852636, 31.324091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.910002, 24.739670, 31.360729>,  <32.139179, 24.671890, 31.382713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.910002, 24.739670, 31.360729>,  <31.528038, 24.852636, 31.324091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.910002, 24.739670, 31.360729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295018, -0.867922, 0.399594,
		-0.033351, -0.408599, -0.912104,
		0.954910, -0.282414, 0.091598,
		32.196476, 24.654945, 31.388208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.614294, 24.138636, 31.161757>,  <31.528038, 24.852636, 31.324091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.614294, 24.138636, 31.161757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.946409, 24.194347, 31.377617>,  <32.145679, 24.227774, 31.507133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.946409, 24.194347, 31.377617>,  <31.614294, 24.138636, 31.161757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.946409, 24.194347, 31.377617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110506, -0.907908, 0.404340,
		0.546270, -0.395353, -0.738434,
		0.830288, 0.139278, 0.539652,
		32.195496, 24.236130, 31.539513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.998110, 23.525761, 31.069551>,  <31.614294, 24.138636, 31.161757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.998110, 23.525761, 31.069551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.112328, 23.718369, 31.400997>,  <32.180859, 23.833933, 31.599865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.112328, 23.718369, 31.400997>,  <31.998110, 23.525761, 31.069551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.112328, 23.718369, 31.400997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159334, -0.828728, 0.536491,
		0.945027, -0.285219, -0.159918,
		0.285546, 0.481518, 0.828616,
		32.197990, 23.862823, 31.649582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.415291, 23.039675, 31.402176>,  <31.998110, 23.525761, 31.069551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.415291, 23.039675, 31.402176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.333767, 23.307610, 31.687771>,  <32.284855, 23.468370, 31.859127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.333767, 23.307610, 31.687771>,  <32.415291, 23.039675, 31.402176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.333767, 23.307610, 31.687771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275711, -0.739048, 0.614648,
		0.939386, -0.071584, 0.335306,
		-0.203808, 0.669839, 0.713987,
		32.272625, 23.508562, 31.901966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.849522, 22.819744, 31.905205>,  <32.415291, 23.039675, 31.402176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.849522, 22.819744, 31.905205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.546268, 23.030293, 32.059177>,  <32.364315, 23.156622, 32.151562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.546268, 23.030293, 32.059177>,  <32.849522, 22.819744, 31.905205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.546268, 23.030293, 32.059177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184211, -0.739121, 0.647894,
		0.625542, 0.420280, 0.657314,
		-0.758131, 0.526369, 0.384931,
		32.318829, 23.188204, 32.174656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.980377, 22.844763, 32.693886>,  <32.849522, 22.819744, 31.905205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.980377, 22.844763, 32.693886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.596016, 22.942497, 32.641796>,  <32.365398, 23.001139, 32.610542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.596016, 22.942497, 32.641796>,  <32.980377, 22.844763, 32.693886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.596016, 22.942497, 32.641796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265045, -0.675765, 0.687817,
		0.080058, 0.695443, 0.714107,
		-0.960907, 0.244336, -0.130224,
		32.307743, 23.015799, 32.602730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.769402, 22.752775, 33.380787>,  <32.980377, 22.844763, 32.693886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.769402, 22.752775, 33.380787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.444523, 22.761871, 33.147610>,  <32.249596, 22.767328, 33.007706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.444523, 22.761871, 33.147610>,  <32.769402, 22.752775, 33.380787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.444523, 22.761871, 33.147610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374958, -0.785858, 0.491765,
		-0.446924, 0.617988, 0.646799,
		-0.812198, 0.022740, -0.582939,
		32.200863, 22.768694, 32.972729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.197495, 22.812140, 33.738564>,  <32.769402, 22.752775, 33.380787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.197495, 22.812140, 33.738564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.033134, 22.668015, 33.403580>,  <31.934519, 22.581539, 33.202591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.033134, 22.668015, 33.403580>,  <32.197495, 22.812140, 33.738564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.033134, 22.668015, 33.403580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372914, -0.771798, 0.515036,
		-0.831923, 0.523929, 0.182766,
		-0.410901, -0.360314, -0.837457,
		31.909864, 22.559919, 33.152344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.471716, 22.703279, 34.020378>,  <32.197495, 22.812140, 33.738564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.471716, 22.703279, 34.020378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.529135, 22.484913, 33.690197>,  <31.563587, 22.353893, 33.492088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.529135, 22.484913, 33.690197>,  <31.471716, 22.703279, 34.020378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.529135, 22.484913, 33.690197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413660, -0.790830, 0.451081,
		-0.899044, 0.276705, -0.339345,
		0.143547, -0.545915, -0.825452,
		31.572199, 22.321138, 33.442562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.981874, 22.247412, 33.986744>,  <31.471716, 22.703279, 34.020378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.981874, 22.247412, 33.986744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.227646, 22.046848, 33.743084>,  <31.375109, 21.926510, 33.596886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.227646, 22.046848, 33.743084>,  <30.981874, 22.247412, 33.986744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.227646, 22.046848, 33.743084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318440, -0.864007, 0.389983,
		-0.721854, -0.045638, -0.690539,
		0.614429, -0.501406, -0.609154,
		31.411974, 21.896427, 33.560337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.572279, 21.744659, 33.909012>,  <30.981874, 22.247412, 33.986744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.572279, 21.744659, 33.909012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.923689, 21.613518, 33.770042>,  <31.134535, 21.534834, 33.686661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.923689, 21.613518, 33.770042>,  <30.572279, 21.744659, 33.909012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.923689, 21.613518, 33.770042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207315, -0.916910, 0.341024,
		-0.430363, -0.227572, -0.873498,
		0.878526, -0.327853, -0.347425,
		31.187246, 21.515162, 33.665813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.413181, 21.026638, 33.673241>,  <30.572279, 21.744659, 33.909012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.413181, 21.026638, 33.673241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.802868, 21.076527, 33.748444>,  <31.036680, 21.106461, 33.793564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.802868, 21.076527, 33.748444>,  <30.413181, 21.026638, 33.673241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.802868, 21.076527, 33.748444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019497, -0.783645, 0.620903,
		0.224769, -0.608560, -0.761008,
		0.974217, 0.124723, 0.188004,
		31.095133, 21.113943, 33.804844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.633924, 20.374361, 33.585449>,  <30.413181, 21.026638, 33.673241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.633924, 20.374361, 33.585449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.878061, 20.594292, 33.813545>,  <31.024544, 20.726250, 33.950401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.878061, 20.594292, 33.813545>,  <30.633924, 20.374361, 33.585449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.878061, 20.594292, 33.813545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014598, -0.727560, 0.685889,
		0.792002, -0.410303, -0.452088,
		0.610343, 0.549825, 0.570239,
		31.061165, 20.759239, 33.984615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.036915, 19.919109, 33.911266>,  <30.633924, 20.374361, 33.585449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.036915, 19.919109, 33.911266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.079105, 20.258892, 34.118069>,  <31.104420, 20.462763, 34.242149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.079105, 20.258892, 34.118069>,  <31.036915, 19.919109, 33.911266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.079105, 20.258892, 34.118069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156825, -0.499190, 0.852183,
		0.981978, -0.170965, 0.080563,
		0.105477, 0.849459, 0.517005,
		31.110748, 20.513729, 34.273170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.397982, 19.775967, 34.447800>,  <31.036915, 19.919109, 33.911266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.397982, 19.775967, 34.447800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.170710, 20.092102, 34.539482>,  <31.034348, 20.281784, 34.594494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.170710, 20.092102, 34.539482>,  <31.397982, 19.775967, 34.447800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.170710, 20.092102, 34.539482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263396, -0.438549, 0.859242,
		0.779612, 0.427830, 0.457347,
		-0.568179, 0.790339, 0.229209,
		31.000256, 20.329205, 34.608246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.502369, 19.961840, 35.113632>,  <31.397982, 19.775967, 34.447800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.502369, 19.961840, 35.113632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.138083, 20.106754, 35.034290>,  <30.919510, 20.193703, 34.986687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.138083, 20.106754, 35.034290>,  <31.502369, 19.961840, 35.113632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.138083, 20.106754, 35.034290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356916, -0.448620, 0.819360,
		0.207857, 0.817001, 0.537871,
		-0.910718, 0.362284, -0.198352,
		30.864866, 20.215439, 34.974785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.175138, 19.957088, 35.731644>,  <31.502369, 19.961840, 35.113632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.175138, 19.957088, 35.731644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.857857, 20.003780, 35.492577>,  <30.667488, 20.031796, 35.349136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.857857, 20.003780, 35.492577>,  <31.175138, 19.957088, 35.731644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.857857, 20.003780, 35.492577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553361, -0.547867, 0.627402,
		-0.254205, 0.828382, 0.499163,
		-0.793203, 0.116729, -0.597664,
		30.619896, 20.038799, 35.313278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.657160, 20.315905, 36.193600>,  <31.175138, 19.957088, 35.731644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.657160, 20.315905, 36.193600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.572788, 20.063473, 35.895004>,  <30.522165, 19.912014, 35.715847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.572788, 20.063473, 35.895004>,  <30.657160, 20.315905, 36.193600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.572788, 20.063473, 35.895004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143631, -0.735371, 0.662268,
		-0.966892, 0.246910, 0.064468,
		-0.210929, -0.631082, -0.746488,
		30.509510, 19.874147, 35.671059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.935484, 21.039871, 36.371365>,  <30.657160, 20.315905, 36.193600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.935484, 21.039871, 36.371365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.919064, 21.121662, 36.762569>,  <30.909212, 21.170736, 36.997292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.919064, 21.121662, 36.762569>,  <30.935484, 21.039871, 36.371365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.919064, 21.121662, 36.762569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.993195, 0.098419, -0.062264,
		-0.108986, -0.973910, 0.199050,
		-0.041049, 0.204482, 0.978009,
		30.906750, 21.183006, 37.055973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.454182, 20.612127, 36.961945>,  <30.935484, 21.039871, 36.371365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.454182, 20.612127, 36.961945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.498682, 21.008236, 36.995384>,  <30.525381, 21.245901, 37.015450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.498682, 21.008236, 36.995384>,  <30.454182, 20.612127, 36.961945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.498682, 21.008236, 36.995384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.983064, 0.121985, -0.136763,
		-0.145630, -0.066969, 0.987070,
		0.111249, 0.990270, 0.083599,
		30.532057, 21.305317, 37.020466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.730669, 20.612162, 37.245937>,  <30.454182, 20.612127, 36.961945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.730669, 20.612162, 37.245937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.363743, 20.759308, 37.185005>,  <29.143587, 20.847595, 37.148445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.363743, 20.759308, 37.185005>,  <29.730669, 20.612162, 37.245937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.363743, 20.759308, 37.185005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394025, 0.893714, -0.214523,
		0.057223, -0.256807, -0.964767,
		-0.917317, 0.367866, -0.152330,
		29.088549, 20.869667, 37.139305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.714304, 20.966713, 36.674370>,  <29.730669, 20.612162, 37.245937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.714304, 20.966713, 36.674370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.393145, 21.144505, 36.833263>,  <29.200449, 21.251181, 36.928600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.393145, 21.144505, 36.833263>,  <29.714304, 20.966713, 36.674370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.393145, 21.144505, 36.833263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273956, 0.866952, -0.416345,
		-0.529437, -0.225458, -0.817842,
		-0.802898, 0.444481, 0.397231,
		29.152275, 21.277849, 36.952435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.431044, 21.333536, 36.114193>,  <29.714304, 20.966713, 36.674370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.431044, 21.333536, 36.114193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.329584, 21.486256, 36.469696>,  <29.268709, 21.577887, 36.682999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.329584, 21.486256, 36.469696>,  <29.431044, 21.333536, 36.114193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.329584, 21.486256, 36.469696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226491, 0.916707, -0.329166,
		-0.940407, 0.117804, -0.318994,
		-0.253647, 0.381799, 0.888759,
		29.253490, 21.600796, 36.736324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.898392, 21.811779, 35.969669>,  <29.431044, 21.333536, 36.114193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.898392, 21.811779, 35.969669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.098282, 21.891346, 36.306881>,  <29.218216, 21.939085, 36.509209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.098282, 21.891346, 36.306881>,  <28.898392, 21.811779, 35.969669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.098282, 21.891346, 36.306881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265018, 0.891487, -0.367445,
		-0.824644, 0.407041, 0.392784,
		0.499728, 0.198916, 0.843033,
		29.248199, 21.951021, 36.559792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.656944, 22.478422, 36.225349>,  <28.898392, 21.811779, 35.969669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.656944, 22.478422, 36.225349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.038351, 22.396286, 36.313568>,  <29.267195, 22.347004, 36.366501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.038351, 22.396286, 36.313568>,  <28.656944, 22.478422, 36.225349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.038351, 22.396286, 36.313568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289505, 0.827332, -0.481362,
		-0.083625, 0.522836, 0.848321,
		0.953517, -0.205339, 0.220549,
		29.324406, 22.334684, 36.379734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.063337, 23.032482, 36.458298>,  <28.656944, 22.478422, 36.225349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.063337, 23.032482, 36.458298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.339890, 22.789700, 36.301533>,  <29.505821, 22.644030, 36.207474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.339890, 22.789700, 36.301533>,  <29.063337, 23.032482, 36.458298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.339890, 22.789700, 36.301533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407912, 0.775645, -0.481646,
		0.596320, 0.173137, 0.783853,
		0.691382, -0.606958, -0.391908,
		29.547304, 22.607613, 36.183960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.803885, 23.271175, 36.698517>,  <29.063337, 23.032482, 36.458298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.803885, 23.271175, 36.698517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.807367, 23.073483, 36.350803>,  <29.809456, 22.954866, 36.142174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.807367, 23.073483, 36.350803>,  <29.803885, 23.271175, 36.698517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.807367, 23.073483, 36.350803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558978, 0.723218, -0.405586,
		0.829137, -0.482382, 0.282560,
		0.008705, -0.494231, -0.869287,
		29.809978, 22.925213, 36.090015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.508982, 23.444906, 36.507130>,  <29.803885, 23.271175, 36.698517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.508982, 23.444906, 36.507130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.342224, 23.287228, 36.179520>,  <30.242168, 23.192621, 35.982952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.342224, 23.287228, 36.179520>,  <30.508982, 23.444906, 36.507130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.342224, 23.287228, 36.179520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507411, 0.646669, -0.569520,
		0.754143, -0.653014, -0.069573,
		-0.416895, -0.394197, -0.819028,
		30.217155, 23.168968, 35.933811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.019176, 23.247002, 36.044147>,  <30.508982, 23.444906, 36.507130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.019176, 23.247002, 36.044147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.697908, 23.298466, 35.811470>,  <30.505148, 23.329344, 35.671864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.697908, 23.298466, 35.811470>,  <31.019176, 23.247002, 36.044147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.697908, 23.298466, 35.811470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537050, 0.578991, -0.613472,
		0.257864, -0.805119, -0.534125,
		-0.803171, 0.128659, -0.581690,
		30.456957, 23.337063, 35.636963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.170160, 23.143772, 35.250294>,  <31.019176, 23.247002, 36.044147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.170160, 23.143772, 35.250294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.837967, 23.360107, 35.196938>,  <30.638651, 23.489908, 35.164925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.837967, 23.360107, 35.196938>,  <31.170160, 23.143772, 35.250294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.837967, 23.360107, 35.196938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398414, 0.409337, -0.820798,
		-0.389316, -0.734804, -0.555424,
		-0.830481, 0.540838, -0.133395,
		30.588823, 23.522358, 35.156918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.187634, 23.307600, 34.507832>,  <31.170160, 23.143772, 35.250294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.187634, 23.307600, 34.507832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.938593, 23.577126, 34.667000>,  <30.789167, 23.738842, 34.762501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.938593, 23.577126, 34.667000>,  <31.187634, 23.307600, 34.507832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.938593, 23.577126, 34.667000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196211, 0.626673, -0.754176,
		-0.757540, -0.391476, -0.522378,
		-0.622602, 0.673815, 0.397918,
		30.751812, 23.779270, 34.786377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.843246, 23.614973, 33.958111>,  <31.187634, 23.307600, 34.507832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.843246, 23.614973, 33.958111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.799759, 23.880527, 34.254066>,  <30.773666, 24.039860, 34.431641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.799759, 23.880527, 34.254066>,  <30.843246, 23.614973, 33.958111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.799759, 23.880527, 34.254066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201482, 0.743570, -0.637581,
		-0.973440, 0.079758, -0.214600,
		-0.108718, 0.663884, 0.739891,
		30.767143, 24.079693, 34.476032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.310608, 24.055126, 33.676029>,  <30.843246, 23.614973, 33.958111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.310608, 24.055126, 33.676029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.525021, 24.249065, 33.952461>,  <30.653667, 24.365429, 34.118320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.525021, 24.249065, 33.952461>,  <30.310608, 24.055126, 33.676029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.525021, 24.249065, 33.952461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000651, 0.818385, -0.574669,
		-0.844198, 0.308490, 0.438364,
		0.536031, 0.484849, 0.691080,
		30.685829, 24.394520, 34.159786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.911205, 24.707819, 33.683537>,  <30.310608, 24.055126, 33.676029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.911205, 24.707819, 33.683537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.259132, 24.786072, 33.864708>,  <30.467888, 24.833023, 33.973412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.259132, 24.786072, 33.864708>,  <29.911205, 24.707819, 33.683537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.259132, 24.786072, 33.864708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022625, 0.901245, -0.432718,
		-0.492855, 0.386633, 0.779492,
		0.869817, 0.195631, 0.452931,
		30.520077, 24.844761, 34.000587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.715260, 25.265511, 34.118431>,  <29.911205, 24.707819, 33.683537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.715260, 25.265511, 34.118431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.107944, 25.252167, 34.043457>,  <30.343555, 25.244160, 33.998474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.107944, 25.252167, 34.043457>,  <29.715260, 25.265511, 34.118431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.107944, 25.252167, 34.043457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069332, 0.854273, -0.515180,
		0.177306, 0.518753, 0.836336,
		0.981711, -0.033360, -0.187434,
		30.402458, 25.242159, 33.987228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.869041, 25.953537, 34.083641>,  <29.715260, 25.265511, 34.118431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.869041, 25.953537, 34.083641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.181087, 25.778862, 33.904430>,  <30.368315, 25.674057, 33.796906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.181087, 25.778862, 33.904430>,  <29.869041, 25.953537, 34.083641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.181087, 25.778862, 33.904430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111140, 0.801448, -0.587647,
		0.615687, 0.408638, 0.673754,
		0.780114, -0.436687, -0.448025,
		30.415121, 25.647856, 33.770023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.155437, 26.627897, 33.822803>,  <29.869041, 25.953537, 34.083641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.155437, 26.627897, 33.822803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.356745, 26.317589, 33.670540>,  <30.477530, 26.131405, 33.579182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.356745, 26.317589, 33.670540>,  <30.155437, 26.627897, 33.822803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.356745, 26.317589, 33.670540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160929, 0.516947, -0.840754,
		0.849012, 0.361867, 0.385007,
		0.503269, -0.775770, -0.380660,
		30.507725, 26.084858, 33.556343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.788744, 26.959272, 33.496780>,  <30.155437, 26.627897, 33.822803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.788744, 26.959272, 33.496780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.753433, 26.594105, 33.337387>,  <30.732246, 26.375004, 33.241753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.753433, 26.594105, 33.337387>,  <30.788744, 26.959272, 33.496780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.753433, 26.594105, 33.337387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429941, 0.325937, -0.841972,
		0.898531, -0.245649, 0.363729,
		-0.088277, -0.912920, -0.398479,
		30.726950, 26.320229, 33.217842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.403620, 26.821514, 33.055817>,  <30.788744, 26.959272, 33.496780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.403620, 26.821514, 33.055817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.131536, 26.569088, 32.906647>,  <30.968287, 26.417633, 32.817142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.131536, 26.569088, 32.906647>,  <31.403620, 26.821514, 33.055817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.131536, 26.569088, 32.906647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201651, 0.328031, -0.922893,
		0.704739, -0.702959, -0.095874,
		-0.680206, -0.631066, -0.372929,
		30.927475, 26.379768, 32.794769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.748449, 26.525600, 32.524342>,  <31.403620, 26.821514, 33.055817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.748449, 26.525600, 32.524342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.357439, 26.471458, 32.459698>,  <31.122833, 26.438972, 32.420910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.357439, 26.471458, 32.459698>,  <31.748449, 26.525600, 32.524342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.357439, 26.471458, 32.459698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109569, 0.328707, -0.938055,
		0.180093, -0.934682, -0.306489,
		-0.977528, -0.135355, -0.161610,
		31.064180, 26.430851, 32.411213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.641733, 26.198433, 31.806849>,  <31.748449, 26.525600, 32.524342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.641733, 26.198433, 31.806849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.296247, 26.385773, 31.881302>,  <31.088955, 26.498177, 31.925974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.296247, 26.385773, 31.881302>,  <31.641733, 26.198433, 31.806849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.296247, 26.385773, 31.881302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021815, 0.403723, -0.914621,
		-0.503507, -0.785912, -0.358919,
		-0.863716, 0.468348, 0.186133,
		31.037132, 26.526278, 31.937141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.279493, 26.344509, 31.117126>,  <31.641733, 26.198433, 31.806849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.279493, 26.344509, 31.117126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.120190, 26.601219, 31.379276>,  <31.024607, 26.755245, 31.536566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.120190, 26.601219, 31.379276>,  <31.279493, 26.344509, 31.117126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.120190, 26.601219, 31.379276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055724, 0.696233, -0.715649,
		-0.915578, -0.321535, -0.241520,
		-0.398261, 0.641774, 0.655373,
		31.000711, 26.793751, 31.575888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.783937, 26.706343, 30.732445>,  <31.279493, 26.344509, 31.117126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.783937, 26.706343, 30.732445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.802170, 26.934994, 31.060143>,  <30.813108, 27.072184, 31.256762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.802170, 26.934994, 31.060143>,  <30.783937, 26.706343, 30.732445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.802170, 26.934994, 31.060143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091943, 0.814217, -0.573234,
		-0.994720, 0.101453, -0.015445,
		0.045580, 0.571627, 0.819246,
		30.815844, 27.106482, 31.305916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.473963, 27.191727, 30.470881>,  <30.783937, 26.706343, 30.732445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.473963, 27.191727, 30.470881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.641090, 27.333042, 30.805691>,  <30.741367, 27.417831, 31.006577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.641090, 27.333042, 30.805691>,  <30.473963, 27.191727, 30.470881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.641090, 27.333042, 30.805691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104168, 0.896594, -0.430429,
		-0.902538, 0.267033, 0.337813,
		0.417820, 0.353289, 0.837026,
		30.766436, 27.439030, 31.056799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.095585, 27.877851, 30.571503>,  <30.473963, 27.191727, 30.470881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.095585, 27.877851, 30.571503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.443903, 27.852619, 30.766537>,  <30.652893, 27.837479, 30.883556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.443903, 27.852619, 30.766537>,  <30.095585, 27.877851, 30.571503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.443903, 27.852619, 30.766537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259060, 0.901762, -0.345996,
		-0.417859, 0.427605, 0.801591,
		0.870794, -0.063082, 0.487585,
		30.705141, 27.833694, 30.912811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.125229, 28.524483, 31.005041>,  <30.095585, 27.877851, 30.571503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.125229, 28.524483, 31.005041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.495117, 28.392635, 30.928894>,  <30.717051, 28.313528, 30.883205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.495117, 28.392635, 30.928894>,  <30.125229, 28.524483, 31.005041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.495117, 28.392635, 30.928894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281567, 0.928884, -0.240614,
		0.256141, 0.168900, 0.951769,
		0.924723, -0.329618, -0.190368,
		30.772533, 28.293751, 30.871784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.649261, 28.965876, 31.347555>,  <30.125229, 28.524483, 31.005041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.649261, 28.965876, 31.347555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.823359, 28.775299, 31.041988>,  <30.927816, 28.660954, 30.858648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.823359, 28.775299, 31.041988>,  <30.649261, 28.965876, 31.347555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.823359, 28.775299, 31.041988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512916, 0.828557, -0.224523,
		0.739919, -0.294102, 0.604999,
		0.435243, -0.476442, -0.763915,
		30.953932, 28.632366, 30.812815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.325190, 29.083672, 31.363480>,  <30.649261, 28.965876, 31.347555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.325190, 29.083672, 31.363480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.318081, 28.965775, 30.981316>,  <31.313816, 28.895037, 30.752016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.318081, 28.965775, 30.981316>,  <31.325190, 29.083672, 31.363480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.318081, 28.965775, 30.981316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491518, 0.829551, -0.265056,
		0.870686, -0.474313, 0.130127,
		-0.017772, -0.294740, -0.955412,
		31.312750, 28.877352, 30.694693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.033962, 29.156578, 31.161703>,  <31.325190, 29.083672, 31.363480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.033962, 29.156578, 31.161703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.809847, 29.142532, 30.830681>,  <31.675379, 29.134106, 30.632069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.809847, 29.142532, 30.830681>,  <32.033962, 29.156578, 31.161703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.809847, 29.142532, 30.830681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578188, 0.698832, -0.421109,
		0.593108, -0.714423, -0.371244,
		-0.560287, -0.035114, -0.827554,
		31.641760, 29.131998, 30.582415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.495266, 29.146572, 30.594746>,  <32.033962, 29.156578, 31.161703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.495266, 29.146572, 30.594746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.146782, 29.276360, 30.447384>,  <31.937693, 29.354231, 30.358967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.146782, 29.276360, 30.447384>,  <32.495266, 29.146572, 30.594746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.146782, 29.276360, 30.447384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455610, 0.813852, -0.360643,
		0.182808, -0.482042, -0.856864,
		-0.871206, 0.324468, -0.368402,
		31.885420, 29.373699, 30.336863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.666889, 29.481972, 30.080070>,  <32.495266, 29.146572, 30.594746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.666889, 29.481972, 30.080070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.300304, 29.637543, 30.117661>,  <32.080353, 29.730885, 30.140215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.300304, 29.637543, 30.117661>,  <32.666889, 29.481972, 30.080070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.300304, 29.637543, 30.117661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352676, 0.896134, -0.269377,
		-0.188981, -0.213732, -0.958439,
		-0.916464, 0.388926, 0.093974,
		32.025364, 29.754221, 30.145853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.571461, 29.909424, 29.494814>,  <32.666889, 29.481972, 30.080070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.571461, 29.909424, 29.494814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.291740, 30.041222, 29.748558>,  <32.123909, 30.120300, 29.900805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.291740, 30.041222, 29.748558>,  <32.571461, 29.909424, 29.494814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.291740, 30.041222, 29.748558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314269, 0.938778, -0.141175,
		-0.642042, 0.100637, -0.760036,
		-0.699298, 0.329496, 0.634362,
		32.081951, 30.140070, 29.938868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.099697, 30.334669, 29.031225>,  <32.571461, 29.909424, 29.494814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.099697, 30.334669, 29.031225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.022888, 30.443157, 29.408493>,  <31.976803, 30.508249, 29.634853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.022888, 30.443157, 29.408493>,  <32.099697, 30.334669, 29.031225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.022888, 30.443157, 29.408493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047061, 0.962492, -0.267196,
		-0.980262, -0.006921, -0.197583,
		-0.192022, 0.271221, 0.943169,
		31.965282, 30.524523, 29.691444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.506121, 30.808681, 29.042709>,  <32.099697, 30.334669, 29.031225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.506121, 30.808681, 29.042709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.725893, 30.856850, 29.373436>,  <31.857756, 30.885752, 29.571873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.725893, 30.856850, 29.373436>,  <31.506121, 30.808681, 29.042709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.725893, 30.856850, 29.373436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024498, 0.991456, -0.128122,
		-0.835181, 0.050139, 0.547685,
		0.549429, 0.120422, 0.826817,
		31.890722, 30.892977, 29.621481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.226236, 31.297764, 29.249733>,  <31.506121, 30.808681, 29.042709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.226236, 31.297764, 29.249733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.591974, 31.287609, 29.411388>,  <31.811417, 31.281517, 29.508381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.591974, 31.287609, 29.411388>,  <31.226236, 31.297764, 29.249733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.591974, 31.287609, 29.411388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137310, 0.958340, -0.250459,
		-0.380943, 0.284498, 0.879741,
		0.914346, -0.025387, 0.404137,
		31.866278, 31.279993, 29.532629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.338812, 31.846739, 29.522341>,  <31.226236, 31.297764, 29.249733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.338812, 31.846739, 29.522341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.733227, 31.781155, 29.534004>,  <31.969875, 31.741804, 29.541002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.733227, 31.781155, 29.534004>,  <31.338812, 31.846739, 29.522341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.733227, 31.781155, 29.534004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165090, 0.985395, -0.041730,
		-0.021891, 0.045961, 0.998703,
		0.986036, -0.163962, 0.029159,
		32.029037, 31.731966, 29.542751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.631472, 32.294228, 30.004852>,  <31.338812, 31.846739, 29.522341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.631472, 32.294228, 30.004852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.938356, 32.186951, 29.771801>,  <32.122486, 32.122585, 29.631969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.938356, 32.186951, 29.771801>,  <31.631472, 32.294228, 30.004852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.938356, 32.186951, 29.771801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220438, 0.963304, -0.153141,
		0.602321, -0.010942, 0.798179,
		0.767213, -0.268189, -0.582631,
		32.168522, 32.106495, 29.597012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.285233, 32.616726, 30.236431>,  <31.631472, 32.294228, 30.004852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.285233, 32.616726, 30.236431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.318470, 32.543789, 29.844543>,  <32.338413, 32.500027, 29.609411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.318470, 32.543789, 29.844543>,  <32.285233, 32.616726, 30.236431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.318470, 32.543789, 29.844543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061283, 0.982192, -0.177606,
		0.994656, -0.045282, 0.092790,
		0.083095, -0.182343, -0.979717,
		32.343399, 32.489086, 29.550629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.718250, 33.046051, 30.019688>,  <32.285233, 32.616726, 30.236431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.718250, 33.046051, 30.019688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.581474, 32.928112, 29.662781>,  <32.499409, 32.857349, 29.448637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.581474, 32.928112, 29.662781>,  <32.718250, 33.046051, 30.019688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.581474, 32.928112, 29.662781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130644, 0.925366, -0.355852,
		0.930596, -0.238250, -0.277899,
		-0.341940, -0.294848, -0.892267,
		32.478893, 32.839657, 29.395100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.101124, 33.511997, 29.481188>,  <32.718250, 33.046051, 30.019688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.101124, 33.511997, 29.481188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.790787, 33.351009, 29.286831>,  <32.604584, 33.254417, 29.170218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.790787, 33.351009, 29.286831>,  <33.101124, 33.511997, 29.481188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.790787, 33.351009, 29.286831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001177, 0.771039, -0.636786,
		0.630928, -0.493473, -0.598677,
		-0.775840, -0.402471, -0.485890,
		32.558033, 33.230267, 29.141064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.319698, 33.378578, 28.790504>,  <33.101124, 33.511997, 29.481188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.319698, 33.378578, 28.790504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.922302, 33.413643, 28.819626>,  <32.683865, 33.434681, 28.837099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.922302, 33.413643, 28.819626>,  <33.319698, 33.378578, 28.790504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.922302, 33.413643, 28.819626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020913, 0.768303, -0.639745,
		-0.112020, -0.634055, -0.765131,
		-0.993486, 0.087665, 0.072805,
		32.624256, 33.439941, 28.841467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.113071, 33.477077, 28.154268>,  <33.319698, 33.378578, 28.790504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.113071, 33.477077, 28.154268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.803616, 33.611839, 28.368919>,  <32.617943, 33.692696, 28.497709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.803616, 33.611839, 28.368919>,  <33.113071, 33.477077, 28.154268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.803616, 33.611839, 28.368919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240130, 0.627850, -0.740366,
		-0.586356, -0.701640, -0.404831,
		-0.773643, 0.336906, 0.536629,
		32.571522, 33.712910, 28.529907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.715790, 33.356274, 27.690237>,  <33.113071, 33.477077, 28.154268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.715790, 33.356274, 27.690237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.537663, 33.615143, 27.937740>,  <32.430786, 33.770462, 28.086243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.537663, 33.615143, 27.937740>,  <32.715790, 33.356274, 27.690237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.537663, 33.615143, 27.937740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261616, 0.566859, -0.781171,
		-0.856299, -0.509748, -0.083124,
		-0.445320, 0.647169, 0.618759,
		32.404068, 33.809292, 28.123367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.134079, 33.583790, 27.351974>,  <32.715790, 33.356274, 27.690237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.134079, 33.583790, 27.351974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.192249, 33.863483, 27.631950>,  <32.227150, 34.031300, 27.799936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.192249, 33.863483, 27.631950>,  <32.134079, 33.583790, 27.351974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.192249, 33.863483, 27.631950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247643, 0.710669, -0.658500,
		-0.957875, -0.077573, 0.276511,
		0.145426, 0.699237, 0.699942,
		32.235878, 34.073254, 27.841932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.495481, 33.998867, 27.377071>,  <32.134079, 33.583790, 27.351974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.495481, 33.998867, 27.377071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.828367, 34.182873, 27.500881>,  <32.028099, 34.293278, 27.575167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.828367, 34.182873, 27.500881>,  <31.495481, 33.998867, 27.377071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.828367, 34.182873, 27.500881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123668, 0.698194, -0.705146,
		-0.540485, 0.548555, 0.637937,
		0.832215, 0.460014, 0.309524,
		32.078033, 34.320877, 27.593739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.041531, 34.509239, 27.177563>,  <31.495481, 33.998867, 27.377071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.041531, 34.509239, 27.177563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.641930, 34.493031, 27.170036>,  <30.402170, 34.483307, 27.165522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.641930, 34.493031, 27.170036>,  <31.041531, 34.509239, 27.177563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.641930, 34.493031, 27.170036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022163, -0.815141, 0.578838,
		-0.038792, 0.577843, 0.815225,
		-0.999001, -0.040522, -0.018814,
		30.342230, 34.480873, 27.164392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.755081, 34.373096, 27.884251>,  <31.041531, 34.509239, 27.177563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.755081, 34.373096, 27.884251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.441034, 34.277035, 27.655895>,  <30.252605, 34.219398, 27.518881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.441034, 34.277035, 27.655895>,  <30.755081, 34.373096, 27.884251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.441034, 34.277035, 27.655895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183741, -0.789951, 0.584993,
		-0.591463, 0.564185, 0.576079,
		-0.785118, -0.240153, -0.570890,
		30.205500, 34.204990, 27.484629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.287008, 34.159122, 28.348051>,  <30.755081, 34.373096, 27.884251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.287008, 34.159122, 28.348051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.152691, 34.004177, 28.004612>,  <30.072102, 33.911209, 27.798548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.152691, 34.004177, 28.004612>,  <30.287008, 34.159122, 28.348051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.152691, 34.004177, 28.004612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298735, -0.820673, 0.487087,
		-0.893309, 0.420053, 0.159856,
		-0.335792, -0.387364, -0.858599,
		30.051954, 33.887966, 27.747032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.619328, 33.881779, 28.457205>,  <30.287008, 34.159122, 28.348051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.619328, 33.881779, 28.457205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.771116, 33.678284, 28.148094>,  <29.862188, 33.556187, 27.962627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.771116, 33.678284, 28.148094>,  <29.619328, 33.881779, 28.457205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.771116, 33.678284, 28.148094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324363, -0.855392, 0.403849,
		-0.866484, 0.097414, -0.489609,
		0.379467, -0.508740, -0.772780,
		29.884958, 33.525661, 27.916260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.055050, 33.461533, 28.280964>,  <29.619328, 33.881779, 28.457205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.055050, 33.461533, 28.280964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.386736, 33.305954, 28.120403>,  <29.585749, 33.212608, 28.024067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.386736, 33.305954, 28.120403>,  <29.055050, 33.461533, 28.280964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.386736, 33.305954, 28.120403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250405, -0.900576, 0.355332,
		-0.499697, -0.194134, -0.844165,
		0.829216, -0.388942, -0.401403,
		29.635500, 33.189270, 27.999983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.804733, 32.772083, 27.905987>,  <29.055050, 33.461533, 28.280964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.804733, 32.772083, 27.905987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.198231, 32.758621, 27.976551>,  <29.434328, 32.750546, 28.018888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.198231, 32.758621, 27.976551>,  <28.804733, 32.772083, 27.905987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.198231, 32.758621, 27.976551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107203, -0.898127, 0.426469,
		0.144086, -0.438447, -0.887132,
		0.983741, -0.033655, 0.176410,
		29.493353, 32.748524, 28.029474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.024515, 32.092529, 27.619947>,  <28.804733, 32.772083, 27.905987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.024515, 32.092529, 27.619947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.310354, 32.201656, 27.877605>,  <29.481857, 32.267132, 28.032200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.310354, 32.201656, 27.877605>,  <29.024515, 32.092529, 27.619947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.310354, 32.201656, 27.877605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039779, -0.935176, 0.351944,
		0.698405, -0.225874, -0.679125,
		0.714596, 0.272814, 0.644146,
		29.524733, 32.283501, 28.070848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.450542, 31.588667, 27.460194>,  <29.024515, 32.092529, 27.619947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.450542, 31.588667, 27.460194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.539642, 31.736961, 27.820847>,  <29.593102, 31.825939, 28.037237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.539642, 31.736961, 27.820847>,  <29.450542, 31.588667, 27.460194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.539642, 31.736961, 27.820847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053202, -0.918865, 0.390968,
		0.973423, -0.135056, -0.184952,
		0.222749, 0.370738, 0.901630,
		29.606466, 31.848183, 28.091335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.526205, 30.864143, 27.797781>,  <29.450542, 31.588667, 27.460194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.526205, 30.864143, 27.797781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.555986, 31.154045, 28.071770>,  <29.573854, 31.327986, 28.236162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.555986, 31.154045, 28.071770>,  <29.526205, 30.864143, 27.797781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.555986, 31.154045, 28.071770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132913, -0.673539, 0.727104,
		0.988327, -0.145177, 0.046182,
		0.074453, 0.724755, 0.684972,
		29.578321, 31.371471, 28.277262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.934107, 30.627775, 28.289015>,  <29.526205, 30.864143, 27.797781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.934107, 30.627775, 28.289015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.726089, 30.920452, 28.465279>,  <29.601278, 31.096058, 28.571037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.726089, 30.920452, 28.465279>,  <29.934107, 30.627775, 28.289015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.726089, 30.920452, 28.465279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152245, -0.587052, 0.795105,
		0.840462, 0.346401, 0.416689,
		-0.520043, 0.731694, 0.440657,
		29.570076, 31.139961, 28.597475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.072506, 30.772396, 29.036793>,  <29.934107, 30.627775, 28.289015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.072506, 30.772396, 29.036793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.708633, 30.937969, 29.023277>,  <29.490311, 31.037313, 29.015167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.708633, 30.937969, 29.023277>,  <30.072506, 30.772396, 29.036793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.708633, 30.937969, 29.023277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285981, -0.565332, 0.773702,
		0.301157, 0.713485, 0.632648,
		-0.909681, 0.413931, -0.033790,
		29.435730, 31.062149, 29.013140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.830423, 30.903927, 29.713083>,  <30.072506, 30.772396, 29.036793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.830423, 30.903927, 29.713083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.486317, 30.882149, 29.510311>,  <29.279854, 30.869081, 29.388647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.486317, 30.882149, 29.510311>,  <29.830423, 30.903927, 29.713083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.486317, 30.882149, 29.510311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394399, -0.559030, 0.729339,
		-0.323101, 0.827358, 0.459440,
		-0.860265, -0.054448, -0.506932,
		29.228237, 30.865814, 29.358232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.291925, 31.034805, 30.265583>,  <29.830423, 30.903927, 29.713083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.291925, 31.034805, 30.265583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.087677, 30.865181, 29.966400>,  <28.965128, 30.763407, 29.786890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.087677, 30.865181, 29.966400>,  <29.291925, 31.034805, 30.265583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.087677, 30.865181, 29.966400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465021, -0.595497, 0.655087,
		-0.723203, 0.682316, 0.106874,
		-0.510619, -0.424062, -0.747957,
		28.934492, 30.737963, 29.742014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.648460, 31.027201, 30.549713>,  <29.291925, 31.034805, 30.265583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.648460, 31.027201, 30.549713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.615963, 30.768032, 30.246769>,  <28.596464, 30.612532, 30.065002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.615963, 30.768032, 30.246769>,  <28.648460, 31.027201, 30.549713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.615963, 30.768032, 30.246769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572927, -0.591427, 0.567423,
		-0.815570, 0.480014, -0.323161,
		-0.081245, -0.647920, -0.757362,
		28.591589, 30.573656, 30.019560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.055981, 30.621954, 30.710793>,  <28.648460, 31.027201, 30.549713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.055981, 30.621954, 30.710793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.236656, 30.391262, 30.438511>,  <28.345062, 30.252846, 30.275143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.236656, 30.391262, 30.438511>,  <28.055981, 30.621954, 30.710793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.236656, 30.391262, 30.438511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396583, -0.813240, 0.425866,
		-0.799180, 0.077588, -0.596063,
		0.451700, -0.576732, -0.680696,
		28.372164, 30.218243, 30.234301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.487932, 30.089748, 30.438101>,  <28.055981, 30.621954, 30.710793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.487932, 30.089748, 30.438101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.855457, 29.940742, 30.385918>,  <28.075972, 29.851339, 30.354609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.855457, 29.940742, 30.385918>,  <27.487932, 30.089748, 30.438101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.855457, 29.940742, 30.385918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295268, -0.868056, 0.399119,
		-0.261923, -0.328195, -0.907571,
		0.918811, -0.372515, -0.130458,
		28.131100, 29.828987, 30.346781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.387403, 29.420414, 30.323700>,  <27.487932, 30.089748, 30.438101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.387403, 29.420414, 30.323700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.781826, 29.399521, 30.386894>,  <28.018480, 29.386984, 30.424810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.781826, 29.399521, 30.386894>,  <27.387403, 29.420414, 30.323700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.781826, 29.399521, 30.386894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102759, -0.937926, 0.331264,
		0.130878, -0.342880, -0.930217,
		0.986059, -0.052234, 0.157988,
		28.077644, 29.383850, 30.434290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.576571, 28.667744, 30.155045>,  <27.387403, 29.420414, 30.323700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.576571, 28.667744, 30.155045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.848932, 28.808907, 30.411739>,  <28.012350, 28.893604, 30.565756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.848932, 28.808907, 30.411739>,  <27.576571, 28.667744, 30.155045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.848932, 28.808907, 30.411739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039891, -0.857070, 0.513653,
		0.731284, -0.375349, -0.569506,
		0.680905, 0.352908, 0.641735,
		28.053204, 28.914780, 30.604259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.172092, 28.159901, 30.176548>,  <27.576571, 28.667744, 30.155045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.172092, 28.159901, 30.176548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.157017, 28.367699, 30.518005>,  <28.147972, 28.492376, 30.722879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.157017, 28.367699, 30.518005>,  <28.172092, 28.159901, 30.176548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.157017, 28.367699, 30.518005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101071, -0.847887, 0.520453,
		0.994165, 0.105894, -0.020550,
		-0.037688, 0.519494, 0.853643,
		28.145710, 28.523546, 30.774097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.741196, 27.917492, 30.447683>,  <28.172092, 28.159901, 30.176548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.741196, 27.917492, 30.447683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.493475, 28.086819, 30.712189>,  <28.344843, 28.188416, 30.870892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.493475, 28.086819, 30.712189>,  <28.741196, 27.917492, 30.447683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.493475, 28.086819, 30.712189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114993, -0.882028, 0.456950,
		0.776688, 0.206949, 0.594919,
		-0.619300, 0.423319, 0.661262,
		28.307684, 28.213814, 30.910568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.096117, 27.824875, 31.102018>,  <28.741196, 27.917492, 30.447683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.096117, 27.824875, 31.102018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.717108, 27.904652, 31.201954>,  <28.489702, 27.952518, 31.261915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.717108, 27.904652, 31.201954>,  <29.096117, 27.824875, 31.102018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.717108, 27.904652, 31.201954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021183, -0.818975, 0.573438,
		0.318981, 0.538054, 0.780224,
		-0.947524, 0.199444, 0.249839,
		28.432850, 27.964485, 31.276905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.055941, 27.859423, 31.840019>,  <29.096117, 27.824875, 31.102018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.055941, 27.859423, 31.840019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.720507, 27.740894, 31.657166>,  <28.519247, 27.669777, 31.547453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.720507, 27.740894, 31.657166>,  <29.055941, 27.859423, 31.840019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.720507, 27.740894, 31.657166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080480, -0.762536, 0.641921,
		-0.538795, 0.575095, 0.615602,
		-0.838584, -0.296320, -0.457134,
		28.468931, 27.651999, 31.520025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.763027, 27.509438, 32.379509>,  <29.055941, 27.859423, 31.840019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.763027, 27.509438, 32.379509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.528210, 27.417637, 32.068974>,  <28.387320, 27.362556, 31.882650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.528210, 27.417637, 32.068974>,  <28.763027, 27.509438, 32.379509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.528210, 27.417637, 32.068974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276352, -0.844560, 0.458638,
		-0.760927, 0.483784, 0.432369,
		-0.587043, -0.229504, -0.776343,
		28.352097, 27.348785, 31.836071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.084419, 27.382071, 32.668957>,  <28.763027, 27.509438, 32.379509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.084419, 27.382071, 32.668957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.096346, 27.179016, 32.324535>,  <28.103502, 27.057184, 32.117882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.096346, 27.179016, 32.324535>,  <28.084419, 27.382071, 32.668957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.096346, 27.179016, 32.324535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226077, -0.842540, 0.488892,
		-0.973653, 0.180087, -0.139887,
		0.029817, -0.507636, -0.861055,
		28.105291, 27.026726, 32.066219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.540752, 26.818419, 32.781292>,  <28.084419, 27.382071, 32.668957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.540752, 26.818419, 32.781292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.746323, 26.708759, 32.456154>,  <27.869665, 26.642963, 32.261070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.746323, 26.708759, 32.456154>,  <27.540752, 26.818419, 32.781292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.746323, 26.708759, 32.456154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112244, -0.960902, 0.253117,
		-0.850461, -0.038846, -0.524601,
		0.513923, -0.274150, -0.812850,
		27.900499, 26.626514, 32.212299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.212729, 26.251305, 32.606773>,  <27.540752, 26.818419, 32.781292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.212729, 26.251305, 32.606773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.567261, 26.217648, 32.424633>,  <27.779980, 26.197453, 32.315350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.567261, 26.217648, 32.424633>,  <27.212729, 26.251305, 32.606773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.567261, 26.217648, 32.424633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081701, -0.939507, 0.332642,
		-0.455792, -0.332033, -0.825838,
		0.886329, -0.084143, -0.455347,
		27.833160, 26.192404, 32.288029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.236540, 25.560537, 32.220116>,  <27.212729, 26.251305, 32.606773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.236540, 25.560537, 32.220116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.605486, 25.697689, 32.291309>,  <27.826853, 25.779980, 32.334026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.605486, 25.697689, 32.291309>,  <27.236540, 25.560537, 32.220116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.605486, 25.697689, 32.291309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286086, -0.915841, 0.281762,
		0.259614, -0.208969, -0.942832,
		0.922364, 0.342880, 0.177983,
		27.882195, 25.800552, 32.344704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.618544, 25.203621, 31.750292>,  <27.236540, 25.560537, 32.220116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.618544, 25.203621, 31.750292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.828327, 25.304325, 32.075638>,  <27.954197, 25.364748, 32.270844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.828327, 25.304325, 32.075638>,  <27.618544, 25.203621, 31.750292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.828327, 25.304325, 32.075638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155061, -0.967551, 0.199501,
		0.837197, 0.021491, -0.546479,
		0.524459, 0.251759, 0.813363,
		27.985664, 25.379852, 32.319645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.132645, 24.705797, 31.733982>,  <27.618544, 25.203621, 31.750292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.132645, 24.705797, 31.733982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.190805, 24.834488, 32.108223>,  <28.225702, 24.911703, 32.332767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.190805, 24.834488, 32.108223>,  <28.132645, 24.705797, 31.733982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.190805, 24.834488, 32.108223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413597, -0.878823, 0.237925,
		0.898774, 0.352367, -0.260849,
		0.145403, 0.321727, 0.935601,
		28.234426, 24.931005, 32.388905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.866093, 24.442947, 31.928526>,  <28.132645, 24.705797, 31.733982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.866093, 24.442947, 31.928526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.673267, 24.540344, 32.265175>,  <28.557573, 24.598782, 32.467163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.673267, 24.540344, 32.265175>,  <28.866093, 24.442947, 31.928526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.673267, 24.540344, 32.265175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197102, -0.905842, 0.374967,
		0.853679, 0.346642, 0.388679,
		-0.482062, 0.243493, 0.841622,
		28.528648, 24.613392, 32.517662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.381237, 24.232431, 32.493114>,  <28.866093, 24.442947, 31.928526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.381237, 24.232431, 32.493114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.004679, 24.245789, 32.627373>,  <28.778744, 24.253803, 32.707928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.004679, 24.245789, 32.627373>,  <29.381237, 24.232431, 32.493114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.004679, 24.245789, 32.627373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080857, -0.943736, 0.320663,
		0.327471, 0.329010, 0.885728,
		-0.941395, 0.033391, 0.335649,
		28.722260, 24.255806, 32.728069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.386732, 24.012877, 33.149830>,  <29.381237, 24.232431, 32.493114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.386732, 24.012877, 33.149830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.011145, 23.930950, 33.039280>,  <28.785791, 23.881794, 32.972950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.011145, 23.930950, 33.039280>,  <29.386732, 24.012877, 33.149830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.011145, 23.930950, 33.039280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037656, -0.859799, 0.509242,
		-0.341929, 0.467756, 0.815039,
		-0.938971, -0.204816, -0.276376,
		28.729454, 23.869505, 32.956367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.079020, 23.700434, 33.801426>,  <29.386732, 24.012877, 33.149830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.079020, 23.700434, 33.801426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.817427, 23.597656, 33.516811>,  <28.660471, 23.535990, 33.346043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.817427, 23.597656, 33.516811>,  <29.079020, 23.700434, 33.801426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.817427, 23.597656, 33.516811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118088, -0.894352, 0.431498,
		-0.747237, 0.366215, 0.554548,
		-0.653982, -0.256946, -0.711538,
		28.621233, 23.520573, 33.303349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.536427, 23.401699, 34.164276>,  <29.079020, 23.700434, 33.801426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.536427, 23.401699, 34.164276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.515736, 23.273350, 33.785992>,  <28.503321, 23.196341, 33.559021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.515736, 23.273350, 33.785992>,  <28.536427, 23.401699, 34.164276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.515736, 23.273350, 33.785992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149962, -0.933743, 0.325017,
		-0.987338, 0.158633, 0.000182,
		-0.051728, -0.320874, -0.945708,
		28.500217, 23.177088, 33.502277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.938826, 22.944340, 34.197380>,  <28.536427, 23.401699, 34.164276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.938826, 22.944340, 34.197380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.155161, 22.862495, 33.871037>,  <28.284962, 22.813389, 33.675228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.155161, 22.862495, 33.871037>,  <27.938826, 22.944340, 34.197380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.155161, 22.862495, 33.871037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076755, -0.953909, 0.290115,
		-0.837618, -0.219526, -0.500205,
		0.540838, -0.204612, -0.815861,
		28.317411, 22.801111, 33.626278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.584410, 22.327110, 33.934181>,  <27.938826, 22.944340, 34.197380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.584410, 22.327110, 33.934181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.953028, 22.340996, 33.779495>,  <28.174198, 22.349327, 33.686684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.953028, 22.340996, 33.779495>,  <27.584410, 22.327110, 33.934181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.953028, 22.340996, 33.779495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140311, -0.958461, 0.248325,
		-0.362036, -0.283103, -0.888134,
		0.921544, 0.034713, -0.386720,
		28.229490, 22.351410, 33.663479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.648598, 21.658297, 33.589104>,  <27.584410, 22.327110, 33.934181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.648598, 21.658297, 33.589104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.015810, 21.802780, 33.654526>,  <28.236137, 21.889471, 33.693779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.015810, 21.802780, 33.654526>,  <27.648598, 21.658297, 33.589104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.015810, 21.802780, 33.654526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305149, -0.906985, 0.290279,
		0.253194, -0.216576, -0.942861,
		0.918029, 0.361210, 0.163555,
		28.291218, 21.911142, 33.703590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.099272, 21.223637, 33.284569>,  <27.648598, 21.658297, 33.589104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.099272, 21.223637, 33.284569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.313843, 21.430305, 33.551491>,  <28.442585, 21.554306, 33.711643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.313843, 21.430305, 33.551491>,  <28.099272, 21.223637, 33.284569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.313843, 21.430305, 33.551491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623551, -0.775468, 0.099165,
		0.568709, 0.362904, -0.738154,
		0.536427, 0.516673, 0.667305,
		28.474771, 21.585308, 33.751682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.795849, 21.215031, 32.516830>,  <28.099272, 21.223637, 33.284569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.795849, 21.215031, 32.516830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.820637, 20.983532, 32.191570>,  <27.835510, 20.844633, 31.996414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.820637, 20.983532, 32.191570>,  <27.795849, 21.215031, 32.516830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.820637, 20.983532, 32.191570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054008, 0.815465, -0.576282,
		0.996616, -0.008204, 0.081791,
		0.061969, -0.578749, -0.813148,
		27.839228, 20.809908, 31.947626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.291735, 21.491940, 32.163723>,  <27.795849, 21.215031, 32.516830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.291735, 21.491940, 32.163723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.066557, 21.295662, 31.897697>,  <27.931450, 21.177895, 31.738083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.066557, 21.295662, 31.897697>,  <28.291735, 21.491940, 32.163723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.066557, 21.295662, 31.897697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012462, 0.799549, -0.600471,
		0.826401, -0.346321, -0.443987,
		-0.562945, -0.490696, -0.665064,
		27.897673, 21.148453, 31.698179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.615341, 21.606724, 31.488163>,  <28.291735, 21.491940, 32.163723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.615341, 21.606724, 31.488163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.251400, 21.467365, 31.398014>,  <28.033035, 21.383751, 31.343925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.251400, 21.467365, 31.398014>,  <28.615341, 21.606724, 31.488163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.251400, 21.467365, 31.398014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096920, 0.706567, -0.700977,
		0.403457, -0.615942, -0.676637,
		-0.909851, -0.348394, -0.225372,
		27.978445, 21.362846, 31.330402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.654160, 21.442541, 30.705637>,  <28.615341, 21.606724, 31.488163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.654160, 21.442541, 30.705637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.280704, 21.507240, 30.833485>,  <28.056631, 21.546061, 30.910194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.280704, 21.507240, 30.833485>,  <28.654160, 21.442541, 30.705637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.280704, 21.507240, 30.833485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121006, 0.697394, -0.706399,
		-0.337161, -0.698197, -0.631541,
		-0.933638, 0.161750, 0.319620,
		28.000612, 21.555765, 30.929371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.208130, 21.420483, 30.038788>,  <28.654160, 21.442541, 30.705637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.208130, 21.420483, 30.038788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.991825, 21.612598, 30.315018>,  <27.862041, 21.727869, 30.480757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.991825, 21.612598, 30.315018>,  <28.208130, 21.420483, 30.038788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.991825, 21.612598, 30.315018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074973, 0.790180, -0.608272,
		-0.837827, -0.380706, -0.391291,
		-0.540763, 0.480290, 0.690577,
		27.829596, 21.756685, 30.522190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.646919, 21.720749, 29.605291>,  <28.208130, 21.420483, 30.038788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.646919, 21.720749, 29.605291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.592039, 21.910431, 29.953156>,  <27.559111, 22.024240, 30.161873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.592039, 21.910431, 29.953156>,  <27.646919, 21.720749, 29.605291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.592039, 21.910431, 29.953156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126530, 0.862379, -0.490197,
		-0.982429, -0.177293, -0.058317,
		-0.137199, 0.474205, 0.869658,
		27.550879, 22.052692, 30.214052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.034321, 22.198633, 29.619867>,  <27.646919, 21.720749, 29.605291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.034321, 22.198633, 29.619867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.270479, 22.367222, 29.895199>,  <27.412174, 22.468374, 30.060398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.270479, 22.367222, 29.895199>,  <27.034321, 22.198633, 29.619867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.270479, 22.367222, 29.895199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014673, 0.858291, -0.512955,
		-0.806980, 0.292747, 0.512916,
		0.590397, 0.421470, 0.688328,
		27.447598, 22.493662, 30.101698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.711937, 22.868273, 29.844196>,  <27.034321, 22.198633, 29.619867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.711937, 22.868273, 29.844196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.101072, 22.896572, 29.932362>,  <27.334553, 22.913551, 29.985260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.101072, 22.896572, 29.932362>,  <26.711937, 22.868273, 29.844196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.101072, 22.896572, 29.932362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035097, 0.896069, -0.442525,
		-0.228813, 0.438241, 0.869246,
		0.972837, 0.070747, 0.220413,
		27.392923, 22.917797, 29.998486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.871492, 23.573755, 30.013184>,  <26.711937, 22.868273, 29.844196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.871492, 23.573755, 30.013184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.240328, 23.432724, 29.949379>,  <27.461630, 23.348106, 29.911097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.240328, 23.432724, 29.949379>,  <26.871492, 23.573755, 30.013184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.240328, 23.432724, 29.949379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182562, 0.759773, -0.624032,
		0.341210, 0.546293, 0.764945,
		0.922088, -0.352576, -0.159509,
		27.516954, 23.326952, 29.901525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.338844, 24.134855, 30.075113>,  <26.871492, 23.573755, 30.013184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.338844, 24.134855, 30.075113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.599674, 23.897739, 29.886055>,  <27.756172, 23.755470, 29.772619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.599674, 23.897739, 29.886055>,  <27.338844, 24.134855, 30.075113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.599674, 23.897739, 29.886055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431292, 0.802755, -0.411791,
		0.623526, 0.064670, 0.779123,
		0.652075, -0.592792, -0.472648,
		27.795298, 23.719902, 29.744261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.063663, 24.247766, 30.297302>,  <27.338844, 24.134855, 30.075113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.063663, 24.247766, 30.297302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.070255, 24.104301, 29.923973>,  <28.074211, 24.018223, 29.699976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.070255, 24.104301, 29.923973>,  <28.063663, 24.247766, 30.297302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.070255, 24.104301, 29.923973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609602, 0.743496, -0.274953,
		0.792537, -0.564423, 0.230896,
		0.016480, -0.358665, -0.933321,
		28.075199, 23.996702, 29.643976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.802338, 24.282568, 30.109776>,  <28.063663, 24.247766, 30.297302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.802338, 24.282568, 30.109776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.590866, 24.256222, 29.771271>,  <28.463984, 24.240414, 29.568169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.590866, 24.256222, 29.771271>,  <28.802338, 24.282568, 30.109776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.590866, 24.256222, 29.771271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574055, 0.706665, -0.413625,
		0.625267, -0.704476, -0.335791,
		-0.528680, -0.065864, -0.846262,
		28.432262, 24.236464, 29.517391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.360571, 24.351873, 29.495636>,  <28.802338, 24.282568, 30.109776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.360571, 24.351873, 29.495636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.996359, 24.445114, 29.359051>,  <28.777832, 24.501059, 29.277100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.996359, 24.445114, 29.359051>,  <29.360571, 24.351873, 29.495636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.996359, 24.445114, 29.359051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386219, 0.774298, -0.501297,
		0.147541, -0.588325, -0.795050,
		-0.910531, 0.233101, -0.341463,
		28.723200, 24.515045, 29.256613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.490618, 24.517054, 28.788004>,  <29.360571, 24.351873, 29.495636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.490618, 24.517054, 28.788004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.140911, 24.681122, 28.891865>,  <28.931087, 24.779562, 28.954182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.140911, 24.681122, 28.891865>,  <29.490618, 24.517054, 28.788004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.140911, 24.681122, 28.891865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263741, 0.850378, -0.455300,
		-0.407555, -0.329572, -0.851634,
		-0.874265, 0.410171, 0.259655,
		28.878632, 24.804173, 28.969761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.169035, 24.909082, 28.181452>,  <29.490618, 24.517054, 28.788004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.169035, 24.909082, 28.181452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.984116, 25.068806, 28.498142>,  <28.873163, 25.164640, 28.688156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.984116, 25.068806, 28.498142>,  <29.169035, 24.909082, 28.181452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.984116, 25.068806, 28.498142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031078, 0.885022, -0.464510,
		-0.886180, -0.239347, -0.396734,
		-0.462298, 0.399310, 0.791727,
		28.845427, 25.188599, 28.735661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.722540, 25.334158, 27.874617>,  <29.169035, 24.909082, 28.181452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.722540, 25.334158, 27.874617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.698835, 25.482941, 28.245159>,  <28.684612, 25.572210, 28.467485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.698835, 25.482941, 28.245159>,  <28.722540, 25.334158, 27.874617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.698835, 25.482941, 28.245159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029543, 0.926928, -0.374074,
		-0.997805, -0.049536, -0.043942,
		-0.059261, 0.371955, 0.926357,
		28.681057, 25.594526, 28.523066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.129778, 25.821882, 27.905962>,  <28.722540, 25.334158, 27.874617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.129778, 25.821882, 27.905962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.375742, 25.948814, 28.194736>,  <28.523321, 26.024973, 28.368000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.375742, 25.948814, 28.194736>,  <28.129778, 25.821882, 27.905962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.375742, 25.948814, 28.194736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026704, 0.906562, -0.421227,
		-0.788145, 0.278296, 0.548980,
		0.614910, 0.317328, 0.721934,
		28.560215, 26.044012, 28.411316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.788546, 26.369635, 28.200550>,  <28.129778, 25.821882, 27.905962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.788546, 26.369635, 28.200550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.164551, 26.415722, 28.328987>,  <28.390154, 26.443375, 28.406050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.164551, 26.415722, 28.328987>,  <27.788546, 26.369635, 28.200550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.164551, 26.415722, 28.328987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023287, 0.960713, -0.276565,
		-0.340343, 0.252497, 0.905766,
		0.940013, 0.115219, 0.321092,
		28.446554, 26.450287, 28.425314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.713556, 26.985409, 28.582121>,  <27.788546, 26.369635, 28.200550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.713556, 26.985409, 28.582121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.108391, 26.969997, 28.519920>,  <28.345291, 26.960751, 28.482599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.108391, 26.969997, 28.519920>,  <27.713556, 26.985409, 28.582121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.108391, 26.969997, 28.519920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036325, 0.999196, -0.016980,
		0.156030, 0.011112, 0.987690,
		0.987084, -0.038527, -0.155501,
		28.404516, 26.958439, 28.473270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.043745, 27.486753, 29.061035>,  <27.713556, 26.985409, 28.582121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.043745, 27.486753, 29.061035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.298330, 27.442791, 28.755661>,  <28.451080, 27.416414, 28.572435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.298330, 27.442791, 28.755661>,  <28.043745, 27.486753, 29.061035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.298330, 27.442791, 28.755661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093067, 0.971621, -0.217465,
		0.765672, 0.209459, 0.608171,
		0.636462, -0.109906, -0.763437,
		28.489269, 27.409819, 28.526630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.558241, 27.969021, 29.206833>,  <28.043745, 27.486753, 29.061035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.558241, 27.969021, 29.206833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.568665, 27.889664, 28.814922>,  <28.574919, 27.842049, 28.579777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.568665, 27.889664, 28.814922>,  <28.558241, 27.969021, 29.206833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.568665, 27.889664, 28.814922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171428, 0.964703, -0.199901,
		0.984852, 0.173170, -0.008870,
		0.026060, -0.198394, -0.979776,
		28.576483, 27.830145, 28.520990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.973944, 28.533152, 28.922478>,  <28.558241, 27.969021, 29.206833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.973944, 28.533152, 28.922478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.776932, 28.363449, 28.618526>,  <28.658724, 28.261627, 28.436155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.776932, 28.363449, 28.618526>,  <28.973944, 28.533152, 28.922478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.776932, 28.363449, 28.618526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294536, 0.902866, -0.313181,
		0.818940, 0.069560, -0.569648,
		-0.492531, -0.424259, -0.759880,
		28.629173, 28.236172, 28.390562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.158112, 28.989754, 28.469633>,  <28.973944, 28.533152, 28.922478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.158112, 28.989754, 28.469633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.844013, 28.794884, 28.316769>,  <28.655554, 28.677961, 28.225050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.844013, 28.794884, 28.316769>,  <29.158112, 28.989754, 28.469633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.844013, 28.794884, 28.316769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374858, 0.865284, -0.332813,
		0.492816, -0.118084, -0.862084,
		-0.785248, -0.487175, -0.382161,
		28.608438, 28.648731, 28.202120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.096323, 29.183344, 27.666147>,  <29.158112, 28.989754, 28.469633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.096323, 29.183344, 27.666147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.745689, 29.045734, 27.800755>,  <28.535309, 28.963169, 27.881519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.745689, 29.045734, 27.800755>,  <29.096323, 29.183344, 27.666147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.745689, 29.045734, 27.800755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462356, 0.796031, -0.390592,
		-0.133507, -0.497979, -0.856851,
		-0.876586, -0.344023, 0.336519,
		28.482714, 28.942528, 27.901711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.620823, 29.286488, 27.107368>,  <29.096323, 29.183344, 27.666147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.620823, 29.286488, 27.107368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.373598, 29.242687, 27.418755>,  <28.225264, 29.216408, 27.605587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.373598, 29.242687, 27.418755>,  <28.620823, 29.286488, 27.107368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.373598, 29.242687, 27.418755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691612, 0.546510, -0.472229,
		-0.373731, -0.830263, -0.413506,
		-0.618060, -0.109499, 0.778468,
		28.188181, 29.209837, 27.652294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.985132, 29.097025, 26.768681>,  <28.620823, 29.286488, 27.107368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.985132, 29.097025, 26.768681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.913883, 29.258186, 27.127777>,  <27.871134, 29.354883, 27.343235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.913883, 29.258186, 27.127777>,  <27.985132, 29.097025, 26.768681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.913883, 29.258186, 27.127777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670331, 0.618212, -0.410452,
		-0.720367, -0.674896, 0.159959,
		-0.178124, 0.402902, 0.897743,
		27.860447, 29.379057, 27.397100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.279331, 29.006393, 26.848869>,  <27.985132, 29.097025, 26.768681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.279331, 29.006393, 26.848869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.395884, 29.292870, 27.102535>,  <27.465815, 29.464756, 27.254736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.395884, 29.292870, 27.102535>,  <27.279331, 29.006393, 26.848869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.395884, 29.292870, 27.102535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769409, 0.569383, -0.289506,
		-0.568425, -0.403577, 0.716951,
		0.291382, 0.716190, 0.634167,
		27.483297, 29.507727, 27.292786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.699183, 29.192913, 27.273825>,  <27.279331, 29.006393, 26.848869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.699183, 29.192913, 27.273825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.936487, 29.514683, 27.286121>,  <27.078871, 29.707745, 27.293499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.936487, 29.514683, 27.286121>,  <26.699183, 29.192913, 27.273825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.936487, 29.514683, 27.286121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636779, 0.492301, -0.593424,
		-0.492497, 0.332481, 0.804303,
		0.593261, 0.804423, 0.030740,
		27.114466, 29.756010, 27.295343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.277184, 29.727352, 27.390623>,  <26.699183, 29.192913, 27.273825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.277184, 29.727352, 27.390623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.609964, 29.914963, 27.272049>,  <26.809633, 30.027529, 27.200905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.609964, 29.914963, 27.272049>,  <26.277184, 29.727352, 27.390623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.609964, 29.914963, 27.272049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535663, 0.539667, -0.649481,
		-0.144646, 0.699125, 0.700215,
		0.831951, 0.469024, -0.296434,
		26.859550, 30.055670, 27.183119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.088930, 30.398907, 27.361235>,  <26.277184, 29.727352, 27.390623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.088930, 30.398907, 27.361235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.421669, 30.384552, 27.139698>,  <26.621313, 30.375940, 27.006777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.421669, 30.384552, 27.139698>,  <26.088930, 30.398907, 27.361235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.421669, 30.384552, 27.139698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474255, 0.472389, -0.742920,
		0.288288, 0.880659, 0.375938,
		0.831848, -0.035885, -0.553842,
		26.671223, 30.373787, 26.973545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.215351, 31.060238, 27.073627>,  <26.088930, 30.398907, 27.361235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.215351, 31.060238, 27.073627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.426641, 30.830391, 26.823574>,  <26.553415, 30.692482, 26.673542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.426641, 30.830391, 26.823574>,  <26.215351, 31.060238, 27.073627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.426641, 30.830391, 26.823574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351903, 0.521873, -0.777054,
		0.772749, 0.630447, 0.073459,
		0.528228, -0.574617, -0.625133,
		26.585110, 30.658007, 26.636034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.532335, 31.517170, 26.523699>,  <26.215351, 31.060238, 27.073627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.532335, 31.517170, 26.523699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.575521, 31.149559, 26.372051>,  <26.601433, 30.928993, 26.281063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.575521, 31.149559, 26.372051>,  <26.532335, 31.517170, 26.523699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.575521, 31.149559, 26.372051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316495, 0.329734, -0.889441,
		0.942430, 0.216017, -0.255268,
		0.107964, -0.919027, -0.379120,
		26.607910, 30.873850, 26.258316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.953615, 31.555519, 25.932575>,  <26.532335, 31.517170, 26.523699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.953615, 31.555519, 25.932575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.745392, 31.217285, 25.885242>,  <26.620459, 31.014345, 25.856842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.745392, 31.217285, 25.885242>,  <26.953615, 31.555519, 25.932575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.745392, 31.217285, 25.885242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178022, 0.243035, -0.953542,
		0.835061, -0.475308, -0.277046,
		-0.520558, -0.845586, -0.118334,
		26.589224, 30.963610, 25.849743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.219542, 31.332182, 25.319576>,  <26.953615, 31.555519, 25.932575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.219542, 31.332182, 25.319576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.875013, 31.132591, 25.357830>,  <26.668297, 31.012836, 25.380783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.875013, 31.132591, 25.357830>,  <27.219542, 31.332182, 25.319576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.875013, 31.132591, 25.357830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224280, 0.204529, -0.952820,
		0.455875, -0.842134, -0.288076,
		-0.861323, -0.498976, 0.095634,
		26.616617, 30.982899, 25.386520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.097246, 31.050594, 24.681297>,  <27.219542, 31.332182, 25.319576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.097246, 31.050594, 24.681297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.734425, 31.009472, 24.844604>,  <26.516731, 30.984798, 24.942589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.734425, 31.009472, 24.844604>,  <27.097246, 31.050594, 24.681297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.734425, 31.009472, 24.844604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420357, 0.275273, -0.864595,
		-0.023500, -0.955854, -0.292902,
		-0.907054, -0.102806, 0.408268,
		26.462309, 30.978630, 24.967085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.558128, 30.685228, 24.238682>,  <27.097246, 31.050594, 24.681297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.558128, 30.685228, 24.238682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.327744, 30.913174, 24.473125>,  <26.189512, 31.049940, 24.613792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.327744, 30.913174, 24.473125>,  <26.558128, 30.685228, 24.238682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.327744, 30.913174, 24.473125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535920, 0.278189, -0.797121,
		-0.617297, -0.773220, 0.145173,
		-0.575964, 0.569861, 0.586109,
		26.154955, 31.084131, 24.648958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.816788, 30.499138, 24.122927>,  <26.558128, 30.685228, 24.238682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.816788, 30.499138, 24.122927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.783262, 30.864147, 24.283066>,  <25.763147, 31.083153, 24.379148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.783262, 30.864147, 24.283066>,  <25.816788, 30.499138, 24.122927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.783262, 30.864147, 24.283066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664410, 0.248250, -0.704934,
		-0.742654, -0.325077, 0.585482,
		-0.083811, 0.912522, 0.400348,
		25.758120, 31.137903, 24.403170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.101999, 30.754642, 23.873543>,  <25.816788, 30.499138, 24.122927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.101999, 30.754642, 23.873543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.278053, 31.084885, 24.014771>,  <25.383686, 31.283030, 24.099506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.278053, 31.084885, 24.014771>,  <25.101999, 30.754642, 23.873543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.278053, 31.084885, 24.014771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597984, 0.562824, -0.570652,
		-0.669849, 0.040034, 0.741417,
		0.440133, 0.825606, 0.353068,
		25.410093, 31.332567, 24.120691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.588179, 31.109413, 24.172960>,  <25.101999, 30.754642, 23.873543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.588179, 31.109413, 24.172960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.862211, 31.389473, 24.092506>,  <25.026630, 31.557508, 24.044233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.862211, 31.389473, 24.092506>,  <24.588179, 31.109413, 24.172960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.862211, 31.389473, 24.092506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709000, 0.577450, -0.404810,
		-0.167282, 0.419932, 0.892005,
		0.685081, 0.700149, -0.201135,
		25.067736, 31.599518, 24.032166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.309734, 31.795334, 24.298275>,  <24.588179, 31.109413, 24.172960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.309734, 31.795334, 24.298275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.607775, 31.851776, 24.037533>,  <24.786598, 31.885641, 23.881086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.607775, 31.851776, 24.037533>,  <24.309734, 31.795334, 24.298275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.607775, 31.851776, 24.037533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583390, 0.611566, -0.534456,
		0.323239, 0.778509, 0.537996,
		0.745099, 0.141104, -0.651857,
		24.831305, 31.894108, 23.841976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.335575, 32.518047, 24.116352>,  <24.309734, 31.795334, 24.298275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.335575, 32.518047, 24.116352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.489485, 32.297180, 23.820499>,  <24.581831, 32.164658, 23.642988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.489485, 32.297180, 23.820499>,  <24.335575, 32.518047, 24.116352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.489485, 32.297180, 23.820499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656314, 0.399764, -0.639875,
		0.648998, 0.731639, -0.208577,
		0.384776, -0.552170, -0.739632,
		24.604918, 32.131531, 23.598610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.949507, 32.571022, 24.509830>,  <24.335575, 32.518047, 24.116352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.949507, 32.571022, 24.509830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.961044, 32.885742, 24.756443>,  <24.967968, 33.074574, 24.904411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.961044, 32.885742, 24.756443>,  <24.949507, 32.571022, 24.509830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.961044, 32.885742, 24.756443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.993975, 0.087823, -0.065573,
		-0.105738, -0.610926, 0.784595,
		0.028845, 0.786802, 0.616532,
		24.969698, 33.121784, 24.941402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.552040, 32.424747, 25.071768>,  <24.949507, 32.571022, 24.509830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.552040, 32.424747, 25.071768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.547972, 32.824642, 25.063530>,  <24.545530, 33.064579, 25.058586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.547972, 32.824642, 25.063530>,  <24.552040, 32.424747, 25.071768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.547972, 32.824642, 25.063530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.993075, -0.007690, 0.117235,
		0.117045, 0.021646, 0.992891,
		-0.010173, 0.999736, -0.020596,
		24.544920, 33.124561, 25.057350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.189348, 32.679363, 25.716320>,  <24.552040, 32.424747, 25.071768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.189348, 32.679363, 25.716320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.170521, 32.903557, 25.385590>,  <24.159224, 33.038071, 25.187151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.170521, 32.903557, 25.385590>,  <24.189348, 32.679363, 25.716320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.170521, 32.903557, 25.385590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.993369, -0.113186, -0.020176,
		-0.104894, 0.820396, 0.562091,
		-0.047069, 0.560481, -0.826829,
		24.156401, 33.071701, 25.137541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.523504, 33.020615, 25.679052>,  <24.189348, 32.679363, 25.716320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.523504, 33.020615, 25.679052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.618980, 33.096119, 25.298023>,  <23.676266, 33.141422, 25.069407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.618980, 33.096119, 25.298023>,  <23.523504, 33.020615, 25.679052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.618980, 33.096119, 25.298023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.948881, -0.163280, -0.270120,
		-0.206525, 0.968353, 0.140142,
		0.238689, 0.188765, -0.952573,
		23.690586, 33.152748, 25.012251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.908268, 33.218002, 25.410656>,  <23.523504, 33.020615, 25.679052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.908268, 33.218002, 25.410656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.111406, 33.118443, 25.080772>,  <23.233290, 33.058704, 24.882843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.111406, 33.118443, 25.080772>,  <22.908268, 33.218002, 25.410656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.111406, 33.118443, 25.080772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861374, -0.134061, -0.489962,
		0.011392, 0.959205, -0.282480,
		0.507844, -0.248903, -0.824707,
		23.263760, 33.043770, 24.833361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.384054, 33.744335, 25.187744>,  <22.908268, 33.218002, 25.410656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.384054, 33.744335, 25.187744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.434076, 33.817829, 24.797749>,  <22.464088, 33.861927, 24.563751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.434076, 33.817829, 24.797749>,  <22.384054, 33.744335, 25.187744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.434076, 33.817829, 24.797749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128486, -0.971428, -0.199546,
		-0.983795, 0.150227, -0.097874,
		0.125054, 0.183737, -0.974988,
		22.471592, 33.872952, 24.505253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.884928, 34.047535, 24.700588>,  <22.384054, 33.744335, 25.187744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.884928, 34.047535, 24.700588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.599188, 34.257599, 24.515587>,  <21.427744, 34.383636, 24.404587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.599188, 34.257599, 24.515587>,  <21.884928, 34.047535, 24.700588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.599188, 34.257599, 24.515587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699664, 0.523592, -0.486130,
		-0.013132, -0.670865, -0.741463,
		-0.714352, 0.525159, -0.462504,
		21.384882, 34.415146, 24.376835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.116508, 33.941868, 23.979921>,  <21.884928, 34.047535, 24.700588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.116508, 33.941868, 23.979921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.839123, 34.230003, 23.973969>,  <21.672691, 34.402885, 23.970396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.839123, 34.230003, 23.973969>,  <22.116508, 33.941868, 23.979921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.839123, 34.230003, 23.973969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603316, 0.569267, -0.558521,
		-0.393851, -0.396294, -0.829357,
		-0.693464, 0.720338, -0.014884,
		21.631084, 34.446106, 23.969503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.178991, 34.158138, 23.328997>,  <22.116508, 33.941868, 23.979921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.178991, 34.158138, 23.328997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.980032, 34.458012, 23.503616>,  <21.860657, 34.637936, 23.608389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.980032, 34.458012, 23.503616>,  <22.178991, 34.158138, 23.328997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.980032, 34.458012, 23.503616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524717, 0.660713, -0.536778,
		-0.690846, -0.037927, -0.722007,
		-0.497397, 0.749680, 0.436550,
		21.830812, 34.682915, 23.634581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.058338, 34.718742, 22.868568>,  <22.178991, 34.158138, 23.328997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.058338, 34.718742, 22.868568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.036982, 34.929295, 23.207996>,  <22.024168, 35.055626, 23.411654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.036982, 34.929295, 23.207996>,  <22.058338, 34.718742, 22.868568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.036982, 34.929295, 23.207996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434093, 0.777524, -0.454995,
		-0.899285, 0.344067, -0.270010,
		-0.053390, 0.526379, 0.848572,
		22.020964, 35.087208, 23.462568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.816916, 35.390182, 22.659601>,  <22.058338, 34.718742, 22.868568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.816916, 35.390182, 22.659601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.965771, 35.465652, 23.023121>,  <22.055084, 35.510937, 23.241232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.965771, 35.465652, 23.023121>,  <21.816916, 35.390182, 22.659601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.965771, 35.465652, 23.023121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442566, 0.824583, -0.352419,
		-0.815872, 0.533352, 0.223357,
		0.372140, 0.188678, 0.908797,
		22.077414, 35.522255, 23.295759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.702793, 36.179264, 22.825562>,  <21.816916, 35.390182, 22.659601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.702793, 36.179264, 22.825562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.024971, 36.034931, 23.013630>,  <22.218277, 35.948330, 23.126471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.024971, 36.034931, 23.013630>,  <21.702793, 36.179264, 22.825562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.024971, 36.034931, 23.013630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541253, 0.771038, -0.335477,
		-0.241469, 0.524689, 0.816330,
		0.805443, -0.360834, 0.470171,
		22.266603, 35.926682, 23.154682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.169086, 36.703842, 22.746120>,  <21.702793, 36.179264, 22.825562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.169086, 36.703842, 22.746120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.412613, 36.420322, 22.888634>,  <22.558729, 36.250210, 22.974142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.412613, 36.420322, 22.888634>,  <22.169086, 36.703842, 22.746120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.412613, 36.420322, 22.888634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755100, 0.380063, -0.534206,
		0.243237, 0.594263, 0.766607,
		0.608818, -0.708804, 0.356283,
		22.595259, 36.207680, 22.995518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.598661, 37.065224, 23.156921>,  <22.169086, 36.703842, 22.746120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.598661, 37.065224, 23.156921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.763498, 36.730305, 23.013191>,  <22.862400, 36.529354, 22.926952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.763498, 36.730305, 23.013191>,  <22.598661, 37.065224, 23.156921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.763498, 36.730305, 23.013191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675461, 0.545413, -0.496262,
		0.611500, -0.038206, 0.790321,
		0.412092, -0.837296, -0.359327,
		22.887125, 36.479115, 22.905394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.282843, 37.252728, 23.083864>,  <22.598661, 37.065224, 23.156921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.282843, 37.252728, 23.083864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.230261, 36.933197, 22.849056>,  <23.198711, 36.741478, 22.708172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.230261, 36.933197, 22.849056>,  <23.282843, 37.252728, 23.083864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.230261, 36.933197, 22.849056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401687, 0.498445, -0.768245,
		0.906293, -0.336787, 0.255356,
		-0.131454, -0.798828, -0.587021,
		23.190825, 36.693550, 22.672951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.961645, 37.103569, 22.823345>,  <23.282843, 37.252728, 23.083864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.961645, 37.103569, 22.823345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.747318, 36.890755, 22.561096>,  <23.618721, 36.763065, 22.403748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.747318, 36.890755, 22.561096>,  <23.961645, 37.103569, 22.823345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.747318, 36.890755, 22.561096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530395, 0.392072, -0.751639,
		0.656947, -0.750480, 0.072108,
		-0.535819, -0.532033, -0.655621,
		23.586573, 36.731144, 22.364410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.462765, 36.895248, 22.333239>,  <23.961645, 37.103569, 22.823345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.462765, 36.895248, 22.333239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.109707, 36.878166, 22.146000>,  <23.897873, 36.867916, 22.033657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.109707, 36.878166, 22.146000>,  <24.462765, 36.895248, 22.333239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.109707, 36.878166, 22.146000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364166, 0.567524, -0.738444,
		0.297189, -0.822249, -0.485372,
		-0.882645, -0.042702, -0.468097,
		23.844913, 36.865356, 22.005571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.617977, 36.594536, 21.686087>,  <24.462765, 36.895248, 22.333239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.617977, 36.594536, 21.686087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.256447, 36.756355, 21.630318>,  <24.039528, 36.853447, 21.596855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.256447, 36.756355, 21.630318>,  <24.617977, 36.594536, 21.686087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.256447, 36.756355, 21.630318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319337, 0.420826, -0.849076,
		-0.284817, -0.811941, -0.509540,
		-0.903827, 0.404546, -0.139425,
		23.985298, 36.877720, 21.588490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.406420, 36.539463, 20.932056>,  <24.617977, 36.594536, 21.686087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.406420, 36.539463, 20.932056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.187599, 36.840260, 21.079163>,  <24.056307, 37.020737, 21.167427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.187599, 36.840260, 21.079163>,  <24.406420, 36.539463, 20.932056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.187599, 36.840260, 21.079163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291071, 0.582796, -0.758701,
		-0.784866, -0.308000, -0.537699,
		-0.547049, 0.751987, 0.367767,
		24.023485, 37.065857, 21.189493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.194296, 36.894241, 20.300543>,  <24.406420, 36.539463, 20.932056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.194296, 36.894241, 20.300543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.102180, 37.153522, 20.590866>,  <24.046911, 37.309090, 20.765060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.102180, 37.153522, 20.590866>,  <24.194296, 36.894241, 20.300543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.102180, 37.153522, 20.590866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230314, 0.760970, -0.606531,
		-0.945476, 0.027488, -0.324532,
		-0.230286, 0.648204, 0.725810,
		24.033094, 37.347984, 20.808609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.739510, 37.367092, 19.943251>,  <24.194296, 36.894241, 20.300543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.739510, 37.367092, 19.943251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.879082, 37.559864, 20.264744>,  <23.962824, 37.675529, 20.457640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.879082, 37.559864, 20.264744>,  <23.739510, 37.367092, 19.943251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.879082, 37.559864, 20.264744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323269, 0.743099, -0.585919,
		-0.879628, 0.464266, 0.103494,
		0.348928, 0.481934, 0.803734,
		23.983761, 37.704445, 20.505863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.519131, 38.123768, 19.937502>,  <23.739510, 37.367092, 19.943251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.519131, 38.123768, 19.937502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.831375, 38.146614, 20.186462>,  <24.018723, 38.160320, 20.335838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.831375, 38.146614, 20.186462>,  <23.519131, 38.123768, 19.937502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.831375, 38.146614, 20.186462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399473, 0.720281, -0.567113,
		-0.480693, 0.691328, 0.539445,
		0.780613, 0.057114, 0.622400,
		24.065559, 38.163750, 20.373182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.643503, 38.878319, 20.075207>,  <23.519131, 38.123768, 19.937502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.643503, 38.878319, 20.075207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.995159, 38.706646, 20.158073>,  <24.206154, 38.603642, 20.207794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.995159, 38.706646, 20.158073>,  <23.643503, 38.878319, 20.075207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.995159, 38.706646, 20.158073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450131, 0.605058, -0.656724,
		0.156503, 0.670605, 0.725118,
		0.879141, -0.429178, 0.207167,
		24.258902, 38.577892, 20.220222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.041437, 39.392860, 20.169794>,  <23.643503, 38.878319, 20.075207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.041437, 39.392860, 20.169794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.340250, 39.132351, 20.116459>,  <24.519537, 38.976044, 20.084457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.340250, 39.132351, 20.116459>,  <24.041437, 39.392860, 20.169794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.340250, 39.132351, 20.116459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409827, 0.609098, -0.679000,
		0.523435, 0.452589, 0.721927,
		0.747032, -0.651278, -0.133340,
		24.564360, 38.936966, 20.076456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.582451, 39.713474, 20.190027>,  <24.041437, 39.392860, 20.169794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.582451, 39.713474, 20.190027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.688147, 39.391102, 19.978119>,  <24.751564, 39.197678, 19.850975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.688147, 39.391102, 19.978119>,  <24.582451, 39.713474, 20.190027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.688147, 39.391102, 19.978119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515828, 0.582224, -0.628440,
		0.814922, -0.107210, 0.569568,
		0.264241, -0.805929, -0.529769,
		24.767420, 39.149323, 19.819189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.308548, 39.686840, 20.133535>,  <24.582451, 39.713474, 20.190027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.308548, 39.686840, 20.133535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.194458, 39.457241, 19.826504>,  <25.126005, 39.319481, 19.642284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.194458, 39.457241, 19.826504>,  <25.308548, 39.686840, 20.133535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.194458, 39.457241, 19.826504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599690, 0.517850, -0.610085,
		0.747676, -0.634320, 0.196515,
		-0.285224, -0.573994, -0.767579,
		25.108891, 39.285042, 19.596230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.000051, 39.482365, 19.875792>,  <25.308548, 39.686840, 20.133535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.000051, 39.482365, 19.875792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.732859, 39.433010, 19.582241>,  <25.572542, 39.403397, 19.406111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.732859, 39.433010, 19.582241>,  <26.000051, 39.482365, 19.875792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.732859, 39.433010, 19.582241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591435, 0.510514, -0.624163,
		0.451668, -0.850970, -0.268040,
		-0.667982, -0.123386, -0.733877,
		25.532465, 39.395992, 19.362078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.207640, 39.100300, 19.302111>,  <26.000051, 39.482365, 19.875792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.207640, 39.100300, 19.302111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.923399, 39.331402, 19.141487>,  <25.752855, 39.470062, 19.045113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.923399, 39.331402, 19.141487>,  <26.207640, 39.100300, 19.302111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.923399, 39.331402, 19.141487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633015, 0.275825, -0.723335,
		-0.307148, -0.768194, -0.561727,
		-0.710600, 0.577752, -0.401559,
		25.710218, 39.504726, 19.021019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.382412, 38.961369, 18.658340>,  <26.207640, 39.100300, 19.302111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.382412, 38.961369, 18.658340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.148081, 39.282120, 18.705326>,  <26.007483, 39.474571, 18.733517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.148081, 39.282120, 18.705326>,  <26.382412, 38.961369, 18.658340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.148081, 39.282120, 18.705326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382232, 0.401187, -0.832435,
		-0.714636, -0.442765, -0.541530,
		-0.585828, 0.801878, 0.117464,
		25.972332, 39.522682, 18.740564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.867357, 39.069260, 18.008869>,  <26.382412, 38.961369, 18.658340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.867357, 39.069260, 18.008869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.938147, 39.414059, 18.198879>,  <25.980619, 39.620937, 18.312885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.938147, 39.414059, 18.198879>,  <25.867357, 39.069260, 18.008869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.938147, 39.414059, 18.198879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325898, 0.404091, -0.854693,
		-0.928693, 0.306066, -0.209410,
		0.176971, 0.861994, 0.475023,
		25.991238, 39.672657, 18.341387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.543852, 39.656773, 17.677557>,  <25.867357, 39.069260, 18.008869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.543852, 39.656773, 17.677557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.894257, 39.731789, 17.855289>,  <26.104500, 39.776798, 17.961929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.894257, 39.731789, 17.855289>,  <25.543852, 39.656773, 17.677557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.894257, 39.731789, 17.855289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336648, 0.421947, -0.841801,
		-0.345357, 0.887011, 0.306496,
		0.876012, 0.187540, 0.444333,
		26.157061, 39.788052, 17.988590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.813927, 39.556583, 17.695026>,  <25.543852, 39.656773, 17.677557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.813927, 39.556583, 17.695026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.625257, 39.344860, 17.412930>,  <24.512056, 39.217827, 17.243671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.625257, 39.344860, 17.412930>,  <24.813927, 39.556583, 17.695026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.625257, 39.344860, 17.412930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822112, 0.553170, 0.134665,
		0.318839, 0.643304, -0.696062,
		-0.471671, -0.529305, -0.705240,
		24.483757, 39.186069, 17.201357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.386259, 40.024868, 17.301506>,  <24.813927, 39.556583, 17.695026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.386259, 40.024868, 17.301506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.230719, 39.661095, 17.242550>,  <24.137394, 39.442829, 17.207176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.230719, 39.661095, 17.242550>,  <24.386259, 40.024868, 17.301506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.230719, 39.661095, 17.242550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.920020, 0.374876, 0.114153,
		-0.048563, 0.179989, -0.982469,
		-0.388850, -0.909435, -0.147389,
		24.114063, 39.388264, 17.198334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.703913, 40.245533, 17.233032>,  <24.386259, 40.024868, 17.301506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.703913, 40.245533, 17.233032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.672485, 39.849079, 17.275875>,  <23.653629, 39.611206, 17.301580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.672485, 39.849079, 17.275875>,  <23.703913, 40.245533, 17.233032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.672485, 39.849079, 17.275875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.994492, 0.085401, 0.060769,
		-0.069377, -0.101744, -0.992388,
		-0.078568, -0.991138, 0.107109,
		23.648914, 39.551739, 17.308008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.932846, 40.214054, 17.039318>,  <23.703913, 40.245533, 17.233032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.932846, 40.214054, 17.039318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.010973, 39.842594, 17.165474>,  <23.057850, 39.619720, 17.241167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.010973, 39.842594, 17.165474>,  <22.932846, 40.214054, 17.039318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.010973, 39.842594, 17.165474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.977418, -0.157867, 0.140475,
		-0.080662, -0.335703, -0.938508,
		0.195317, -0.928645, 0.315388,
		23.069569, 39.563999, 17.260090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.281218, 40.442226, 17.167873>,  <22.932846, 40.214054, 17.039318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.281218, 40.442226, 17.167873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.983150, 40.418316, 16.902195>,  <21.804310, 40.403969, 16.742788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.983150, 40.418316, 16.902195>,  <22.281218, 40.442226, 17.167873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.983150, 40.418316, 16.902195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619747, -0.305706, 0.722812,
		-0.246253, 0.950248, 0.190757,
		-0.745166, -0.059773, -0.664195,
		21.759602, 40.400383, 16.702936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.858044, 39.988380, 17.669891>,  <22.281218, 40.442226, 17.167873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.858044, 39.988380, 17.669891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.529894, 39.926170, 17.449783>,  <21.333004, 39.888844, 17.317719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.529894, 39.926170, 17.449783>,  <21.858044, 39.988380, 17.669891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.529894, 39.926170, 17.449783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340523, -0.640202, 0.688611,
		-0.459380, 0.752299, 0.472246,
		-0.820375, -0.155523, -0.550271,
		21.283781, 39.879513, 17.284702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.190035, 40.225658, 18.011595>,  <21.858044, 39.988380, 17.669891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.190035, 40.225658, 18.011595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.177673, 39.910946, 17.765015>,  <21.170256, 39.722118, 17.617065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.177673, 39.910946, 17.765015>,  <21.190035, 40.225658, 18.011595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.177673, 39.910946, 17.765015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284782, -0.584252, 0.759966,
		-0.958094, 0.199042, -0.206006,
		-0.030906, -0.786786, -0.616452,
		21.168402, 39.674911, 17.580078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.689125, 39.854916, 18.319239>,  <21.190035, 40.225658, 18.011595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.689125, 39.854916, 18.319239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.843830, 39.602329, 18.050415>,  <20.936653, 39.450779, 17.889120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.843830, 39.602329, 18.050415>,  <20.689125, 39.854916, 18.319239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.843830, 39.602329, 18.050415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240037, -0.772589, 0.587782,
		-0.890392, -0.066013, -0.450383,
		0.386763, -0.631465, -0.672062,
		20.959860, 39.412891, 17.848797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.213459, 39.311409, 18.216860>,  <20.689125, 39.854916, 18.319239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.213459, 39.311409, 18.216860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.549709, 39.145863, 18.077110>,  <20.751459, 39.046535, 17.993261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.549709, 39.145863, 18.077110>,  <20.213459, 39.311409, 18.216860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.549709, 39.145863, 18.077110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242154, -0.864190, 0.441063,
		-0.484465, -0.286168, -0.826681,
		0.840628, -0.413864, -0.349373,
		20.801897, 39.021702, 17.972298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.034933, 38.701591, 17.900599>,  <20.213459, 39.311409, 18.216860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.034933, 38.701591, 17.900599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.419966, 38.656391, 17.999119>,  <20.650986, 38.629272, 18.058231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.419966, 38.656391, 17.999119>,  <20.034933, 38.701591, 17.900599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.419966, 38.656391, 17.999119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213835, -0.875047, 0.434243,
		0.166456, -0.470663, -0.866469,
		0.962584, -0.112999, 0.246301,
		20.708740, 38.622490, 18.073009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.148092, 38.091763, 17.685959>,  <20.034933, 38.701591, 17.900599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.148092, 38.091763, 17.685959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.424305, 38.166832, 17.965370>,  <20.590033, 38.211872, 18.133017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.424305, 38.166832, 17.965370>,  <20.148092, 38.091763, 17.685959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.424305, 38.166832, 17.965370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256301, -0.839599, 0.478939,
		0.676368, -0.509757, -0.531671,
		0.690533, 0.187671, 0.698530,
		20.631464, 38.223133, 18.174929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.408167, 37.473629, 17.864838>,  <20.148092, 38.091763, 17.685959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.408167, 37.473629, 17.864838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.552628, 37.688274, 18.169891>,  <20.639303, 37.817062, 18.352924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.552628, 37.688274, 18.169891>,  <20.408167, 37.473629, 17.864838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.552628, 37.688274, 18.169891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092531, -0.793175, 0.601924,
		0.927906, -0.287952, -0.236801,
		0.361150, 0.536617, 0.762636,
		20.660973, 37.849258, 18.398682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.815853, 36.956390, 18.200033>,  <20.408167, 37.473629, 17.864838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.815853, 36.956390, 18.200033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.752483, 37.261486, 18.450836>,  <20.714462, 37.444542, 18.601318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.752483, 37.261486, 18.450836>,  <20.815853, 36.956390, 18.200033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.752483, 37.261486, 18.450836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082272, -0.622619, 0.778188,
		0.983938, 0.174868, 0.035885,
		-0.158423, 0.762736, 0.627006,
		20.704956, 37.490307, 18.638937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.417301, 36.814423, 18.686960>,  <20.815853, 36.956390, 18.200033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.417301, 36.814423, 18.686960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.136242, 37.037014, 18.864326>,  <20.967607, 37.170570, 18.970747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.136242, 37.037014, 18.864326>,  <21.417301, 36.814423, 18.686960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.136242, 37.037014, 18.864326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071480, -0.564825, 0.822109,
		0.707940, 0.609348, 0.357095,
		-0.702646, 0.556479, 0.443418,
		20.925447, 37.203957, 18.997353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.669876, 36.950268, 19.344494>,  <21.417301, 36.814423, 18.686960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.669876, 36.950268, 19.344494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.277218, 37.009151, 19.392986>,  <21.041622, 37.044483, 19.422083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.277218, 37.009151, 19.392986>,  <21.669876, 36.950268, 19.344494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.277218, 37.009151, 19.392986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056890, -0.380715, 0.922941,
		0.182021, 0.912899, 0.365353,
		-0.981647, 0.147210, 0.121233,
		20.982723, 37.053314, 19.429356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.435043, 37.487190, 19.976606>,  <21.669876, 36.950268, 19.344494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.435043, 37.487190, 19.976606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.122496, 37.245956, 19.912422>,  <20.934967, 37.101215, 19.873911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.122496, 37.245956, 19.912422>,  <21.435043, 37.487190, 19.976606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.122496, 37.245956, 19.912422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063658, -0.178758, 0.981832,
		-0.620814, 0.777387, 0.101284,
		-0.781369, -0.603087, -0.160462,
		20.888084, 37.065029, 19.864283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.905785, 37.635128, 20.517725>,  <21.435043, 37.487190, 19.976606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.905785, 37.635128, 20.517725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.765045, 37.284420, 20.386589>,  <20.680601, 37.073994, 20.307907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.765045, 37.284420, 20.386589>,  <20.905785, 37.635128, 20.517725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.765045, 37.284420, 20.386589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156102, -0.290371, 0.944096,
		-0.922949, 0.383354, -0.034699,
		-0.351847, -0.876769, -0.327840,
		20.659491, 37.021389, 20.288237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.220289, 37.574444, 20.849806>,  <20.905785, 37.635128, 20.517725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.220289, 37.574444, 20.849806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.297764, 37.196396, 20.744553>,  <20.344248, 36.969566, 20.681400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.297764, 37.196396, 20.744553>,  <20.220289, 37.574444, 20.849806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.297764, 37.196396, 20.744553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342096, -0.316441, 0.884780,
		-0.919487, -0.081352, -0.384611,
		0.193685, -0.945117, -0.263133,
		20.355869, 36.912861, 20.665613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.621620, 37.194347, 20.944628>,  <20.220289, 37.574444, 20.849806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.621620, 37.194347, 20.944628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.915556, 36.923866, 20.965641>,  <20.091917, 36.761578, 20.978249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.915556, 36.923866, 20.965641>,  <19.621620, 37.194347, 20.944628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.915556, 36.923866, 20.965641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331521, -0.290533, 0.897599,
		-0.591697, -0.677007, -0.437671,
		0.734839, -0.676204, 0.052535,
		20.136007, 36.721004, 20.981401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.292780, 36.658741, 21.376030>,  <19.621620, 37.194347, 20.944628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.292780, 36.658741, 21.376030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.686258, 36.587467, 21.366268>,  <19.922346, 36.544704, 21.360411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.686258, 36.587467, 21.366268>,  <19.292780, 36.658741, 21.376030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.686258, 36.587467, 21.366268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040523, -0.351800, 0.935198,
		-0.175217, -0.918961, -0.353285,
		0.983695, -0.178179, -0.024402,
		19.981367, 36.534012, 21.358948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.322283, 36.042454, 21.611132>,  <19.292780, 36.658741, 21.376030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.322283, 36.042454, 21.611132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.700874, 36.162895, 21.657639>,  <19.928028, 36.235161, 21.685543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.700874, 36.162895, 21.657639>,  <19.322283, 36.042454, 21.611132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.700874, 36.162895, 21.657639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008221, -0.382584, 0.923884,
		0.322665, -0.873480, -0.364582,
		0.946477, 0.301102, 0.116266,
		19.984818, 36.253227, 21.692518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.723442, 35.433468, 21.848623>,  <19.322283, 36.042454, 21.611132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.723442, 35.433468, 21.848623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.941715, 35.750187, 21.958378>,  <20.072680, 35.940220, 22.024231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.941715, 35.750187, 21.958378>,  <19.723442, 35.433468, 21.848623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.941715, 35.750187, 21.958378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114990, -0.395086, 0.911419,
		0.830065, -0.465794, -0.306641,
		0.545683, 0.791798, 0.274385,
		20.105419, 35.987724, 22.040693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.384739, 35.169048, 22.251617>,  <19.723442, 35.433468, 21.848623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.384739, 35.169048, 22.251617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.304808, 35.551262, 22.338348>,  <20.256849, 35.780590, 22.390387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.304808, 35.551262, 22.338348>,  <20.384739, 35.169048, 22.251617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.304808, 35.551262, 22.338348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118538, -0.196092, 0.973394,
		0.972634, 0.220215, -0.074082,
		-0.199829, 0.955538, 0.216829,
		20.244860, 35.837925, 22.403397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.853632, 35.286743, 22.748043>,  <20.384739, 35.169048, 22.251617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.853632, 35.286743, 22.748043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.604290, 35.596333, 22.792587>,  <20.454685, 35.782085, 22.819313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.604290, 35.596333, 22.792587>,  <20.853632, 35.286743, 22.748043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.604290, 35.596333, 22.792587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051511, -0.101459, 0.993505,
		0.780242, 0.625040, 0.023377,
		-0.623353, 0.773971, 0.111359,
		20.417284, 35.828526, 22.825994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.171534, 35.735889, 23.236809>,  <20.853632, 35.286743, 22.748043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.171534, 35.735889, 23.236809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.791586, 35.860149, 23.250916>,  <20.563618, 35.934704, 23.259380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.791586, 35.860149, 23.250916>,  <21.171534, 35.735889, 23.236809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.791586, 35.860149, 23.250916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009386, -0.084423, 0.996386,
		0.312505, 0.946768, 0.077275,
		-0.949870, 0.310650, 0.035269,
		20.506624, 35.953346, 23.261496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.232204, 36.410778, 23.707907>,  <21.171534, 35.735889, 23.236809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.232204, 36.410778, 23.707907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.866529, 36.248730, 23.703259>,  <20.647123, 36.151501, 23.700470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.866529, 36.248730, 23.703259>,  <21.232204, 36.410778, 23.707907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.866529, 36.248730, 23.703259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081300, 0.155215, 0.984530,
		-0.397051, 0.900991, -0.174832,
		-0.914189, -0.405122, -0.011623,
		20.592274, 36.127193, 23.699772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.740835, 36.814545, 24.162157>,  <21.232204, 36.410778, 23.707907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.740835, 36.814545, 24.162157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.571512, 36.453461, 24.131390>,  <20.469919, 36.236809, 24.112930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.571512, 36.453461, 24.131390>,  <20.740835, 36.814545, 24.162157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.571512, 36.453461, 24.131390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232989, 0.026423, 0.972120,
		-0.875515, 0.429427, -0.221508,
		-0.423308, -0.902715, -0.076918,
		20.444519, 36.182648, 24.108315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.052141, 36.854599, 24.317900>,  <20.740835, 36.814545, 24.162157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.052141, 36.854599, 24.317900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.189257, 36.489162, 24.405396>,  <20.271526, 36.269901, 24.457893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.189257, 36.489162, 24.405396>,  <20.052141, 36.854599, 24.317900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.189257, 36.489162, 24.405396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418310, 0.060045, 0.906317,
		-0.841137, -0.402178, -0.361581,
		0.342790, -0.913590, 0.218741,
		20.292093, 36.215084, 24.471018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.507980, 36.374920, 24.264112>,  <20.052141, 36.854599, 24.317900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.507980, 36.374920, 24.264112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.250763, 36.451878, 23.967606>,  <19.096432, 36.498055, 23.789701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.250763, 36.451878, 23.967606>,  <19.507980, 36.374920, 24.264112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.250763, 36.451878, 23.967606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638737, 0.399258, 0.657730,
		0.422501, 0.896424, -0.133850,
		-0.643046, 0.192397, -0.741266,
		19.057850, 36.509598, 23.745226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.376490, 37.104244, 24.130909>,  <19.507980, 36.374920, 24.264112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.376490, 37.104244, 24.130909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.040211, 36.907555, 24.040195>,  <18.838444, 36.789539, 23.985767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.040211, 36.907555, 24.040195>,  <19.376490, 37.104244, 24.130909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.040211, 36.907555, 24.040195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491229, 0.516302, 0.701517,
		-0.227866, 0.701167, -0.675605,
		-0.840697, -0.491728, -0.226786,
		18.788002, 36.760036, 23.972160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.770903, 37.473110, 23.771973>,  <19.376490, 37.104244, 24.130909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.770903, 37.473110, 23.771973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.679728, 37.203049, 24.052605>,  <18.625023, 37.041012, 24.220984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.679728, 37.203049, 24.052605>,  <18.770903, 37.473110, 23.771973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.679728, 37.203049, 24.052605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456586, 0.710529, 0.535422,
		-0.859984, -0.198289, -0.470222,
		-0.227938, -0.675152, 0.701580,
		18.611345, 37.000504, 24.263079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.957653, 37.692257, 23.770569>,  <18.770903, 37.473110, 23.771973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.957653, 37.692257, 23.770569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.082851, 37.839470, 23.420349>,  <18.157970, 37.927795, 23.210217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.082851, 37.839470, 23.420349>,  <17.957653, 37.692257, 23.770569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.082851, 37.839470, 23.420349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784112, 0.420044, 0.456871,
		0.535911, -0.829528, -0.157105,
		0.312997, 0.368031, -0.875549,
		18.176750, 37.949879, 23.157684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<32.187332, 23.955383, 27.144842> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.370213, 24.054039, 27.486633>,  <32.479942, 24.113232, 27.691708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.370213, 24.054039, 27.486633>,  <32.187332, 23.955383, 27.144842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.370213, 24.054039, 27.486633> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083545, 0.968440, -0.234830,
		-0.885430, 0.035977, 0.463377,
		0.457201, 0.246638, 0.854480,
		32.507374, 24.128031, 27.742977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.856535, 24.560093, 27.311249>,  <32.187332, 23.955383, 27.144842>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.856535, 24.560093, 27.311249> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.168312, 24.574280, 27.561436>,  <32.355377, 24.582792, 27.711548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.168312, 24.574280, 27.561436>,  <31.856535, 24.560093, 27.311249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.168312, 24.574280, 27.561436> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128432, 0.968145, -0.214945,
		-0.613165, 0.247868, 0.750060,
		0.779445, 0.035465, 0.625466,
		32.402145, 24.584919, 27.749075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.711870, 25.040138, 27.881124>,  <31.856535, 24.560093, 27.311249>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.711870, 25.040138, 27.881124> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.109680, 25.015926, 27.847057>,  <32.348366, 25.001400, 27.826618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.109680, 25.015926, 27.847057>,  <31.711870, 25.040138, 27.881124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.109680, 25.015926, 27.847057> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046629, 0.986554, -0.156643,
		0.093502, 0.151814, 0.983977,
		0.994527, -0.060528, -0.085166,
		32.408039, 24.997768, 27.821508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.005154, 25.685549, 28.140005>,  <31.711870, 25.040138, 27.881124>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.005154, 25.685549, 28.140005> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.316563, 25.553246, 27.926647>,  <32.503407, 25.473864, 27.798634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.316563, 25.553246, 27.926647>,  <32.005154, 25.685549, 28.140005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.316563, 25.553246, 27.926647> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153825, 0.924500, -0.348766,
		0.608479, 0.189472, 0.770619,
		0.778519, -0.330758, -0.533393,
		32.550117, 25.454018, 27.766628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.502609, 26.256283, 28.194513>,  <32.005154, 25.685549, 28.140005>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.502609, 26.256283, 28.194513> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.634129, 26.027199, 27.894142>,  <32.713039, 25.889748, 27.713921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.634129, 26.027199, 27.894142>,  <32.502609, 26.256283, 28.194513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.634129, 26.027199, 27.894142> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186381, 0.818850, -0.542906,
		0.925825, 0.038550, 0.375981,
		0.328801, -0.572712, -0.750927,
		32.732769, 25.855385, 27.668863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.156960, 26.597668, 27.978836>,  <32.502609, 26.256283, 28.194513>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.156960, 26.597668, 27.978836> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.037178, 26.363403, 27.677551>,  <32.965309, 26.222845, 27.496780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.037178, 26.363403, 27.677551>,  <33.156960, 26.597668, 27.978836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.037178, 26.363403, 27.677551> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172470, 0.743207, -0.646449,
		0.938392, -0.323489, -0.121549,
		-0.299455, -0.585660, -0.753212,
		32.947342, 26.187706, 27.451588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.624321, 26.697514, 27.421377>,  <33.156960, 26.597668, 27.978836>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.624321, 26.697514, 27.421377> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.297161, 26.552383, 27.242764>,  <33.100864, 26.465305, 27.135595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.297161, 26.552383, 27.242764>,  <33.624321, 26.697514, 27.421377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.297161, 26.552383, 27.242764> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137557, 0.876906, -0.460558,
		0.558669, -0.315269, -0.767134,
		-0.817904, -0.362824, -0.446533,
		33.051788, 26.443537, 27.108803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.737263, 26.949509, 26.691826>,  <33.624321, 26.697514, 27.421377>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.737263, 26.949509, 26.691826> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.355377, 26.841316, 26.741409>,  <33.126247, 26.776402, 26.771160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.355377, 26.841316, 26.741409>,  <33.737263, 26.949509, 26.691826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.355377, 26.841316, 26.741409> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280005, 0.675891, -0.681740,
		0.100615, -0.685574, -0.721017,
		-0.954712, -0.270482, 0.123959,
		33.068962, 26.760172, 26.778597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.424267, 27.008455, 26.036840>,  <33.737263, 26.949509, 26.691826>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.424267, 27.008455, 26.036840> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.104870, 26.990669, 26.276985>,  <32.913231, 26.979998, 26.421072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.104870, 26.990669, 26.276985>,  <33.424267, 27.008455, 26.036840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.104870, 26.990669, 26.276985> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442187, 0.720055, -0.534782,
		-0.408514, -0.692491, -0.594620,
		-0.798490, -0.044467, 0.600363,
		32.865322, 26.977329, 26.457094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.967506, 27.187378, 25.577524>,  <33.424267, 27.008455, 26.036840>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.967506, 27.187378, 25.577524> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.792141, 27.239365, 25.933254>,  <32.686920, 27.270557, 26.146692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.792141, 27.239365, 25.933254>,  <32.967506, 27.187378, 25.577524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.792141, 27.239365, 25.933254> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537868, 0.754801, -0.375463,
		-0.720062, -0.642949, -0.261013,
		-0.438417, 0.129966, 0.889326,
		32.660618, 27.278355, 26.200052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.189507, 27.157837, 25.485491>,  <32.967506, 27.187378, 25.577524>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.189507, 27.157837, 25.485491> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.306362, 27.375095, 25.800362>,  <32.376476, 27.505451, 25.989285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.306362, 27.375095, 25.800362>,  <32.189507, 27.157837, 25.485491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.306362, 27.375095, 25.800362> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311973, 0.832181, -0.458418,
		-0.904061, -0.111654, 0.412562,
		0.292142, 0.543146, 0.787175,
		32.394005, 27.538040, 26.036514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.618212, 27.635653, 25.656576>,  <32.189507, 27.157837, 25.485491>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.618212, 27.635653, 25.656576> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.962992, 27.779099, 25.799927>,  <32.169861, 27.865166, 25.885937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.962992, 27.779099, 25.799927>,  <31.618212, 27.635653, 25.656576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.962992, 27.779099, 25.799927> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241342, 0.911877, -0.332016,
		-0.445863, 0.199689, 0.872543,
		0.861952, 0.358615, 0.358379,
		32.221577, 27.886683, 25.907440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.386112, 28.181231, 25.928352>,  <31.618212, 27.635653, 25.656576>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.386112, 28.181231, 25.928352> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.779543, 28.248192, 25.901375>,  <32.015602, 28.288368, 25.885189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.779543, 28.248192, 25.901375>,  <31.386112, 28.181231, 25.928352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.779543, 28.248192, 25.901375> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179897, 0.939367, -0.291936,
		0.014481, 0.299274, 0.954057,
		0.983579, 0.167405, -0.067442,
		32.074615, 28.298412, 25.881142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.470570, 28.758957, 26.369415>,  <31.386112, 28.181231, 25.928352>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.470570, 28.758957, 26.369415> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.767633, 28.744637, 26.101929>,  <31.945871, 28.736044, 25.941437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.767633, 28.744637, 26.101929>,  <31.470570, 28.758957, 26.369415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.767633, 28.744637, 26.101929> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178319, 0.951946, -0.248999,
		0.645494, 0.304165, 0.700586,
		0.742657, -0.035800, -0.668714,
		31.990431, 28.733896, 25.901314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.841295, 29.464153, 26.246546>,  <31.470570, 28.758957, 26.369415>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.841295, 29.464153, 26.246546> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.950178, 29.268009, 25.915379>,  <32.015507, 29.150322, 25.716679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.950178, 29.268009, 25.915379>,  <31.841295, 29.464153, 26.246546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.950178, 29.268009, 25.915379> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158237, 0.825883, -0.541183,
		0.949139, 0.278321, 0.147218,
		0.272208, -0.490362, -0.827918,
		32.031841, 29.120901, 25.667004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.147346, 30.005163, 25.755705>,  <31.841295, 29.464153, 26.246546>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.147346, 30.005163, 25.755705> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.062466, 29.678375, 25.541218>,  <32.011536, 29.482302, 25.412525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.062466, 29.678375, 25.541218>,  <32.147346, 30.005163, 25.755705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.062466, 29.678375, 25.541218> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141548, 0.568624, -0.810328,
		0.966920, -0.096052, -0.236303,
		-0.212201, -0.816970, -0.536219,
		31.998806, 29.433285, 25.380352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.351051, 30.115822, 25.091890>,  <32.147346, 30.005163, 25.755705>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.351051, 30.115822, 25.091890> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.080704, 29.826965, 25.032951>,  <31.918495, 29.653650, 24.997589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.080704, 29.826965, 25.032951>,  <32.351051, 30.115822, 25.091890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.080704, 29.826965, 25.032951> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466845, 0.574174, -0.672592,
		0.570288, -0.385819, -0.725200,
		-0.675890, -0.722128, -0.147327,
		31.877943, 29.610323, 24.988747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.220078, 30.286406, 24.474348>,  <32.351051, 30.115822, 25.091890>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.220078, 30.286406, 24.474348> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.938250, 30.005623, 24.515980>,  <31.769152, 29.837152, 24.540958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.938250, 30.005623, 24.515980>,  <32.220078, 30.286406, 24.474348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.938250, 30.005623, 24.515980> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620640, 0.538438, -0.569991,
		0.344069, -0.466197, -0.815032,
		-0.704573, -0.701958, 0.104081,
		31.726877, 29.795036, 24.547203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.016476, 29.984850, 23.833170>,  <32.220078, 30.286406, 24.474348>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.016476, 29.984850, 23.833170> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.711159, 29.949986, 24.089230>,  <31.527969, 29.929068, 24.242867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.711159, 29.949986, 24.089230>,  <32.016476, 29.984850, 23.833170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.711159, 29.949986, 24.089230> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576710, 0.538532, -0.614320,
		-0.291198, -0.838085, -0.461321,
		-0.763289, -0.087159, 0.640151,
		31.482172, 29.923838, 24.281275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.383070, 29.918898, 23.363094>,  <32.016476, 29.984850, 23.833170>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.383070, 29.918898, 23.363094> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.236431, 30.016125, 23.722321>,  <31.148447, 30.074461, 23.937857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.236431, 30.016125, 23.722321>,  <31.383070, 29.918898, 23.363094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.236431, 30.016125, 23.722321> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675251, 0.594520, -0.436556,
		-0.640032, -0.766461, -0.053818,
		-0.366599, 0.243069, 0.898066,
		31.126451, 30.089045, 23.991741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.645386, 29.815275, 23.347908>,  <31.383070, 29.918898, 23.363094>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.645386, 29.815275, 23.347908> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.706413, 30.092209, 23.630013>,  <30.743031, 30.258369, 23.799274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.706413, 30.092209, 23.630013>,  <30.645386, 29.815275, 23.347908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.706413, 30.092209, 23.630013> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604272, 0.630032, -0.487765,
		-0.782034, -0.351752, 0.514483,
		0.152568, 0.692336, 0.705261,
		30.752184, 30.299910, 23.841591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.957850, 30.058664, 23.595184>,  <30.645386, 29.815275, 23.347908>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.957850, 30.058664, 23.595184> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.194490, 30.367058, 23.689495>,  <30.336475, 30.552094, 23.746080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.194490, 30.367058, 23.689495>,  <29.957850, 30.058664, 23.595184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.194490, 30.367058, 23.689495> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650188, 0.629165, -0.425919,
		-0.476718, 0.098678, 0.873500,
		0.591604, 0.770983, 0.235775,
		30.371971, 30.598352, 23.760227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.574120, 30.489822, 23.961788>,  <29.957850, 30.058664, 23.595184>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.574120, 30.489822, 23.961788> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.887770, 30.704556, 23.837234>,  <30.075960, 30.833395, 23.762503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.887770, 30.704556, 23.837234>,  <29.574120, 30.489822, 23.961788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.887770, 30.704556, 23.837234> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620525, 0.670267, -0.407052,
		-0.009809, 0.512401, 0.858690,
		0.784125, 0.536831, -0.311383,
		30.123007, 30.865604, 23.743820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.860521, 30.850727, 24.080185>,  <29.574120, 30.489822, 23.961788>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.860521, 30.850727, 24.080185> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.599737, 30.744736, 23.796005>,  <28.443268, 30.681141, 23.625498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.599737, 30.744736, 23.796005>,  <28.860521, 30.850727, 24.080185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.599737, 30.744736, 23.796005> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115579, -0.960732, 0.252262,
		-0.749394, 0.082352, 0.656983,
		-0.651959, -0.264977, -0.710448,
		28.404150, 30.665243, 23.582870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.344246, 30.556862, 24.393549>,  <28.860521, 30.850727, 24.080185>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.344246, 30.556862, 24.393549> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.353699, 30.415062, 24.019646>,  <28.359371, 30.329981, 23.795303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.353699, 30.415062, 24.019646>,  <28.344246, 30.556862, 24.393549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.353699, 30.415062, 24.019646> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071992, -0.931987, 0.355271,
		-0.997125, -0.075691, 0.003496,
		0.023632, -0.354501, -0.934757,
		28.360788, 30.308712, 23.739218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.872726, 30.027821, 24.413895>,  <28.344246, 30.556862, 24.393549>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.872726, 30.027821, 24.413895> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.112413, 29.934654, 24.107513>,  <28.256226, 29.878754, 23.923685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.112413, 29.934654, 24.107513>,  <27.872726, 30.027821, 24.413895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.112413, 29.934654, 24.107513> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153483, -0.905576, 0.395444,
		-0.785735, -0.354519, -0.506889,
		0.599219, -0.232916, -0.765955,
		28.292179, 29.864780, 23.877728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.633169, 29.414373, 24.218702>,  <27.872726, 30.027821, 24.413895>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.633169, 29.414373, 24.218702> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.002068, 29.423813, 24.064350>,  <28.223408, 29.429476, 23.971739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.002068, 29.423813, 24.064350>,  <27.633169, 29.414373, 24.218702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.002068, 29.423813, 24.064350> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141260, -0.949690, 0.279528,
		-0.359869, -0.312303, -0.879182,
		0.922247, 0.023599, -0.385880,
		28.278742, 29.430893, 23.948586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.687239, 28.779924, 23.890837>,  <27.633169, 29.414373, 24.218702>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.687239, 28.779924, 23.890837> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.073746, 28.871658, 23.937717>,  <28.305649, 28.926699, 23.965845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.073746, 28.871658, 23.937717>,  <27.687239, 28.779924, 23.890837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.073746, 28.871658, 23.937717> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185630, -0.935603, 0.300315,
		0.178526, -0.268428, -0.946612,
		0.966266, 0.229334, 0.117201,
		28.363625, 28.940458, 23.972878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.087654, 28.186783, 23.539749>,  <27.687239, 28.779924, 23.890837>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.087654, 28.186783, 23.539749> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.308647, 28.370018, 23.818295>,  <28.441242, 28.479959, 23.985422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.308647, 28.370018, 23.818295>,  <28.087654, 28.186783, 23.539749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.308647, 28.370018, 23.818295> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250353, -0.888065, 0.385569,
		0.795039, -0.038684, -0.605324,
		0.552482, 0.458087, 0.696362,
		28.474392, 28.507444, 24.027203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.767176, 27.844692, 23.579071>,  <28.087654, 28.186783, 23.539749>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.767176, 27.844692, 23.579071> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.746935, 28.018341, 23.938843>,  <28.734791, 28.122532, 24.154707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.746935, 28.018341, 23.938843>,  <28.767176, 27.844692, 23.579071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.746935, 28.018341, 23.938843> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411009, -0.811735, 0.414920,
		0.910226, 0.390669, -0.137354,
		-0.050601, 0.434124, 0.899431,
		28.731754, 28.148579, 24.208672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.388613, 27.712086, 23.872528>,  <28.767176, 27.844692, 23.579071>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.388613, 27.712086, 23.872528> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.162708, 27.817528, 24.185337>,  <29.027166, 27.880793, 24.373022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.162708, 27.817528, 24.185337>,  <29.388613, 27.712086, 23.872528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.162708, 27.817528, 24.185337> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310987, -0.809774, 0.497548,
		0.764417, 0.524194, 0.375350,
		-0.564760, 0.263605, 0.782022,
		28.993280, 27.896608, 24.419943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.811998, 27.583933, 24.349546>,  <29.388613, 27.712086, 23.872528>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.811998, 27.583933, 24.349546> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.451538, 27.619919, 24.519173>,  <29.235262, 27.641510, 24.620949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.451538, 27.619919, 24.519173>,  <29.811998, 27.583933, 24.349546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.451538, 27.619919, 24.519173> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223898, -0.741061, 0.633007,
		0.371208, 0.665383, 0.647665,
		-0.901152, 0.089966, 0.424066,
		29.181192, 27.646908, 24.646393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.983477, 27.583237, 24.999382>,  <29.811998, 27.583933, 24.349546>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.983477, 27.583237, 24.999382> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.604527, 27.460152, 24.964077>,  <29.377155, 27.386301, 24.942894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.604527, 27.460152, 24.964077>,  <29.983477, 27.583237, 24.999382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.604527, 27.460152, 24.964077> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175886, -0.730716, 0.659634,
		-0.267474, 0.609398, 0.746386,
		-0.947376, -0.307714, -0.088263,
		29.320314, 27.367838, 24.937597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.802702, 27.270710, 25.774996>,  <29.983477, 27.583237, 24.999382>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.802702, 27.270710, 25.774996> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.504898, 27.134144, 25.545513>,  <29.326216, 27.052204, 25.407824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.504898, 27.134144, 25.545513>,  <29.802702, 27.270710, 25.774996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.504898, 27.134144, 25.545513> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086114, -0.803055, 0.589649,
		-0.662034, 0.488404, 0.568483,
		-0.744510, -0.341414, -0.573708,
		29.281546, 27.031719, 25.373402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.373865, 26.927906, 26.227356>,  <29.802702, 27.270710, 25.774996>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.373865, 26.927906, 26.227356> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.280704, 26.772499, 25.870747>,  <29.224808, 26.679255, 25.656782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.280704, 26.772499, 25.870747>,  <29.373865, 26.927906, 26.227356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.280704, 26.772499, 25.870747> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090329, -0.904126, 0.417608,
		-0.968296, 0.177791, 0.175478,
		-0.232901, -0.388517, -0.891522,
		29.210835, 26.655945, 25.603291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.853960, 26.423586, 26.418703>,  <29.373865, 26.927906, 26.227356>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.853960, 26.423586, 26.418703> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.986259, 26.306465, 26.059845>,  <29.065639, 26.236193, 25.844530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.986259, 26.306465, 26.059845>,  <28.853960, 26.423586, 26.418703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.986259, 26.306465, 26.059845> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026909, -0.947338, 0.319103,
		-0.943335, -0.129684, -0.305452,
		0.330749, -0.292802, -0.897147,
		29.085484, 26.218624, 25.790701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.364500, 25.752703, 26.172968>,  <28.853960, 26.423586, 26.418703>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.364500, 25.752703, 26.172968> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.716391, 25.762928, 25.983051>,  <28.927525, 25.769064, 25.869102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.716391, 25.762928, 25.983051>,  <28.364500, 25.752703, 26.172968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.716391, 25.762928, 25.983051> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162808, -0.954388, 0.250276,
		-0.446735, -0.297474, -0.843764,
		0.879728, 0.025565, -0.474789,
		28.980309, 25.770597, 25.840614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.355927, 25.104773, 25.833399>,  <28.364500, 25.752703, 26.172968>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.355927, 25.104773, 25.833399> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.740143, 25.215027, 25.848286>,  <28.970673, 25.281179, 25.857218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.740143, 25.215027, 25.848286>,  <28.355927, 25.104773, 25.833399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.740143, 25.215027, 25.848286> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262802, -0.943240, 0.203061,
		0.091077, -0.185268, -0.978458,
		0.960542, 0.275635, 0.037219,
		29.028305, 25.297718, 25.859451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.700396, 24.625229, 25.516565>,  <28.355927, 25.104773, 25.833399>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.700396, 24.625229, 25.516565> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.986717, 24.807858, 25.727909>,  <29.158510, 24.917435, 25.854715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.986717, 24.807858, 25.727909>,  <28.700396, 24.625229, 25.516565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.986717, 24.807858, 25.727909> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294556, -0.883448, 0.364359,
		0.633135, -0.105178, -0.766863,
		0.715805, 0.456572, 0.528361,
		29.201458, 24.944830, 25.886417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.210123, 24.127274, 25.493395>,  <28.700396, 24.625229, 25.516565>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.210123, 24.127274, 25.493395> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.310841, 24.364788, 25.799080>,  <29.371271, 24.507296, 25.982491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.310841, 24.364788, 25.799080>,  <29.210123, 24.127274, 25.493395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.310841, 24.364788, 25.799080> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164116, -0.804415, 0.570950,
		0.953764, -0.018342, -0.299996,
		0.251794, 0.593785, 0.764211,
		29.386379, 24.542923, 26.028343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<30.001101, 23.994635, 25.735846> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.799000, 24.167679, 26.034527>,  <29.677738, 24.271505, 26.213736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.799000, 24.167679, 26.034527>,  <30.001101, 23.994635, 25.735846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.799000, 24.167679, 26.034527> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051282, -0.848690, 0.526399,
		0.861446, 0.304257, 0.406619,
		-0.505254, 0.432612, 0.746703,
		29.647423, 24.297462, 26.258537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.321993, 23.735115, 26.295263>,  <30.001101, 23.994635, 25.735846>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.321993, 23.735115, 26.295263> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.010851, 23.896679, 26.487846>,  <29.824165, 23.993616, 26.603395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.010851, 23.896679, 26.487846>,  <30.321993, 23.735115, 26.295263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.010851, 23.896679, 26.487846> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057231, -0.717397, 0.694309,
		0.625834, 0.567626, 0.534914,
		-0.777854, 0.403908, 0.481458,
		29.777494, 24.017851, 26.632284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.553333, 23.930584, 26.856838>,  <30.321993, 23.735115, 26.295263>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.553333, 23.930584, 26.856838> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.158123, 23.900600, 26.910774>,  <29.920996, 23.882610, 26.943136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.158123, 23.900600, 26.910774>,  <30.553333, 23.930584, 26.856838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.158123, 23.900600, 26.910774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148397, -0.700775, 0.697777,
		0.042188, 0.709433, 0.703509,
		-0.988028, -0.074961, 0.134842,
		29.861715, 23.878113, 26.951227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.525692, 23.949665, 27.545788>,  <30.553333, 23.930584, 26.856838>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.525692, 23.949665, 27.545788> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.180759, 23.792274, 27.418312>,  <29.973801, 23.697840, 27.341825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.180759, 23.792274, 27.418312>,  <30.525692, 23.949665, 27.545788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.180759, 23.792274, 27.418312> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054344, -0.697679, 0.714346,
		-0.503422, 0.598683, 0.623013,
		-0.862330, -0.393475, -0.318692,
		29.922060, 23.674232, 27.322704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.195976, 23.887054, 28.117252>,  <30.525692, 23.949665, 27.545788>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.195976, 23.887054, 28.117252> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.020042, 23.643188, 27.853477>,  <29.914482, 23.496870, 27.695213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.020042, 23.643188, 27.853477>,  <30.195976, 23.887054, 28.117252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.020042, 23.643188, 27.853477> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075579, -0.756797, 0.649266,
		-0.894893, 0.235731, 0.378944,
		-0.439835, -0.609664, -0.659435,
		29.888092, 23.460289, 27.655647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.700258, 23.568661, 28.458157>,  <30.195976, 23.887054, 28.117252>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.700258, 23.568661, 28.458157> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.757484, 23.324905, 28.146214>,  <29.791821, 23.178652, 27.959047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.757484, 23.324905, 28.146214>,  <29.700258, 23.568661, 28.458157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.757484, 23.324905, 28.146214> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016285, -0.786408, 0.617493,
		-0.989579, -0.101041, -0.102583,
		0.143064, -0.609388, -0.779858,
		29.800404, 23.142090, 27.912256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.075287, 23.072672, 28.327335>,  <29.700258, 23.568661, 28.458157>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.075287, 23.072672, 28.327335> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.405273, 22.914585, 28.165726>,  <29.603266, 22.819733, 28.068760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.405273, 22.914585, 28.165726>,  <29.075287, 23.072672, 28.327335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.405273, 22.914585, 28.165726> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124023, -0.824020, 0.552820,
		-0.551405, -0.405950, -0.728805,
		0.824967, -0.395216, -0.404022,
		29.652763, 22.796021, 28.044519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.838211, 22.366488, 28.104256>,  <29.075287, 23.072672, 28.327335>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.838211, 22.366488, 28.104256> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.237751, 22.358181, 28.121559>,  <29.477474, 22.353197, 28.131941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.237751, 22.358181, 28.121559>,  <28.838211, 22.366488, 28.104256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.237751, 22.358181, 28.121559> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040829, -0.841472, 0.538755,
		0.025215, -0.539901, -0.841351,
		0.998848, -0.020767, 0.043261,
		29.537405, 22.351952, 28.134537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.973700, 21.702591, 27.851681>,  <28.838211, 22.366488, 28.104256>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.973700, 21.702591, 27.851681> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.315668, 21.770248, 28.047844>,  <29.520849, 21.810843, 28.165541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.315668, 21.770248, 28.047844>,  <28.973700, 21.702591, 27.851681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.315668, 21.770248, 28.047844> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127952, -0.847391, 0.515323,
		0.502729, -0.503309, -0.702811,
		0.854922, 0.169142, 0.490407,
		29.572145, 21.820992, 28.194965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.297892, 21.064119, 27.846724>,  <28.973700, 21.702591, 27.851681>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.297892, 21.064119, 27.846724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.478392, 21.269588, 28.138618>,  <29.586691, 21.392870, 28.313755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.478392, 21.269588, 28.138618>,  <29.297892, 21.064119, 27.846724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.478392, 21.269588, 28.138618> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019542, -0.823218, 0.567390,
		0.892185, -0.241773, -0.381513,
		0.451248, 0.513672, 0.729737,
		29.613766, 21.423691, 28.357540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.871616, 20.700979, 28.086405>,  <29.297892, 21.064119, 27.846724>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.871616, 20.700979, 28.086405> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.755404, 20.942890, 28.383007>,  <29.685677, 21.088037, 28.560968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.755404, 20.942890, 28.383007>,  <29.871616, 20.700979, 28.086405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.755404, 20.942890, 28.383007> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055637, -0.762946, 0.644064,
		0.955247, 0.228376, 0.188011,
		-0.290531, 0.604780, 0.741508,
		29.668243, 21.124325, 28.605459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.368057, 20.628269, 28.618639>,  <29.871616, 20.700979, 28.086405>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.368057, 20.628269, 28.618639> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.041388, 20.757378, 28.809998>,  <29.845387, 20.834843, 28.924812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.041388, 20.757378, 28.809998>,  <30.368057, 20.628269, 28.618639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.041388, 20.757378, 28.809998> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031198, -0.803061, 0.595079,
		0.576254, 0.500911, 0.645770,
		-0.816675, 0.322770, 0.478395,
		29.796385, 20.854208, 28.953516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.577362, 20.567396, 29.243011>,  <30.368057, 20.628269, 28.618639>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.577362, 20.567396, 29.243011> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.186117, 20.633980, 29.292953>,  <29.951370, 20.673929, 29.322918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.186117, 20.633980, 29.292953>,  <30.577362, 20.567396, 29.243011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.186117, 20.633980, 29.292953> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019043, -0.669125, 0.742906,
		0.207205, 0.724268, 0.657649,
		-0.978112, 0.166457, 0.124853,
		29.892683, 20.683916, 29.330410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.478149, 20.560112, 30.017670>,  <30.577362, 20.567396, 29.243011>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.478149, 20.560112, 30.017670> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.136051, 20.480846, 29.826134>,  <29.930792, 20.433287, 29.711212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.136051, 20.480846, 29.826134>,  <30.478149, 20.560112, 30.017670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.136051, 20.480846, 29.826134> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145557, -0.794947, 0.588958,
		-0.497361, 0.573402, 0.651031,
		-0.855246, -0.198162, -0.478838,
		29.879477, 20.421398, 29.682482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.051693, 20.398798, 30.512367>,  <30.478149, 20.560112, 30.017670>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.051693, 20.398798, 30.512367> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.868328, 20.234306, 30.197216>,  <29.758310, 20.135612, 30.008125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.868328, 20.234306, 30.197216>,  <30.051693, 20.398798, 30.512367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.868328, 20.234306, 30.197216> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159938, -0.833865, 0.528288,
		-0.874231, 0.368185, 0.316482,
		-0.458411, -0.411228, -0.787878,
		29.730804, 20.110937, 29.960854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.414970, 20.139198, 30.772274>,  <30.051693, 20.398798, 30.512367>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.414970, 20.139198, 30.772274> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.425913, 19.960354, 30.414650>,  <29.432478, 19.853046, 30.200075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.425913, 19.960354, 30.414650>,  <29.414970, 20.139198, 30.772274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.425913, 19.960354, 30.414650> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243361, -0.870463, 0.427865,
		-0.969550, 0.205875, -0.132621,
		0.027355, -0.447112, -0.894060,
		29.434120, 19.826220, 30.146433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.773607, 19.732759, 30.629004>,  <29.414970, 20.139198, 30.772274>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.773607, 19.732759, 30.629004> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.073612, 19.561794, 30.427094>,  <29.253616, 19.459215, 30.305948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.073612, 19.561794, 30.427094>,  <28.773607, 19.732759, 30.629004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.073612, 19.561794, 30.427094> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125649, -0.841339, 0.525701,
		-0.649377, -0.330859, -0.684720,
		0.750015, -0.427413, -0.504774,
		29.298616, 19.433571, 30.275661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.517775, 19.105911, 30.405716>,  <28.773607, 19.732759, 30.629004>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.517775, 19.105911, 30.405716> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.909105, 19.024666, 30.389610>,  <29.143904, 18.975920, 30.379946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.909105, 19.024666, 30.389610>,  <28.517775, 19.105911, 30.405716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.909105, 19.024666, 30.389610> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144948, -0.810637, 0.567325,
		-0.147871, -0.549194, -0.822509,
		0.978327, -0.203112, -0.040265,
		29.202604, 18.963732, 30.377531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.610178, 18.381704, 30.248106>,  <28.517775, 19.105911, 30.405716>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.610178, 18.381704, 30.248106> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.968752, 18.471947, 30.400688>,  <29.183895, 18.526093, 30.492237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.968752, 18.471947, 30.400688>,  <28.610178, 18.381704, 30.248106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.968752, 18.471947, 30.400688> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058484, -0.792982, 0.606431,
		0.439303, -0.565934, -0.697661,
		0.896433, 0.225606, 0.381458,
		29.237682, 18.539629, 30.515125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.913063, 17.731413, 30.247335>,  <28.610178, 18.381704, 30.248106>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.913063, 17.731413, 30.247335> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.130619, 17.962463, 30.490822>,  <29.261152, 18.101093, 30.636913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.130619, 17.962463, 30.490822>,  <28.913063, 17.731413, 30.247335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.130619, 17.962463, 30.490822> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022151, -0.715254, 0.698514,
		0.838864, -0.393398, -0.376224,
		0.543890, 0.577625, 0.608715,
		29.293785, 18.135750, 30.673437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.337242, 17.217354, 30.571598>,  <28.913063, 17.731413, 30.247335>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.337242, 17.217354, 30.571598> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.352806, 17.553154, 30.788383>,  <29.362144, 17.754635, 30.918455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.352806, 17.553154, 30.788383>,  <29.337242, 17.217354, 30.571598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.352806, 17.553154, 30.788383> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103055, -0.542855, 0.833480,
		0.993914, 0.023420, -0.107637,
		0.038911, 0.839500, 0.541965,
		29.364479, 17.805004, 30.950974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.972292, 17.249784, 30.968658>,  <29.337242, 17.217354, 30.571598>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.972292, 17.249784, 30.968658> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.691103, 17.470943, 31.147602>,  <29.522388, 17.603640, 31.254969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.691103, 17.470943, 31.147602>,  <29.972292, 17.249784, 30.968658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.691103, 17.470943, 31.147602> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103783, -0.542525, 0.833604,
		0.703602, 0.632431, 0.324000,
		-0.702974, 0.552900, 0.447358,
		29.480211, 17.636814, 31.281809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.350277, 17.414341, 31.576382>,  <29.972292, 17.249784, 30.968658>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.350277, 17.414341, 31.576382> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.954424, 17.427559, 31.632294>,  <29.716913, 17.435490, 31.665840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.954424, 17.427559, 31.632294>,  <30.350277, 17.414341, 31.576382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.954424, 17.427559, 31.632294> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109250, -0.458610, 0.881896,
		0.093246, 0.888023, 0.450245,
		-0.989631, 0.033044, 0.139780,
		29.657534, 17.437471, 31.674227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.085615, 17.797169, 32.257328>,  <30.350277, 17.414341, 31.576382>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.085615, 17.797169, 32.257328> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.859299, 17.495670, 32.123615>,  <29.723509, 17.314772, 32.043388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.859299, 17.495670, 32.123615>,  <30.085615, 17.797169, 32.257328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.859299, 17.495670, 32.123615> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063769, -0.364201, 0.929135,
		-0.822078, 0.547014, 0.157996,
		-0.565792, -0.753746, -0.334284,
		29.689562, 17.269547, 32.023331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.859577, 18.087740, 32.242844>,  <30.085615, 17.797169, 32.257328>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.859577, 18.087740, 32.242844> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.007065, 18.191448, 32.599903>,  <31.095558, 18.253674, 32.814140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.007065, 18.191448, 32.599903>,  <30.859577, 18.087740, 32.242844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.007065, 18.191448, 32.599903> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336166, 0.858120, -0.388101,
		-0.866624, 0.443179, 0.229248,
		0.368720, 0.259272, 0.892650,
		31.117682, 18.269230, 32.867699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.494761, 18.730621, 32.490269>,  <30.859577, 18.087740, 32.242844>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.494761, 18.730621, 32.490269> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.870632, 18.664234, 32.609905>,  <31.096155, 18.624403, 32.681686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.870632, 18.664234, 32.609905>,  <30.494761, 18.730621, 32.490269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.870632, 18.664234, 32.609905> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300839, 0.817118, -0.491747,
		-0.162782, 0.552063, 0.817758,
		0.939680, -0.165966, 0.299094,
		31.152536, 18.614445, 32.699635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.670198, 19.311977, 32.753292>,  <30.494761, 18.730621, 32.490269>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.670198, 19.311977, 32.753292> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.020042, 19.140541, 32.662632>,  <31.229948, 19.037680, 32.608238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.020042, 19.140541, 32.662632>,  <30.670198, 19.311977, 32.753292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.020042, 19.140541, 32.662632> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353684, 0.883765, -0.306377,
		0.331612, 0.187799, 0.924535,
		0.874609, -0.428591, -0.226646,
		31.282425, 19.011963, 32.594639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.269138, 19.758488, 33.020470>,  <30.670198, 19.311977, 32.753292>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.269138, 19.758488, 33.020470> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.484726, 19.534454, 32.768814>,  <31.614079, 19.400034, 32.617821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.484726, 19.534454, 32.768814>,  <31.269138, 19.758488, 33.020470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.484726, 19.534454, 32.768814> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470616, 0.819687, -0.326549,
		0.698592, -0.120083, 0.705372,
		0.538971, -0.560084, -0.629140,
		31.646418, 19.366428, 32.580070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.018635, 19.972343, 33.100250>,  <31.269138, 19.758488, 33.020470>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.018635, 19.972343, 33.100250> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.988195, 19.815796, 32.733418>,  <31.969933, 19.721867, 32.513317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.988195, 19.815796, 32.733418>,  <32.018635, 19.972343, 33.100250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.988195, 19.815796, 32.733418> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264290, 0.878934, -0.397021,
		0.961436, -0.272587, 0.036551,
		-0.076097, -0.391371, -0.917081,
		31.965366, 19.698385, 32.458294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.527752, 20.416281, 32.532646>,  <32.018635, 19.972343, 33.100250>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.527752, 20.416281, 32.532646> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.308594, 20.166004, 32.310539>,  <32.177097, 20.015839, 32.177277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.308594, 20.166004, 32.310539>,  <32.527752, 20.416281, 32.532646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.308594, 20.166004, 32.310539> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044034, 0.641272, -0.766049,
		0.835388, -0.444165, -0.323797,
		-0.547894, -0.625690, -0.555269,
		32.144226, 19.978298, 32.143959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.832188, 20.471857, 31.856892>,  <32.527752, 20.416281, 32.532646>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.832188, 20.471857, 31.856892> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.458149, 20.343075, 31.797646>,  <32.233727, 20.265806, 31.762098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.458149, 20.343075, 31.797646>,  <32.832188, 20.471857, 31.856892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.458149, 20.343075, 31.797646> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045812, 0.524253, -0.850329,
		0.351417, -0.788355, -0.504977,
		-0.935097, -0.321954, -0.148116,
		32.177620, 20.246489, 31.753210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.767517, 20.441883, 31.199183>,  <32.832188, 20.471857, 31.856892>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.767517, 20.441883, 31.199183> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.387119, 20.472931, 31.318905>,  <32.158882, 20.491560, 31.390739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.387119, 20.472931, 31.318905>,  <32.767517, 20.441883, 31.199183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.387119, 20.472931, 31.318905> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174421, 0.664608, -0.726549,
		-0.255317, -0.743150, -0.618499,
		-0.950995, 0.077621, 0.299307,
		32.101822, 20.496218, 31.408697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.411430, 20.316015, 30.637621>,  <32.767517, 20.441883, 31.199183>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.411430, 20.316015, 30.637621> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.179337, 20.535793, 30.878098>,  <32.040081, 20.667660, 31.022383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.179337, 20.535793, 30.878098>,  <32.411430, 20.316015, 30.637621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.179337, 20.535793, 30.878098> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156919, 0.648911, -0.744508,
		-0.799187, -0.526330, -0.290304,
		-0.580238, 0.549447, 0.601192,
		32.005264, 20.700628, 31.058455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.739037, 20.429384, 30.195885>,  <32.411430, 20.316015, 30.637621>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.739037, 20.429384, 30.195885> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.765982, 20.692642, 30.495834>,  <31.782148, 20.850597, 30.675804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.765982, 20.692642, 30.495834>,  <31.739037, 20.429384, 30.195885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.765982, 20.692642, 30.495834> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085712, 0.752619, -0.652854,
		-0.994040, -0.020294, 0.107110,
		0.067364, 0.658144, 0.749873,
		31.786190, 20.890085, 30.720797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.126141, 20.891415, 30.117561>,  <31.739037, 20.429384, 30.195885>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.126141, 20.891415, 30.117561> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.404882, 21.073559, 30.339207>,  <31.572126, 21.182846, 30.472195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.404882, 21.073559, 30.339207>,  <31.126141, 20.891415, 30.117561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.404882, 21.073559, 30.339207> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060652, 0.807238, -0.587102,
		-0.714645, 0.375516, 0.590145,
		0.696853, 0.455362, 0.554113,
		31.613937, 21.210167, 30.505440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.864948, 21.647345, 30.346064>,  <31.126141, 20.891415, 30.117561>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.864948, 21.647345, 30.346064> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.264303, 21.644016, 30.368530>,  <31.503916, 21.642019, 30.382011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.264303, 21.644016, 30.368530>,  <30.864948, 21.647345, 30.346064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.264303, 21.644016, 30.368530> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045091, 0.717412, -0.695188,
		-0.034510, 0.696599, 0.716630,
		0.998387, -0.008323, 0.056168,
		31.563820, 21.641520, 30.385380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.008587, 22.397934, 30.395681>,  <30.864948, 21.647345, 30.346064>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.008587, 22.397934, 30.395681> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.341715, 22.209854, 30.278839>,  <31.541592, 22.097006, 30.208735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.341715, 22.209854, 30.278839>,  <31.008587, 22.397934, 30.395681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.341715, 22.209854, 30.278839> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289866, 0.820009, -0.493522,
		0.471582, 0.326344, 0.819213,
		0.832820, -0.470198, -0.292105,
		31.591560, 22.068794, 30.191208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.489944, 22.890535, 30.303602>,  <31.008587, 22.397934, 30.395681>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.489944, 22.890535, 30.303602> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.670197, 22.592319, 30.107193>,  <31.778347, 22.413389, 29.989347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.670197, 22.592319, 30.107193>,  <31.489944, 22.890535, 30.303602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.670197, 22.592319, 30.107193> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247925, 0.632914, -0.733453,
		0.857594, 0.208778, 0.470047,
		0.450628, -0.745542, -0.491021,
		31.805386, 22.368656, 29.959887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.051998, 23.172844, 30.119143>,  <31.489944, 22.890535, 30.303602>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.051998, 23.172844, 30.119143> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.030941, 22.849606, 29.884464>,  <32.018307, 22.655663, 29.743658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.030941, 22.849606, 29.884464>,  <32.051998, 23.172844, 30.119143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.030941, 22.849606, 29.884464> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245771, 0.558954, -0.791939,
		0.967897, -0.185881, 0.169182,
		-0.052642, -0.808096, -0.586694,
		32.015148, 22.607178, 29.708456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.666370, 23.311148, 29.598505>,  <32.051998, 23.172844, 30.119143>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.666370, 23.311148, 29.598505> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.421532, 23.031513, 29.450661>,  <32.274628, 22.863731, 29.361954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.421532, 23.031513, 29.450661>,  <32.666370, 23.311148, 29.598505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.421532, 23.031513, 29.450661> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200125, 0.315242, -0.927670,
		0.765041, -0.641793, -0.053054,
		-0.612097, -0.699088, -0.369612,
		32.237904, 22.821787, 29.339777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.045002, 23.121836, 29.076397>,  <32.666370, 23.311148, 29.598505>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.045002, 23.121836, 29.076397> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.677547, 23.002434, 28.972855>,  <32.457077, 22.930792, 28.910728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.677547, 23.002434, 28.972855>,  <33.045002, 23.121836, 29.076397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.677547, 23.002434, 28.972855> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098018, 0.462499, -0.881185,
		0.382757, -0.834859, -0.395609,
		-0.918635, -0.298503, -0.258856,
		32.401958, 22.912882, 28.895197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.171989, 22.797255, 28.455212>,  <33.045002, 23.121836, 29.076397>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.171989, 22.797255, 28.455212> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.795506, 22.930569, 28.477253>,  <32.569614, 23.010557, 28.490479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.795506, 22.930569, 28.477253>,  <33.171989, 22.797255, 28.455212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.795506, 22.930569, 28.477253> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170488, 0.609481, -0.774253,
		-0.291632, -0.719343, -0.630473,
		-0.941214, 0.333285, 0.055105,
		32.513142, 23.030554, 28.493784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.996399, 22.952442, 27.756105>,  <33.171989, 22.797255, 28.455212>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.996399, 22.952442, 27.756105> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.754169, 23.158348, 27.998856>,  <32.608833, 23.281893, 28.144506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.754169, 23.158348, 27.998856>,  <32.996399, 22.952442, 27.756105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.754169, 23.158348, 27.998856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087702, 0.801134, -0.592024,
		-0.790944, -0.305288, -0.530290,
		-0.605571, 0.514766, 0.606878,
		32.572498, 23.312778, 28.180920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.588547, 23.290251, 27.354803>,  <32.996399, 22.952442, 27.756105>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.588547, 23.290251, 27.354803> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.558182, 23.496719, 27.696049>,  <32.539963, 23.620602, 27.900797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.558182, 23.496719, 27.696049>,  <32.588547, 23.290251, 27.354803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.558182, 23.496719, 27.696049> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013435, 0.854975, -0.518495,
		-0.997024, -0.050822, -0.057969,
		-0.075913, 0.516173, 0.853113,
		32.535408, 23.651571, 27.951982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<24.617186, 39.100712, 18.447802> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.917320, 39.172737, 18.702225>,  <25.097401, 39.215954, 18.854879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.917320, 39.172737, 18.702225>,  <24.617186, 39.100712, 18.447802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.917320, 39.172737, 18.702225> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438928, -0.583769, 0.683049,
		0.494303, -0.791701, -0.358990,
		0.750338, 0.180062, 0.636058,
		25.142422, 39.226757, 18.893042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.764240, 38.434689, 18.716053>,  <24.617186, 39.100712, 18.447802>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.764240, 38.434689, 18.716053> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.916801, 38.687607, 18.985790>,  <25.008337, 38.839355, 19.147633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.916801, 38.687607, 18.985790>,  <24.764240, 38.434689, 18.716053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.916801, 38.687607, 18.985790> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335832, -0.584869, 0.738339,
		0.861249, -0.508070, -0.010726,
		0.381401, 0.632292, 0.674344,
		25.031221, 38.877293, 19.188093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.256939, 38.033371, 19.269230>,  <24.764240, 38.434689, 18.716053>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.256939, 38.033371, 19.269230> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.111387, 38.370121, 19.428646>,  <25.024057, 38.572170, 19.524296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.111387, 38.370121, 19.428646>,  <25.256939, 38.033371, 19.269230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.111387, 38.370121, 19.428646> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313950, -0.513687, 0.798474,
		0.876943, 0.165425, 0.451227,
		-0.363877, 0.841879, 0.398538,
		25.002224, 38.622684, 19.548208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.551556, 38.091545, 19.933628>,  <25.256939, 38.033371, 19.269230>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.551556, 38.091545, 19.933628> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.231991, 38.329830, 19.966770>,  <25.040251, 38.472801, 19.986656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.231991, 38.329830, 19.966770>,  <25.551556, 38.091545, 19.933628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.231991, 38.329830, 19.966770> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214264, -0.410620, 0.886274,
		0.561986, 0.690303, 0.455689,
		-0.798913, 0.595712, 0.082855,
		24.992317, 38.508545, 19.991627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.376152, 38.029282, 20.614552>,  <25.551556, 38.091545, 19.933628>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.376152, 38.029282, 20.614552> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.035250, 38.191730, 20.482658>,  <24.830708, 38.289200, 20.403522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.035250, 38.191730, 20.482658>,  <25.376152, 38.029282, 20.614552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.035250, 38.191730, 20.482658> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488552, -0.392583, 0.779228,
		0.187011, 0.825195, 0.532992,
		-0.852258, 0.406119, -0.329733,
		24.779572, 38.313564, 20.383739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.136116, 38.285683, 21.158909>,  <25.376152, 38.029282, 20.614552>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.136116, 38.285683, 21.158909> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.821707, 38.233070, 20.917290>,  <24.633062, 38.201504, 20.772318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.821707, 38.233070, 20.917290>,  <25.136116, 38.285683, 21.158909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.821707, 38.233070, 20.917290> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481588, -0.482370, 0.731705,
		-0.387613, 0.866037, 0.315811,
		-0.786021, -0.131528, -0.604046,
		24.585901, 38.193611, 20.736076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.597223, 38.248539, 21.540033>,  <25.136116, 38.285683, 21.158909>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.597223, 38.248539, 21.540033> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.399870, 38.101841, 21.224548>,  <24.281458, 38.013821, 21.035257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.399870, 38.101841, 21.224548>,  <24.597223, 38.248539, 21.540033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.399870, 38.101841, 21.224548> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501988, -0.620457, 0.602529,
		-0.710340, 0.693201, 0.122019,
		-0.493381, -0.366748, -0.788715,
		24.251856, 37.991817, 20.987934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.891678, 38.222763, 21.784876>,  <24.597223, 38.248539, 21.540033>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.891678, 38.222763, 21.784876> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.919273, 37.972599, 21.473980>,  <23.935831, 37.822502, 21.287441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.919273, 37.972599, 21.473980>,  <23.891678, 38.222763, 21.784876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.919273, 37.972599, 21.473980> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486588, -0.701233, 0.521060,
		-0.870903, 0.342250, -0.352694,
		0.068988, -0.625410, -0.777241,
		23.939970, 37.784977, 21.240808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.219921, 38.021999, 21.494183>,  <23.891678, 38.222763, 21.784876>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.219921, 38.021999, 21.494183> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.460943, 37.714149, 21.409702>,  <23.605556, 37.529438, 21.359015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.460943, 37.714149, 21.409702>,  <23.219921, 38.021999, 21.494183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.460943, 37.714149, 21.409702> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646303, -0.625820, 0.436627,
		-0.468212, -0.126592, -0.874501,
		0.602553, -0.769626, -0.211200,
		23.641708, 37.483261, 21.346342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.852510, 37.506348, 21.396563>,  <23.219921, 38.021999, 21.494183>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.852510, 37.506348, 21.396563> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.199772, 37.317719, 21.458439>,  <23.408129, 37.204540, 21.495565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.199772, 37.317719, 21.458439>,  <22.852510, 37.506348, 21.396563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.199772, 37.317719, 21.458439> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477990, -0.710619, 0.516282,
		-0.133536, -0.522153, -0.842332,
		0.868155, -0.471568, 0.154690,
		23.460218, 37.176247, 21.504847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.741259, 36.779648, 21.294670>,  <22.852510, 37.506348, 21.396563>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.741259, 36.779648, 21.294670> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.075790, 36.780807, 21.513958>,  <23.276510, 36.781502, 21.645531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.075790, 36.780807, 21.513958>,  <22.741259, 36.779648, 21.294670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.075790, 36.780807, 21.513958> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359188, -0.752562, 0.551937,
		0.414169, -0.658515, -0.628349,
		0.836330, 0.002899, 0.548218,
		23.326689, 36.781677, 21.678423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.769585, 36.131775, 21.481897>,  <22.741259, 36.779648, 21.294670>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.769585, 36.131775, 21.481897> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.013546, 36.312420, 21.742378>,  <23.159924, 36.420807, 21.898666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.013546, 36.312420, 21.742378>,  <22.769585, 36.131775, 21.481897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.013546, 36.312420, 21.742378> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180053, -0.721275, 0.668838,
		0.771751, -0.525177, -0.358594,
		0.609903, 0.451610, 0.651204,
		23.196516, 36.447903, 21.937740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.166620, 35.605030, 21.920595>,  <22.769585, 36.131775, 21.481897>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.166620, 35.605030, 21.920595> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.165915, 35.927605, 22.157124>,  <23.165491, 36.121147, 22.299042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.165915, 35.927605, 22.157124>,  <23.166620, 35.605030, 21.920595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.165915, 35.927605, 22.157124> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267187, -0.570206, 0.776838,
		0.963643, -0.156622, 0.216475,
		-0.001765, 0.806433, 0.591322,
		23.165384, 36.169533, 22.334520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.310333, 35.289696, 22.509182>,  <23.166620, 35.605030, 21.920595>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.310333, 35.289696, 22.509182> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.207722, 35.655174, 22.635258>,  <23.146154, 35.874462, 22.710903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.207722, 35.655174, 22.635258>,  <23.310333, 35.289696, 22.509182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.207722, 35.655174, 22.635258> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278065, -0.382083, 0.881302,
		0.925674, 0.138437, 0.352084,
		-0.256530, 0.913700, 0.315190,
		23.130762, 35.929283, 22.729815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.504139, 35.298645, 23.280449>,  <23.310333, 35.289696, 22.509182>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.504139, 35.298645, 23.280449> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.214132, 35.564976, 23.209991>,  <23.040129, 35.724773, 23.167717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.214132, 35.564976, 23.209991>,  <23.504139, 35.298645, 23.280449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.214132, 35.564976, 23.209991> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524146, -0.367498, 0.768255,
		0.446790, 0.649324, 0.615432,
		-0.725017, 0.665825, -0.176146,
		22.996628, 35.764725, 23.157148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.172041, 35.481911, 23.936026>,  <23.504139, 35.298645, 23.280449>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.172041, 35.481911, 23.936026> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.884253, 35.605419, 23.687180>,  <22.711580, 35.679523, 23.537872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.884253, 35.605419, 23.687180>,  <23.172041, 35.481911, 23.936026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.884253, 35.605419, 23.687180> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694522, -0.317848, 0.645454,
		0.001560, 0.896456, 0.443130,
		-0.719469, 0.308770, -0.622113,
		22.668411, 35.698051, 23.500546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.579363, 35.745003, 24.468868>,  <23.172041, 35.481911, 23.936026>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.579363, 35.745003, 24.468868> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.422630, 35.686096, 24.105598>,  <22.328590, 35.650753, 23.887636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.422630, 35.686096, 24.105598>,  <22.579363, 35.745003, 24.468868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.422630, 35.686096, 24.105598> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769127, -0.489261, 0.411178,
		-0.504888, 0.859614, 0.078437,
		-0.391830, -0.147271, -0.908174,
		22.305080, 35.641914, 23.833147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.933649, 35.778141, 24.504627>,  <22.579363, 35.745003, 24.468868>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.933649, 35.778141, 24.504627> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.956633, 35.555161, 24.173340>,  <21.970423, 35.421371, 23.974567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.956633, 35.555161, 24.173340>,  <21.933649, 35.778141, 24.504627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.956633, 35.555161, 24.173340> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706797, -0.608606, 0.360605,
		-0.705079, 0.564661, -0.428977,
		0.057458, -0.557455, -0.828216,
		21.973869, 35.387924, 23.924875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.292765, 35.760708, 24.252480>,  <21.933649, 35.778141, 24.504627>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.292765, 35.760708, 24.252480> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.455393, 35.459660, 24.045303>,  <21.552969, 35.279030, 23.920998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.455393, 35.459660, 24.045303>,  <21.292765, 35.760708, 24.252480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.455393, 35.459660, 24.045303> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821041, -0.549649, 0.154198,
		-0.400739, 0.362559, -0.841403,
		0.406571, -0.752620, -0.517941,
		21.577364, 35.233875, 23.889921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.785944, 35.399483, 23.925995>,  <21.292765, 35.760708, 24.252480>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.785944, 35.399483, 23.925995> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.043022, 35.093079, 23.920803>,  <21.197269, 34.909237, 23.917688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.043022, 35.093079, 23.920803>,  <20.785944, 35.399483, 23.925995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.043022, 35.093079, 23.920803> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734521, -0.620914, 0.273761,
		-0.217761, -0.166413, -0.961710,
		0.642697, -0.766011, -0.012977,
		21.235830, 34.863274, 23.916910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.352982, 34.843906, 23.627432>,  <20.785944, 35.399483, 23.925995>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.352982, 34.843906, 23.627432> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.654140, 34.716053, 23.857555>,  <20.834837, 34.639343, 23.995628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.654140, 34.716053, 23.857555>,  <20.352982, 34.843906, 23.627432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.654140, 34.716053, 23.857555> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645802, -0.527242, 0.552228,
		0.126818, -0.787307, -0.603378,
		0.752899, -0.319630, 0.575308,
		20.880011, 34.620163, 24.030148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.775417, 35.084103, 23.959555>,  <20.352982, 34.843906, 23.627432>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.775417, 35.084103, 23.959555> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.949169, 35.439976, 24.015800>,  <20.053421, 35.653500, 24.049547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.949169, 35.439976, 24.015800>,  <19.775417, 35.084103, 23.959555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.949169, 35.439976, 24.015800> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137515, 0.219785, -0.965808,
		-0.890170, 0.400193, 0.217816,
		0.434382, 0.889686, 0.140613,
		20.079483, 35.706882, 24.057985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.349052, 35.622002, 23.705441>,  <19.775417, 35.084103, 23.959555>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.349052, 35.622002, 23.705441> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.720881, 35.769264, 23.697891>,  <19.943977, 35.857620, 23.693361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.720881, 35.769264, 23.697891>,  <19.349052, 35.622002, 23.705441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.720881, 35.769264, 23.697891> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160354, 0.357719, -0.919959,
		-0.331938, 0.858194, 0.391561,
		0.929572, 0.368158, -0.018874,
		19.999752, 35.879711, 23.692228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.296465, 36.278748, 23.322201>,  <19.349052, 35.622002, 23.705441>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.296465, 36.278748, 23.322201> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.685064, 36.184685, 23.310249>,  <19.918224, 36.128246, 23.303078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.685064, 36.184685, 23.310249>,  <19.296465, 36.278748, 23.322201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.685064, 36.184685, 23.310249> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047874, 0.318093, -0.946850,
		0.232165, 0.918432, 0.320285,
		0.971498, -0.235159, -0.029881,
		19.976513, 36.114136, 23.301285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.586443, 36.816658, 23.031616>,  <19.296465, 36.278748, 23.322201>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.586443, 36.816658, 23.031616> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.822222, 36.500446, 22.965141>,  <19.963690, 36.310719, 22.925257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.822222, 36.500446, 22.965141>,  <19.586443, 36.816658, 23.031616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.822222, 36.500446, 22.965141> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135783, 0.299760, -0.944302,
		0.796314, 0.534050, 0.284033,
		0.589447, -0.790528, -0.166188,
		19.999056, 36.263287, 22.915285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.180290, 37.085857, 22.766220>,  <19.586443, 36.816658, 23.031616>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.180290, 37.085857, 22.766220> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.186111, 36.704567, 22.645458>,  <20.189604, 36.475792, 22.573002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.186111, 36.704567, 22.645458>,  <20.180290, 37.085857, 22.766220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.186111, 36.704567, 22.645458> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286140, 0.293277, -0.912202,
		0.958077, -0.073112, 0.277025,
		0.014552, -0.953228, -0.301902,
		20.190477, 36.418598, 22.554888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.721027, 37.041142, 22.385483>,  <20.180290, 37.085857, 22.766220>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.721027, 37.041142, 22.385483> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.537315, 36.701656, 22.280605>,  <20.427088, 36.497967, 22.217678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.537315, 36.701656, 22.280605>,  <20.721027, 37.041142, 22.385483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.537315, 36.701656, 22.280605> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316499, 0.119446, -0.941042,
		0.829994, -0.515186, 0.213758,
		-0.459280, -0.848714, -0.262196,
		20.399532, 36.447041, 22.201946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.143711, 36.814907, 21.876463>,  <20.721027, 37.041142, 22.385483>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.143711, 36.814907, 21.876463> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.803907, 36.611790, 21.819218>,  <20.600025, 36.489922, 21.784870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.803907, 36.611790, 21.819218>,  <21.143711, 36.814907, 21.876463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.803907, 36.611790, 21.819218> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180914, -0.025567, -0.983166,
		0.495583, -0.861102, 0.113586,
		-0.849510, -0.507790, -0.143115,
		20.549055, 36.459454, 21.776283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.274826, 36.317509, 21.416471>,  <21.143711, 36.814907, 21.876463>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.274826, 36.317509, 21.416471> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.878521, 36.353661, 21.376038>,  <20.640738, 36.375351, 21.351778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.878521, 36.353661, 21.376038>,  <21.274826, 36.317509, 21.416471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.878521, 36.353661, 21.376038> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103836, 0.026274, -0.994247,
		-0.087209, -0.995560, -0.035416,
		-0.990764, 0.090384, -0.101084,
		20.581291, 36.380775, 21.345713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.025871, 35.784897, 21.023523>,  <21.274826, 36.317509, 21.416471>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.025871, 35.784897, 21.023523> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.763054, 36.085789, 21.003757>,  <20.605364, 36.266323, 20.991898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.763054, 36.085789, 21.003757>,  <21.025871, 35.784897, 21.023523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.763054, 36.085789, 21.003757> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105889, 0.027193, -0.994006,
		-0.746379, -0.658338, -0.097520,
		-0.657043, 0.752232, -0.049414,
		20.565941, 36.311459, 20.988934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.724476, 35.714520, 20.348186>,  <21.025871, 35.784897, 21.023523>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.724476, 35.714520, 20.348186> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.583014, 36.076725, 20.441978>,  <20.498137, 36.294048, 20.498253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.583014, 36.076725, 20.441978>,  <20.724476, 35.714520, 20.348186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.583014, 36.076725, 20.441978> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012050, 0.255068, -0.966848,
		-0.935299, -0.339104, -0.101117,
		-0.353653, 0.905510, 0.234479,
		20.476917, 36.348377, 20.512321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.291399, 35.892563, 19.789402>,  <20.724476, 35.714520, 20.348186>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.291399, 35.892563, 19.789402> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.394785, 36.244820, 19.948231>,  <20.456816, 36.456173, 20.043528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.394785, 36.244820, 19.948231>,  <20.291399, 35.892563, 19.789402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.394785, 36.244820, 19.948231> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170988, 0.446256, -0.878419,
		-0.950768, 0.159144, 0.265919,
		0.258463, 0.880641, 0.397074,
		20.472324, 36.509010, 20.067352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.784843, 36.394798, 19.604527>,  <20.291399, 35.892563, 19.789402>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.784843, 36.394798, 19.604527> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.118565, 36.600380, 19.684319>,  <20.318796, 36.723728, 19.732195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.118565, 36.600380, 19.684319>,  <19.784843, 36.394798, 19.604527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.118565, 36.600380, 19.684319> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157679, 0.569167, -0.806961,
		-0.528279, 0.641794, 0.555897,
		0.834301, 0.513954, 0.199482,
		20.368855, 36.754566, 19.744164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.695745, 37.137638, 19.485180>,  <19.784843, 36.394798, 19.604527>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.695745, 37.137638, 19.485180> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.093695, 37.100616, 19.468895>,  <20.332464, 37.078403, 19.459124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.093695, 37.100616, 19.468895>,  <19.695745, 37.137638, 19.485180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.093695, 37.100616, 19.468895> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026293, 0.625604, -0.779697,
		0.097635, 0.774631, 0.624832,
		0.994875, -0.092554, -0.040713,
		20.392157, 37.072849, 19.456680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.912727, 37.773132, 19.622030>,  <19.695745, 37.137638, 19.485180>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.912727, 37.773132, 19.622030> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.224695, 37.606365, 19.435310>,  <20.411877, 37.506306, 19.323278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.224695, 37.606365, 19.435310>,  <19.912727, 37.773132, 19.622030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.224695, 37.606365, 19.435310> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106381, 0.823282, -0.557575,
		0.616773, 0.385205, 0.686446,
		0.779919, -0.416922, -0.466799,
		20.458672, 37.481289, 19.295271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.274591, 38.332325, 19.515913>,  <19.912727, 37.773132, 19.622030>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.274591, 38.332325, 19.515913> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.438955, 38.070240, 19.262344>,  <20.537575, 37.912991, 19.110203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.438955, 38.070240, 19.262344>,  <20.274591, 38.332325, 19.515913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.438955, 38.070240, 19.262344> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377972, 0.755196, -0.535553,
		0.829632, -0.019539, 0.557969,
		0.410912, -0.655208, -0.633919,
		20.562229, 37.873676, 19.072168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.961113, 38.520866, 19.429094>,  <20.274591, 38.332325, 19.515913>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.961113, 38.520866, 19.429094> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.900002, 38.303116, 19.099171>,  <20.863335, 38.172466, 18.901217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.900002, 38.303116, 19.099171>,  <20.961113, 38.520866, 19.429094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.900002, 38.303116, 19.099171> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627826, 0.591084, -0.506413,
		0.763212, -0.595206, 0.251470,
		-0.152780, -0.544380, -0.824808,
		20.854168, 38.139801, 18.851728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.668142, 38.424831, 18.974131>,  <20.961113, 38.520866, 19.429094>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.668142, 38.424831, 18.974131> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.342232, 38.387051, 18.745319>,  <21.146685, 38.364380, 18.608032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.342232, 38.387051, 18.745319>,  <21.668142, 38.424831, 18.974131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.342232, 38.387051, 18.745319> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444623, 0.531412, -0.721049,
		0.372088, -0.841832, -0.390986,
		-0.814776, -0.094453, -0.572029,
		21.097799, 38.358715, 18.573709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.980474, 38.275127, 18.254299>,  <21.668142, 38.424831, 18.974131>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.980474, 38.275127, 18.254299> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.605192, 38.409470, 18.220894>,  <21.380024, 38.490074, 18.200850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.605192, 38.409470, 18.220894>,  <21.980474, 38.275127, 18.254299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.605192, 38.409470, 18.220894> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280136, 0.595282, -0.753103,
		-0.203220, -0.729959, -0.652581,
		-0.938203, 0.335856, -0.083515,
		21.323730, 38.510227, 18.195839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.924374, 38.523445, 17.683470>,  <21.980474, 38.275127, 18.254299>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.924374, 38.523445, 17.683470> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.572422, 38.685101, 17.783463>,  <21.361252, 38.782093, 17.843458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.572422, 38.685101, 17.783463>,  <21.924374, 38.523445, 17.683470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.572422, 38.685101, 17.783463> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140394, 0.723646, -0.675741,
		-0.453989, -0.559473, -0.693458,
		-0.879877, 0.404136, 0.249981,
		21.308458, 38.806343, 17.858458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.537256, 38.681938, 16.987103>,  <21.924374, 38.523445, 17.683470>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.537256, 38.681938, 16.987103> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.341835, 38.897804, 17.261353>,  <21.224583, 39.027325, 17.425901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.341835, 38.897804, 17.261353>,  <21.537256, 38.681938, 16.987103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.341835, 38.897804, 17.261353> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221369, 0.683411, -0.695661,
		-0.843985, -0.491644, -0.214419,
		-0.488555, 0.539662, 0.685623,
		21.195269, 39.059704, 17.467039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.861588, 38.698513, 16.799686>,  <21.537256, 38.681938, 16.987103>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.861588, 38.698513, 16.799686> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.966650, 39.013767, 17.022346>,  <21.029688, 39.202919, 17.155943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.966650, 39.013767, 17.022346>,  <20.861588, 38.698513, 16.799686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.966650, 39.013767, 17.022346> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067689, 0.590533, -0.804170,
		-0.962513, 0.173541, 0.208454,
		0.262655, 0.788134, 0.556649,
		21.045446, 39.250206, 17.189341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<28.436459, 26.569370, 24.515343> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.690510, 26.715515, 24.787556>,  <28.842939, 26.803202, 24.950884>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.690510, 26.715515, 24.787556>,  <28.436459, 26.569370, 24.515343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.690510, 26.715515, 24.787556> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136102, 0.920205, -0.367013,
		-0.760323, 0.140477, 0.634173,
		0.635126, 0.365360, 0.680534,
		28.881048, 26.825123, 24.991716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.043604, 27.069099, 24.945395>,  <28.436459, 26.569370, 24.515343>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.043604, 27.069099, 24.945395> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.435310, 27.146957, 24.922924>,  <28.670334, 27.193672, 24.909443>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.435310, 27.146957, 24.922924>,  <28.043604, 27.069099, 24.945395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.435310, 27.146957, 24.922924> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202166, 0.921017, -0.332950,
		-0.013068, 0.337403, 0.941270,
		0.979264, 0.194644, -0.056175,
		28.729090, 27.205351, 24.906071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.001577, 27.722198, 25.129848>,  <28.043604, 27.069099, 24.945395>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.001577, 27.722198, 25.129848> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.388065, 27.697128, 25.029854>,  <28.619957, 27.682087, 24.969856>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.388065, 27.697128, 25.029854>,  <28.001577, 27.722198, 25.129848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.388065, 27.697128, 25.029854> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000413, 0.970355, -0.241685,
		0.257725, 0.233417, 0.937600,
		0.966218, -0.062675, -0.249988,
		28.677931, 27.678326, 24.954857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.216270, 28.251648, 25.412924>,  <28.001577, 27.722198, 25.129848>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.216270, 28.251648, 25.412924> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.452299, 28.149780, 25.106472>,  <28.593916, 28.088659, 24.922600>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.452299, 28.149780, 25.106472>,  <28.216270, 28.251648, 25.412924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.452299, 28.149780, 25.106472> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235174, 0.853576, -0.464868,
		0.772339, 0.454480, 0.443779,
		0.590072, -0.254671, -0.766132,
		28.629320, 28.073380, 24.876633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.641695, 28.911318, 25.351051>,  <28.216270, 28.251648, 25.412924>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.641695, 28.911318, 25.351051> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.665398, 28.677082, 25.027676>,  <28.679619, 28.536541, 24.833651>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.665398, 28.677082, 25.027676>,  <28.641695, 28.911318, 25.351051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.665398, 28.677082, 25.027676> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158487, 0.794071, -0.586799,
		0.985581, 0.162898, -0.045756,
		0.059255, -0.585590, -0.808439,
		28.683174, 28.501406, 24.785145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.244875, 29.112150, 24.855396>,  <28.641695, 28.911318, 25.351051>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.244875, 29.112150, 24.855396> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.012749, 28.911678, 24.598629>,  <28.873474, 28.791395, 24.444569>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.012749, 28.911678, 24.598629>,  <29.244875, 29.112150, 24.855396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.012749, 28.911678, 24.598629> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177888, 0.847188, -0.500628,
		0.794726, -0.176334, -0.580791,
		-0.580317, -0.501178, -0.641914,
		28.838654, 28.761326, 24.406054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.535912, 29.225536, 24.208818>,  <29.244875, 29.112150, 24.855396>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.535912, 29.225536, 24.208818> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.144089, 29.156242, 24.167912>,  <28.908995, 29.114666, 24.143368>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.144089, 29.156242, 24.167912>,  <29.535912, 29.225536, 24.208818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.144089, 29.156242, 24.167912> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061564, 0.742131, -0.667422,
		0.191516, -0.647482, -0.737624,
		-0.979557, -0.173233, -0.102268,
		28.850222, 29.104273, 24.137232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.432655, 29.453207, 23.452644>,  <29.535912, 29.225536, 24.208818>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.432655, 29.453207, 23.452644> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.053936, 29.416370, 23.575993>,  <28.826704, 29.394268, 23.650002>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.053936, 29.416370, 23.575993>,  <29.432655, 29.453207, 23.452644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.053936, 29.416370, 23.575993> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225375, 0.873734, -0.431039,
		-0.229740, -0.477607, -0.848004,
		-0.946797, -0.092092, 0.308372,
		28.769897, 29.388742, 23.668505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.899099, 29.522902, 22.793901>,  <29.432655, 29.453207, 23.452644>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.899099, 29.522902, 22.793901> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.718927, 29.623470, 23.136574>,  <28.610825, 29.683811, 23.342176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.718927, 29.623470, 23.136574>,  <28.899099, 29.522902, 22.793901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.718927, 29.623470, 23.136574> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364032, 0.824429, -0.433356,
		-0.815227, -0.507055, -0.279821,
		-0.450428, 0.251420, 0.856681,
		28.583799, 29.698896, 23.393578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.220673, 29.893377, 22.554682>,  <28.899099, 29.522902, 22.793901>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.220673, 29.893377, 22.554682> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.277607, 30.014111, 22.931751>,  <28.311768, 30.086552, 23.157993>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.277607, 30.014111, 22.931751>,  <28.220673, 29.893377, 22.554682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.277607, 30.014111, 22.931751> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389115, 0.892757, -0.227099,
		-0.910127, -0.334485, 0.244518,
		0.142334, 0.301834, 0.942675,
		28.320307, 30.104660, 23.214554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.612085, 30.294979, 22.631247>,  <28.220673, 29.893377, 22.554682>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.612085, 30.294979, 22.631247> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.884502, 30.407372, 22.901722>,  <28.047953, 30.474806, 23.064007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.884502, 30.407372, 22.901722>,  <27.612085, 30.294979, 22.631247>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.884502, 30.407372, 22.901722> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106556, 0.875589, -0.471158,
		-0.724449, 0.392931, 0.566374,
		0.681043, 0.280979, 0.676189,
		28.088816, 30.491665, 23.104578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.485188, 31.048304, 23.019135>,  <27.612085, 30.294979, 22.631247>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.485188, 31.048304, 23.019135> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.846886, 30.902012, 22.930969>,  <28.063904, 30.814236, 22.878069>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.846886, 30.902012, 22.930969>,  <27.485188, 31.048304, 23.019135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.846886, 30.902012, 22.930969> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144946, 0.748415, -0.647198,
		0.401662, 0.553277, 0.729762,
		0.904245, -0.365731, -0.220414,
		28.118158, 30.792292, 22.864845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.767429, 31.261002, 23.320583>,  <27.485188, 31.048304, 23.019135>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.767429, 31.261002, 23.320583> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.783569, 31.318245, 23.716137>,  <26.793253, 31.352591, 23.953468>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.783569, 31.318245, 23.716137>,  <26.767429, 31.261002, 23.320583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.783569, 31.318245, 23.716137> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382993, 0.916315, -0.116978,
		-0.922870, -0.374016, 0.091781,
		0.040348, 0.143107, 0.988885,
		26.795673, 31.361177, 24.012802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.113277, 31.532997, 23.647591>,  <26.767429, 31.261002, 23.320583>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.113277, 31.532997, 23.647591> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.431892, 31.646584, 23.861092>,  <26.623062, 31.714735, 23.989193>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.431892, 31.646584, 23.861092>,  <26.113277, 31.532997, 23.647591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.431892, 31.646584, 23.861092> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356765, 0.933509, 0.035772,
		-0.488106, -0.218918, 0.844883,
		0.796537, 0.283964, 0.533754,
		26.670853, 31.731773, 24.021217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.868048, 31.873842, 23.059303>,  <26.113277, 31.532997, 23.647591>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.868048, 31.873842, 23.059303> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.552620, 31.897133, 23.304176>,  <25.363363, 31.911108, 23.451099>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.552620, 31.897133, 23.304176>,  <25.868048, 31.873842, 23.059303>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.552620, 31.897133, 23.304176> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585664, -0.232422, 0.776516,
		0.187499, 0.970870, 0.149179,
		-0.788569, 0.058227, 0.612183,
		25.316050, 31.914600, 23.487831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.966080, 32.416862, 23.619394>,  <25.868048, 31.873842, 23.059303>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.966080, 32.416862, 23.619394> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.707394, 32.145756, 23.759331>,  <25.552181, 31.983091, 23.843292>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.707394, 32.145756, 23.759331>,  <25.966080, 32.416862, 23.619394>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.707394, 32.145756, 23.759331> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678238, -0.301188, 0.670283,
		-0.348928, 0.670759, 0.654471,
		-0.646717, -0.677767, 0.349841,
		25.513378, 31.942425, 23.864283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.018433, 32.433144, 24.345066>,  <25.966080, 32.416862, 23.619394>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.018433, 32.433144, 24.345066> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.831867, 32.089367, 24.261333>,  <25.719929, 31.883101, 24.211094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.831867, 32.089367, 24.261333>,  <26.018433, 32.433144, 24.345066>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.831867, 32.089367, 24.261333> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495662, -0.449935, 0.742885,
		-0.732652, 0.242733, 0.635848,
		-0.466413, -0.859441, -0.209332,
		25.691944, 31.831535, 24.198534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.973467, 32.230389, 25.038771>,  <26.018433, 32.433144, 24.345066>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.973467, 32.230389, 25.038771> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.870995, 31.907173, 24.826569>,  <25.809511, 31.713243, 24.699247>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.870995, 31.907173, 24.826569>,  <25.973467, 32.230389, 25.038771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.870995, 31.907173, 24.826569> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306487, -0.588404, 0.748229,
		-0.916753, 0.029089, 0.398393,
		-0.256182, -0.808043, -0.530506,
		25.794140, 31.664761, 24.667418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.479340, 31.820835, 25.441196>,  <25.973467, 32.230389, 25.038771>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.479340, 31.820835, 25.441196> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.665854, 31.570156, 25.191452>,  <25.777761, 31.419748, 25.041605>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.665854, 31.570156, 25.191452>,  <25.479340, 31.820835, 25.441196>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.665854, 31.570156, 25.191452> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189463, -0.618661, 0.762471,
		-0.864107, -0.473823, -0.169737,
		0.466286, -0.626698, -0.624362,
		25.805738, 31.382147, 25.004143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.331324, 31.040857, 25.606531>,  <25.479340, 31.820835, 25.441196>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.331324, 31.040857, 25.606531> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.664038, 31.015297, 25.385967>,  <25.863667, 30.999962, 25.253630>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.664038, 31.015297, 25.385967>,  <25.331324, 31.040857, 25.606531>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.664038, 31.015297, 25.385967> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376769, -0.664503, 0.645353,
		-0.407649, -0.744548, -0.528649,
		0.831785, -0.063899, -0.551407,
		25.913572, 30.996128, 25.220545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.518581, 30.306116, 25.480215>,  <25.331324, 31.040857, 25.606531>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.518581, 30.306116, 25.480215> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.840620, 30.543365, 25.482265>,  <26.033842, 30.685715, 25.483496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.840620, 30.543365, 25.482265>,  <25.518581, 30.306116, 25.480215>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.840620, 30.543365, 25.482265> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431550, -0.591661, 0.680956,
		0.406923, -0.546023, -0.732306,
		0.805095, 0.593124, 0.005124,
		26.082150, 30.721302, 25.483803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.068022, 29.796894, 25.652859>,  <25.518581, 30.306116, 25.480215>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.068022, 29.796894, 25.652859> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.251339, 30.150833, 25.686359>,  <26.361328, 30.363197, 25.706459>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.251339, 30.150833, 25.686359>,  <26.068022, 29.796894, 25.652859>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.251339, 30.150833, 25.686359> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468183, -0.320431, 0.823486,
		0.755496, -0.338186, -0.561121,
		0.458292, 0.884847, 0.083751,
		26.388826, 30.416286, 25.711485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.711979, 29.616116, 25.802635>,  <26.068022, 29.796894, 25.652859>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.711979, 29.616116, 25.802635> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.685835, 29.999397, 25.914043>,  <26.670149, 30.229366, 25.980888>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.685835, 29.999397, 25.914043>,  <26.711979, 29.616116, 25.802635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.685835, 29.999397, 25.914043> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638785, -0.174253, 0.749393,
		0.766604, 0.226894, -0.600697,
		-0.065360, 0.958204, 0.278519,
		26.666227, 30.286858, 25.997599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.367756, 29.900410, 25.959415>,  <26.711979, 29.616116, 25.802635>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.367756, 29.900410, 25.959415> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.117229, 30.134590, 26.165318>,  <26.966913, 30.275099, 26.288858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.117229, 30.134590, 26.165318>,  <27.367756, 29.900410, 25.959415>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.117229, 30.134590, 26.165318> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478252, -0.232895, 0.846779,
		0.615632, 0.776536, -0.134127,
		-0.626317, 0.585451, 0.514758,
		26.929335, 30.310225, 26.319744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.800564, 30.315481, 26.235598>,  <27.367756, 29.900410, 25.959415>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.800564, 30.315481, 26.235598> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.466354, 30.331585, 26.454788>,  <27.265829, 30.341248, 26.586302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.466354, 30.331585, 26.454788>,  <27.800564, 30.315481, 26.235598>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.466354, 30.331585, 26.454788> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528836, -0.211702, 0.821897,
		0.149099, 0.976505, 0.155591,
		-0.835525, 0.040262, 0.547976,
		27.215696, 30.343664, 26.619181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.936695, 30.704855, 26.775654>,  <27.800564, 30.315481, 26.235598>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.936695, 30.704855, 26.775654> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.620888, 30.496311, 26.905174>,  <27.431402, 30.371185, 26.982885>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.620888, 30.496311, 26.905174>,  <27.936695, 30.704855, 26.775654>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.620888, 30.496311, 26.905174> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450604, -0.134234, 0.882574,
		-0.416671, 0.842715, 0.340906,
		-0.789519, -0.521357, 0.323799,
		27.384031, 30.339905, 27.002314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.940323, 30.729435, 27.511431>,  <27.936695, 30.704855, 26.775654>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.940323, 30.729435, 27.511431> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.691399, 30.427235, 27.429508>,  <27.542044, 30.245914, 27.380356>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.691399, 30.427235, 27.429508>,  <27.940323, 30.729435, 27.511431>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.691399, 30.427235, 27.429508> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475884, -0.572892, 0.667330,
		-0.621501, 0.317824, 0.716048,
		-0.622311, -0.755502, -0.204805,
		27.504705, 30.200584, 27.368067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.766361, 30.438820, 28.139732>,  <27.940323, 30.729435, 27.511431>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.766361, 30.438820, 28.139732> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.688076, 30.151535, 27.872639>,  <27.641104, 29.979164, 27.712383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.688076, 30.151535, 27.872639>,  <27.766361, 30.438820, 28.139732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.688076, 30.151535, 27.872639> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547500, -0.644928, 0.533209,
		-0.813597, -0.261227, 0.519443,
		-0.195714, -0.718212, -0.667733,
		27.629362, 29.936071, 27.672319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.176949, 30.915733, 28.608261>,  <27.766361, 30.438820, 28.139732>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.176949, 30.915733, 28.608261> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.497988, 30.884098, 28.844765>,  <28.690611, 30.865118, 28.986666>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.497988, 30.884098, 28.844765>,  <28.176949, 30.915733, 28.608261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.497988, 30.884098, 28.844765> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399931, 0.806756, -0.434970,
		-0.442600, 0.585568, 0.679128,
		0.802596, -0.079087, 0.591258,
		28.738766, 30.860373, 29.022142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.332615, 31.652441, 28.797150>,  <28.176949, 30.915733, 28.608261>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.332615, 31.652441, 28.797150> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.666790, 31.447334, 28.876263>,  <28.867294, 31.324270, 28.923731>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.666790, 31.447334, 28.876263>,  <28.332615, 31.652441, 28.797150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.666790, 31.447334, 28.876263> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544399, 0.722769, -0.425716,
		0.075339, 0.463333, 0.882976,
		0.835436, -0.512765, 0.197785,
		28.917421, 31.293505, 28.935598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.842655, 32.038120, 29.199812>,  <28.332615, 31.652441, 28.797150>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.842655, 32.038120, 29.199812> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.062622, 31.753262, 29.025253>,  <29.194603, 31.582348, 28.920519>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.062622, 31.753262, 29.025253>,  <28.842655, 32.038120, 29.199812>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.062622, 31.753262, 29.025253> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641447, 0.694735, -0.325407,
		0.534916, -0.100978, 0.838850,
		0.549919, -0.712142, -0.436396,
		29.227598, 31.539619, 28.894335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.447500, 32.202419, 29.287039>,  <28.842655, 32.038120, 29.199812>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.447500, 32.202419, 29.287039> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.477472, 31.969471, 28.963253>,  <29.495455, 31.829702, 28.768982>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.477472, 31.969471, 28.963253>,  <29.447500, 32.202419, 29.287039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.477472, 31.969471, 28.963253> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543336, 0.704510, -0.456565,
		0.836165, -0.405600, 0.369211,
		0.074930, -0.582369, -0.809464,
		29.499952, 31.794760, 28.720413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.182861, 32.211353, 29.173635>,  <29.447500, 32.202419, 29.287039>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.182861, 32.211353, 29.173635> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.976387, 32.107094, 28.847294>,  <29.852503, 32.044540, 28.651489>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.976387, 32.107094, 28.847294>,  <30.182861, 32.211353, 29.173635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.976387, 32.107094, 28.847294> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473770, 0.706666, -0.525515,
		0.713515, -0.657787, -0.241276,
		-0.516178, -0.260653, -0.815856,
		29.821531, 32.028900, 28.602537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.552685, 32.659000, 28.788008>,  <30.182861, 32.211353, 29.173635>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.552685, 32.659000, 28.788008> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.257267, 32.534935, 28.548557>,  <30.080015, 32.460495, 28.404888>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.257267, 32.534935, 28.548557>,  <30.552685, 32.659000, 28.788008>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.257267, 32.534935, 28.548557> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166499, 0.776491, -0.607733,
		0.653320, -0.548509, -0.521834,
		-0.738546, -0.310159, -0.598624,
		30.035704, 32.441887, 28.368971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.764465, 32.710045, 28.065708>,  <30.552685, 32.659000, 28.788008>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.764465, 32.710045, 28.065708> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.364477, 32.711525, 28.062901>,  <30.124485, 32.712414, 28.061216>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.364477, 32.711525, 28.062901>,  <30.764465, 32.710045, 28.065708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.364477, 32.711525, 28.062901> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006989, 0.829601, -0.558313,
		0.003758, -0.558345, -0.829601,
		-0.999969, 0.003700, -0.007020,
		30.064487, 32.712635, 28.060795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.671448, 32.690701, 27.411333>,  <30.764465, 32.710045, 28.065708>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.671448, 32.690701, 27.411333> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.336245, 32.826668, 27.582073>,  <30.135122, 32.908249, 27.684517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.336245, 32.826668, 27.582073>,  <30.671448, 32.690701, 27.411333>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.336245, 32.826668, 27.582073> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012073, 0.793623, -0.608290,
		-0.545524, -0.504598, -0.669167,
		-0.838008, 0.339916, 0.426849,
		30.084843, 32.928642, 27.710127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.078119, 32.888031, 26.834293>,  <30.671448, 32.690701, 27.411333>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.078119, 32.888031, 26.834293> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.005716, 33.086967, 27.173679>,  <29.962275, 33.206329, 27.377312>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.005716, 33.086967, 27.173679>,  <30.078119, 32.888031, 26.834293>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.005716, 33.086967, 27.173679> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012642, 0.861467, -0.507657,
		-0.983401, -0.102615, -0.149643,
		-0.181005, 0.497339, 0.848464,
		29.951414, 33.236168, 27.428219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.581821, 33.446812, 26.626020>,  <30.078119, 32.888031, 26.834293>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.581821, 33.446812, 26.626020> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.729013, 33.561844, 26.979717>,  <29.817329, 33.630863, 27.191936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.729013, 33.561844, 26.979717>,  <29.581821, 33.446812, 26.626020>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.729013, 33.561844, 26.979717> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114404, 0.929742, -0.349987,
		-0.922768, 0.229950, 0.309228,
		0.367982, 0.287580, 0.884244,
		29.839409, 33.648117, 27.244991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.231171, 34.072483, 26.669962>,  <29.581821, 33.446812, 26.626020>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.231171, 34.072483, 26.669962> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.517975, 34.098095, 26.947609>,  <29.690058, 34.113464, 27.114197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.517975, 34.098095, 26.947609>,  <29.231171, 34.072483, 26.669962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.517975, 34.098095, 26.947609> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043889, 0.989649, -0.136633,
		-0.695680, 0.128431, 0.706777,
		0.717009, 0.064033, 0.694116,
		29.733078, 34.117306, 27.155844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.016844, 34.581959, 27.105680>,  <29.231171, 34.072483, 26.669962>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.016844, 34.581959, 27.105680> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.413792, 34.532642, 27.106125>,  <29.651960, 34.503052, 27.106392>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.413792, 34.532642, 27.106125>,  <29.016844, 34.581959, 27.105680>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.413792, 34.532642, 27.106125> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118393, 0.950386, -0.287664,
		0.034411, 0.285600, 0.957731,
		0.992371, -0.123287, 0.001109,
		29.711502, 34.495655, 27.106457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<27.212255, 28.146925, 31.620384> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.592686, 28.106133, 31.503727>,  <27.820944, 28.081657, 31.433733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.592686, 28.106133, 31.503727>,  <27.212255, 28.146925, 31.620384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.592686, 28.106133, 31.503727> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000659, 0.943283, -0.331989,
		0.308957, 0.315939, 0.897066,
		0.951076, -0.101979, -0.291642,
		27.878008, 28.075539, 31.416235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.658907, 28.718571, 31.889307>,  <27.212255, 28.146925, 31.620384>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.658907, 28.718571, 31.889307> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.872936, 28.577721, 31.582138>,  <28.001354, 28.493210, 31.397837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.872936, 28.577721, 31.582138>,  <27.658907, 28.718571, 31.889307>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.872936, 28.577721, 31.582138> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114932, 0.930882, -0.346769,
		0.836950, 0.097290, 0.538563,
		0.535075, -0.352126, -0.767920,
		28.033459, 28.472082, 31.351763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.262068, 29.129990, 31.884567>,  <27.658907, 28.718571, 31.889307>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.262068, 29.129990, 31.884567> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.234756, 28.954983, 31.525921>,  <28.218370, 28.849979, 31.310734>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.234756, 28.954983, 31.525921>,  <28.262068, 29.129990, 31.884567>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.234756, 28.954983, 31.525921> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122881, 0.888180, -0.442759,
		0.990070, -0.140408, -0.006881,
		-0.068278, -0.437517, -0.896614,
		28.214273, 28.823729, 31.256937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.796309, 29.426100, 31.522913>,  <28.262068, 29.129990, 31.884567>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.796309, 29.426100, 31.522913> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.569834, 29.277420, 31.228630>,  <28.433949, 29.188211, 31.052059>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.569834, 29.277420, 31.228630>,  <28.796309, 29.426100, 31.522913>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.569834, 29.277420, 31.228630> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109424, 0.850758, -0.514039,
		0.816978, -0.371549, -0.441020,
		-0.566192, -0.371700, -0.735707,
		28.399977, 29.165909, 31.007917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.234083, 29.371544, 30.908680>,  <28.796309, 29.426100, 31.522913>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.234083, 29.371544, 30.908680> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.860304, 29.367104, 30.766308>,  <28.636036, 29.364439, 30.680885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.860304, 29.367104, 30.766308>,  <29.234083, 29.371544, 30.908680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.860304, 29.367104, 30.766308> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246685, 0.700663, -0.669491,
		0.256819, -0.713406, -0.651993,
		-0.934447, -0.011101, -0.355930,
		28.579969, 29.363773, 30.659529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.262260, 29.262777, 30.198862>,  <29.234083, 29.371544, 30.908680>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.262260, 29.262777, 30.198862> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.912111, 29.450745, 30.244289>,  <28.702023, 29.563524, 30.271545>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.912111, 29.450745, 30.244289>,  <29.262260, 29.262777, 30.198862>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.912111, 29.450745, 30.244289> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239201, 0.625145, -0.742951,
		-0.420124, -0.623194, -0.659640,
		-0.875374, 0.469918, 0.113570,
		28.649500, 29.591721, 30.278360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.085459, 29.378981, 29.473139>,  <29.262260, 29.262777, 30.198862>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.085459, 29.378981, 29.473139> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.859781, 29.626507, 29.691772>,  <28.724375, 29.775023, 29.822952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.859781, 29.626507, 29.691772>,  <29.085459, 29.378981, 29.473139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.859781, 29.626507, 29.691772> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191553, 0.742053, -0.642390,
		-0.803114, -0.257733, -0.537198,
		-0.564195, 0.618814, 0.546583,
		28.690523, 29.812151, 29.855747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.597700, 29.678747, 29.036564>,  <29.085459, 29.378981, 29.473139>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.597700, 29.678747, 29.036564> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.593445, 29.934803, 29.343838>,  <28.590893, 30.088436, 29.528202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.593445, 29.934803, 29.343838>,  <28.597700, 29.678747, 29.036564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.593445, 29.934803, 29.343838> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087029, 0.765907, -0.637034,
		-0.996149, 0.060078, -0.063857,
		-0.010637, 0.640138, 0.768187,
		28.590254, 30.126844, 29.574293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.247580, 30.172676, 28.722757>,  <28.597700, 29.678747, 29.036564>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.247580, 30.172676, 28.722757> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.444201, 30.333160, 29.031925>,  <28.562174, 30.429451, 29.217426>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.444201, 30.333160, 29.031925>,  <28.247580, 30.172676, 28.722757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.444201, 30.333160, 29.031925> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145800, 0.837107, -0.527252,
		-0.858556, 0.371864, 0.352985,
		0.491552, 0.401211, 0.772921,
		28.591665, 30.453524, 29.263802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.548687, 29.805426, 28.553095>,  <28.247580, 30.172676, 28.722757>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.548687, 29.805426, 28.553095> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.632196, 29.670578, 28.185886>,  <27.682302, 29.589668, 27.965561>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.632196, 29.670578, 28.185886>,  <27.548687, 29.805426, 28.553095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.632196, 29.670578, 28.185886> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234905, -0.893938, 0.381699,
		-0.949332, -0.295338, -0.107441,
		0.208775, -0.337121, -0.918021,
		27.694830, 29.569441, 27.910480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.255066, 29.187597, 28.509247>,  <27.548687, 29.805426, 28.553095>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.255066, 29.187597, 28.509247> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.540873, 29.168716, 28.230038>,  <27.712357, 29.157389, 28.062511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.540873, 29.168716, 28.230038>,  <27.255066, 29.187597, 28.509247>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.540873, 29.168716, 28.230038> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341126, -0.847578, 0.406502,
		-0.610817, -0.528567, -0.589508,
		0.714518, -0.047202, -0.698023,
		27.755228, 29.154556, 28.020630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.310781, 28.451813, 28.257147>,  <27.255066, 29.187597, 28.509247>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.310781, 28.451813, 28.257147> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.667204, 28.597046, 28.148197>,  <27.881058, 28.684185, 28.082829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.667204, 28.597046, 28.148197>,  <27.310781, 28.451813, 28.257147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.667204, 28.597046, 28.148197> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425569, -0.876967, 0.223203,
		-0.157821, -0.314800, -0.935945,
		0.891057, 0.363083, -0.272373,
		27.934521, 28.705971, 28.066484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.559160, 27.975517, 27.784004>,  <27.310781, 28.451813, 28.257147>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.559160, 27.975517, 27.784004> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.882244, 28.186939, 27.888489>,  <28.076096, 28.313793, 27.951180>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.882244, 28.186939, 27.888489>,  <27.559160, 27.975517, 27.784004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.882244, 28.186939, 27.888489> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525561, -0.846267, 0.087279,
		0.267185, 0.066785, -0.961328,
		0.807712, 0.528556, 0.261209,
		28.124557, 28.345507, 27.966852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.099430, 27.612051, 27.377474>,  <27.559160, 27.975517, 27.784004>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.099430, 27.612051, 27.377474> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.236423, 27.812893, 27.695114>,  <28.318619, 27.933397, 27.885698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.236423, 27.812893, 27.695114>,  <28.099430, 27.612051, 27.377474>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.236423, 27.812893, 27.695114> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622099, -0.754579, 0.208812,
		0.704059, 0.422496, -0.570788,
		0.342482, 0.502103, 0.794102,
		28.339169, 27.963524, 27.933346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.846947, 27.670351, 27.272573>,  <28.099430, 27.612051, 27.377474>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.846947, 27.670351, 27.272573> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.731874, 27.707626, 27.653847>,  <28.662830, 27.729992, 27.882610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.731874, 27.707626, 27.653847>,  <28.846947, 27.670351, 27.272573>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.731874, 27.707626, 27.653847> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570989, -0.782344, 0.248818,
		0.768903, 0.615836, 0.171855,
		-0.287681, 0.093189, 0.953182,
		28.645571, 27.735582, 27.939802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.315262, 27.228718, 27.589134>,  <28.846947, 27.670351, 27.272573>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.315262, 27.228718, 27.589134> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.060041, 27.282726, 27.892361>,  <28.906910, 27.315132, 28.074297>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.060041, 27.282726, 27.892361>,  <29.315262, 27.228718, 27.589134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.060041, 27.282726, 27.892361> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349191, -0.826708, 0.441157,
		0.686265, 0.546189, 0.480331,
		-0.638049, 0.135023, 0.758065,
		28.868628, 27.323233, 28.119780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.639585, 27.081400, 28.216902>,  <29.315262, 27.228718, 27.589134>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.639585, 27.081400, 28.216902> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.250187, 27.027073, 28.290508>,  <29.016548, 26.994476, 28.334673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.250187, 27.027073, 28.290508>,  <29.639585, 27.081400, 28.216902>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.250187, 27.027073, 28.290508> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195009, -0.913302, 0.357563,
		0.119500, 0.383970, 0.915580,
		-0.973494, -0.135818, 0.184017,
		28.958139, 26.986328, 28.345713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.640232, 26.712027, 28.889034>,  <29.639585, 27.081400, 28.216902>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.640232, 26.712027, 28.889034> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.272522, 26.621284, 28.760368>,  <29.051895, 26.566839, 28.683168>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.272522, 26.621284, 28.760368>,  <29.640232, 26.712027, 28.889034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.272522, 26.621284, 28.760368> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035090, -0.861190, 0.507070,
		-0.392044, 0.454851, 0.799633,
		-0.919277, -0.226853, -0.321664,
		28.996738, 26.553228, 28.663870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.336588, 26.392963, 29.411131>,  <29.640232, 26.712027, 28.889034>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.336588, 26.392963, 29.411131> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.096624, 26.283470, 29.110416>,  <28.952646, 26.217773, 28.929987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.096624, 26.283470, 29.110416>,  <29.336588, 26.392963, 29.411131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.096624, 26.283470, 29.110416> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095257, -0.908529, 0.406819,
		-0.794379, 0.315666, 0.518957,
		-0.599907, -0.273734, -0.751786,
		28.916653, 26.201349, 28.884880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.678289, 26.083231, 29.745430>,  <29.336588, 26.392963, 29.411131>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.678289, 26.083231, 29.745430> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.659071, 25.924343, 29.378845>,  <28.647539, 25.829010, 29.158894>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.659071, 25.924343, 29.378845>,  <28.678289, 26.083231, 29.745430>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.659071, 25.924343, 29.378845> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200870, -0.894936, 0.398422,
		-0.978439, 0.203234, -0.036791,
		-0.048047, -0.397222, -0.916464,
		28.644657, 25.805176, 29.103907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.161743, 25.625437, 29.789459>,  <28.678289, 26.083231, 29.745430>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.161743, 25.625437, 29.789459> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.353207, 25.500107, 29.461384>,  <28.468084, 25.424908, 29.264538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.353207, 25.500107, 29.461384>,  <28.161743, 25.625437, 29.789459>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.353207, 25.500107, 29.461384> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414311, -0.904216, 0.103636,
		-0.774101, 0.290207, -0.562626,
		0.478659, -0.313327, -0.820190,
		28.496805, 25.406109, 29.215326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.663080, 25.264841, 29.319590>,  <28.161743, 25.625437, 29.789459>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.663080, 25.264841, 29.319590> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.007214, 25.138939, 29.159210>,  <28.213694, 25.063398, 29.062983>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.007214, 25.138939, 29.159210>,  <27.663080, 25.264841, 29.319590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.007214, 25.138939, 29.159210> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303338, -0.948281, 0.093537,
		-0.409651, 0.041149, -0.911314,
		0.860332, -0.314754, -0.400946,
		28.265314, 25.044512, 29.038927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.573790, 24.834711, 28.751247>,  <27.663080, 25.264841, 29.319590>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.573790, 24.834711, 28.751247> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.921860, 24.735172, 28.921360>,  <28.130703, 24.675449, 29.023428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.921860, 24.735172, 28.921360>,  <27.573790, 24.834711, 28.751247>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.921860, 24.735172, 28.921360> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263788, -0.964270, -0.024489,
		0.416182, -0.090875, -0.904729,
		0.870177, -0.248848, 0.425283,
		28.182913, 24.660519, 29.048944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.487995, 24.500233, 31.574444> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.091755, 24.544430, 31.542198>,  <32.854012, 24.570948, 31.522850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.091755, 24.544430, 31.542198>,  <33.487995, 24.500233, 31.574444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.091755, 24.544430, 31.542198> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136774, 0.796359, -0.589157,
		-0.000900, -0.594646, -0.803988,
		-0.990602, 0.110495, -0.080615,
		32.794575, 24.577578, 31.518013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.359398, 24.408356, 30.838696>,  <33.487995, 24.500233, 31.574444>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.359398, 24.408356, 30.838696> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.047611, 24.591537, 31.009670>,  <32.860538, 24.701447, 31.112255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.047611, 24.591537, 31.009670>,  <33.359398, 24.408356, 30.838696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.047611, 24.591537, 31.009670> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050625, 0.726147, -0.685674,
		-0.624390, -0.512824, -0.589194,
		-0.779471, 0.457955, 0.427437,
		32.813770, 24.728924, 31.137901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.913910, 24.546959, 30.245296>,  <33.359398, 24.408356, 30.838696>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.913910, 24.546959, 30.245296> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.786858, 24.799034, 30.528698>,  <32.710625, 24.950279, 30.698738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.786858, 24.799034, 30.528698>,  <32.913910, 24.546959, 30.245296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.786858, 24.799034, 30.528698> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143102, 0.706779, -0.692809,
		-0.937353, -0.321447, -0.134315,
		-0.317632, 0.630186, 0.708502,
		32.691566, 24.988091, 30.741249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.324455, 24.997444, 29.969904>,  <32.913910, 24.546959, 30.245296>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.324455, 24.997444, 29.969904> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.457832, 25.202553, 30.286354>,  <32.537857, 25.325619, 30.476225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.457832, 25.202553, 30.286354>,  <32.324455, 24.997444, 29.969904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.457832, 25.202553, 30.286354> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027115, 0.844019, -0.535627,
		-0.942380, 0.157150, 0.295336,
		0.333443, 0.512773, 0.791126,
		32.557865, 25.356384, 30.523691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.955080, 25.579338, 30.051992>,  <32.324455, 24.997444, 29.969904>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.955080, 25.579338, 30.051992> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.278400, 25.688950, 30.260437>,  <32.472393, 25.754717, 30.385504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.278400, 25.688950, 30.260437>,  <31.955080, 25.579338, 30.051992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.278400, 25.688950, 30.260437> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176478, 0.731627, -0.658466,
		-0.561698, 0.624203, 0.543015,
		0.808301, 0.274029, 0.521112,
		32.520889, 25.771158, 30.416771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.913513, 26.351360, 30.054605>,  <31.955080, 25.579338, 30.051992>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.913513, 26.351360, 30.054605> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.297951, 26.274250, 30.133732>,  <32.528614, 26.227983, 30.181208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.297951, 26.274250, 30.133732>,  <31.913513, 26.351360, 30.054605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.297951, 26.274250, 30.133732> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260935, 0.868562, -0.421322,
		-0.090595, 0.456549, 0.885074,
		0.961096, -0.192777, 0.197817,
		32.586281, 26.216417, 30.193077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.116428, 26.964199, 30.309032>,  <31.913513, 26.351360, 30.054605>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.116428, 26.964199, 30.309032> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.453972, 26.772110, 30.213287>,  <32.656498, 26.656857, 30.155840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.453972, 26.772110, 30.213287>,  <32.116428, 26.964199, 30.309032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.453972, 26.772110, 30.213287> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434162, 0.873225, -0.221317,
		0.315298, 0.082838, 0.945370,
		0.843854, -0.480225, -0.239361,
		32.707127, 26.628042, 30.141479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.737179, 27.368473, 30.539309>,  <32.116428, 26.964199, 30.309032>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.737179, 27.368473, 30.539309> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.868687, 27.118183, 30.256359>,  <32.947594, 26.968008, 30.086590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.868687, 27.118183, 30.256359>,  <32.737179, 27.368473, 30.539309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.868687, 27.118183, 30.256359> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170102, 0.775995, -0.607369,
		0.928963, 0.079362, 0.361564,
		0.328774, -0.625726, -0.707371,
		32.967319, 26.930466, 30.044147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.366768, 27.713705, 30.316418>,  <32.737179, 27.368473, 30.539309>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.366768, 27.713705, 30.316418> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.258068, 27.460758, 30.026241>,  <33.192848, 27.308990, 29.852135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.258068, 27.460758, 30.026241>,  <33.366768, 27.713705, 30.316418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.258068, 27.460758, 30.026241> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238791, 0.685927, -0.687374,
		0.932271, -0.360025, -0.035399,
		-0.271753, -0.632366, -0.725440,
		33.176540, 27.271048, 29.808609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.920235, 27.757145, 29.856110>,  <33.366768, 27.713705, 30.316418>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.920235, 27.757145, 29.856110> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.608276, 27.624599, 29.643707>,  <33.421101, 27.545073, 29.516266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.608276, 27.624599, 29.643707>,  <33.920235, 27.757145, 29.856110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.608276, 27.624599, 29.643707> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284777, 0.567623, -0.772468,
		0.557355, -0.753669, -0.348336,
		-0.779909, -0.331341, -0.530995,
		33.374310, 27.525190, 29.484406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.241611, 27.507595, 29.348394>,  <33.920235, 27.757145, 29.856110>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.241611, 27.507595, 29.348394> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.856609, 27.590961, 29.278946>,  <33.625607, 27.640982, 29.237276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.856609, 27.590961, 29.278946>,  <34.241611, 27.507595, 29.348394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.856609, 27.590961, 29.278946> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271112, 0.718055, -0.641011,
		-0.008928, -0.664048, -0.747637,
		-0.962506, 0.208416, -0.173621,
		33.567856, 27.653486, 29.226860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.138767, 27.624390, 28.654715>,  <34.241611, 27.507595, 29.348394>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.138767, 27.624390, 28.654715> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.793171, 27.768749, 28.795158>,  <33.585815, 27.855366, 28.879425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.793171, 27.768749, 28.795158>,  <34.138767, 27.624390, 28.654715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.793171, 27.768749, 28.795158> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018022, 0.674705, -0.737867,
		-0.503191, -0.643836, -0.576433,
		-0.863987, 0.360899, 0.351108,
		33.533974, 27.877020, 28.900492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.732048, 27.738480, 28.005013>,  <34.138767, 27.624390, 28.654715>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.732048, 27.738480, 28.005013> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.567383, 27.967251, 28.288826>,  <33.468582, 28.104513, 28.459114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.567383, 27.967251, 28.288826>,  <33.732048, 27.738480, 28.005013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.567383, 27.967251, 28.288826> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127892, 0.734602, -0.666336,
		-0.902318, -0.365048, -0.229263,
		-0.411661, 0.571926, 0.709532,
		33.443886, 28.138828, 28.501686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.140759, 28.078360, 27.671799>,  <33.732048, 27.738480, 28.005013>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.140759, 28.078360, 27.671799> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.257175, 28.301128, 27.982960>,  <33.327026, 28.434790, 28.169657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.257175, 28.301128, 27.982960>,  <33.140759, 28.078360, 27.671799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.257175, 28.301128, 27.982960> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024150, 0.817119, -0.575963,
		-0.956406, 0.148841, 0.251263,
		0.291039, 0.556923, 0.777903,
		33.344486, 28.468204, 28.216331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.456493, 27.765919, 27.338390>,  <33.140759, 28.078360, 27.671799>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.456493, 27.765919, 27.338390> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.483971, 27.608620, 26.971645>,  <32.500458, 27.514240, 26.751598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.483971, 27.608620, 26.971645>,  <32.456493, 27.765919, 27.338390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.483971, 27.608620, 26.971645> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341254, -0.854332, 0.391997,
		-0.937458, -0.339811, 0.075510,
		0.068694, -0.393249, -0.916862,
		32.504578, 27.490644, 26.696587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.911116, 27.210522, 27.260693>,  <32.456493, 27.765919, 27.338390>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.911116, 27.210522, 27.260693> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.218822, 27.134769, 27.016605>,  <32.403446, 27.089319, 26.870153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.218822, 27.134769, 27.016605>,  <31.911116, 27.210522, 27.260693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.218822, 27.134769, 27.016605> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138878, -0.882670, 0.449007,
		-0.623654, -0.430152, -0.652707,
		0.769266, -0.189379, -0.610218,
		32.449604, 27.077955, 26.833540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.734503, 26.454453, 27.121555>,  <31.911116, 27.210522, 27.260693>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.734503, 26.454453, 27.121555> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.112617, 26.528679, 27.014229>,  <32.339485, 26.573215, 26.949833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.112617, 26.528679, 27.014229>,  <31.734503, 26.454453, 27.121555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.112617, 26.528679, 27.014229> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265514, -0.915500, 0.302261,
		-0.189555, -0.356966, -0.914682,
		0.945289, 0.185566, -0.268317,
		32.396206, 26.584349, 26.933733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.963305, 25.995317, 26.637800>,  <31.734503, 26.454453, 27.121555>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.963305, 25.995317, 26.637800> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.308701, 26.132843, 26.785408>,  <32.515938, 26.215359, 26.873972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.308701, 26.132843, 26.785408>,  <31.963305, 25.995317, 26.637800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.308701, 26.132843, 26.785408> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236048, -0.922059, 0.306739,
		0.445719, -0.177760, -0.877346,
		0.863490, 0.343816, 0.369019,
		32.567749, 26.235989, 26.896114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.555187, 25.607914, 26.347130>,  <31.963305, 25.995317, 26.637800>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.555187, 25.607914, 26.347130> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.657227, 25.774105, 26.696369>,  <32.718449, 25.873819, 26.905912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.657227, 25.774105, 26.696369>,  <32.555187, 25.607914, 26.347130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.657227, 25.774105, 26.696369> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143393, -0.909245, 0.390784,
		0.956223, 0.025507, -0.291525,
		0.255100, 0.415479, 0.873098,
		32.733757, 25.898748, 26.958300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.022705, 25.229803, 26.543869>,  <32.555187, 25.607914, 26.347130>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.022705, 25.229803, 26.543869> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.925011, 25.421028, 26.881344>,  <32.866394, 25.535763, 27.083828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.925011, 25.421028, 26.881344>,  <33.022705, 25.229803, 26.543869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.925011, 25.421028, 26.881344> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139363, -0.843697, 0.518414,
		0.959650, 0.244192, 0.139434,
		-0.244232, 0.478064, 0.843686,
		32.851742, 25.564447, 27.134449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.551468, 25.016752, 27.057613>,  <33.022705, 25.229803, 26.543869>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.551468, 25.016752, 27.057613> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.239380, 25.136658, 27.277210>,  <33.052128, 25.208601, 27.408968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.239380, 25.136658, 27.277210>,  <33.551468, 25.016752, 27.057613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.239380, 25.136658, 27.277210> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087881, -0.816447, 0.570693,
		0.619297, 0.493514, 0.610668,
		-0.780223, 0.299763, 0.548993,
		33.005314, 25.226587, 27.441908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.708630, 24.846920, 27.731232>,  <33.551468, 25.016752, 27.057613>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.708630, 24.846920, 27.731232> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.312523, 24.899715, 27.748928>,  <33.074860, 24.931393, 27.759546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.312523, 24.899715, 27.748928>,  <33.708630, 24.846920, 27.731232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.312523, 24.899715, 27.748928> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093343, -0.865360, 0.492381,
		0.103272, 0.483458, 0.869255,
		-0.990264, 0.131989, 0.044240,
		33.015446, 24.939312, 27.762199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.506111, 24.676340, 28.481844>,  <33.708630, 24.846920, 27.731232>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.506111, 24.676340, 28.481844> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.170998, 24.643230, 28.265968>,  <32.969929, 24.623365, 28.136444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.170998, 24.643230, 28.265968>,  <33.506111, 24.676340, 28.481844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.170998, 24.643230, 28.265968> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262033, -0.806220, 0.530422,
		-0.479012, 0.585796, 0.653751,
		-0.837787, -0.082774, -0.539687,
		32.919662, 24.618399, 28.104063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.959038, 24.472666, 28.921570>,  <33.506111, 24.676340, 28.481844>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.959038, 24.472666, 28.921570> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.842377, 24.364056, 28.554699>,  <32.772381, 24.298889, 28.334576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.842377, 24.364056, 28.554699>,  <32.959038, 24.472666, 28.921570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.842377, 24.364056, 28.554699> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168302, -0.929338, 0.328642,
		-0.941603, 0.250211, 0.225342,
		-0.291648, -0.271525, -0.917178,
		32.754883, 24.282598, 28.279545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.277115, 24.344324, 28.990654>,  <32.959038, 24.472666, 28.921570>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.277115, 24.344324, 28.990654> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.366024, 24.140850, 28.657948>,  <32.419369, 24.018766, 28.458324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.366024, 24.140850, 28.657948>,  <32.277115, 24.344324, 28.990654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.366024, 24.140850, 28.657948> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543757, -0.772786, 0.327306,
		-0.809273, 0.379527, -0.448372,
		0.222274, -0.508685, -0.831766,
		32.432705, 23.988245, 28.408419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.722317, 23.984755, 28.844133>,  <32.277115, 24.344324, 28.990654>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.722317, 23.984755, 28.844133> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.958021, 23.771358, 28.601429>,  <32.099445, 23.643320, 28.455807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.958021, 23.771358, 28.601429>,  <31.722317, 23.984755, 28.844133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.958021, 23.771358, 28.601429> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389255, -0.845549, 0.365415,
		-0.707990, 0.020858, -0.705915,
		0.589263, -0.533491, -0.606759,
		32.134800, 23.611311, 28.419401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.292095, 23.517776, 28.560720>,  <31.722317, 23.984755, 28.844133>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.292095, 23.517776, 28.560720> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.665319, 23.373909, 28.563152>,  <31.889254, 23.287588, 28.564611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.665319, 23.373909, 28.563152>,  <31.292095, 23.517776, 28.560720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.665319, 23.373909, 28.563152> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310918, -0.797852, 0.516491,
		-0.180915, -0.483808, -0.856271,
		0.933060, -0.359671, 0.006081,
		31.945238, 23.266008, 28.564978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.281458, 22.727762, 28.349655>,  <31.292095, 23.517776, 28.560720>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.281458, 22.727762, 28.349655> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.637714, 22.783253, 28.522865>,  <31.851469, 22.816547, 28.626791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.637714, 22.783253, 28.522865>,  <31.281458, 22.727762, 28.349655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.637714, 22.783253, 28.522865> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214258, -0.711937, 0.668759,
		0.401062, -0.688405, -0.604358,
		0.890642, 0.138726, 0.433027,
		31.904907, 22.824871, 28.652773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.797915, 22.229271, 28.107199>,  <31.281458, 22.727762, 28.349655>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.797915, 22.229271, 28.107199> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.398880, 22.252594, 28.122280>,  <30.159460, 22.266588, 28.131329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.398880, 22.252594, 28.122280>,  <30.797915, 22.229271, 28.107199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.398880, 22.252594, 28.122280> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016886, 0.730400, -0.682810,
		-0.067352, -0.680526, -0.729622,
		-0.997586, 0.058309, 0.037703,
		30.099604, 22.270086, 28.133591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.504852, 22.092937, 27.397755>,  <30.797915, 22.229271, 28.107199>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.504852, 22.092937, 27.397755> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.280830, 22.317841, 27.641132>,  <30.146418, 22.452784, 27.787159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.280830, 22.317841, 27.641132>,  <30.504852, 22.092937, 27.397755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.280830, 22.317841, 27.641132> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155070, 0.650303, -0.743680,
		-0.813812, -0.510853, -0.277017,
		-0.560056, 0.562259, 0.608443,
		30.112814, 22.486519, 27.823666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.008022, 22.281576, 26.902119>,  <30.504852, 22.092937, 27.397755>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.008022, 22.281576, 26.902119> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.934378, 22.539673, 27.198704>,  <29.890190, 22.694530, 27.376656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.934378, 22.539673, 27.198704>,  <30.008022, 22.281576, 26.902119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.934378, 22.539673, 27.198704> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253637, 0.697622, -0.670069,
		-0.949616, -0.311430, 0.035216,
		-0.184112, 0.645240, 0.741463,
		29.879145, 22.733244, 27.421143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.348553, 22.645477, 26.670858>,  <30.008022, 22.281576, 26.902119>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.348553, 22.645477, 26.670858> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.527985, 22.871944, 26.947475>,  <29.635643, 23.007824, 27.113445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.527985, 22.871944, 26.947475>,  <29.348553, 22.645477, 26.670858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.527985, 22.871944, 26.947475> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273421, 0.823596, -0.496922,
		-0.850892, 0.033827, 0.524251,
		0.448581, 0.566168, 0.691541,
		29.662560, 23.041794, 27.154938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.838591, 23.123201, 26.772470>,  <29.348553, 22.645477, 26.670858>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.838591, 23.123201, 26.772470> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.170866, 23.279652, 26.930950>,  <29.370232, 23.373522, 27.026039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.170866, 23.279652, 26.930950>,  <28.838591, 23.123201, 26.772470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.170866, 23.279652, 26.930950> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269222, 0.905118, -0.329059,
		-0.487312, 0.166681, 0.857173,
		0.830691, 0.391125, 0.396201,
		29.420073, 23.396990, 27.049810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.549974, 23.737066, 26.981668>,  <28.838591, 23.123201, 26.772470>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.549974, 23.737066, 26.981668> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.948263, 23.773178, 26.973785>,  <29.187237, 23.794846, 26.969055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.948263, 23.773178, 26.973785>,  <28.549974, 23.737066, 26.981668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.948263, 23.773178, 26.973785> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091437, 0.931807, -0.351248,
		-0.013345, 0.351547, 0.936075,
		0.995721, 0.090279, -0.019709,
		29.246979, 23.800262, 26.967873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.622976, 24.444904, 27.065191>,  <28.549974, 23.737066, 26.981668>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.622976, 24.444904, 27.065191> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.976526, 24.315216, 26.930344>,  <29.188656, 24.237404, 26.849434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.976526, 24.315216, 26.930344>,  <28.622976, 24.444904, 27.065191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.976526, 24.315216, 26.930344> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200333, 0.913723, -0.353520,
		0.422653, 0.244930, 0.872568,
		0.883873, -0.324220, -0.337120,
		29.241688, 24.217951, 26.829208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.099091, 24.968082, 27.236986>,  <28.622976, 24.444904, 27.065191>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.099091, 24.968082, 27.236986> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.273817, 24.753174, 26.948395>,  <29.378653, 24.624229, 26.775240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.273817, 24.753174, 26.948395>,  <29.099091, 24.968082, 27.236986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.273817, 24.753174, 26.948395> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262136, 0.843261, -0.469250,
		0.860508, 0.015851, 0.509190,
		0.436818, -0.537271, -0.721478,
		29.404863, 24.591993, 26.731951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.704586, 25.277105, 27.071341>,  <29.099091, 24.968082, 27.236986>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.704586, 25.277105, 27.071341> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.602083, 25.087849, 26.734184>,  <29.540581, 24.974295, 26.531891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.602083, 25.087849, 26.734184>,  <29.704586, 25.277105, 27.071341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.602083, 25.087849, 26.734184> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183376, 0.832379, -0.522990,
		0.949054, -0.288588, -0.126542,
		-0.256259, -0.473141, -0.842893,
		29.525206, 24.945906, 26.481316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.202547, 25.441380, 26.507984>,  <29.704586, 25.277105, 27.071341>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.202547, 25.441380, 26.507984> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.877035, 25.296059, 26.326534>,  <29.681728, 25.208866, 26.217665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.877035, 25.296059, 26.326534>,  <30.202547, 25.441380, 26.507984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.877035, 25.296059, 26.326534> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009405, 0.788658, -0.614760,
		0.581097, -0.496013, -0.645211,
		-0.813780, -0.363304, -0.453622,
		29.632902, 25.187067, 26.190447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.346725, 25.503725, 25.848816>,  <30.202547, 25.441380, 26.507984>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.346725, 25.503725, 25.848816> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.947824, 25.499485, 25.878155>,  <29.708485, 25.496941, 25.895758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.947824, 25.499485, 25.878155>,  <30.346725, 25.503725, 25.848816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.947824, 25.499485, 25.878155> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057395, 0.736573, -0.673919,
		-0.046881, -0.676276, -0.735156,
		-0.997251, -0.010601, 0.073346,
		29.648649, 25.496305, 25.900158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.094870, 25.626467, 25.207605>,  <30.346725, 25.503725, 25.848816>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.094870, 25.626467, 25.207605> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.767422, 25.707420, 25.422604>,  <29.570953, 25.755993, 25.551603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.767422, 25.707420, 25.422604>,  <30.094870, 25.626467, 25.207605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.767422, 25.707420, 25.422604> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286037, 0.667872, -0.687117,
		-0.498041, -0.716231, -0.488844,
		-0.818620, 0.202385, 0.537496,
		29.521835, 25.768135, 25.583853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.613436, 25.767483, 24.713943>,  <30.094870, 25.626467, 25.207605>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.613436, 25.767483, 24.713943> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.453733, 25.921265, 25.046879>,  <29.357912, 26.013533, 25.246641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.453733, 25.921265, 25.046879>,  <29.613436, 25.767483, 24.713943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.453733, 25.921265, 25.046879> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424768, 0.726964, -0.539532,
		-0.812506, -0.568963, -0.126942,
		-0.399256, 0.384453, 0.832340,
		29.333956, 26.036600, 25.296581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.072527, 26.178724, 24.442123>,  <29.613436, 25.767483, 24.713943>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.072527, 26.178724, 24.442123> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.090673, 26.302563, 24.822037>,  <29.101562, 26.376865, 25.049986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.090673, 26.302563, 24.822037>,  <29.072527, 26.178724, 24.442123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.090673, 26.302563, 24.822037> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299200, 0.911330, -0.282768,
		-0.953111, -0.271347, 0.133976,
		0.045367, 0.309595, 0.949786,
		29.104284, 26.395441, 25.106972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<44.389599, 30.378485, 28.456013> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.695923, 30.203278, 28.267681>,  <44.879715, 30.098154, 28.154682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.695923, 30.203278, 28.267681>,  <44.389599, 30.378485, 28.456013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.695923, 30.203278, 28.267681> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203405, 0.529577, -0.823513,
		0.610054, 0.726421, 0.316459,
		0.765807, -0.438018, -0.470828,
		44.925667, 30.071873, 28.126432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.886566, 30.862972, 28.264040>,  <44.389599, 30.378485, 28.456013>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.886566, 30.862972, 28.264040> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.918797, 30.548168, 28.019379>,  <44.938133, 30.359285, 27.872581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.918797, 30.548168, 28.019379>,  <44.886566, 30.862972, 28.264040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.918797, 30.548168, 28.019379> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327055, 0.558801, -0.762087,
		0.941564, 0.261449, -0.212371,
		0.080574, -0.787011, -0.611655,
		44.942970, 30.312065, 27.835882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.342773, 31.111275, 27.679321>,  <44.886566, 30.862972, 28.264040>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.342773, 31.111275, 27.679321> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.120075, 30.816845, 27.525322>,  <44.986454, 30.640186, 27.432922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.120075, 30.816845, 27.525322>,  <45.342773, 31.111275, 27.679321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.120075, 30.816845, 27.525322> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335528, 0.623252, -0.706384,
		0.759904, -0.264099, -0.593968,
		-0.556747, -0.736077, -0.384999,
		44.953053, 30.596022, 27.409822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.409027, 31.121443, 26.864649>,  <45.342773, 31.111275, 27.679321>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.409027, 31.121443, 26.864649> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.082584, 30.907101, 26.951206>,  <44.886719, 30.778496, 27.003141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.082584, 30.907101, 26.951206>,  <45.409027, 31.121443, 26.864649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.082584, 30.907101, 26.951206> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536097, 0.562176, -0.629728,
		0.215792, -0.629935, -0.746067,
		-0.816109, -0.535855, 0.216394,
		44.837753, 30.746344, 27.016125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.998692, 30.948202, 26.245216>,  <45.409027, 31.121443, 26.864649>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.998692, 30.948202, 26.245216> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.702595, 30.926533, 26.513279>,  <44.524937, 30.913530, 26.674116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.702595, 30.926533, 26.513279>,  <44.998692, 30.948202, 26.245216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.702595, 30.926533, 26.513279> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635074, 0.383591, -0.670476,
		-0.220744, -0.921913, -0.318354,
		-0.740238, -0.054175, 0.670158,
		44.480522, 30.910280, 26.714327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.439449, 30.902164, 25.811460>,  <44.998692, 30.948202, 26.245216>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.439449, 30.902164, 25.811460> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.260399, 30.941486, 26.166981>,  <44.152969, 30.965080, 26.380293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.260399, 30.941486, 26.166981>,  <44.439449, 30.902164, 25.811460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.260399, 30.941486, 26.166981> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835869, 0.307167, -0.454942,
		-0.317735, -0.946564, -0.055324,
		-0.447625, 0.098307, 0.888801,
		44.126110, 30.970978, 26.433620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.871536, 30.397108, 25.849333>,  <44.439449, 30.902164, 25.811460>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.871536, 30.397108, 25.849333> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.801468, 30.701588, 26.099098>,  <43.759426, 30.884275, 26.248957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.801468, 30.701588, 26.099098>,  <43.871536, 30.397108, 25.849333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.801468, 30.701588, 26.099098> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889235, 0.149896, -0.432194,
		-0.422583, -0.630958, 0.650627,
		-0.175169, 0.761198, 0.624414,
		43.748917, 30.929947, 26.286423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.204430, 30.262590, 26.048531>,  <43.871536, 30.397108, 25.849333>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.204430, 30.262590, 26.048531> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.280758, 30.644279, 26.140659>,  <43.326557, 30.873293, 26.195936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.280758, 30.644279, 26.140659>,  <43.204430, 30.262590, 26.048531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.280758, 30.644279, 26.140659> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791854, 0.288302, -0.538376,
		-0.580132, -0.079644, 0.810619,
		0.190824, 0.954221, 0.230319,
		43.338005, 30.930546, 26.209755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.575191, 30.498171, 26.233963>,  <43.204430, 30.262590, 26.048531>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.575191, 30.498171, 26.233963> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.801155, 30.813114, 26.135216>,  <42.936733, 31.002081, 26.075968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.801155, 30.813114, 26.135216>,  <42.575191, 30.498171, 26.233963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.801155, 30.813114, 26.135216> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757551, 0.376274, -0.533418,
		-0.327103, 0.488345, 0.809025,
		0.564907, 0.787361, -0.246866,
		42.970627, 31.049322, 26.061155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.244175, 31.124365, 26.430357>,  <42.575191, 30.498171, 26.233963>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.244175, 31.124365, 26.430357> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.488705, 31.239548, 26.135506>,  <42.635422, 31.308659, 25.958595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.488705, 31.239548, 26.135506>,  <42.244175, 31.124365, 26.430357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.488705, 31.239548, 26.135506> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753479, 0.496587, -0.430896,
		0.241968, 0.818829, 0.520548,
		0.611328, 0.287959, -0.737129,
		42.672104, 31.325935, 25.914368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.124046, 31.837015, 26.307709>,  <42.244175, 31.124365, 26.430357>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.124046, 31.837015, 26.307709> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.293945, 31.708275, 25.969242>,  <42.395885, 31.631031, 25.766163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.293945, 31.708275, 25.969242>,  <42.124046, 31.837015, 26.307709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.293945, 31.708275, 25.969242> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655650, 0.535152, -0.532669,
		0.624269, 0.781040, 0.016283,
		0.424750, -0.321853, -0.846167,
		42.421371, 31.611719, 25.715391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.988365, 32.395557, 25.858511>,  <42.124046, 31.837015, 26.307709>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.988365, 32.395557, 25.858511> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.092072, 32.111034, 25.597183>,  <42.154297, 31.940321, 25.440386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.092072, 32.111034, 25.597183>,  <41.988365, 32.395557, 25.858511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.092072, 32.111034, 25.597183> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535331, 0.457190, -0.710210,
		0.803866, 0.533878, -0.262248,
		0.259268, -0.711303, -0.653321,
		42.169853, 31.897644, 25.401188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.105827, 32.771599, 25.271345>,  <41.988365, 32.395557, 25.858511>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.105827, 32.771599, 25.271345> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.044071, 32.392414, 25.159966>,  <42.007015, 32.164906, 25.093138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.044071, 32.392414, 25.159966>,  <42.105827, 32.771599, 25.271345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.044071, 32.392414, 25.159966> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526251, 0.317427, -0.788860,
		0.836195, 0.024739, -0.547874,
		-0.154395, -0.947960, -0.278449,
		41.997753, 32.108025, 25.076431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.255894, 32.702988, 24.516159>,  <42.105827, 32.771599, 25.271345>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.255894, 32.702988, 24.516159> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.987320, 32.427261, 24.624981>,  <41.826176, 32.261826, 24.690273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.987320, 32.427261, 24.624981>,  <42.255894, 32.702988, 24.516159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.987320, 32.427261, 24.624981> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582425, 0.263866, -0.768867,
		0.458209, -0.674695, -0.578646,
		-0.671435, -0.689319, 0.272053,
		41.785889, 32.220467, 24.706596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.939449, 32.473030, 23.825319>,  <42.255894, 32.702988, 24.516159>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.939449, 32.473030, 23.825319> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.689575, 32.312378, 24.093189>,  <41.539650, 32.215988, 24.253912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.689575, 32.312378, 24.093189>,  <41.939449, 32.473030, 23.825319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.689575, 32.312378, 24.093189> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774732, 0.211367, -0.595915,
		0.097786, -0.891079, -0.443189,
		-0.624682, -0.401625, 0.669679,
		41.502171, 32.191891, 24.294092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.468494, 31.939444, 23.525160>,  <41.939449, 32.473030, 23.825319>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.468494, 31.939444, 23.525160> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.278702, 32.044601, 23.861198>,  <41.164825, 32.107697, 24.062820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.278702, 32.044601, 23.861198>,  <41.468494, 31.939444, 23.525160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.278702, 32.044601, 23.861198> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811834, 0.238248, -0.533070,
		-0.340291, -0.934947, 0.100382,
		-0.474477, 0.262893, 0.840095,
		41.136360, 32.123470, 24.113228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.818779, 31.629786, 23.416784>,  <41.468494, 31.939444, 23.525160>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.818779, 31.629786, 23.416784> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.774097, 31.910061, 23.698650>,  <40.747288, 32.078228, 23.867771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.774097, 31.910061, 23.698650>,  <40.818779, 31.629786, 23.416784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.774097, 31.910061, 23.698650> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833927, 0.319553, -0.449947,
		-0.540451, -0.637903, 0.548628,
		-0.111707, 0.700690, 0.704667,
		40.740585, 32.120266, 23.910051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.118881, 31.557793, 23.677608>,  <40.818779, 31.629786, 23.416784>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.118881, 31.557793, 23.677608> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.221508, 31.940731, 23.730762>,  <40.283085, 32.170494, 23.762655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.221508, 31.940731, 23.730762>,  <40.118881, 31.557793, 23.677608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.221508, 31.940731, 23.730762> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839996, 0.288874, -0.459302,
		-0.478098, 0.006223, 0.878285,
		0.256572, 0.957347, 0.132883,
		40.298481, 32.227936, 23.770628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.537731, 31.844524, 23.543653>,  <40.118881, 31.557793, 23.677608>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.537731, 31.844524, 23.543653> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.752560, 32.181664, 23.529991>,  <39.881458, 32.383945, 23.521793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.752560, 32.181664, 23.529991>,  <39.537731, 31.844524, 23.543653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.752560, 32.181664, 23.529991> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731949, 0.445514, -0.515526,
		-0.419293, 0.301874, 0.856193,
		0.537070, 0.842846, -0.034155,
		39.913681, 32.434517, 23.519745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.101318, 32.462784, 23.549690>,  <39.537731, 31.844524, 23.543653>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.101318, 32.462784, 23.549690> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.440639, 32.600746, 23.388985>,  <39.644234, 32.683525, 23.292561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.440639, 32.600746, 23.388985>,  <39.101318, 32.462784, 23.549690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.440639, 32.600746, 23.388985> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524241, 0.440345, -0.728881,
		-0.074481, 0.828936, 0.554362,
		0.848307, 0.344907, -0.401765,
		39.695133, 32.704220, 23.268456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.027668, 33.129257, 23.350990>,  <39.101318, 32.462784, 23.549690>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.027668, 33.129257, 23.350990> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.326527, 33.004044, 23.116459>,  <39.505840, 32.928917, 22.975740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.326527, 33.004044, 23.116459>,  <39.027668, 33.129257, 23.350990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.326527, 33.004044, 23.116459> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440086, 0.428093, -0.789342,
		0.498094, 0.847789, 0.182087,
		0.747146, -0.313033, -0.586330,
		39.550671, 32.910133, 22.940559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.491417, 33.027241, 23.928349>,  <39.027668, 33.129257, 23.350990>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.491417, 33.027241, 23.928349> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.274422, 33.117477, 24.252029>,  <38.144222, 33.171619, 24.446238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.274422, 33.117477, 24.252029>,  <38.491417, 33.027241, 23.928349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.274422, 33.117477, 24.252029> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516110, -0.670530, 0.532936,
		0.662823, 0.706751, 0.247325,
		-0.542491, 0.225595, 0.809203,
		38.111675, 33.185158, 24.494791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.885700, 33.058792, 24.573030>,  <38.491417, 33.027241, 23.928349>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.885700, 33.058792, 24.573030> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.521774, 32.968948, 24.712627>,  <38.303421, 32.915043, 24.796385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.521774, 32.968948, 24.712627>,  <38.885700, 33.058792, 24.573030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.521774, 32.968948, 24.712627> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404834, -0.665471, 0.627102,
		0.091392, 0.711828, 0.696382,
		-0.909811, -0.224607, 0.348992,
		38.248833, 32.901566, 24.817326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.940109, 33.135059, 25.364260>,  <38.885700, 33.058792, 24.573030>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.940109, 33.135059, 25.364260> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.638107, 32.906826, 25.235016>,  <38.456905, 32.769886, 25.157469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.638107, 32.906826, 25.235016>,  <38.940109, 33.135059, 25.364260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.638107, 32.906826, 25.235016> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309419, -0.744464, 0.591636,
		-0.578123, 0.346712, 0.738624,
		-0.755006, -0.570583, -0.323112,
		38.411606, 32.735653, 25.138083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.733044, 32.803280, 25.933313>,  <38.940109, 33.135059, 25.364260>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.733044, 32.803280, 25.933313> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.581085, 32.567398, 25.648235>,  <38.489910, 32.425869, 25.477188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.581085, 32.567398, 25.648235>,  <38.733044, 32.803280, 25.933313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.581085, 32.567398, 25.648235> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365131, -0.803489, 0.470196,
		-0.849916, -0.081601, 0.520561,
		-0.379896, -0.589700, -0.712694,
		38.467117, 32.390488, 25.434427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.249882, 32.146049, 26.206753>,  <38.733044, 32.803280, 25.933313>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.249882, 32.146049, 26.206753> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.397781, 32.057453, 25.845814>,  <38.486519, 32.004295, 25.629251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.397781, 32.057453, 25.845814>,  <38.249882, 32.146049, 26.206753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.397781, 32.057453, 25.845814> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395604, -0.841213, 0.368589,
		-0.840666, -0.493280, -0.223507,
		0.369835, -0.221440, -0.902323,
		38.508705, 31.991005, 25.575109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.281525, 31.491045, 26.311810>,  <38.249882, 32.146049, 26.206753>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.281525, 31.491045, 26.311810> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.499428, 31.527470, 25.978355>,  <38.630169, 31.549324, 25.778284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.499428, 31.527470, 25.978355>,  <38.281525, 31.491045, 26.311810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.499428, 31.527470, 25.978355> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432097, -0.882444, 0.185972,
		-0.718700, -0.461520, -0.520067,
		0.544760, 0.091061, -0.833633,
		38.662857, 31.554789, 25.728266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.321083, 30.769770, 25.921021>,  <38.281525, 31.491045, 26.311810>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.321083, 30.769770, 25.921021> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.635574, 30.975651, 25.784241>,  <38.824268, 31.099178, 25.702173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.635574, 30.975651, 25.784241>,  <38.321083, 30.769770, 25.921021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.635574, 30.975651, 25.784241> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606776, -0.747747, 0.269624,
		-0.116914, -0.419472, -0.900208,
		0.786228, 0.514701, -0.341948,
		38.871441, 31.130062, 25.681656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.695644, 30.316641, 25.453136>,  <38.321083, 30.769770, 25.921021>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.695644, 30.316641, 25.453136> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.953068, 30.590000, 25.591003>,  <39.107521, 30.754015, 25.673723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.953068, 30.590000, 25.591003>,  <38.695644, 30.316641, 25.453136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.953068, 30.590000, 25.591003> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627259, -0.728964, 0.274149,
		0.438604, 0.039765, -0.897800,
		0.643563, 0.683396, 0.344670,
		39.146137, 30.795019, 25.694405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.341175, 30.063427, 25.306978>,  <38.695644, 30.316641, 25.453136>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.341175, 30.063427, 25.306978> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.413185, 30.351292, 25.575211>,  <39.456390, 30.524012, 25.736149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.413185, 30.351292, 25.575211>,  <39.341175, 30.063427, 25.306978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.413185, 30.351292, 25.575211> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762800, -0.532562, 0.366760,
		0.621069, 0.445492, -0.644834,
		0.180025, 0.719663, 0.670579,
		39.467194, 30.567190, 25.776384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.941803, 30.089172, 25.233990>,  <39.341175, 30.063427, 25.306978>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.941803, 30.089172, 25.233990> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.895210, 30.269890, 25.587784>,  <39.867252, 30.378321, 25.800060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.895210, 30.269890, 25.587784>,  <39.941803, 30.089172, 25.233990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.895210, 30.269890, 25.587784> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845706, -0.421837, 0.326855,
		0.520780, 0.786088, -0.332948,
		-0.116486, 0.451796, 0.884484,
		39.860264, 30.405428, 25.853128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.554173, 30.385397, 25.432686>,  <39.941803, 30.089172, 25.233990>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.554173, 30.385397, 25.432686> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.377808, 30.378551, 25.791641>,  <40.271988, 30.374445, 26.007015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.377808, 30.378551, 25.791641>,  <40.554173, 30.385397, 25.432686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.377808, 30.378551, 25.791641> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853110, -0.318703, 0.413076,
		0.278931, 0.947700, 0.155118,
		-0.440909, -0.017113, 0.897389,
		40.245533, 30.373417, 26.060858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.029495, 30.751287, 25.977648>,  <40.554173, 30.385397, 25.432686>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.029495, 30.751287, 25.977648> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.768906, 30.511978, 26.164261>,  <40.612553, 30.368393, 26.276228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.768906, 30.511978, 26.164261>,  <41.029495, 30.751287, 25.977648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.768906, 30.511978, 26.164261> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723879, -0.306096, 0.618308,
		-0.227112, 0.740525, 0.632490,
		-0.651475, -0.598271, 0.466532,
		40.573463, 30.332497, 26.304220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.137035, 30.943077, 26.694616>,  <41.029495, 30.751287, 25.977648>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.137035, 30.943077, 26.694616> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.980495, 30.575008, 26.689980>,  <40.886574, 30.354168, 26.687199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.980495, 30.575008, 26.689980>,  <41.137035, 30.943077, 26.694616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.980495, 30.575008, 26.689980> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651443, -0.285908, 0.702765,
		-0.649977, 0.267474, 0.711328,
		-0.391346, -0.920171, -0.011589,
		40.863091, 30.298958, 26.686502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.808628, 30.849215, 27.282610>,  <41.137035, 30.943077, 26.694616>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.808628, 30.849215, 27.282610> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.904797, 30.487629, 27.141163>,  <40.962498, 30.270678, 27.056293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.904797, 30.487629, 27.141163>,  <40.808628, 30.849215, 27.282610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.904797, 30.487629, 27.141163> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661330, -0.114121, 0.741363,
		-0.710520, -0.412100, 0.570380,
		0.240424, -0.903963, -0.353620,
		40.976925, 30.216440, 27.035076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.789146, 30.521521, 27.889105>,  <40.808628, 30.849215, 27.282610>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.789146, 30.521521, 27.889105> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.005779, 30.296650, 27.639095>,  <41.135757, 30.161728, 27.489090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.005779, 30.296650, 27.639095>,  <40.789146, 30.521521, 27.889105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.005779, 30.296650, 27.639095> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654690, -0.184328, 0.733079,
		-0.527327, -0.806215, 0.268222,
		0.541578, -0.562174, -0.625022,
		41.168251, 30.127998, 27.451590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.002178, 29.894323, 28.227839>,  <40.789146, 30.521521, 27.889105>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.002178, 29.894323, 28.227839> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.266891, 29.924992, 27.929531>,  <41.425720, 29.943392, 27.750547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.266891, 29.924992, 27.929531>,  <41.002178, 29.894323, 28.227839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.266891, 29.924992, 27.929531> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749698, -0.066486, 0.658432,
		0.000899, -0.994837, -0.101479,
		0.661780, 0.076671, -0.745768,
		41.465424, 29.947992, 27.705801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.448574, 29.216728, 28.333492>,  <41.002178, 29.894323, 28.227839>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.448574, 29.216728, 28.333492> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.669277, 29.459919, 28.105133>,  <41.801701, 29.605833, 27.968117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.669277, 29.459919, 28.105133>,  <41.448574, 29.216728, 28.333492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.669277, 29.459919, 28.105133> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798519, -0.187565, 0.572003,
		0.240684, -0.771481, -0.588972,
		0.551760, 0.607977, -0.570898,
		41.834805, 29.642313, 27.933865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.988014, 28.813242, 28.047731>,  <41.448574, 29.216728, 28.333492>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.988014, 28.813242, 28.047731> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.091709, 29.199516, 28.054047>,  <42.153927, 29.431280, 28.057837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.091709, 29.199516, 28.054047>,  <41.988014, 28.813242, 28.047731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.091709, 29.199516, 28.054047> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784936, -0.220184, 0.579132,
		0.562735, -0.137741, -0.815081,
		0.259238, 0.965685, 0.015787,
		42.169479, 29.489222, 28.058783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.710876, 28.798647, 27.967615>,  <41.988014, 28.813242, 28.047731>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.710876, 28.798647, 27.967615> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.656284, 29.174534, 28.093033>,  <42.623531, 29.400066, 28.168283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.656284, 29.174534, 28.093033>,  <42.710876, 28.798647, 27.967615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.656284, 29.174534, 28.093033> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825172, -0.067292, 0.560859,
		0.548147, 0.335271, -0.766243,
		-0.136477, 0.939716, 0.313542,
		42.615341, 29.456448, 28.187096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.257896, 29.220772, 27.745607>,  <42.710876, 28.798647, 27.967615>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.257896, 29.220772, 27.745607> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.078590, 29.382393, 28.064556>,  <42.971008, 29.479366, 28.255926>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.078590, 29.382393, 28.064556>,  <43.257896, 29.220772, 27.745607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.078590, 29.382393, 28.064556> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829220, -0.145182, 0.539737,
		0.333847, 0.903141, -0.269969,
		-0.448263, 0.404053, 0.797371,
		42.944111, 29.503609, 28.303768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.802456, 29.697203, 28.081299>,  <43.257896, 29.220772, 27.745607>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.802456, 29.697203, 28.081299> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.525681, 29.631226, 28.362446>,  <43.359615, 29.591640, 28.531134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.525681, 29.631226, 28.362446>,  <43.802456, 29.697203, 28.081299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.525681, 29.631226, 28.362446> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720484, -0.095533, 0.686859,
		-0.046144, 0.981666, 0.184940,
		-0.691934, -0.164941, 0.702866,
		43.318100, 29.581743, 28.573305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<27.925608, 24.106781, 28.319511> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.052628, 24.168289, 28.693787>,  <28.128839, 24.205194, 28.918352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.052628, 24.168289, 28.693787>,  <27.925608, 24.106781, 28.319511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.052628, 24.168289, 28.693787> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215179, -0.949336, 0.229041,
		0.923504, -0.274073, -0.268374,
		0.317551, 0.153772, 0.935690,
		28.147892, 24.214420, 28.974493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.298702, 23.492186, 28.522408>,  <27.925608, 24.106781, 28.319511>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.298702, 23.492186, 28.522408> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.198553, 23.660557, 28.871151>,  <28.138464, 23.761580, 29.080397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.198553, 23.660557, 28.871151>,  <28.298702, 23.492186, 28.522408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.198553, 23.660557, 28.871151> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215412, -0.902186, 0.373709,
		0.943881, -0.094243, 0.316554,
		-0.250371, 0.420927, 0.871857,
		28.123442, 23.786835, 29.132708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.421761, 22.909620, 28.990740>,  <28.298702, 23.492186, 28.522408>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.421761, 22.909620, 28.990740> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.218605, 23.168148, 29.218536>,  <28.096712, 23.323265, 29.355215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.218605, 23.168148, 29.218536>,  <28.421761, 22.909620, 28.990740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.218605, 23.168148, 29.218536> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173253, -0.724239, 0.667430,
		0.843821, 0.240313, 0.479808,
		-0.507887, 0.646319, 0.569493,
		28.066238, 23.362043, 29.389383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.700283, 22.865946, 29.739182>,  <28.421761, 22.909620, 28.990740>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.700283, 22.865946, 29.739182> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.331331, 23.011681, 29.790516>,  <28.109961, 23.099121, 29.821318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.331331, 23.011681, 29.790516>,  <28.700283, 22.865946, 29.739182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.331331, 23.011681, 29.790516> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198007, -0.731223, 0.652768,
		0.331672, 0.576689, 0.746608,
		-0.922381, 0.364338, 0.128338,
		28.054617, 23.120981, 29.829018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.624149, 22.829166, 30.398497>,  <28.700283, 22.865946, 29.739182>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.624149, 22.829166, 30.398497> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.244919, 22.875748, 30.280117>,  <28.017380, 22.903696, 30.209089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.244919, 22.875748, 30.280117>,  <28.624149, 22.829166, 30.398497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.244919, 22.875748, 30.280117> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292888, -0.682379, 0.669758,
		-0.123953, 0.721662, 0.681057,
		-0.948078, 0.116455, -0.295949,
		27.960495, 22.910685, 30.191332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.185513, 22.952959, 31.061789>,  <28.624149, 22.829166, 30.398497>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.185513, 22.952959, 31.061789> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.953876, 22.814579, 30.766499>,  <27.814896, 22.731550, 30.589325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.953876, 22.814579, 30.766499>,  <28.185513, 22.952959, 31.061789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.953876, 22.814579, 30.766499> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320110, -0.736297, 0.596152,
		-0.749791, 0.581537, 0.315639,
		-0.579089, -0.345950, -0.738224,
		27.780149, 22.710794, 30.545031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.673973, 22.714087, 31.387686>,  <28.185513, 22.952959, 31.061789>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.673973, 22.714087, 31.387686> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.650396, 22.521240, 31.038036>,  <27.636251, 22.405533, 30.828247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.650396, 22.521240, 31.038036>,  <27.673973, 22.714087, 31.387686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.650396, 22.521240, 31.038036> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385367, -0.796778, 0.465443,
		-0.920879, 0.364291, -0.138830,
		-0.058940, -0.482117, -0.874122,
		27.632715, 22.376604, 30.775801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.009178, 22.322895, 31.331703>,  <27.673973, 22.714087, 31.387686>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.009178, 22.322895, 31.331703> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.266350, 22.145756, 31.081734>,  <27.420652, 22.039473, 30.931753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.266350, 22.145756, 31.081734>,  <27.009178, 22.322895, 31.331703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.266350, 22.145756, 31.081734> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073949, -0.847984, 0.524838,
		-0.762346, -0.291222, -0.577943,
		0.642931, -0.442846, -0.624922,
		27.459229, 22.012901, 30.894257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.697447, 21.727812, 31.121803>,  <27.009178, 22.322895, 31.331703>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.697447, 21.727812, 31.121803> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.091185, 21.665039, 31.089703>,  <27.327427, 21.627375, 31.070442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.091185, 21.665039, 31.089703>,  <26.697447, 21.727812, 31.121803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.091185, 21.665039, 31.089703> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103367, -0.882739, 0.458352,
		-0.142772, -0.442880, -0.885140,
		0.984343, -0.156934, -0.080251,
		27.386488, 21.617958, 31.065628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.756264, 20.954416, 31.057222>,  <26.697447, 21.727812, 31.121803>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.756264, 20.954416, 31.057222> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.116838, 21.098419, 31.153397>,  <27.333183, 21.184820, 31.211102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.116838, 21.098419, 31.153397>,  <26.756264, 20.954416, 31.057222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.116838, 21.098419, 31.153397> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198930, -0.837744, 0.508539,
		0.384502, -0.410585, -0.826788,
		0.901435, 0.360007, 0.240436,
		27.387268, 21.206421, 31.225527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.144133, 20.348801, 30.919018>,  <26.756264, 20.954416, 31.057222>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.144133, 20.348801, 30.919018> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.361986, 20.591015, 31.151123>,  <27.492699, 20.736343, 31.290386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.361986, 20.591015, 31.151123>,  <27.144133, 20.348801, 30.919018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.361986, 20.591015, 31.151123> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258992, -0.779497, 0.570358,
		0.797684, -0.160352, -0.581367,
		0.544632, 0.605535, 0.580262,
		27.525375, 20.772675, 31.325201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.846880, 20.044001, 30.881912>,  <27.144133, 20.348801, 30.919018>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.846880, 20.044001, 30.881912> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.829134, 20.258900, 31.218815>,  <27.818485, 20.387840, 31.420956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.829134, 20.258900, 31.218815>,  <27.846880, 20.044001, 30.881912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.829134, 20.258900, 31.218815> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249269, -0.810467, 0.530103,
		0.967417, 0.233467, -0.097962,
		-0.044366, 0.537250, 0.842256,
		27.815825, 20.420074, 31.471491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.412941, 19.832262, 31.387911>,  <27.846880, 20.044001, 30.881912>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.412941, 19.832262, 31.387911> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.117004, 20.012615, 31.587646>,  <27.939442, 20.120827, 31.707487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.117004, 20.012615, 31.587646>,  <28.412941, 19.832262, 31.387911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.117004, 20.012615, 31.587646> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116274, -0.645343, 0.754992,
		0.662657, 0.616635, 0.425026,
		-0.739842, 0.450881, 0.499339,
		27.895052, 20.147881, 31.737448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.544924, 19.127918, 31.669060>,  <28.412941, 19.832262, 31.387911>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.544924, 19.127918, 31.669060> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.683907, 18.892033, 31.377441>,  <28.767296, 18.750502, 31.202471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.683907, 18.892033, 31.377441>,  <28.544924, 19.127918, 31.669060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.683907, 18.892033, 31.377441> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934058, 0.149244, 0.324442,
		-0.082523, -0.793701, 0.602684,
		0.347457, -0.589716, -0.729047,
		28.788143, 18.715118, 31.158728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.688330, 18.422144, 31.939877>,  <28.544924, 19.127918, 31.669060>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.688330, 18.422144, 31.939877> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.943039, 18.176712, 31.753098>,  <29.095865, 18.029453, 31.641031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.943039, 18.176712, 31.753098>,  <28.688330, 18.422144, 31.939877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.943039, 18.176712, 31.753098> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228316, 0.728484, -0.645897,
		0.736473, 0.304679, 0.603969,
		0.636773, -0.613581, -0.466946,
		29.134071, 17.992638, 31.613014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.293436, 18.813072, 31.759947>,  <28.688330, 18.422144, 31.939877>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.293436, 18.813072, 31.759947> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.310541, 18.501972, 31.509098>,  <29.320805, 18.315313, 31.358589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.310541, 18.501972, 31.509098>,  <29.293436, 18.813072, 31.759947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.310541, 18.501972, 31.509098> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382427, 0.592632, -0.708899,
		0.922996, -0.209514, 0.322773,
		0.042762, -0.777748, -0.627120,
		29.323370, 18.268648, 31.320961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.967844, 18.845127, 31.553015>,  <29.293436, 18.813072, 31.759947>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.967844, 18.845127, 31.553015> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.751940, 18.631695, 31.292568>,  <29.622396, 18.503635, 31.136301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.751940, 18.631695, 31.292568>,  <29.967844, 18.845127, 31.553015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.751940, 18.631695, 31.292568> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311098, 0.592276, -0.743255,
		0.782225, -0.603740, -0.153692,
		-0.539761, -0.533579, -0.651116,
		29.590012, 18.471621, 31.097233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.421675, 18.779537, 30.954037>,  <29.967844, 18.845127, 31.553015>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.421675, 18.779537, 30.954037> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.048323, 18.716072, 30.825275>,  <29.824310, 18.677992, 30.748018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.048323, 18.716072, 30.825275>,  <30.421675, 18.779537, 30.954037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.048323, 18.716072, 30.825275> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147674, 0.647708, -0.747440,
		0.327093, -0.745184, -0.581129,
		-0.933383, -0.158665, -0.321905,
		29.768309, 18.668472, 30.728704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.508028, 18.881365, 30.261969>,  <30.421675, 18.779537, 30.954037>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.508028, 18.881365, 30.261969> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.111122, 18.915474, 30.298058>,  <29.872978, 18.935940, 30.319710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.111122, 18.915474, 30.298058>,  <30.508028, 18.881365, 30.261969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.111122, 18.915474, 30.298058> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002452, 0.740069, -0.672526,
		-0.124118, -0.667103, -0.734553,
		-0.992264, 0.085274, 0.090221,
		29.813442, 18.941055, 30.325123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.225084, 18.826508, 29.570744>,  <30.508028, 18.881365, 30.261969>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.225084, 18.826508, 29.570744> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.956505, 19.019310, 29.795895>,  <29.795357, 19.134991, 29.930984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.956505, 19.019310, 29.795895>,  <30.225084, 18.826508, 29.570744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.956505, 19.019310, 29.795895> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110522, 0.685933, -0.719223,
		-0.732764, -0.545130, -0.407296,
		-0.671447, 0.482006, 0.562876,
		29.755070, 19.163912, 29.964758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.659517, 19.128288, 29.096939>,  <30.225084, 18.826508, 29.570744>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.659517, 19.128288, 29.096939> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.575916, 19.327332, 29.433678>,  <29.525757, 19.446758, 29.635721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.575916, 19.327332, 29.433678>,  <29.659517, 19.128288, 29.096939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.575916, 19.327332, 29.433678> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240903, 0.808128, -0.537489,
		-0.947778, -0.315139, -0.049024,
		-0.209001, 0.497610, 0.841845,
		29.513216, 19.476614, 29.686232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.998892, 19.583773, 28.994057>,  <29.659517, 19.128288, 29.096939>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.998892, 19.583773, 28.994057> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.232067, 19.738693, 29.279766>,  <29.371971, 19.831646, 29.451191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.232067, 19.738693, 29.279766>,  <28.998892, 19.583773, 28.994057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.232067, 19.738693, 29.279766> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020378, 0.885777, -0.463664,
		-0.812262, 0.255732, 0.524244,
		0.582937, 0.387299, 0.714271,
		29.406948, 19.854883, 29.494047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.783092, 20.223642, 29.020781>,  <28.998892, 19.583773, 28.994057>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.783092, 20.223642, 29.020781> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.126598, 20.261292, 29.222240>,  <29.332703, 20.283880, 29.343117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.126598, 20.261292, 29.222240>,  <28.783092, 20.223642, 29.020781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.126598, 20.261292, 29.222240> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047472, 0.964137, -0.261123,
		-0.510165, 0.248152, 0.823500,
		0.858765, 0.094123, 0.503649,
		29.384228, 20.289528, 29.373335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.616547, 20.786243, 29.338226>,  <28.783092, 20.223642, 29.020781>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.616547, 20.786243, 29.338226> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.013866, 20.745186, 29.316986>,  <29.252258, 20.720551, 29.304241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.013866, 20.745186, 29.316986>,  <28.616547, 20.786243, 29.338226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.013866, 20.745186, 29.316986> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077105, 0.930886, -0.357080,
		0.086083, 0.350593, 0.932563,
		0.993300, -0.102644, -0.053101,
		29.311857, 20.714394, 29.301056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.839594, 21.477285, 29.542444>,  <28.616547, 20.786243, 29.338226>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.839594, 21.477285, 29.542444> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.156303, 21.305737, 29.368473>,  <29.346329, 21.202806, 29.264090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.156303, 21.305737, 29.368473>,  <28.839594, 21.477285, 29.542444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.156303, 21.305737, 29.368473> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278413, 0.887173, -0.367981,
		0.543676, 0.170266, 0.821843,
		0.791772, -0.428874, -0.434930,
		29.393835, 21.177074, 29.237993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.308693, 21.940311, 29.527798>,  <28.839594, 21.477285, 29.542444>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.308693, 21.940311, 29.527798> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.395027, 21.679321, 29.237228>,  <29.446827, 21.522726, 29.062887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.395027, 21.679321, 29.237228>,  <29.308693, 21.940311, 29.527798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.395027, 21.679321, 29.237228> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317491, 0.750427, -0.579705,
		0.923371, -0.105511, 0.369125,
		0.215836, -0.652477, -0.726422,
		29.459778, 21.483578, 29.019302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.072941, 22.139549, 29.285717>,  <29.308693, 21.940311, 29.527798>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.072941, 22.139549, 29.285717> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.925283, 21.902504, 28.999348>,  <29.836689, 21.760277, 28.827526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.925283, 21.902504, 28.999348>,  <30.072941, 22.139549, 29.285717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.925283, 21.902504, 28.999348> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394337, 0.597673, -0.698058,
		0.841566, -0.539996, 0.013064,
		-0.369141, -0.592613, -0.715922,
		29.814541, 21.724720, 28.784571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.701181, 21.919376, 28.856508>,  <30.072941, 22.139549, 29.285717>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.701181, 21.919376, 28.856508> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.363050, 21.908146, 28.643105>,  <30.160172, 21.901407, 28.515062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.363050, 21.908146, 28.643105>,  <30.701181, 21.919376, 28.856508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.363050, 21.908146, 28.643105> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442667, 0.522287, -0.728877,
		0.299110, -0.852308, -0.429075,
		-0.845328, -0.028077, -0.533509,
		30.109451, 21.899723, 28.483051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.426811, 22.043623, 28.749760>,  <30.701181, 21.919376, 28.856508>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.426811, 22.043623, 28.749760> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.703732, 22.282810, 28.911327>,  <31.869884, 22.426323, 29.008268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.703732, 22.282810, 28.911327>,  <31.426811, 22.043623, 28.749760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.703732, 22.282810, 28.911327> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028298, -0.581818, 0.812827,
		0.721053, -0.551292, -0.419715,
		0.692302, 0.597968, 0.403921,
		31.911423, 22.462200, 29.032503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.917906, 21.670849, 28.870808>,  <31.426811, 22.043623, 28.749760>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.917906, 21.670849, 28.870808> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.988890, 21.957092, 29.141041>,  <32.031479, 22.128838, 29.303181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.988890, 21.957092, 29.141041>,  <31.917906, 21.670849, 28.870808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.988890, 21.957092, 29.141041> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025542, -0.682899, 0.730066,
		0.983797, -0.146812, -0.102908,
		0.177459, 0.715608, 0.675583,
		32.042126, 22.171774, 29.343716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.427269, 21.411192, 29.346464>,  <31.917906, 21.670849, 28.870808>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.427269, 21.411192, 29.346464> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.248913, 21.699341, 29.558971>,  <32.141899, 21.872231, 29.686476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.248913, 21.699341, 29.558971>,  <32.427269, 21.411192, 29.346464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.248913, 21.699341, 29.558971> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091730, -0.627188, 0.773447,
		0.890375, 0.296139, 0.345737,
		-0.445890, 0.720373, 0.531268,
		32.115147, 21.915453, 29.718351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.733086, 21.417278, 29.997801>,  <32.427269, 21.411192, 29.346464>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.733086, 21.417278, 29.997801> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.409237, 21.642570, 30.063866>,  <32.214928, 21.777746, 30.103504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.409237, 21.642570, 30.063866>,  <32.733086, 21.417278, 29.997801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.409237, 21.642570, 30.063866> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184520, -0.511364, 0.839320,
		0.557188, 0.649060, 0.517941,
		-0.809626, 0.563229, 0.165161,
		32.166348, 21.811539, 30.113415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.862091, 21.612753, 30.691839>,  <32.733086, 21.417278, 29.997801>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.862091, 21.612753, 30.691839> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.475124, 21.645485, 30.596001>,  <32.242943, 21.665125, 30.538498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.475124, 21.645485, 30.596001>,  <32.862091, 21.612753, 30.691839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.475124, 21.645485, 30.596001> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247300, -0.508297, 0.824910,
		-0.054283, 0.857285, 0.511973,
		-0.967417, 0.081832, -0.239598,
		32.184898, 21.670034, 30.524120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.425117, 21.936506, 31.237642>,  <32.862091, 21.612753, 30.691839>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.425117, 21.936506, 31.237642> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.182652, 21.709187, 31.015076>,  <32.037170, 21.572796, 30.881535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.182652, 21.709187, 31.015076>,  <32.425117, 21.936506, 31.237642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.182652, 21.709187, 31.015076> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236111, -0.539477, 0.808218,
		-0.759482, 0.621291, 0.192832,
		-0.606167, -0.568297, -0.556417,
		32.000801, 21.538698, 30.848150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.820885, 21.857412, 31.641455>,  <32.425117, 21.936506, 31.237642>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.820885, 21.857412, 31.641455> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.823019, 21.554935, 31.379723>,  <31.824299, 21.373449, 31.222683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.823019, 21.554935, 31.379723>,  <31.820885, 21.857412, 31.641455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.823019, 21.554935, 31.379723> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204102, -0.641388, 0.739571,
		-0.978935, 0.129606, -0.157761,
		0.005333, -0.756191, -0.654330,
		31.824619, 21.328077, 31.183424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.324821, 22.140339, 32.133781>,  <31.820885, 21.857412, 31.641455>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.324821, 22.140339, 32.133781> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.522243, 22.243687, 32.465961>,  <31.640697, 22.305695, 32.665268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.522243, 22.243687, 32.465961>,  <31.324821, 22.140339, 32.133781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.522243, 22.243687, 32.465961> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117370, 0.926333, -0.357954,
		-0.861757, 0.274140, 0.426874,
		0.493557, 0.258368, 0.830450,
		31.670311, 22.321198, 32.715096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.968288, 22.703743, 32.437798>,  <31.324821, 22.140339, 32.133781>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.968288, 22.703743, 32.437798> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.340378, 22.713535, 32.584267>,  <31.563631, 22.719410, 32.672150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.340378, 22.713535, 32.584267>,  <30.968288, 22.703743, 32.437798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.340378, 22.713535, 32.584267> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102789, 0.940458, -0.323995,
		-0.352303, 0.339026, 0.872321,
		0.930224, 0.024479, 0.366175,
		31.619446, 22.720879, 32.694118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.057081, 23.315105, 32.526447>,  <30.968288, 22.703743, 32.437798>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.057081, 23.315105, 32.526447> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.444191, 23.217522, 32.551418>,  <31.676456, 23.158972, 32.566402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.444191, 23.217522, 32.551418>,  <31.057081, 23.315105, 32.526447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.444191, 23.217522, 32.551418> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248062, 0.880908, -0.403072,
		0.043338, 0.405569, 0.913036,
		0.967774, -0.243958, 0.062430,
		31.734524, 23.144335, 32.570148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.362274, 23.920891, 32.633568>,  <31.057081, 23.315105, 32.526447>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.362274, 23.920891, 32.633568> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.671047, 23.692341, 32.522102>,  <31.856312, 23.555212, 32.455223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.671047, 23.692341, 32.522102>,  <31.362274, 23.920891, 32.633568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.671047, 23.692341, 32.522102> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399708, 0.777107, -0.486146,
		0.494318, 0.263890, 0.828258,
		0.771934, -0.571373, -0.278660,
		31.902628, 23.520929, 32.438503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.006546, 24.270966, 32.884937>,  <31.362274, 23.920891, 32.633568>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.006546, 24.270966, 32.884937> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.083134, 24.022888, 32.580647>,  <32.129086, 23.874043, 32.398071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.083134, 24.022888, 32.580647>,  <32.006546, 24.270966, 32.884937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.083134, 24.022888, 32.580647> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359352, 0.765542, -0.533677,
		0.913349, -0.171186, 0.369444,
		0.191467, -0.620194, -0.760723,
		32.140575, 23.836830, 32.352428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.605492, 24.447573, 32.726955>,  <32.006546, 24.270966, 32.884937>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.605492, 24.447573, 32.726955> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.514458, 24.252625, 32.389751>,  <32.459835, 24.135656, 32.187428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.514458, 24.252625, 32.389751>,  <32.605492, 24.447573, 32.726955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.514458, 24.252625, 32.389751> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388938, 0.748179, -0.537545,
		0.892710, -0.450220, 0.019280,
		-0.227588, -0.487370, -0.843015,
		32.446182, 24.106413, 32.136848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.223717, 24.378225, 32.301895>,  <32.605492, 24.447573, 32.726955>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.223717, 24.378225, 32.301895> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.899094, 24.345089, 32.070545>,  <32.704319, 24.325207, 31.931734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.899094, 24.345089, 32.070545>,  <33.223717, 24.378225, 32.301895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.899094, 24.345089, 32.070545> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312347, 0.775066, -0.549283,
		0.493781, -0.626427, -0.603133,
		-0.811554, -0.082838, -0.578376,
		32.655628, 24.320238, 31.897032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<29.227470, 22.232519, 34.533409> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.014231, 22.022251, 34.268238>,  <28.886288, 21.896091, 34.109135>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.014231, 22.022251, 34.268238>,  <29.227470, 22.232519, 34.533409>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.014231, 22.022251, 34.268238> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169178, 0.833966, -0.525243,
		0.828956, -0.167861, -0.533529,
		-0.533113, -0.525665, -0.662923,
		28.854301, 21.864550, 34.069359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.456202, 22.402269, 33.862545>,  <29.227470, 22.232519, 34.533409>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.456202, 22.402269, 33.862545> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.085850, 22.263981, 33.801582>,  <28.863640, 22.181007, 33.765007>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.085850, 22.263981, 33.801582>,  <29.456202, 22.402269, 33.862545>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.085850, 22.263981, 33.801582> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160074, 0.724325, -0.670619,
		0.342236, -0.596516, -0.725978,
		-0.925878, -0.345720, -0.152403,
		28.808086, 22.160265, 33.755863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.426657, 22.380005, 33.105865>,  <29.456202, 22.402269, 33.862545>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.426657, 22.380005, 33.105865> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.065145, 22.399406, 33.275967>,  <28.848240, 22.411047, 33.378025>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.065145, 22.399406, 33.275967>,  <29.426657, 22.380005, 33.105865>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.065145, 22.399406, 33.275967> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203332, 0.825625, -0.526308,
		-0.376624, -0.562131, -0.736318,
		-0.903776, 0.048503, 0.425249,
		28.794012, 22.413958, 33.403542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.974714, 22.469826, 32.495457>,  <29.426657, 22.380005, 33.105865>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.974714, 22.469826, 32.495457> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.766066, 22.557735, 32.825211>,  <28.640877, 22.610481, 33.023064>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.766066, 22.557735, 32.825211>,  <28.974714, 22.469826, 32.495457>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.766066, 22.557735, 32.825211> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189853, 0.912127, -0.363291,
		-0.831786, -0.346013, -0.434059,
		-0.521620, 0.219773, 0.824386,
		28.609579, 22.623667, 33.072525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.292627, 22.705378, 32.336926>,  <28.974714, 22.469826, 32.495457>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.292627, 22.705378, 32.336926> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.373947, 22.850208, 32.700809>,  <28.422739, 22.937107, 32.919140>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.373947, 22.850208, 32.700809>,  <28.292627, 22.705378, 32.336926>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.373947, 22.850208, 32.700809> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235719, 0.919884, -0.313448,
		-0.950318, -0.150711, 0.272362,
		0.203301, 0.362077, 0.909708,
		28.434938, 22.958832, 32.973721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.761093, 23.207935, 32.387348>,  <28.292627, 22.705378, 32.336926>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.761093, 23.207935, 32.387348> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.028372, 23.300129, 32.670300>,  <28.188740, 23.355446, 32.840073>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.028372, 23.300129, 32.670300>,  <27.761093, 23.207935, 32.387348>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.028372, 23.300129, 32.670300> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106723, 0.970664, -0.215459,
		-0.736290, 0.068476, 0.673192,
		0.668197, 0.230485, 0.707382,
		28.228830, 23.369274, 32.882515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.516926, 23.893551, 32.672493>,  <27.761093, 23.207935, 32.387348>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.516926, 23.893551, 32.672493> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.896070, 23.872154, 32.798161>,  <28.123556, 23.859316, 32.873562>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.896070, 23.872154, 32.798161>,  <27.516926, 23.893551, 32.672493>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.896070, 23.872154, 32.798161> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079786, 0.994250, -0.071428,
		-0.308537, 0.092770, 0.946678,
		0.947860, -0.053493, 0.314165,
		28.180429, 23.856106, 32.892410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.473539, 24.400614, 33.206867>,  <27.516926, 23.893551, 32.672493>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.473539, 24.400614, 33.206867> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.839546, 24.346630, 33.054798>,  <28.059151, 24.314240, 32.963558>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.839546, 24.346630, 33.054798>,  <27.473539, 24.400614, 33.206867>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.839546, 24.346630, 33.054798> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043881, 0.970086, -0.238765,
		0.401021, 0.201791, 0.893567,
		0.915017, -0.134961, -0.380170,
		28.114052, 24.306143, 32.940746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.798073, 24.902716, 33.622154>,  <27.473539, 24.400614, 33.206867>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.798073, 24.902716, 33.622154> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.021172, 24.815575, 33.301788>,  <28.155031, 24.763290, 33.109570>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.021172, 24.815575, 33.301788>,  <27.798073, 24.902716, 33.622154>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.021172, 24.815575, 33.301788> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135483, 0.975895, -0.171097,
		0.818877, -0.013081, 0.573819,
		0.557749, -0.217850, -0.800910,
		28.188496, 24.750219, 33.061516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.240688, 25.442526, 33.622147>,  <27.798073, 24.902716, 33.622154>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.240688, 25.442526, 33.622147> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.245214, 25.280075, 33.256649>,  <28.247931, 25.182604, 33.037350>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.245214, 25.280075, 33.256649>,  <28.240688, 25.442526, 33.622147>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.245214, 25.280075, 33.256649> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036089, 0.913375, -0.405516,
		0.999285, -0.028387, 0.024992,
		0.011315, -0.406128, -0.913746,
		28.248610, 25.158237, 32.982525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.821505, 25.755644, 33.295517>,  <28.240688, 25.442526, 33.622147>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.821505, 25.755644, 33.295517> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.569897, 25.625168, 33.013260>,  <28.418932, 25.546883, 32.843906>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.569897, 25.625168, 33.013260>,  <28.821505, 25.755644, 33.295517>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.569897, 25.625168, 33.013260> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028610, 0.897382, -0.440326,
		0.776862, -0.297162, -0.555139,
		-0.629020, -0.326190, -0.705644,
		28.381191, 25.527311, 32.801567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.104740, 25.997334, 32.644192>,  <28.821505, 25.755644, 33.295517>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.104740, 25.997334, 32.644192> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.719584, 25.934139, 32.556664>,  <28.488489, 25.896223, 32.504147>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.719584, 25.934139, 32.556664>,  <29.104740, 25.997334, 32.644192>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.719584, 25.934139, 32.556664> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013500, 0.837944, -0.545589,
		0.269556, -0.522388, -0.808981,
		-0.962890, -0.157987, -0.218821,
		28.430716, 25.886744, 32.491016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.835426, 25.700209, 32.617897>,  <29.104740, 25.997334, 32.644192>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.835426, 25.700209, 32.617897> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.173841, 25.911118, 32.649391>,  <30.376890, 26.037663, 32.668289>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.173841, 25.911118, 32.649391>,  <29.835426, 25.700209, 32.617897>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.173841, 25.911118, 32.649391> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176161, -0.415892, 0.892189,
		0.503176, -0.740955, -0.444746,
		0.846039, 0.527275, 0.078740,
		30.427652, 26.069300, 32.673012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.343142, 25.232344, 32.532871>,  <29.835426, 25.700209, 32.617897>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.343142, 25.232344, 32.532871> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.438744, 25.546131, 32.761776>,  <30.496105, 25.734404, 32.899120>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.438744, 25.546131, 32.761776>,  <30.343142, 25.232344, 32.532871>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.438744, 25.546131, 32.761776> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071380, -0.601942, 0.795343,
		0.968391, -0.149243, -0.199862,
		0.239005, 0.784470, 0.572262,
		30.510445, 25.781471, 32.933456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.807308, 25.004637, 32.920910>,  <30.343142, 25.232344, 32.532871>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.807308, 25.004637, 32.920910> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.733875, 25.337666, 33.129955>,  <30.689816, 25.537483, 33.255383>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.733875, 25.337666, 33.129955>,  <30.807308, 25.004637, 32.920910>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.733875, 25.337666, 33.129955> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104298, -0.512149, 0.852540,
		0.977456, 0.211018, 0.007185,
		-0.183581, 0.832571, 0.522612,
		30.678801, 25.587437, 33.286739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.471781, 25.159050, 33.171715>,  <30.807308, 25.004637, 32.920910>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.471781, 25.159050, 33.171715> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.151329, 25.293072, 33.370083>,  <30.959059, 25.373486, 33.489101>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.151329, 25.293072, 33.370083>,  <31.471781, 25.159050, 33.171715>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.151329, 25.293072, 33.370083> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219844, -0.605935, 0.764533,
		0.556652, 0.721513, 0.411772,
		-0.801128, 0.335054, 0.495916,
		30.910990, 25.393587, 33.518856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.733675, 25.197515, 33.878323>,  <31.471781, 25.159050, 33.171715>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.733675, 25.197515, 33.878323> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.335587, 25.224598, 33.906467>,  <31.096733, 25.240847, 33.923355>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.335587, 25.224598, 33.906467>,  <31.733675, 25.197515, 33.878323>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.335587, 25.224598, 33.906467> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020552, -0.559196, 0.828780,
		0.095458, 0.826266, 0.555133,
		-0.995221, 0.067704, 0.070361,
		31.037020, 25.244909, 33.927574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.657623, 25.094177, 34.578442>,  <31.733675, 25.197515, 33.878323>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.657623, 25.094177, 34.578442> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.290226, 25.053249, 34.425655>,  <31.069788, 25.028692, 34.333984>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.290226, 25.053249, 34.425655>,  <31.657623, 25.094177, 34.578442>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.290226, 25.053249, 34.425655> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257887, -0.577265, 0.774764,
		-0.299768, 0.810121, 0.503829,
		-0.918495, -0.102318, -0.381965,
		31.014677, 25.022554, 34.311066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.260937, 25.006886, 35.168839>,  <31.657623, 25.094177, 34.578442>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.260937, 25.006886, 35.168839> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.073374, 24.836105, 34.859558>,  <30.960836, 24.733637, 34.673988>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.073374, 24.836105, 34.859558>,  <31.260937, 25.006886, 35.168839>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.073374, 24.836105, 34.859558> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384885, -0.689152, 0.613949,
		-0.794979, 0.585478, 0.158821,
		-0.468906, -0.426949, -0.773202,
		30.932701, 24.708021, 34.627598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.581657, 24.997852, 35.358421>,  <31.260937, 25.006886, 35.168839>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.581657, 24.997852, 35.358421> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.620293, 24.697205, 35.097427>,  <30.643475, 24.516817, 34.940830>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.620293, 24.697205, 35.097427>,  <30.581657, 24.997852, 35.358421>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.620293, 24.697205, 35.097427> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503240, -0.602468, 0.619502,
		-0.858732, 0.268520, -0.436436,
		0.096590, -0.751619, -0.652488,
		30.649269, 24.471720, 34.901680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.923483, 24.650896, 35.317780>,  <30.581657, 24.997852, 35.358421>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.923483, 24.650896, 35.317780> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.178913, 24.384544, 35.163467>,  <30.332170, 24.224733, 35.070881>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.178913, 24.384544, 35.163467>,  <29.923483, 24.650896, 35.317780>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.178913, 24.384544, 35.163467> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588505, -0.745558, 0.312740,
		-0.495868, 0.027325, -0.867968,
		0.638575, -0.665881, -0.385779,
		30.370485, 24.184780, 35.047733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.496958, 24.140783, 35.018730>,  <29.923483, 24.650896, 35.317780>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.496958, 24.140783, 35.018730> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.848782, 23.959774, 35.077511>,  <30.059875, 23.851168, 35.112778>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.848782, 23.959774, 35.077511>,  <29.496958, 24.140783, 35.018730>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.848782, 23.959774, 35.077511> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475655, -0.829057, 0.293968,
		-0.011196, -0.328462, -0.944451,
		0.879561, -0.452524, 0.146953,
		30.112650, 23.824017, 35.121597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.443340, 23.479969, 34.857800>,  <29.496958, 24.140783, 35.018730>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.443340, 23.479969, 34.857800> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.756672, 23.443768, 35.103794>,  <29.944672, 23.422047, 35.251389>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.756672, 23.443768, 35.103794>,  <29.443340, 23.479969, 34.857800>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.756672, 23.443768, 35.103794> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364229, -0.868541, 0.336115,
		0.503719, -0.487283, -0.713318,
		0.783329, -0.090504, 0.614983,
		29.991671, 23.416616, 35.288288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.733253, 22.803921, 34.797108>,  <29.443340, 23.479969, 34.857800>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.733253, 22.803921, 34.797108> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.883570, 22.922009, 35.148476>,  <29.973759, 22.992861, 35.359299>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.883570, 22.922009, 35.148476>,  <29.733253, 22.803921, 34.797108>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.883570, 22.922009, 35.148476> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173498, -0.908726, 0.379626,
		0.910318, -0.295065, -0.290271,
		0.375791, 0.295219, 0.878423,
		29.996307, 23.010574, 35.412003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.079966, 22.207817, 35.011837>,  <29.733253, 22.803921, 34.797108>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.079966, 22.207817, 35.011837> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.014650, 22.420250, 35.344414>,  <29.975462, 22.547710, 35.543961>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.014650, 22.420250, 35.344414>,  <30.079966, 22.207817, 35.011837>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.014650, 22.420250, 35.344414> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090714, -0.847260, 0.523374,
		0.982399, 0.010037, 0.186524,
		-0.163288, 0.531083, 0.831437,
		29.965664, 22.579575, 35.593845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.343586, 21.770115, 35.662830>,  <30.079966, 22.207817, 35.011837>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.343586, 21.770115, 35.662830> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.076941, 22.021858, 35.822598>,  <29.916952, 22.172903, 35.918457>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.076941, 22.021858, 35.822598>,  <30.343586, 21.770115, 35.662830>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.076941, 22.021858, 35.822598> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296035, -0.715301, 0.633016,
		0.684097, 0.303736, 0.663141,
		-0.666615, 0.629357, 0.399419,
		29.876957, 22.210665, 35.942425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.549313, 21.512709, 34.985710>,  <30.343586, 21.770115, 35.662830>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.549313, 21.512709, 34.985710> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.690125, 21.155239, 34.874413>,  <30.774612, 20.940758, 34.807632>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.690125, 21.155239, 34.874413>,  <30.549313, 21.512709, 34.985710>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.690125, 21.155239, 34.874413> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502865, 0.431305, -0.749068,
		0.789431, 0.123775, 0.601231,
		0.352030, -0.893675, -0.278243,
		30.795732, 20.887136, 34.790939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.196222, 21.652523, 34.911118>,  <30.549313, 21.512709, 34.985710>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.196222, 21.652523, 34.911118> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.176676, 21.306499, 34.711403>,  <31.164948, 21.098885, 34.591576>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.176676, 21.306499, 34.711403>,  <31.196222, 21.652523, 34.911118>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.176676, 21.306499, 34.711403> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489844, 0.414882, -0.766763,
		0.870440, -0.282040, 0.403470,
		-0.048865, -0.865059, -0.499285,
		31.162016, 21.046982, 34.561619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.873053, 21.491039, 34.710266>,  <31.196222, 21.652523, 34.911118>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.873053, 21.491039, 34.710266> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.646336, 21.274021, 34.462269>,  <31.510305, 21.143810, 34.313469>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.646336, 21.274021, 34.462269>,  <31.873053, 21.491039, 34.710266>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.646336, 21.274021, 34.462269> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427849, 0.449269, -0.784285,
		0.704054, -0.709790, -0.022514,
		-0.566792, -0.542546, -0.619992,
		31.476297, 21.111258, 34.276272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.309937, 21.322348, 34.110741>,  <31.873053, 21.491039, 34.710266>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.309937, 21.322348, 34.110741> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.931417, 21.255917, 33.999794>,  <31.704306, 21.216057, 33.933228>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.931417, 21.255917, 33.999794>,  <32.309937, 21.322348, 34.110741>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.931417, 21.255917, 33.999794> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179089, 0.444987, -0.877447,
		0.269150, -0.880002, -0.391349,
		-0.946301, -0.166078, -0.277367,
		31.647528, 21.206093, 33.916584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.266598, 20.939844, 33.397388>,  <32.309937, 21.322348, 34.110741>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.266598, 20.939844, 33.397388> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.964899, 21.182270, 33.498417>,  <31.783878, 21.327726, 33.559036>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.964899, 21.182270, 33.498417>,  <32.266598, 20.939844, 33.397388>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.964899, 21.182270, 33.498417> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207049, 0.584594, -0.784462,
		-0.623088, -0.539384, -0.566414,
		-0.754249, 0.606065, 0.252575,
		31.738625, 21.364090, 33.574188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.157463, 21.220383, 32.798447>,  <32.266598, 20.939844, 33.397388>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.157463, 21.220383, 32.798447> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.934862, 21.451122, 33.037628>,  <31.801302, 21.589567, 33.181137>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.934862, 21.451122, 33.037628>,  <32.157463, 21.220383, 32.798447>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.934862, 21.451122, 33.037628> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151572, 0.778102, -0.609576,
		-0.816903, -0.248597, -0.520450,
		-0.556502, 0.576850, 0.597954,
		31.767912, 21.624178, 33.217014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.685692, 21.559666, 32.349701>,  <32.157463, 21.220383, 32.798447>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.685692, 21.559666, 32.349701> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.691597, 21.772854, 32.688103>,  <31.695139, 21.900766, 32.891144>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.691597, 21.772854, 32.688103>,  <31.685692, 21.559666, 32.349701>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.691597, 21.772854, 32.688103> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007041, 0.846131, -0.532928,
		-0.999866, 0.001910, 0.016242,
		0.014761, 0.532971, 0.846005,
		31.696026, 21.932745, 32.941906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.192377, 21.357746, 31.728704>,  <31.685692, 21.559666, 32.349701>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.192377, 21.357746, 31.728704> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.448545, 21.137558, 31.514473>,  <31.602245, 21.005445, 31.385933>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.448545, 21.137558, 31.514473>,  <31.192377, 21.357746, 31.728704>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.448545, 21.137558, 31.514473> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038925, -0.719715, 0.693178,
		-0.767041, -0.423075, -0.482344,
		0.640416, -0.550471, -0.535583,
		31.640671, 20.972418, 31.353798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.868786, 20.671165, 31.652239>,  <31.192377, 21.357746, 31.728704>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.868786, 20.671165, 31.652239> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.260818, 20.619102, 31.592236>,  <31.496038, 20.587864, 31.556234>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.260818, 20.619102, 31.592236>,  <30.868786, 20.671165, 31.652239>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.260818, 20.619102, 31.592236> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023401, -0.674366, 0.738026,
		-0.197221, -0.726835, -0.657887,
		0.980079, -0.130159, -0.150008,
		31.554842, 20.580055, 31.547234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.904993, 20.015186, 31.509275>,  <30.868786, 20.671165, 31.652239>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.904993, 20.015186, 31.509275> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.290283, 20.073639, 31.599468>,  <31.521458, 20.108711, 31.653584>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.290283, 20.073639, 31.599468>,  <30.904993, 20.015186, 31.509275>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.290283, 20.073639, 31.599468> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017928, -0.872255, 0.488722,
		0.268095, -0.466707, -0.842799,
		0.963225, 0.146134, 0.225480,
		31.579250, 20.117479, 31.667112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.271757, 19.376123, 31.359631>,  <30.904993, 20.015186, 31.509275>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.271757, 19.376123, 31.359631> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.522606, 19.563099, 31.608860>,  <31.673115, 19.675283, 31.758398>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.522606, 19.563099, 31.608860>,  <31.271757, 19.376123, 31.359631>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.522606, 19.563099, 31.608860> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243771, -0.877515, 0.412968,
		0.739792, -0.107095, -0.664258,
		0.627124, 0.467437, 0.623072,
		31.710743, 19.703329, 31.795782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.873552, 19.059109, 31.321102>,  <31.271757, 19.376123, 31.359631>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.873552, 19.059109, 31.321102> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.888540, 19.252842, 31.670734>,  <31.897533, 19.369081, 31.880514>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.888540, 19.252842, 31.670734>,  <31.873552, 19.059109, 31.321102>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.888540, 19.252842, 31.670734> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089318, -0.872818, 0.479804,
		0.995298, 0.060093, -0.075965,
		0.037471, 0.484333, 0.874081,
		31.899782, 19.398142, 31.932959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.211155, 18.680510, 31.664650>,  <31.873552, 19.059109, 31.321102>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.211155, 18.680510, 31.664650> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.029274, 18.896301, 31.948116>,  <31.920145, 19.025776, 32.118195>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.029274, 18.896301, 31.948116>,  <32.211155, 18.680510, 31.664650>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.029274, 18.896301, 31.948116> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164922, -0.832919, 0.528249,
		0.875241, 0.123322, 0.467703,
		-0.454703, 0.539479, 0.708666,
		31.892862, 19.058146, 32.160717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.386875, 18.344423, 32.221027>,  <32.211155, 18.680510, 31.664650>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.386875, 18.344423, 32.221027> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.059589, 18.546284, 32.331200>,  <31.863218, 18.667400, 32.397305>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.059589, 18.546284, 32.331200>,  <32.386875, 18.344423, 32.221027>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.059589, 18.546284, 32.331200> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191251, -0.690707, 0.697385,
		0.542176, 0.517931, 0.661658,
		-0.818210, 0.504649, 0.275430,
		31.814127, 18.697678, 32.413830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.383579, 18.458000, 33.000423>,  <32.386875, 18.344423, 32.221027>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.383579, 18.458000, 33.000423> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.997553, 18.485268, 32.899223>,  <31.765938, 18.501629, 32.838505>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.997553, 18.485268, 32.899223>,  <32.383579, 18.458000, 33.000423>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.997553, 18.485268, 32.899223> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254114, -0.478938, 0.840265,
		-0.063889, 0.875198, 0.479528,
		-0.965062, 0.068171, -0.252998,
		31.708035, 18.505718, 32.823322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.043636, 18.671326, 33.514595>,  <32.383579, 18.458000, 33.000423>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.043636, 18.671326, 33.514595> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.772177, 18.472614, 33.298210>,  <31.609301, 18.353388, 33.168377>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.772177, 18.472614, 33.298210>,  <32.043636, 18.671326, 33.514595>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.772177, 18.472614, 33.298210> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331103, -0.450522, 0.829096,
		-0.655594, 0.741782, 0.141263,
		-0.678651, -0.496778, -0.540966,
		31.568581, 18.323582, 33.135921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<31.128265, 31.490772, 24.264963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.862202, 31.216194, 24.147415>,  <30.702564, 31.051447, 24.076887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.862202, 31.216194, 24.147415>,  <31.128265, 31.490772, 24.264963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.862202, 31.216194, 24.147415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296324, -0.603901, 0.739929,
		-0.685389, 0.405089, 0.605100,
		-0.665157, -0.686445, -0.293869,
		30.662655, 31.010262, 24.059254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.890322, 31.102777, 24.840631>,  <31.128265, 31.490772, 24.264963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.890322, 31.102777, 24.840631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.841137, 30.851917, 24.532978>,  <30.811626, 30.701401, 24.348387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.841137, 30.851917, 24.532978>,  <30.890322, 31.102777, 24.840631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.841137, 30.851917, 24.532978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442848, -0.728247, 0.523012,
		-0.888125, -0.276297, 0.367280,
		-0.122964, -0.627149, -0.769132,
		30.804247, 30.663773, 24.302238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.680248, 30.432924, 25.177456>,  <30.890322, 31.102777, 24.840631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.680248, 30.432924, 25.177456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.786572, 30.308815, 24.812363>,  <30.850365, 30.234350, 24.593307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.786572, 30.308815, 24.812363>,  <30.680248, 30.432924, 25.177456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.786572, 30.308815, 24.812363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372949, -0.839973, 0.394150,
		-0.888963, -0.445170, -0.107555,
		0.265807, -0.310272, -0.912731,
		30.866314, 30.215733, 24.538544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.472904, 29.677732, 25.079548>,  <30.680248, 30.432924, 25.177456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.472904, 29.677732, 25.079548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.784492, 29.778580, 24.849892>,  <30.971445, 29.839088, 24.712097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.784492, 29.778580, 24.849892>,  <30.472904, 29.677732, 25.079548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.784492, 29.778580, 24.849892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516179, -0.777688, 0.358832,
		-0.356034, -0.575880, -0.735937,
		0.778973, 0.252118, -0.574140,
		31.018185, 29.854216, 24.677649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.653894, 29.037495, 24.842957>,  <30.472904, 29.677732, 25.079548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.653894, 29.037495, 24.842957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.976900, 29.263775, 24.776134>,  <31.170704, 29.399542, 24.736042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.976900, 29.263775, 24.776134>,  <30.653894, 29.037495, 24.842957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.976900, 29.263775, 24.776134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561929, -0.651693, 0.509444,
		0.179324, -0.505255, -0.844133,
		0.807514, 0.565698, -0.167053,
		31.219154, 29.433485, 24.726019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.135996, 28.557795, 24.717890>,  <30.653894, 29.037495, 24.842957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.135996, 28.557795, 24.717890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.360889, 28.874062, 24.814831>,  <31.495827, 29.063822, 24.872995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.360889, 28.874062, 24.814831>,  <31.135996, 28.557795, 24.717890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.360889, 28.874062, 24.814831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600194, -0.591745, 0.538150,
		0.568910, -0.157108, -0.807254,
		0.562236, 0.790668, 0.242354,
		31.529560, 29.111261, 24.887537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.835918, 28.457548, 24.570879>,  <31.135996, 28.557795, 24.717890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.835918, 28.457548, 24.570879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.882517, 28.759583, 24.828957>,  <31.910477, 28.940804, 24.983803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.882517, 28.759583, 24.828957>,  <31.835918, 28.457548, 24.570879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.882517, 28.759583, 24.828957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617469, -0.563877, 0.548428,
		0.777920, 0.334498, -0.531932,
		0.116496, 0.755085, 0.645194,
		31.917465, 28.986109, 25.022514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.561886, 28.614426, 24.645287>,  <31.835918, 28.457548, 24.570879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.561886, 28.614426, 24.645287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.378017, 28.748676, 24.974178>,  <32.267696, 28.829226, 25.171513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.378017, 28.748676, 24.974178>,  <32.561886, 28.614426, 24.645287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.378017, 28.748676, 24.974178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646703, -0.508043, 0.568918,
		0.608670, 0.793252, 0.016483,
		-0.459669, 0.335624, 0.822229,
		32.240116, 28.849363, 25.220846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.054234, 28.634579, 25.152758>,  <32.561886, 28.614426, 24.645287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.054234, 28.634579, 25.152758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.737408, 28.688328, 25.390942>,  <32.547314, 28.720577, 25.533852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.737408, 28.688328, 25.390942>,  <33.054234, 28.634579, 25.152758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.737408, 28.688328, 25.390942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351204, -0.697542, 0.624572,
		0.499286, 0.703831, 0.505306,
		-0.792066, 0.134375, 0.595462,
		32.499786, 28.728640, 25.569580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.357933, 28.504847, 25.755915>,  <33.054234, 28.634579, 25.152758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.357933, 28.504847, 25.755915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.965427, 28.434673, 25.787773>,  <32.729923, 28.392570, 25.806889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.965427, 28.434673, 25.787773>,  <33.357933, 28.504847, 25.755915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.965427, 28.434673, 25.787773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190949, -0.830522, 0.523232,
		-0.025645, 0.528637, 0.848460,
		-0.981265, -0.175431, 0.079644,
		32.671047, 28.382044, 25.811666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.297878, 28.387449, 26.407225>,  <33.357933, 28.504847, 25.755915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.297878, 28.387449, 26.407225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.983051, 28.218277, 26.227600>,  <32.794155, 28.116774, 26.119825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.983051, 28.218277, 26.227600>,  <33.297878, 28.387449, 26.407225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.983051, 28.218277, 26.227600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164463, -0.845487, 0.508039,
		-0.594541, 0.326006, 0.735010,
		-0.787066, -0.422933, -0.449061,
		32.746933, 28.091396, 26.092882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.799831, 28.339567, 26.942989>,  <33.297878, 28.387449, 26.407225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.799831, 28.339567, 26.942989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.696232, 28.083183, 26.653965>,  <32.634071, 27.929354, 26.480551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.696232, 28.083183, 26.653965>,  <32.799831, 28.339567, 26.942989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.696232, 28.083183, 26.653965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250220, -0.767071, 0.590756,
		-0.932904, -0.027795, 0.359050,
		-0.258997, -0.640960, -0.722559,
		32.618534, 27.890896, 26.437197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.775505, 28.763931, 27.557278>,  <32.799831, 28.339567, 26.942989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.775505, 28.763931, 27.557278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.051666, 28.834740, 27.837849>,  <33.217365, 28.877226, 28.006191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.051666, 28.834740, 27.837849>,  <32.775505, 28.763931, 27.557278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.051666, 28.834740, 27.837849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069014, 0.949059, -0.307448,
		-0.720122, 0.260673, 0.643019,
		0.690406, 0.177023, 0.701429,
		33.258789, 28.887846, 28.048277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.684868, 29.426447, 27.776237>,  <32.775505, 28.763931, 27.557278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.684868, 29.426447, 27.776237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.056103, 29.392902, 27.921360>,  <33.278843, 29.372776, 28.008434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.056103, 29.392902, 27.921360>,  <32.684868, 29.426447, 27.776237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.056103, 29.392902, 27.921360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218521, 0.911561, -0.348288,
		-0.301512, 0.402521, 0.864331,
		0.928083, -0.083862, 0.362806,
		33.334526, 29.367744, 28.030201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.775024, 30.087948, 28.046028>,  <32.684868, 29.426447, 27.776237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.775024, 30.087948, 28.046028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.150646, 29.959091, 27.998035>,  <33.376019, 29.881777, 27.969240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.150646, 29.959091, 27.998035>,  <32.775024, 30.087948, 28.046028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.150646, 29.959091, 27.998035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290379, 0.930154, -0.224708,
		0.183989, 0.176174, 0.967011,
		0.939057, -0.322144, -0.119981,
		33.432362, 29.862448, 27.962042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.094994, 30.460213, 28.642199>,  <32.775024, 30.087948, 28.046028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.094994, 30.460213, 28.642199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.324566, 30.330215, 28.341537>,  <33.462311, 30.252216, 28.161140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.324566, 30.330215, 28.341537>,  <33.094994, 30.460213, 28.642199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.324566, 30.330215, 28.341537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129717, 0.942369, -0.308406,
		0.808566, 0.079502, 0.583010,
		0.573930, -0.324993, -0.751654,
		33.496746, 30.232718, 28.116041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.697231, 30.862804, 28.637148>,  <33.094994, 30.460213, 28.642199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.697231, 30.862804, 28.637148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.662811, 30.707546, 28.270119>,  <33.642159, 30.614391, 28.049902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.662811, 30.707546, 28.270119>,  <33.697231, 30.862804, 28.637148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.662811, 30.707546, 28.270119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121947, 0.909960, -0.396361,
		0.988799, -0.146004, -0.030973,
		-0.086055, -0.388144, -0.917572,
		33.636993, 30.591103, 27.994846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.157394, 31.293154, 28.286085>,  <33.697231, 30.862804, 28.637148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.157394, 31.293154, 28.286085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.921806, 31.146053, 27.998230>,  <33.780453, 31.057793, 27.825518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.921806, 31.146053, 27.998230>,  <34.157394, 31.293154, 28.286085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.921806, 31.146053, 27.998230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176805, 0.810260, -0.558765,
		0.788579, -0.456330, -0.412197,
		-0.588968, -0.367751, -0.719636,
		33.745117, 31.035728, 27.782339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.470963, 31.684736, 27.773741>,  <34.157394, 31.293154, 28.286085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.470963, 31.684736, 27.773741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.132175, 31.536926, 27.620846>,  <33.928905, 31.448240, 27.529108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.132175, 31.536926, 27.620846>,  <34.470963, 31.684736, 27.773741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.132175, 31.536926, 27.620846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093199, 0.811026, -0.577539,
		0.523419, -0.453530, -0.721348,
		-0.846964, -0.369523, -0.382238,
		33.878086, 31.426069, 27.506174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.528927, 31.699989, 27.081730>,  <34.470963, 31.684736, 27.773741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.528927, 31.699989, 27.081730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.133564, 31.694099, 27.142178>,  <33.896347, 31.690565, 27.178446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.133564, 31.694099, 27.142178>,  <34.528927, 31.699989, 27.081730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.133564, 31.694099, 27.142178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087991, 0.866663, -0.491074,
		-0.123737, -0.498677, -0.857910,
		-0.988406, -0.014725, 0.151117,
		33.837044, 31.689682, 27.187513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.238167, 31.923695, 26.433666>,  <34.528927, 31.699989, 27.081730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.238167, 31.923695, 26.433666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.930626, 31.979809, 26.683205>,  <33.746101, 32.013477, 26.832928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.930626, 31.979809, 26.683205>,  <34.238167, 31.923695, 26.433666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.930626, 31.979809, 26.683205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279697, 0.803565, -0.525408,
		-0.575006, -0.578450, -0.578588,
		-0.768855, 0.140284, 0.623845,
		33.699970, 32.021893, 26.870358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.676708, 32.082306, 26.044331>,  <34.238167, 31.923695, 26.433666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.676708, 32.082306, 26.044331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.601067, 32.223438, 26.410881>,  <33.555683, 32.308117, 26.630812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.601067, 32.223438, 26.410881>,  <33.676708, 32.082306, 26.044331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.601067, 32.223438, 26.410881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287956, 0.872264, -0.395269,
		-0.938787, -0.338623, -0.063348,
		-0.189103, 0.352832, 0.916378,
		33.544334, 32.329288, 26.685795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.087555, 32.447300, 25.934769>,  <33.676708, 32.082306, 26.044331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.087555, 32.447300, 25.934769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.268505, 32.586319, 26.263298>,  <33.377075, 32.669731, 26.460415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.268505, 32.586319, 26.263298>,  <33.087555, 32.447300, 25.934769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.268505, 32.586319, 26.263298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026227, 0.915357, -0.401789,
		-0.891444, 0.203299, 0.404966,
		0.452372, 0.347551, 0.821321,
		33.404217, 32.690586, 26.509695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.763569, 32.989742, 26.087635>,  <33.087555, 32.447300, 25.934769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.763569, 32.989742, 26.087635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.085564, 33.072044, 26.310223>,  <33.278759, 33.121426, 26.443775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.085564, 33.072044, 26.310223>,  <32.763569, 32.989742, 26.087635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.085564, 33.072044, 26.310223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109335, 0.870423, -0.480010,
		-0.583130, 0.447243, 0.678184,
		0.804988, 0.205759, 0.556469,
		33.327061, 33.133774, 26.477163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.729256, 33.639126, 26.380753>,  <32.763569, 32.989742, 26.087635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.729256, 33.639126, 26.380753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.125046, 33.582230, 26.391411>,  <33.362518, 33.548092, 26.397806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.125046, 33.582230, 26.391411>,  <32.729256, 33.639126, 26.380753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.125046, 33.582230, 26.391411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138466, 0.876997, -0.460112,
		0.042079, 0.458958, 0.887461,
		0.989473, -0.142244, 0.026647,
		33.421886, 33.539555, 26.399405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.110485, 34.167210, 26.715487>,  <32.729256, 33.639126, 26.380753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.110485, 34.167210, 26.715487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.352821, 34.003918, 26.442341>,  <33.498222, 33.905945, 26.278454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.352821, 34.003918, 26.442341>,  <33.110485, 34.167210, 26.715487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.352821, 34.003918, 26.442341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013800, 0.852799, -0.522056,
		0.795465, 0.325708, 0.511029,
		0.605843, -0.408225, -0.682867,
		33.534573, 33.881451, 26.237480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.954933, 34.871201, 26.881660>,  <33.110485, 34.167210, 26.715487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.954933, 34.871201, 26.881660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.599297, 35.020046, 26.988274>,  <32.385914, 35.109352, 27.052242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.599297, 35.020046, 26.988274>,  <32.954933, 34.871201, 26.881660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.599297, 35.020046, 26.988274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103682, -0.403443, 0.909112,
		0.445824, 0.835922, 0.320118,
		-0.889095, 0.372114, 0.266535,
		32.332569, 35.131680, 27.068233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.013119, 35.267574, 27.546700>,  <32.954933, 34.871201, 26.881660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.013119, 35.267574, 27.546700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.658684, 35.085121, 27.513741>,  <32.446022, 34.975647, 27.493965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.658684, 35.085121, 27.513741>,  <33.013119, 35.267574, 27.546700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.658684, 35.085121, 27.513741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133800, -0.421899, 0.896716,
		-0.443787, 0.783544, 0.434870,
		-0.886087, -0.456136, -0.082395,
		32.392857, 34.948280, 27.489021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.052860, 34.965176, 28.149820>,  <33.013119, 35.267574, 27.546700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.052860, 34.965176, 28.149820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.704510, 34.834953, 28.002533>,  <32.495499, 34.756821, 27.914160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.704510, 34.834953, 28.002533>,  <33.052860, 34.965176, 28.149820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.704510, 34.834953, 28.002533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121313, -0.583611, 0.802920,
		-0.476295, 0.743914, 0.468759,
		-0.870877, -0.325560, -0.368218,
		32.443245, 34.737286, 27.892067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.518230, 34.961708, 28.706253>,  <33.052860, 34.965176, 28.149820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.518230, 34.961708, 28.706253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.427280, 34.684383, 28.432724>,  <32.372711, 34.517990, 28.268606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.427280, 34.684383, 28.432724>,  <32.518230, 34.961708, 28.706253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.427280, 34.684383, 28.432724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154795, -0.667557, 0.728290,
		-0.961425, 0.271450, 0.044467,
		-0.227379, -0.693313, -0.683825,
		32.359066, 34.476391, 28.227577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.902096, 34.722923, 28.897377>,  <32.518230, 34.961708, 28.706253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.902096, 34.722923, 28.897377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.045666, 34.427193, 28.669491>,  <32.131809, 34.249756, 28.532759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.045666, 34.427193, 28.669491>,  <31.902096, 34.722923, 28.897377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.045666, 34.427193, 28.669491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355971, -0.672681, 0.648680,
		-0.862820, -0.030025, -0.504619,
		0.358924, -0.739323, -0.569714,
		32.153343, 34.205395, 28.498577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.412134, 34.140453, 28.891579>,  <31.902096, 34.722923, 28.897377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.412134, 34.140453, 28.891579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.772230, 33.997646, 28.791893>,  <31.988289, 33.911964, 28.732082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.772230, 33.997646, 28.791893>,  <31.412134, 34.140453, 28.891579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.772230, 33.997646, 28.791893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176056, -0.821998, 0.541593,
		-0.398209, -0.443689, -0.802851,
		0.900241, -0.357014, -0.249213,
		32.042301, 33.890541, 28.717129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.352060, 33.445774, 28.845909>,  <31.412134, 34.140453, 28.891579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.352060, 33.445774, 28.845909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.751257, 33.432854, 28.824123>,  <31.990776, 33.425102, 28.811052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.751257, 33.432854, 28.824123>,  <31.352060, 33.445774, 28.845909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.751257, 33.432854, 28.824123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003604, -0.887681, 0.460444,
		-0.063220, -0.459323, -0.886016,
		0.997993, -0.032302, -0.054464,
		32.050655, 33.423164, 28.807785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.475620, 32.848663, 28.503389>,  <31.352060, 33.445774, 28.845909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.475620, 32.848663, 28.503389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.809923, 32.940277, 28.703011>,  <32.010506, 32.995247, 28.822783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.809923, 32.940277, 28.703011>,  <31.475620, 32.848663, 28.503389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.809923, 32.940277, 28.703011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011845, -0.916163, 0.400630,
		0.548973, -0.328918, -0.768402,
		0.835756, 0.229037, 0.499053,
		32.060650, 33.008987, 28.852726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.012878, 32.448463, 28.274946>,  <31.475620, 32.848663, 28.503389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.012878, 32.448463, 28.274946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.118687, 32.553188, 28.646210>,  <32.182171, 32.616024, 28.868969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.118687, 32.553188, 28.646210>,  <32.012878, 32.448463, 28.274946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.118687, 32.553188, 28.646210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084079, -0.965040, 0.248251,
		0.960707, 0.012371, -0.277290,
		0.264525, 0.261811, 0.928161,
		32.198044, 32.631733, 28.924658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.480373, 31.953987, 28.407515>,  <32.012878, 32.448463, 28.274946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.480373, 31.953987, 28.407515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.414875, 32.129650, 28.760860>,  <32.375576, 32.235046, 28.972868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.414875, 32.129650, 28.760860>,  <32.480373, 31.953987, 28.407515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.414875, 32.129650, 28.760860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147905, -0.874398, 0.462117,
		0.975352, 0.206322, 0.078223,
		-0.163743, 0.439157, 0.883362,
		32.365753, 32.261398, 29.025869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.078896, 31.713913, 28.786993>,  <32.480373, 31.953987, 28.407515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.078896, 31.713913, 28.786993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.788170, 31.834110, 29.034035>,  <32.613735, 31.906229, 29.182261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.788170, 31.834110, 29.034035>,  <33.078896, 31.713913, 28.786993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.788170, 31.834110, 29.034035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079602, -0.930008, 0.358816,
		0.682201, 0.211631, 0.699867,
		-0.726819, 0.300495, 0.617606,
		32.570126, 31.924259, 29.219316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.240868, 31.339603, 29.408501>,  <33.078896, 31.713913, 28.786993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.240868, 31.339603, 29.408501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.860474, 31.457165, 29.446960>,  <32.632236, 31.527702, 29.470036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.860474, 31.457165, 29.446960>,  <33.240868, 31.339603, 29.408501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.860474, 31.457165, 29.446960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211742, -0.845503, 0.490195,
		0.225364, 0.445810, 0.866294,
		-0.950987, 0.293903, 0.096149,
		32.575176, 31.545336, 29.475805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.995586, 31.269865, 30.116680>,  <33.240868, 31.339603, 29.408501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.995586, 31.269865, 30.116680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.641441, 31.266762, 29.930744>,  <32.428955, 31.264900, 29.819183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.641441, 31.266762, 29.930744>,  <32.995586, 31.269865, 30.116680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.641441, 31.266762, 29.930744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304415, -0.746030, 0.592259,
		-0.351377, 0.665867, 0.658145,
		-0.885362, -0.007757, -0.464838,
		32.375832, 31.264435, 29.791292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.567856, 31.135262, 30.720951>,  <32.995586, 31.269865, 30.116680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.567856, 31.135262, 30.720951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.376373, 31.055470, 30.378944>,  <32.261486, 31.007595, 30.173740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.376373, 31.055470, 30.378944>,  <32.567856, 31.135262, 30.720951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.376373, 31.055470, 30.378944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437314, -0.790272, 0.429217,
		-0.761314, 0.579378, 0.291072,
		-0.478705, -0.199479, -0.855015,
		32.232761, 30.995626, 30.122440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.945904, 30.732603, 30.974037>,  <32.567856, 31.135262, 30.720951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.945904, 30.732603, 30.974037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.954199, 30.693089, 30.576080>,  <31.959177, 30.669380, 30.337307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.954199, 30.693089, 30.576080>,  <31.945904, 30.732603, 30.974037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.954199, 30.693089, 30.576080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546728, -0.834257, 0.071438,
		-0.837053, 0.542454, -0.071310,
		0.020740, -0.098785, -0.994893,
		31.960421, 30.663454, 30.277613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.191027, 30.702236, 30.713158>,  <31.945904, 30.732603, 30.974037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.191027, 30.702236, 30.713158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.457363, 30.534786, 30.466125>,  <31.617165, 30.434317, 30.317905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.457363, 30.534786, 30.466125>,  <31.191027, 30.702236, 30.713158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.457363, 30.534786, 30.466125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499197, -0.865146, 0.048225,
		-0.554487, 0.276185, -0.785026,
		0.665843, -0.418623, -0.617582,
		31.657116, 30.409199, 30.280851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.802166, 30.181664, 30.386097>,  <31.191027, 30.702236, 30.713158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.802166, 30.181664, 30.386097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.175087, 30.061771, 30.305130>,  <31.398840, 29.989836, 30.256550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.175087, 30.061771, 30.305130>,  <30.802166, 30.181664, 30.386097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.175087, 30.061771, 30.305130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326999, -0.937674, -0.117640,
		-0.154542, 0.175867, -0.972208,
		0.932303, -0.299730, -0.202418,
		31.454779, 29.971853, 30.244404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.710512, 29.695635, 29.848310>,  <30.802166, 30.181664, 30.386097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.710512, 29.695635, 29.848310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.074209, 29.581234, 29.969292>,  <31.292427, 29.512594, 30.041882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.074209, 29.581234, 29.969292>,  <30.710512, 29.695635, 29.848310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.074209, 29.581234, 29.969292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307760, -0.951114, 0.025815,
		0.280286, -0.116556, -0.952814,
		0.909243, -0.286003, 0.302455,
		31.346983, 29.495434, 30.060028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.824291, 29.054569, 29.570530>,  <30.710512, 29.695635, 29.848310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.824291, 29.054569, 29.570530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.085060, 29.086044, 29.872208>,  <31.241522, 29.104929, 30.053213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.085060, 29.086044, 29.872208>,  <30.824291, 29.054569, 29.570530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.085060, 29.086044, 29.872208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157653, -0.958803, 0.236310,
		0.741717, -0.272956, -0.612659,
		0.651922, 0.078687, 0.754193,
		31.280636, 29.109650, 30.098465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.239468, 28.523138, 29.432888>,  <30.824291, 29.054569, 29.570530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.239468, 28.523138, 29.432888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.263824, 28.623390, 29.819355>,  <31.278439, 28.683542, 30.051235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.263824, 28.623390, 29.819355>,  <31.239468, 28.523138, 29.432888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.263824, 28.623390, 29.819355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038036, -0.966676, 0.253162,
		0.997419, -0.052165, -0.049331,
		0.060894, 0.250632, 0.966165,
		31.282093, 28.698580, 30.109205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.640753, 28.095280, 29.886501>,  <31.239468, 28.523138, 29.432888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.640753, 28.095280, 29.886501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.431812, 28.271023, 30.178833>,  <31.306448, 28.376469, 30.354231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.431812, 28.271023, 30.178833>,  <31.640753, 28.095280, 29.886501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.431812, 28.271023, 30.178833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121044, -0.886572, 0.446474,
		0.844094, 0.144755, 0.516285,
		-0.522353, 0.439360, 0.730828,
		31.275106, 28.402830, 30.398081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.921303, 27.846632, 30.560968>,  <31.640753, 28.095280, 29.886501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.921303, 27.846632, 30.560968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.556902, 27.972485, 30.667614>,  <31.338263, 28.047997, 30.731602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.556902, 27.972485, 30.667614>,  <31.921303, 27.846632, 30.560968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.556902, 27.972485, 30.667614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002302, -0.650360, 0.759623,
		0.412399, 0.691403, 0.593202,
		-0.911001, 0.314633, 0.266616,
		31.283602, 28.066874, 30.747599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.958040, 27.892891, 31.337858>,  <31.921303, 27.846632, 30.560968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.958040, 27.892891, 31.337858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.572485, 27.880947, 31.232006>,  <31.341152, 27.873781, 31.168495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.572485, 27.880947, 31.232006>,  <31.958040, 27.892891, 31.337858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.572485, 27.880947, 31.232006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181994, -0.651582, 0.736423,
		-0.194418, 0.757990, 0.622617,
		-0.963888, -0.029861, -0.264629,
		31.283319, 27.871988, 31.152617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.511858, 28.098310, 31.857248>,  <31.958040, 27.892891, 31.337858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.511858, 28.098310, 31.857248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.276339, 27.868084, 31.630253>,  <31.135027, 27.729948, 31.494055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.276339, 27.868084, 31.630253>,  <31.511858, 28.098310, 31.857248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.276339, 27.868084, 31.630253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153903, -0.609415, 0.777771,
		-0.793494, 0.545287, 0.270240,
		-0.588797, -0.575565, -0.567488,
		31.099699, 27.695414, 31.460007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.989197, 27.823202, 32.364468>,  <31.511858, 28.098310, 31.857248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.989197, 27.823202, 32.364468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.956240, 27.611084, 32.026947>,  <30.936466, 27.483812, 31.824436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.956240, 27.611084, 32.026947>,  <30.989197, 27.823202, 32.364468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.956240, 27.611084, 32.026947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286731, -0.798265, 0.529678,
		-0.954462, 0.285584, -0.086283,
		-0.082392, -0.530297, -0.843799,
		30.931522, 27.451994, 31.773808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.332838, 27.594107, 32.357792>,  <30.989197, 27.823202, 32.364468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.332838, 27.594107, 32.357792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.543196, 27.343102, 32.128128>,  <30.669411, 27.192497, 31.990330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.543196, 27.343102, 32.128128>,  <30.332838, 27.594107, 32.357792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.543196, 27.343102, 32.128128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204157, -0.748441, 0.630995,
		-0.825686, -0.214616, -0.521712,
		0.525893, -0.627515, -0.574162,
		30.700964, 27.154846, 31.955879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.823757, 26.965870, 32.293316>,  <30.332838, 27.594107, 32.357792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.823757, 26.965870, 32.293316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.188951, 26.841385, 32.187782>,  <30.408068, 26.766695, 32.124462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.188951, 26.841385, 32.187782>,  <29.823757, 26.965870, 32.293316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.188951, 26.841385, 32.187782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039676, -0.711314, 0.701754,
		-0.406061, -0.630222, -0.661766,
		0.912984, -0.311211, -0.263833,
		30.462847, 26.748022, 32.108631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.820807, 26.235004, 32.122803>,  <29.823757, 26.965870, 32.293316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.820807, 26.235004, 32.122803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.198664, 26.311962, 32.229111>,  <30.425379, 26.358137, 32.292896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.198664, 26.311962, 32.229111>,  <29.820807, 26.235004, 32.122803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.198664, 26.311962, 32.229111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095395, -0.613977, 0.783538,
		0.313926, -0.765517, -0.561636,
		0.944643, 0.192395, 0.265769,
		30.482058, 26.369680, 32.308842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.016611, 25.952435, 31.826200>,  <29.820807, 26.235004, 32.122803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.016611, 25.952435, 31.826200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.649767, 26.032604, 31.964035>,  <28.429661, 26.080706, 32.046734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.649767, 26.032604, 31.964035>,  <29.016611, 25.952435, 31.826200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.649767, 26.032604, 31.964035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014909, 0.881055, -0.472778,
		-0.398356, -0.428452, -0.811013,
		-0.917110, 0.200426, 0.344586,
		28.374634, 26.092731, 32.067410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.621916, 26.119469, 31.270773>,  <29.016611, 25.952435, 31.826200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.621916, 26.119469, 31.270773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.408163, 26.277817, 31.569496>,  <28.279911, 26.372826, 31.748730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.408163, 26.277817, 31.569496>,  <28.621916, 26.119469, 31.270773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.408163, 26.277817, 31.569496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178556, 0.810733, -0.557521,
		-0.826168, -0.431277, -0.362556,
		-0.534382, 0.395869, 0.746809,
		28.247849, 26.396578, 31.793539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.225903, 26.487829, 30.937862>,  <28.621916, 26.119469, 31.270773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.225903, 26.487829, 30.937862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.151741, 26.643547, 31.298767>,  <28.107244, 26.736979, 31.515310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.151741, 26.643547, 31.298767>,  <28.225903, 26.487829, 30.937862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.151741, 26.643547, 31.298767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019392, 0.916552, -0.399446,
		-0.982471, -0.091556, -0.162384,
		-0.185405, 0.389295, 0.902261,
		28.096119, 26.760336, 31.569445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.615700, 26.865099, 30.915882>,  <28.225903, 26.487829, 30.937862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.615700, 26.865099, 30.915882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.820889, 27.043144, 31.209476>,  <27.944002, 27.149971, 31.385633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.820889, 27.043144, 31.209476>,  <27.615700, 26.865099, 30.915882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.820889, 27.043144, 31.209476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140092, 0.887004, -0.439998,
		-0.846898, 0.122880, 0.517363,
		0.512970, 0.445112, 0.733987,
		27.974779, 27.176678, 31.429672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.271008, 27.362490, 31.080950>,  <27.615700, 26.865099, 30.915882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.271008, 27.362490, 31.080950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.629677, 27.472984, 31.219322>,  <27.844879, 27.539282, 31.302345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.629677, 27.472984, 31.219322>,  <27.271008, 27.362490, 31.080950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.629677, 27.472984, 31.219322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104650, 0.891550, -0.440666,
		-0.430145, 0.358932, 0.828338,
		0.896674, 0.276236, 0.345933,
		27.898680, 27.555855, 31.323103>
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
