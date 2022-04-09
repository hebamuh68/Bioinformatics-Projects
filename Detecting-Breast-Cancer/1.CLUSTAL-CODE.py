from Bio.Align.Applications import ClustalwCommandline
import os
from Bio import AlignIO
from Bio import Phylo

cline = ClustalwCommandline("clustalw2", infile="INPUT.TXT")
print(cline)

clustalw_exe = r"I:\programme\BIO\clustalw2.exe"
clustalw_cline = ClustalwCommandline(clustalw_exe, infile="INPUT.TXT")
assert os.path.isfile(clustalw_exe), "Clustal W executable missing"
stdout, stderr = clustalw_cline()
align = AlignIO.read("INPUT.aln", "clustal")
print(align)

tree = Phylo.read("INPUT.dnd", "newick")
Phylo.draw_ascii(tree)
