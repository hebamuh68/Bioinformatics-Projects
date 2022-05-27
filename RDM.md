# **Bioinformatics Tools**

This project provides solutions to some biological problems using Python.

## **Problems solved:**

1. ### **Class CMD:** 

   - Generate random fasta file

   - Search for patterns in sequence

   - Find the minimum skew of sequence and GC content percentage

   - Find most frequent patterns with specific k-mer

   - Detecting Breast Cancer.

     

2. ### ****Tools used:****

   - Python
   - ML
   - Streamlit (GUI)

------

1. ### **Generate random fasta file**

   - **Input:** Number of sequences, Range of sequences length 

   - **Output:** Fasta file

   - **Time complexity:** O(n*m), where n is the number of sequences and m is length sequence



4. ### **Search for patterns in sequence**

   - **Input:** sequence, patterns

   - **Output:** whether each pattern is found in sequence or not

   - **Algorithms used:** Suffix tree

   - **Time complexity:** O(m) , where m is the length of the sub-string![img](https://lh3.googleusercontent.com/92gZUrV_f73XcQBFmDlt2TQjs68pO0zfq90BKng41pke9FFOkTKDbeG1yEL9MytCT_6gZf-0rvvpQgogAyqjwBGRhHu8f9I_J0j4mp_LaQabnxR7I2_xshkHvljDfKnbTeyJrwxJjNGSO8szqta99Q)

     

     

5. ### **Find a Position in a Genome Minimizing the Skew** :

   - The difference between the total amount of guanine and the total amount of cytosine is **negative on the reverse** half-strand  (201634 219518 = 17884) and **positive on the forward** half-strand (211607 207901 = 3706).

   - Thus, our idea is to traverse the genome, keeping a running total of the difference between the counts of G and C . If this difference starts increasing, then we guess that we are on the forward half-strand; on the other hand, if this difference starts decreasing, then we guess that we are on the reverse half-strand.

   - Thus, the skew should achieve a minimum at the position where the reverse half-strand ends and the forward half-strand begins, which is exactly the location of oriC!

![img](https://lh4.googleusercontent.com/pfV0W1tEH0CeB2YQkKmo0wyxebiQbnL34oKZoRYoFZOv6vXhFaHxF3DAW0wcvbuvps6KWoIyoxkNrup5gUv70WCBlTkfW5eaSkna0NW8-KYMNhjliLAUz1nUzMyIAeNXIwebO2nYSTNU1o0-LZA0-Q)



4. ### **Class File_Entry**:

   - ***Write_file()***

     - write entry on virtual disk

       

   - ***Read_File()***

     - Check if file exist
     - Then return it's content
