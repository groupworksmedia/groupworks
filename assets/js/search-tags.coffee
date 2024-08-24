---
---

class SearchTags
  constructor: ->
    @searchInput = document.getElementById('search-input')
    @resultsContainer = document.getElementById('results-container')
    @tagResults = document.getElementById('tag-results')
    @taggedPosts = document.getElementById('tagged-posts')
    @searchResults = document.getElementById('search-results')
    @currentTag = document.getElementById('current-tag')
    @backToAll = document.getElementById('back-to-all')
    @contentWrapper = document.querySelector('.content-wrapper')
    @allPosts = document.getElementById('all-posts')
    @posts = document.querySelectorAll('.post')
    @tagLinks = document.querySelectorAll('.tag-link')
    @postsData = []

  init: ->
    @loadPostsData()
    @bindEvents()

  loadPostsData: ->
    @posts.forEach (post) =>
      @postsData.push
        title: post.querySelector('h2 a').textContent
        url: post.querySelector('h2 a').href
        content: post.textContent
        tags: post.getAttribute('data-tags').split(',').map (tag) -> tag.trim().toLowerCase()
        element: post

  bindEvents: ->
    @searchInput.addEventListener 'input', @handleSearch
    @backToAll.addEventListener 'click', @showAllPosts
    @tagLinks.forEach (link) =>
      link.addEventListener 'click', (e) =>
        e.preventDefault()
        @showTaggedPosts(link.getAttribute('data-tag'))

  handleSearch: =>
    query = @searchInput.value.toLowerCase()
    if query.length > 1
      results = @searchPosts(query)
      @displaySearchResults(results)
    else
      @showAllPosts()

  searchPosts: (query) ->
    @postsData.filter (post) ->
      post.title.toLowerCase().includes(query) or
      post.content.toLowerCase().includes(query) or
      post.tags.some (tag) -> tag.includes(query)

  displaySearchResults: (results) ->
    @hideAllSections()
    @searchResults.style.display = 'block'
    @backToAll.style.display = 'inline-block'
    if results.length > 0
      @resultsContainer.innerHTML = results.map((post) ->
        post.element.outerHTML
      ).join('')
    else
      @resultsContainer.innerHTML = "<p>No results found.</p>"

  showTaggedPosts: (tag) ->
    @hideAllSections()
    @tagResults.style.display = 'block'
    @backToAll.style.display = 'inline-block'
    @currentTag.textContent = tag
    taggedPosts = @postsData.filter (post) -> post.tags.includes(tag.toLowerCase())
    if taggedPosts.length > 0
      @taggedPosts.innerHTML = taggedPosts.map((post) ->
        post.element.outerHTML
      ).join('')
    else
      @taggedPosts.innerHTML = "<p>No posts found with this tag.</p>"

  showAllPosts: =>
    @hideAllSections()
    @contentWrapper.style.display = 'flex'
    @allPosts.style.display = 'block'
    @searchInput.value = ''

  hideAllSections: ->
    @allPosts.style.display = 'none'
    @searchResults.style.display = 'none'
    @tagResults.style.display = 'none'
    @backToAll.style.display = 'none'

document.addEventListener 'DOMContentLoaded', ->
  searchTags = new SearchTags()
  searchTags.init()