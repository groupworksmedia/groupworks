---
---

# Adapted from https://github.com/christian-fei/Simple-Jekyll-Search

class JekyllSearch
  constructor: (@options = {}) ->
    @options.searchInput ?= "#search-input"
    @options.resultsContainer ?= "#results-container"
    @options.json ?= "/search.json"
    @options.searchResultTemplate ?= '<li><a href="{url}">{title}</a></li>'
    @options.noResultsText ?= "No results found"
    @options.limit ?= 10
    @options.fuzzy ?= false

  init: ->
    @loadJSON()
    @bindKeyup()

  loadJSON: ->
    xhr = new XMLHttpRequest()
    xhr.open "GET", @options.json, true
    xhr.onload = =>
      if xhr.status == 200
        @data = JSON.parse(xhr.responseText)
        @initSearch()
    xhr.send()

  initSearch: ->
    @searchInput = document.querySelector(@options.searchInput)
    @resultsContainer = document.querySelector(@options.resultsContainer)
    @bindKeyup()

  bindKeyup: ->
    @searchInput.addEventListener "keyup", =>
      @search @searchInput.value

  search: (query) ->
    return [] if query.length < 2

    results = @findMatches query, @data
    @displayResults results

  findMatches: (query, data) ->
    matches = []
    regex = new RegExp(query, "i")

    for item in data
      if regex.test(item.title) or regex.test(item.content)
        matches.push item

    matches.slice 0, @options.limit

  displayResults: (results) ->
    html = ""
    if results.length
      for result in results
        html += @options.searchResultTemplate
          .replace("{url}", result.url)
          .replace("{title}", result.title)
    else
      html += "<li>#{@options.noResultsText}</li>"

    @resultsContainer.innerHTML = html

search = new JekyllSearch()

document.addEventListener "DOMContentLoaded", ->
  search.init()