# Sequential Circuits: Latches

In this lab, you learned about the basic building block of sequential circuits: the latch.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Questions

###  Why can we not just use structural Verilog to implement latches?
If you don't use behavioral verilog for this task, it will error out because you have a dependency in which one cannot be set without the other already having been set.

### What is the meaning of always @(*) in a sensitivity block?

### What importance is memory to digital circuits?
Digital circuits require memory to be able to maintain a state that they can later use and do not have to immediatetly use the value, especially because it might not have the space available to immediately use said value.
