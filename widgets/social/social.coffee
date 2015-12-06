class Dashing.Social extends Dashing.Widget
  @accessor 'twitter', Dashing.AnimatedValue
  @accessor 'facebook', Dashing.AnimatedValue
  @accessor 'instagram', Dashing.AnimatedValue
  @accessor 'linkedin', Dashing.AnimatedValue
  @accessor 'updatedAtMessage', ->
    timestamp = new Date()
    hours = timestamp.getHours()
    minutes = ("0" + timestamp.getMinutes()).slice(-2)
    "Last updated at #{hours}:#{minutes}"
  ready: ->
    if @get('unordered')
      $(@node).find('ol').remove()
    else
      $(@node).find('ul').remove()
