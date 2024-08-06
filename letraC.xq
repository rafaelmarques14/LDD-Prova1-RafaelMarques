let $min-length := min(//film[@rating='G']/@length)
return
<ul>
{
  for $film in //film[@rating='G' and @length = $min-length]
  return <li>{ $film/@title }</li>
}
</ul>
