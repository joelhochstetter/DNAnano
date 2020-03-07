import sys
import pickle
import copy

# This def takes single strand DNA and generates a complement strand
def comp_seq_FN(raw_sequence):
    uppercase = {'a':'A', 'A':'A', 'c':'C', 'C':'C', 'g':'G', 'G':'G', 't':'T', 'T':'T'}
    complement = {'a':'T', 'A':'T', 'c':'G', 'C':'G', 'g':'C', 'G':'C', 't':'A', 'T':'A'}
    antisense_seq = ''
    for letter in raw_sequence:
	if letter in uppercase:
            antisense_seq = complement[letter] + antisense_seq
    return antisense_seq

def stap_color_string_FN(stap_color_int):
	return color_dc[stap_color_int]





#################################################################
#adjustable parameters
square_lattice = False #Set to False if honeycomb lattice is used
on_lattice_xover_scaf_loop_length = 2 #ssDNA loops at scaffold crossovers placed on the square lattice points?
off_lattice_xover_scaf_loop_length = 0 #ssDNA loops at scaffold crossovers placed off the square lattice points?
no_loop_exception_ra = [[17, 24], [16, 247]] #no scaffold loops allowed after the indicated base pointer positions
caDNAno_json_filename = '191128_TC_Lpore_cinch1.json'
maxiscaf_seq_filename = 'p7249.txt'
prefix = '191128_TC_Lpore_cinch1'	#Annotation prefix
#################################################################

#Read files
##Need to read in designed sequences for every length of scaffold strand in the caDNAno json file,
##otherwise an error will occur
input_file = file(caDNAno_json_filename, 'r')
all_file = eval(input_file.read())
input_file.close()
vstrands = all_file['vstrands']

# Load dictionary of sequence database from 5 to 69 mers, it looks something like this {5: ['ATGCC', 'ACCGT', .........], 6 {...}         
#(THERE ARE MORE THANE ONE TYPE OF SEQUENCES FOR EACH SEQUENCE LENGTH, CHOOSE TYPE 5 SEQUNCE AND CHOSSE THE 1ST SEQUENCE seq_dc[5][0])  
pickled_designed_seq_dc_filename = '130126_1127_designed_seqs_05-69.txt' 
input_file = file(pickled_designed_seq_dc_filename, 'r')
seq_dc = pickle.load(input_file)
input_file.close()
seq_dc = seq_dc.copy()


input_file = file('130210_0739_culled_32mers.txt', 'r')
seed_32mers_ra = pickle.load(input_file)
input_file.close()
seq_dc[32] = seed_32mers_ra[10]

input_file = file('130318_1512_culled_45mers.txt', 'r')
seed_45mers_ra = pickle.load(input_file)
input_file.close()
seq_dc[45] = seed_45mers_ra[:6]*2



#Import maxiscaf seq
input_file = file(maxiscaf_seq_filename, 'r')
maxiscaf_seq = input_file.read()
input_file.close()
maxiscaf_seq = comp_seq_FN(comp_seq_FN(maxiscaf_seq))


#print p7308.find(maxiscaf_seq)

seq_counter_dc = {} # DICTIONARY helps tp pick the 1st sequence of each sequence type from 5 to 69 mers
for seq_length in seq_dc.keys():
		seq_counter_dc[seq_length] = 0

#print(seq_counter_dc)

#Initialization of variables
null_bp = [-1, -1]
num_vstrands = len(vstrands)
num_helix_bases = len(vstrands[0]['scaf'])
stap_color_dc  = {}
stap_color_dc[13369344] = 'red'
stap_color_dc[16204552] = 'red orange'
stap_color_dc[16225054] = 'light orange'
stap_color_dc[11184640] = 'olive'
stap_color_dc[5749504]  = 'light green'
stap_color_dc[29184]    = 'dark green'
stap_color_dc[243362]   = 'cyan'
stap_color_dc[1507550]  = 'blue'
stap_color_dc[7536862]  = 'purple'
stap_color_dc[12060012] = 'magenta'
stap_color_dc[3355443]  = 'dark gray'
stap_color_dc[8947848]  = 'light gray'

#Generate dictionary for translating helix_num to vstrand_num
vsn = {}
for vstrand_num in range(num_vstrands):
	vsn[vstrands[vstrand_num]['num']] = vstrand_num
vsn[-1] = -1


