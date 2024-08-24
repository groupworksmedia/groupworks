---
---

document.addEventListener 'DOMContentLoaded', ->
  searchInput = document.getElementById('search-input')
  postsContainer = document.getElementById('posts-container')
  tagsList = document.getElementById('tags-list')
  posts = Array.from(postsContainer.getElementsByClassName('post'))

  filterPosts = (searchTerm, selectedTag) ->
    posts.forEach (post) ->
      title = post.querySelector('h2').textContent.toLowerCase()
      content = post.textContent.toLowerCase()
      tags = post.dataset.tags.toLowerCase().split(',')
      
      matchesSearch = searchTerm == '' or title.includes(searchTerm) or content.includes(searchTerm)
      matchesTag = selectedTag == '' or tags.includes(selectedTag)

      post.style.display = if matchesSearch and matchesTag then 'block' else 'none'

  searchInput.addEventListener 'input', ->
    searchTerm = @value.toLowerCase().trim()
    filterPosts(searchTerm, '')

  tagsList.addEventListener 'click', (e) ->
    if e.target.tagName == 'LI'
      selectedTag = e.target.dataset.tag
      filterPosts('', selectedTag)
      
      # Toggle active class
      tagsList.querySelectorAll('li').forEach (li) -> li.classList.remove('active')
      e.target.classList.add('active')