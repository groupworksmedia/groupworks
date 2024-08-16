---
---
document.addEventListener 'DOMContentLoaded', (event) ->
  searchInput = document.getElementById 'tag-search'
  tags = document.querySelectorAll '.tag-cloud li'

  if searchInput
    searchInput.addEventListener 'input', ->
      searchTerm = @value.toLowerCase()
      
      tags.forEach (tag) ->
        tagName = tag.textContent.toLowerCase()
        if tagName.includes searchTerm
          tag.style.display = ''
        else
          tag.style.display = 'none'