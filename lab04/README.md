# Lab04 - Counting CPUs

## GenAI Usage

I used ChatGPT as a review and troubleshooting tool after writing and modifying the Bash scripts myself.

### Prompts used

I asked ChatGPT to:
- review my completed scripts and check whether they met the Lab04 requirements;
- check my Bash syntax and comments;
- help me test the scripts with different inputs;
- help me understand why a non-numeric input such as `hello` caused an `integer expression expected` error.

### Changes made after AI review

After testing my scripts, I found that entering a non-numeric value such as:

`./lab04_cpu_count_3.sh hello`

caused an `integer expression expected` error.

With ChatGPT's help, I identified that the input needed to be validated before performing a numeric comparison.

I then added numeric input validation to the relevant scripts and tested them again. After the change, non-numeric input produces an appropriate error message instead of causing a Bash comparison error.

I also used ChatGPT to review the final versions of my scripts and check that the comments and test cases were appropriate.

## Reflection

I wrote and modified the final scripts myself and tested them directly on the Linux VM.

This lab helped me understand how to count CPU cores, use command-line arguments, perform numeric comparisons, validate user input, and handle unexpected input safely.

Testing different inputs, including missing, numeric and non-numeric values, helped me understand why input validation is important in Bash scripts.
