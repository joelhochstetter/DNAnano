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
	<2.472090, 0.142410, 3.925327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.783054, 0.392433, 3.897232>,  <2.969633, 0.542447, 3.880375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.783054, 0.392433, 3.897232>,  <2.472090, 0.142410, 3.925327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.783054, 0.392433, 3.897232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628757, 0.775310, -0.059656,
		0.017167, 0.090540, 0.995745,
		0.777412, 0.625058, -0.070238,
		3.016278, 0.579951, 3.876161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.614436, 0.677186, 4.451640>,  <2.472090, 0.142410, 3.925327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.614436, 0.677186, 4.451640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.779617, 0.807159, 4.111313>,  <2.878725, 0.885143, 3.907117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.779617, 0.807159, 4.111313>,  <2.614436, 0.677186, 4.451640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.779617, 0.807159, 4.111313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595587, 0.803097, 0.017635,
		0.689019, 0.499453, 0.525166,
		0.412952, 0.324933, -0.850817,
		2.903502, 0.904639, 3.856068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.068859, 1.279971, 4.587374>,  <2.614436, 0.677186, 4.451640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.068859, 1.279971, 4.587374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.918726, 1.294903, 4.216919>,  <2.828647, 1.303862, 3.994646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.918726, 1.294903, 4.216919>,  <3.068859, 1.279971, 4.587374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.918726, 1.294903, 4.216919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622602, 0.730059, 0.281745,
		0.686653, 0.682364, -0.250773,
		-0.375332, 0.037329, -0.926138,
		2.806127, 1.306102, 3.939077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.128540, 1.993291, 4.330058>,  <3.068859, 1.279971, 4.587374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.128540, 1.993291, 4.330058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.849916, 1.785938, 4.131630>,  <2.682741, 1.661527, 4.012573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.849916, 1.785938, 4.131630>,  <3.128540, 1.993291, 4.330058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.849916, 1.785938, 4.131630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658682, 0.736150, 0.155633,
		0.284503, 0.435159, -0.854221,
		-0.696560, -0.518382, -0.496069,
		2.640948, 1.630424, 3.982809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.715862, 2.353157, 3.843052>,  <3.128540, 1.993291, 4.330058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.715862, 2.353157, 3.843052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.438553, 2.068039, 3.885574>,  <2.272168, 1.896968, 3.911088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.438553, 2.068039, 3.885574>,  <2.715862, 2.353157, 3.843052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.438553, 2.068039, 3.885574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690461, 0.699202, 0.185418,
		-0.206494, 0.055145, -0.976893,
		-0.693271, -0.712794, 0.106305,
		2.230572, 1.854201, 3.917466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.162077, 2.574623, 3.516496>,  <2.715862, 2.353157, 3.843052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.162077, 2.574623, 3.516496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.990687, 2.295097, 3.745605>,  <1.887854, 2.127382, 3.883071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.990687, 2.295097, 3.745605>,  <2.162077, 2.574623, 3.516496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.990687, 2.295097, 3.745605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743036, 0.633199, 0.216693,
		-0.514108, -0.332744, -0.790553,
		-0.428475, -0.698814, 0.572773,
		1.862145, 2.085453, 3.917438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.523390, 2.543845, 3.236448>,  <2.162077, 2.574623, 3.516496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.523390, 2.543845, 3.236448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.484995, 2.376022, 3.597504>,  <1.461958, 2.275328, 3.814137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.484995, 2.376022, 3.597504>,  <1.523390, 2.543845, 3.236448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.484995, 2.376022, 3.597504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801581, 0.570210, 0.179800,
		-0.590131, -0.706280, -0.391043,
		-0.095988, -0.419558, 0.902639,
		1.456198, 2.250155, 3.868295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.873510, 2.373990, 3.260460>,  <1.523390, 2.543845, 3.236448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.873510, 2.373990, 3.260460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.986475, 2.394878, 3.643608>,  <1.054255, 2.407412, 3.873497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.986475, 2.394878, 3.643608>,  <0.873510, 2.373990, 3.260460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.986475, 2.394878, 3.643608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800044, 0.563779, 0.205144,
		-0.529314, -0.824273, 0.200998,
		0.282413, 0.052222, 0.957871,
		1.071199, 2.410545, 3.930969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.404105, 3.233382, 3.882893> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.359156, 3.142853, 4.269913>,  <0.332186, 3.088535, 4.502124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.359156, 3.142853, 4.269913>,  <0.404105, 3.233382, 3.882893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.359156, 3.142853, 4.269913> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840758, -0.540644, -0.028816,
		0.529621, 0.810236, 0.251037,
		-0.112374, -0.226323, 0.967548,
		0.325443, 3.074956, 4.560177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.988964, 3.475603, 4.304212>,  <0.404105, 3.233382, 3.882893>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.988964, 3.475603, 4.304212> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.811842, 3.156620, 4.468155>,  <0.705569, 2.965230, 4.566521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.811842, 3.156620, 4.468155>,  <0.988964, 3.475603, 4.304212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.811842, 3.156620, 4.468155> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839395, -0.529386, -0.123151,
		0.315181, 0.289501, 0.903798,
		-0.442805, -0.797458, 0.409858,
		0.679000, 2.917382, 4.591112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.476105, 3.130383, 4.876319>,  <0.988964, 3.475603, 4.304212>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.476105, 3.130383, 4.876319> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.200457, 2.893742, 4.708931>,  <1.035068, 2.751756, 4.608498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.200457, 2.893742, 4.708931>,  <1.476105, 3.130383, 4.876319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.200457, 2.893742, 4.708931> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689387, -0.713169, -0.127027,
		-0.223290, -0.376025, 0.899304,
		-0.689120, -0.591605, -0.418470,
		0.993721, 2.716260, 4.583390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.454249, 2.445929, 5.190702>,  <1.476105, 3.130383, 4.876319>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.454249, 2.445929, 5.190702> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.308954, 2.413876, 4.819405>,  <1.221777, 2.394643, 4.596626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.308954, 2.413876, 4.819405>,  <1.454249, 2.445929, 5.190702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.308954, 2.413876, 4.819405> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714844, -0.662942, -0.222500,
		-0.597542, -0.744370, 0.298089,
		-0.363238, -0.080134, -0.928244,
		1.199983, 2.389835, 4.540931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.244990, 1.720325, 5.028095>,  <1.454249, 2.445929, 5.190702>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.244990, 1.720325, 5.028095> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.349155, 1.910980, 4.692238>,  <1.411655, 2.025374, 4.490724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.349155, 1.910980, 4.692238>,  <1.244990, 1.720325, 5.028095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.349155, 1.910980, 4.692238> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585476, -0.769468, -0.255218,
		-0.767725, -0.425128, -0.479442,
		0.260414, 0.476639, -0.839642,
		1.427280, 2.053972, 4.440345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.212306, 1.177298, 4.521051>,  <1.244990, 1.720325, 5.028095>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.212306, 1.177298, 4.521051> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.432991, 1.465820, 4.353561>,  <1.565402, 1.638934, 4.253067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.432991, 1.465820, 4.353561>,  <1.212306, 1.177298, 4.521051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.432991, 1.465820, 4.353561> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561387, -0.692454, -0.453158,
		-0.616813, 0.014947, -0.786968,
		0.551712, 0.721307, -0.418724,
		1.598505, 1.682212, 4.227944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.299659, 0.994626, 3.906886>,  <1.212306, 1.177298, 4.521051>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.299659, 0.994626, 3.906886> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.615919, 1.232700, 3.964333>,  <1.805675, 1.375545, 3.998801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.615919, 1.232700, 3.964333>,  <1.299659, 0.994626, 3.906886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.615919, 1.232700, 3.964333> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604009, -0.719825, -0.342090,
		-0.100228, 0.357220, -0.928627,
		0.790650, 0.595186, 0.143617,
		1.853114, 1.411256, 4.007418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.676118, 1.075924, 3.276721>,  <1.299659, 0.994626, 3.906886>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.676118, 1.075924, 3.276721> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.957159, 1.198132, 3.533783>,  <2.125784, 1.271456, 3.688020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.957159, 1.198132, 3.533783>,  <1.676118, 1.075924, 3.276721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.957159, 1.198132, 3.533783> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684299, -0.537781, -0.492470,
		0.195149, 0.785780, -0.586913,
		0.702603, 0.305519, 0.642656,
		2.167940, 1.289787, 3.726580>
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
