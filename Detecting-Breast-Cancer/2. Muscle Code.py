from Bio.Align.Applications import MuscleCommandline
from io import StringIO
from Bio import AlignIO

muscle_exe = r"I:\programme\BIO\muscle3.8.31_i86win32.exe"

input_sequences = "INPUT.fasta"
output_alignment = "OUTPUT.TXT"

def align_v1 (Fasta):
    muscle_cline = MuscleCommandline(muscle_exe, input=Fasta, out=output_alignment)
    stdout, stderr = muscle_cline()
    MultipleSeqAlignment = AlignIO.read(output_alignment, "fasta")
    print( MultipleSeqAlignment)

align_v1(input_sequences)
