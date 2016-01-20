casper.test.begin 'Landing Page Tests', (test) ->
  casper.start 'http://jekyll:4000', ->
    test.assertTitle 'Sales Team Test', 'Match the Title'
    test.assertExists 'a[href="mailto:sales@codeship.com"]', 'Match the Sales Email'
    test.assertTextExists 'sales@codeship.com'

  casper.run ->
    test.done()
  return
