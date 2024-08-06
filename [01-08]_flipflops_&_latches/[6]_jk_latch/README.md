# JK Latch
<p>The JK flip-flop represents an advancement over the SR flip-flop by resolving the forbidden state issue inherent in the SR flip-flop through the inclusion of feedback. In a NAND gate-based J K latch, the feedback is taken from the output Q and Q and connected at the input NAND gate along with J, K and CLK.
J-K latches refer to level-triggered J-K flip-flops, distinguishing them from edge-triggered J-K flip-flops. Level-triggered devices are termed latches, while their edge-triggered counterparts are called flip-flops.</p>
<table align="center">
	<thead>
		<th>en</th>
		<th>rst</th>
		<th>j</th>
		<th>k</th>
		<th>q+</th>
		<th>qb+</th>
	</thead>
	<tbody align="center">
		<tr>
			<td>1</td>
			<td>0</td>
			<td>0</td>
			<td>0</td>
			<td>q</td>
			<td>qb</td>
		</tr>
		<tr>
			<td>1</td>
			<td>0</td>
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
			<td>1</td>
			<td>0</td>
		</tr>
		<tr>
			<td>1</td>
			<td>0</td>
			<td>1</td>
			<td>1</td>
			<td>0</td>
			<td>1</td>
		</tr>
		<tr>
			<td>1</td>
			<td>1</td>
			<td>x</td>
			<td>x</td>
			<td>0</td>
			<td>1</td>
		</tr>
	</tbody>
</table>

## Construction
### Using NAND Gates
![image](https://github.com/user-attachments/assets/0f7166a0-1d50-4533-ada9-0af38b5b3a44)

## Waveforms
![image](https://github.com/user-attachments/assets/270a0161-5bad-499f-93c1-5d91851a515a)