#Generate arrays for stap paths and scaf paths
scaf_path_ra = []
stap_path_ra = []
for vstrand_num in range(num_vstrands): # For each helix, start from the 1st strand
	for helix_base_num in range(num_helix_bases): # For each base position start from bases 0
		for [parity, path_ra] in [['scaf', scaf_path_ra], ['stap', stap_path_ra]]: # for scaffold and scaffold path; for staple and staple path
			[prev_helix_num, prev_helix_base_num, next_helix_num, next_helix_base_num] = vstrands[vstrand_num][parity][helix_base_num]# read the coordinate
			if ([prev_helix_num, prev_helix_base_num] == null_bp) and ([next_helix_num, next_helix_base_num] != null_bp): # if discover a (-1,1) on 5' end AND the 3' end is not (-1,-1)
				sub_ra = [] # make a small sub dictionary to store the coordinate of the strand just discover (the coordinate here is just helix number and helix base number
				curr_helix_num, curr_helix_base_num = vstrands[vstrand_num]['num'], helix_base_num
				end_of_strand = False # then of course we have not reached the end of strand
				while not end_of_strand: # continue to add coordinate for the next base
					sub_ra.append([curr_helix_num, curr_helix_base_num])
					[curr_helix_num, curr_helix_base_num] = vstrands[vsn[curr_helix_num]][parity][curr_helix_base_num][2:]
					end_of_strand = [curr_helix_num, curr_helix_base_num] == null_bp # end_of_strand is fail until the 5' end encounter (-1,-1)
				path_ra.append(sub_ra) # keep adding coordinate of bases into a strand
# the path_ra is a dictionary contains staple and scaffold path : path_ra = scaf_path_ra  [  [helix number, helix base number] , [ ] , [ ], [ ] ]       
#print(scaf_path_ra)
#Determine length of maximum scaf by looking into the scaffolds database 
maxiscaf_path_ra = [] # initialize maximum scaffold
for sub_ra in scaf_path_ra:
	if len(sub_ra) > len(maxiscaf_path_ra): # if discover a longer scaffold
		maxiscaf_path_ra = sub_ra # replace the current maximum scaffold with the new longer scaffold

maxiscaf_length = 0
for [helix_num, helix_base_num] in maxiscaf_path_ra:
	maxiscaf_length += 1 + vstrands[vsn[helix_num]]['skip'][helix_base_num] + vstrands[vsn[helix_num]]['loop'][helix_base_num]
	if vstrands[vsn[helix_num]]['scaf'][helix_base_num][2] not in [helix_num, -1]:
		if square_lattice and [helix_num, helix_base_num] not in no_loop_exception_ra:
			if (helix_base_num - helix_num%2)%8 == 7:
				maxiscaf_length += on_lattice_xover_scaf_loop_length
			else:
				maxiscaf_length += off_lattice_xover_scaf_loop_length

if len(maxiscaf_seq) < maxiscaf_length:
	print "Error: ", maxiscaf_seq_filename, "only has ", len(maxiscaf_seq), "bases, whereas", maxiscaf_length, "bases are required for", caDNAno_json_filename, "."
	sys.exit()

print "According to", caDNAno_json_filename, ", the maxiscaf length should be", maxiscaf_length
print "The maxiscaf sequence length in ", maxiscaf_seq_filename, "is", len(maxiscaf_seq)
seq_dc[maxiscaf_length] = [maxiscaf_seq] # add the scaffold sequence into sequence dictionary, so there is a definition like {maxiscaf_length : [atatatatattcgcgcgatatcatcatctc....];
seq_counter_dc[maxiscaf_length] = 0 # 0 means the first element within the sequence dictionary, because we only have 1 type of scaffold sequence, so we need to assign 0. 
print



#Assign scaf base sequences
sub_ra = ['.' for i in range(num_helix_bases)]

scaf_base_seq_dc = {}
for vstrand_num in range(num_vstrands):
	scaf_base_seq_dc[vstrands[vstrand_num]['num']] = sub_ra[:] # this generates a dictionary contains helix number and empty helix base, e.g. 2: ['...', '...' ....] 

