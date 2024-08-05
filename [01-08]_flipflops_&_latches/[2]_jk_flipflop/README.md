# JK Flipflop

<p>It is one kind of sequential logic circuit which stores binary information in bitwise manner. It consists of two inputs and two outputs. Inputs are Set(J) & Reset(K) and their corresponding outputs are Q and Q’. JK flipflop has two modes of operation which are synchronous mode and asynchronous mode. In synchronous mode, the state will be changed with the clock(clk) signal, and in asynchronous mode, the change of state is independent from its clock signal.</p>

<table  align="center">
	<thead>
		<th>J</th>
		<th>K</th>
		<th>q+</th>
		<th>qb+</th>
		<th>Comments</th>
	</thead>
	<tbody>
		<tr>
			<td>0</td>
			<td>0</td>
			<td>q</td>
			<td>qb</td>
			<td>Initial State</td>
		</tr>
		<tr>
			<td>0</td>
			<td>1</td>
			<td>0</td>
			<td>1</td>
			<td>Set</td>
		</tr>
		<tr>
			<td>1</td>
			<td>0</td>
			<td>1</td>
			<td>0</td>
			<td>Reset</td>
		</tr>
		<tr>
			<td>1</td>
			<td>1</td>
			<td>q</td>
			<td>qb</td>
			<td>Toggle</td>
		</tr>
	</tbody>
</table>


## Construction
### Block Diagram
![image](https://github.com/user-attachments/assets/fce776b5-0052-4544-ae2f-db0fe7532792)

### Using Basic Gates
![image](https://github.com/user-attachments/assets/ba4537c5-2e91-4f06-94be-04a337794ae4)
<p>Two 3-input NAND gates are used in place of the original two 2-input AND gates. The outputs at Q and Q’ are coupled to each gate’s third input. Since the two inputs are now interlocked, the SR flip-flop’s cross-coupling enables the previously invalid condition of (S = “1”, R = “1”) to be employed to perform the “toggle action”. In a circuit “set”, the bottom NAND gate interrupts the J input coming from the “0” position of Q’. In the “RESET” state, the top NAND gate interrupts the K input coming from the 0 positions of Q. We can use Q and Q’ to control the input because they are always different. The flip flop is toggled according to the truth table when both inputs “J” and “K” are set to 1.</p>



## Waveforms
![jk_flipslop_waveforms](https://github.com/user-attachments/assets/81e37448-7cde-4406-8e97-ae9b4cda394a)

## Schematic
![jk_schematic](https://github.com/user-attachments/assets/182d3946-a6c8-400b-a2e1-a6de393d51fc)


### References
<a href="https://www.geeksforgeeks.org/what-is-jk-flip-flop/">GeeksforGeeks</a>


