# SR Flipflop
<p>An SR Flip-Flop (Set-Reset Flip-Flop) is a fundamental building block in sequential logic circuits, used for storing binary data. It is a bi-stable circuit with two stable states, where the output can be set to logic 1 by applying logic 0 to the S input and reset to logic 0 by applying logic 0 to the R input. The basic SR Flip-Flop circuit consists of two gates connected in a positive feedback loop, ensuring that the output remains stable in one of the two states.</p>
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

## Waveforms
![sr_flipslop_waveforms](https://github.com/user-attachments/assets/411bfa3a-17e3-490d-8a80-7ab4919bc180)
## Schematic
![sr_schematic](https://github.com/user-attachments/assets/ff25ea1c-17a8-4e8e-8586-911a06455b5c)


