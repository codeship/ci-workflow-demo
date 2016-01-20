casper.test.begin 'Test the first post page', (test) ->
  casper.start 'http://jekyll:4000', ->
    @.clickLabel 'via RSS', 'a'
    @.then ->
      test.assertUrlMatch 'http://jekyll:4000/feed.xml'

  casper.run ->
    test.done()
  return
