# DocPad Configuration File
# http://docpad.org/docs/config

# Define the DocPad Configuration
docpadConfig = {
  templateData:
    site:
      title: "Understanding React"
      description: "Code demos for Understanding React"
      keywords: "react"

    getPreparedTitle: ->
      # if we have a document title, then we should use that and suffix the site's title onto it
      if @document.title
        "#{@document.title} | #{@site.title}"
      # if our document does not have it's own title, then we should just use the site's title
      else
        @site.title

    getPreparedDescription: ->
      # if we have a document description, then we should use that, otherwise use the site's description
      @document.description or @site.description

    getPreparedKeywords: ->
      # Merge the document keywords with the site keywords
      @site.keywords.concat(@document.keywords or []).join(', ')

  collections:
    demos: ->
      @getCollection('documents')
      .findAllLive(
        relativeOutDirPath: 'demos'
        order:
          $exists: true
        [ order: 1 ]
      ).on 'add', (model) ->
        model.setMetaDefaults layout:"demo"
}

# Export the DocPad Configuration
module.exports = docpadConfig