casper.test.begin 'Go to the first post and check for Codeship links', (test) ->
  casper.start 'http://jekyll:4000', ->
    @.clickLabel 'First Post!', 'a'
    @.then ->
      test.assertExists 'a[href="https://codeship.com"]', 'Assert link to Codeship exists'
      test.assertExists 'a[href="https://codeship.com/documentation"]', 'Assert link to Codeship Documentation exists'

  casper.run ->
    test.done()
  return
