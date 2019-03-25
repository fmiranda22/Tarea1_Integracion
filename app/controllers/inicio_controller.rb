
class InicioController < ApplicationController

  def inicio
    x = HTTParty.get("https://swapi.co/api/films/")

    @x = JSON.parse(x.body)["results"]
    peliculas = []
    @x.each do |p|
      aux = []
      aux.push(p["title"])
      aux.push(p["release_date"])
      aux.push(p["episode_id"])
      aux.push(p["director"])
      aux.push(p["producer"])
      peliculas.push(aux)
    end
    @nombres = peliculas


  end
end
