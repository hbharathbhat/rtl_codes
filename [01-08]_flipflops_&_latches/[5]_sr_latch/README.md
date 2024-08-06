# SR Latch
<p>S-R latches i.e., Set-Reset latches are the simplest form of latches and are implemented using two inputs: S (Set) and R (Reset). The S input sets the output to 1, while the R input resets the output to 0. When both S and R inputs are at 1, the latch is said to be in an “undefined” state. </p>
<table align="center">
	<thead>
		<th>en</th>
		<th>rst</th>
		<th>s</th>
		<th>r</th>
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
			<td>U</td>
			<td>U</td>
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
![image](https://github.com/user-attachments/assets/98ab049a-ad51-4c2f-bb33-aa957394133d) 
### Using NOR Gates
![image](https://github.com/user-attachments/assets/e61cb20c-8a70-4356-bcbf-d24a7a88c1b6)


## Waveforms
![image](https://github.com/user-attachments/assets/fa0ff6da-d304-499b-aa48-70705c6dd786)


