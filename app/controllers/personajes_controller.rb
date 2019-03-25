class PersonajesController < ApplicationController
  def personas
    x = HTTParty.get("https://swapi.co/api/people/")
    @x2 = JSON.parse(x.body)
    @x = @x2['results']
    while true
      if @x2['next'].nil?
        break
      else
        aux = JSON.parse(HTTParty.get(@x2['next']).body)
        @x2 = aux
        aux['results'].each do |p|
          @x.push(p)
        end
      end
      end

    personas = []
    @x.each do |p|
      aux = []
      aux.push(p["name"])
      aux.push(p["url"])
      personas.push(aux)
    end
    @nombres = personas


  end
end
