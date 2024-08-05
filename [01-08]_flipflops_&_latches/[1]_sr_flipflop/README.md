# SR Flipflop
<p>An SR Flip-Flop (Set-Reset Flip-Flop) is a fundamental building block in sequential logic circuits, used for storing binary data. It is a bi-stable circuit with two stable states, where the output can be set to logic 1 by applying logic 0 to the S input and reset to logic 0 by applying logic 0 to the R input. The basic SR Flip-Flop circuit consists of two gates connected in a positive feedback loop, ensuring that the output remains stable in one of the two states.</p>
<p>It is a Flip Flop with two inputs, one is S and the other is R. S here stands for Set and R here stands for Reset. Set basically indicates set the flip flop which means output 1 and reset indicates resetting the flip flop which means output 0. Here, a clock pulse is supplied to operate this flip-flop, hence it is a clocked flip-flop.</p>
<table>
	<thead>
		<th>S</th>
		<th>R</th>
		<th>q+</th>
		<th>qb+</th>
	</thead>
	<tbody>
		<tr>
			<td>0</td>
			<td>0</td>
			<td>q</td>
			<td>qb</td>
		</tr>
		<tr>
			<td>0</td>
			<td>1</td>
			<td>0</td>
			<td>1</td>
		</tr>
		<tr>
			<td>1</td>
			<td>0</td>
			<td>1</td>
			<td>0</td>
		</tr>
		<tr>
			<td>1</td>
			<td>1</td>
			<td>U</td>
			<td>U</td>
		</tr>
	</tbody>
</table>

## Construction
### SR Flip Flop Construction using 2 NOR + 2 AND Gates
![image](https://github.com/user-attachments/assets/58de03bc-fc82-4058-bf7e-f1f46b627d40)

### SR Flip Flop Construction using 4 NAND Gates
![image](https://github.com/user-attachments/assets/7681eec4-b90d-415e-8bf6-d5cc2c21b774)


## Waveforms
![sr_flipslop_waveforms](https://github.com/user-attachments/assets/411bfa3a-17e3-490d-8a80-7ab4919bc180)
## Schematic
![sr_schematic](https://github.com/user-attachments/assets/ff25ea1c-17a8-4e8e-8586-911a06455b5c)

### References
<a href="https://www.geeksforgeeks.org/sr-flip-flop/">GeeksforGeeks</a>