for sub_ra in scaf_path_ra: # For each scaffold strand (sub_ra is a complete scaffold strand dictionary contains helix number and helix base number)
	seq_length = 0
	#1/ count number of base in the current strand
	for [helix_num, helix_base_num] in sub_ra:
		seq_length += 1 + vstrands[vsn[helix_num]]['skip'][helix_base_num] + vstrands[vsn[helix_num]]['loop'][helix_base_num] # the number of base at the current helix base (e.g. if there is loop, then add no of base in that loop)
		if vstrands[vsn[helix_num]]['scaf'][helix_base_num][2] not in [helix_num, -1]: # these if-else is for square lattice
			if square_lattice and [helix_num, helix_base_num] not in no_loop_exception_ra:
				if (helix_base_num - helix_num%2)%8 == 7:
					seq_length += on_lattice_xover_scaf_loop_length
				else:
					seq_length += off_lattice_xover_scaf_loop_length
	# After knowing how long the sequence is, look into the seq dictionary to give the sequence to the current strand
	seq = seq_dc[seq_length][seq_counter_dc[seq_length]] # assign a sequence from the seq dictionary to the current strand (requires: number of bases in that sequence, and which sequence, e.g. 1st sequence)	
	#print("length is ",len(seq), "at" , helix_num, "and" , helix_base_num, "seq is" ,seq, "seq length is", seq_length)
	seq_counter_dc[seq_length] += 1 # use the next sequence for the next scaffold strand at the same sequence length
	seq_pointer = 0
	# After assigning sequence to a strand, we need to extract the base of that sequence and assign that to the base on that strand (e.g. at base 0 helix 1, the base is G, so [1,0] = G
	for [helix_num, helix_base_num] in sub_ra: # LOOK INTO EACH COMPLETED STRAND and refer to the coordinate of [helix number and base number] BECAUSE we want to check if there is any skip or loop
		base_length = 1 + vstrands[vsn[helix_num]]['skip'][helix_base_num] + vstrands[vsn[helix_num]]['loop'][helix_base_num]
		scaf_base_seq_dc[helix_num][helix_base_num] = seq[seq_pointer:seq_pointer + base_length] # if at the helix number and helix base number, there is a skip, this return [] and will not move to the next base on the sequence
																								  # e.g. if there is a skip then seq[x:x + 0], this return [empty], or there is a loop seq[x:x + 2], this return the next two bases
         # SKIP AND ADD BASE do not mean have a unpaired base but just mean we manipulate the number of base within every two normal turns
		seq_pointer += base_length
		if vstrands[vsn[helix_num]]['scaf'][helix_base_num][2] not in [helix_num, -1]:
			if square_lattice and [helix_num, helix_base_num] not in no_loop_exception_ra:
				if (helix_base_num - helix_num%2)%8 == 7:
					seq_pointer += on_lattice_xover_scaf_loop_length
				else:
					seq_pointer += off_lattice_xover_scaf_loop_length
					
#print(scaf_base_seq_dc[0][8:13])
#print(scaf_base_seq_dc[1][8:13])
#print(comp_seq_FN(scaf_base_seq_dc[1][10]))

#Print vstrand sequences
for vstrand_num in range(num_vstrands):
	helix_num = vstrands[vstrand_num]['num']
	if helix_num < 10:
		helix_num_string = '0' + str(helix_num)
	else:
		helix_num_string = str(helix_num)
	#print helix_num_string, ''.join(scaf_base_seq_dc[helix_num])

#Set up stap_color_ra to help with matching caDNAno colors to staple strands
sub_ra = [-1 for i in range(num_helix_bases)]
stap_color_ra = [sub_ra[:] for vstrand_num in range(num_vstrands)]
for vstrand_num in range(num_vstrands):
	for [helix_base_num, stap_color_int] in vstrands[vstrand_num]['stap_colors']:
		stap_color_ra[vstrand_num][helix_base_num] = stap_color_int

#Generate staple strand output
stap_output_ra = []
for sub_ra in stap_path_ra: # look at each strand in the staple strands
	seq = ''
	for [helix_num, helix_base_num] in sub_ra:
		seq += comp_seq_FN(scaf_base_seq_dc[helix_num][helix_base_num])
	start_pointer = sub_ra[0]
	end_pointer = sub_ra[-1]
	#print('sub_ra =', sub_ra, "sub_ra -1 is", sub_ra[-1])
	[first_helix_num, first_helix_base_num] = start_pointer
	stap_color_int = stap_color_ra[vsn[first_helix_num]][first_helix_base_num]
	stap_output_ra.append([stap_color_dc[stap_color_int], len(seq), start_pointer, end_pointer, seq])

#Generate scaffold strand output
scaf_output_ra = []
for sub_ra in scaf_path_ra:
	seq = ''
	for [helix_num, helix_base_num] in sub_ra:
		seq += scaf_base_seq_dc[helix_num][helix_base_num]
	start_pointer = sub_ra[0]
	end_pointer = sub_ra[-1] # output the last coordinate of the strand (i.e. 3' end)
	scaf_output_ra.append([len(seq), start_pointer, end_pointer, seq])

#print(scaf_output_ra)
#Sort staple strands according to caDNAno color
sorted_stap_output_ra = sorted(stap_output_ra, key = lambda stap_output:stap_output[0])

#print
#print


