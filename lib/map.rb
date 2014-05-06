module Map  
  def self.interpret(command)
    responses = []
    
    if command.match(/^(?:show\s+)?(?:me\s+)?(?:a\s+)?map\s+(?:of\s+)?(.+)$/)
      search_term = $1.gsub(' ', '%20')
      
      responses << {
        :command => "open https://www.google.com/maps/search/#{ search_term }",
        :explanation => "Opens a browser with Google Maps searching for '#{ search_term }'."
      }
    end
    
    responses
  end
end

$executors << Map
