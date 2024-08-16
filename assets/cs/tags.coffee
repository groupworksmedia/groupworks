document.addEventListener 'DOMContentLoaded', ->
  tagLinks = document.querySelectorAll('.tag-link')
  tagResults = document.getElementById('tag-results')
  taggedPosts = document.getElementById('tagged-posts')
  currentTag = document.getElementById('current-tag')
  backToAll = document.getElementById('back-to-all')
  contentWrapper = document.querySelector('.content-wrapper')
  posts = document.querySelectorAll('.post')

  showTaggedPosts = (tag) ->
    tagResults.style.display = 'block'
    contentWrapper.style.display = 'none'
    currentTag.textContent = tag
    taggedPosts.innerHTML = ''
    
    for post in posts
      postTags = post.getAttribute('data-tags').split(',')
      if tag.toLowerCase() in (t.toLowerCase() for t in postTags)
        clone = post.cloneNode(true)
        taggedPosts.appendChild(clone)

  backToAll.addEventListener 'click', (e) ->
    e.preventDefault()
    tagResults.style.display = 'none'
    contentWrapper.style.display = 'flex'

  for link in tagLinks
    link.addEventListener 'click', (e) ->
      e.preventDefault()
      tag = @getAttribute('data-tag')
      showTaggedPosts(tag)

  # Search functionality
  searchInput = document.getElementById('tag-search')
  tags = document.querySelectorAll('.tag-cloud li')

  searchInput.addEventListener 'input', ->
    searchTerm = @value.toLowerCase()
    for tag in tags
      tagName = tag.textContent.toLowerCase()
      tag.style.display = if tagName.includes(searchTerm) then '' else 'none'