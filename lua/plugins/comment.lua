return{
  'numToStr/Comment.nvim', -- "gc" to comment visual regions/lines 
  event = { "BufRead", "BufNewFile" },
  config = function ()
   require('Comment').setup()
  end
}
