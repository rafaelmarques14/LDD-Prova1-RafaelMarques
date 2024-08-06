let $ratings := ('G', 'NC-17', 'PG', 'PG-13', 'R')
return
<table>
  <thead>
    <tr>
      <th>Rating</th>
      <th>Quantity</th>
    </tr>
  </thead>
  <tbody>
  {
    for $rating in $ratings
    return
      <tr>
        <td>{ $rating }</td>
        <td>{ count(//film[@rating=$rating]) }</td>
      </tr>
  }
  </tbody>
</table>