#Print sorted staple strand sequences with annotations
for sub_ra in sorted_stap_output_ra:
	seq = sub_ra[-1]
	note = prefix + ' stap strand, ' + str(sub_ra[0]) + ', ' + str(sub_ra[1]) + 'mer, ' + str(sub_ra[2]) + ' start, ' + str(sub_ra[3]) + ' end'
	#print seq + '\t\t' + note

#print
#print

#Print short scaffold-parity strand sequences with annotations
for sub_ra in scaf_output_ra:
	seq = sub_ra[-1]
	if len(seq) < 100:
		note = prefix + ' short scaf strand, ' + str(sub_ra[0]) + 'mer, ' + str(sub_ra[1]) + ' start, ' + str(sub_ra[2]) + ' end'
		#print seq + '\t\t' + note


#print
#print


#Print additional miscellaneous information
num_stap_bases = 0
for sub_ra in sorted_stap_output_ra:
	seq = sub_ra[-1]
	num_stap_bases += len(seq)
#print "number of stap bases is", num_stap_bases


num_short_scaf_bases = 0
for sub_ra in scaf_output_ra[1:]:
	seq = sub_ra[-1]
	num_short_scaf_bases += len(seq)
#print "number of short scaf bases is", num_short_scaf_bases

outer_helix = [52,48,44,40,36,32,28,24,20,16,12,8,4]
middle_helix = [55,51,47,43,39,35,31,27,23,19,15,11,7,3]
inner_helix = [54,50,46,42,38,34,30,26,22,18,14,10,6,2]
cinch = [57,56,59,58] 
pore = [60,61,62,63,64,65]



# Write to CSV
import csv
with open(prefix+ ' '+'.csv', 'wb') as csvfile:
    spamwriter = csv.writer(csvfile)
    #Print sorted staple strand sequences with annotations

				
    for sub_ra in sorted_stap_output_ra:
         if sub_ra[2][0] in outer_helix :		
			seq = sub_ra[-1]
			note = prefix + '__outer_helix stap strand, ' + str(sub_ra[0]) + ', ' + str(sub_ra[1]) + 'mer, ' + str(sub_ra[2]) + ' start, ' + str(sub_ra[3]) + ' end' 
			spamwriter.writerow([seq , note ])	
			
    for sub_ra in sorted_stap_output_ra:
         if sub_ra[2][0] in middle_helix:	
			seq = sub_ra[-1]
			note = prefix + '__middle_helix stap strand, ' + str(sub_ra[0]) + ', ' + str(sub_ra[1]) + 'mer, ' + str(sub_ra[2]) + ' start, ' + str(sub_ra[3]) + ' end' 
			spamwriter.writerow([seq , note ])	
			
    for sub_ra in sorted_stap_output_ra:
         if sub_ra[2][0] in inner_helix:	
			seq = sub_ra[-1]
			note = prefix + '__inner_helix stap strand, ' + str(sub_ra[0]) + ', ' + str(sub_ra[1]) + 'mer, ' + str(sub_ra[2]) + ' start, ' + str(sub_ra[3]) + ' end' 
			spamwriter.writerow([seq , note ])		

    for sub_ra in sorted_stap_output_ra:
         if sub_ra[2][0] in pore:	
			seq = sub_ra[-1]
			note = prefix + '__pore stap strand, ' + str(sub_ra[0]) + ', ' + str(sub_ra[1]) + 'mer, ' + str(sub_ra[2]) + ' start, ' + str(sub_ra[3]) + ' end' 
			spamwriter.writerow([seq , note ])	

    for sub_ra in sorted_stap_output_ra:
         if sub_ra[2][0] in cinch:	
			seq = sub_ra[-1]
			note = prefix + '__cinch stap strand, ' + str(sub_ra[0]) + ', ' + str(sub_ra[1]) + 'mer, ' + str(sub_ra[2]) + ' start, ' + str(sub_ra[3]) + ' end' 
			spamwriter.writerow([seq , note ])	
			
    for sub_ra in scaf_output_ra:
	    seq = sub_ra[-1]
	    note = prefix + '__short scaf strand, ' + str(sub_ra[0]) + 'mer, ' + str(sub_ra[1]) + ' start, ' + str(sub_ra[2]) + ' end'
            if len(seq) < 100 :
                spamwriter.writerow([seq , note ])			
    spamwriter.writerow('') 
	
    for sub_ra in scaf_output_ra:
	    seq = sub_ra[-1]
	    note = prefix + '__short scaf strand, ' + str(sub_ra[0]) + 'mer, ' + str(sub_ra[1]) + ' start, ' + str(sub_ra[2]) + ' end'
            if len(seq) < 100  and sub_ra[1][0] == 40:
                spamwriter.writerow([seq , note ])			
    spamwriter.writerow('')	



