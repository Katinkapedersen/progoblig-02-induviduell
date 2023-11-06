use context essentials2021
# Jeg startet med å lage en tabell med navnene på alle flaggene. Den skal illustrere alle flaggene det skal være mulig å produsere med funskjonen. Under er en oppgavebeskrivelse som forteller hva som må gjøres for å tegne de ulike flaggene.

table: land
  row: "norge"
  row: "danmark"
  row: "sverige"
  row: "finland"
  row: "island"
  row: "feroyene"
end

"For å tegne et flagg, skriv 'flagg('land')'."
"Husk hermetegn rundt landet du vil tegne!"
"Landene som er mulig å tegne ser man i tabellen over."

# Deretter lagde jeg de ulike flaggene. Jeg brukte funksjonen "fun flagg(land):". Den gjør at man kan skrive inn alle de ulike 

  
fun flagg(land):
  a = put-image(rectangle(330, 50, "solid", "white"), 165, 120, rectangle(330, 240, "solid", "red"))
  b = put-image(rectangle(50, 240, "solid", "white"), 130, 120, a)
  c = put-image(rectangle(330, 25, "solid", "dark blue"), 165, 120, b)
  norge = put-image(rectangle(25, 240, "solid", "dark blue"), 130, 120, c)
  
  e = put-image(rectangle(330, 45, "solid", "yellow"), 165, 120, rectangle(330, 240, "solid", "blue"))
  f = put-image(rectangle(45, 240, "solid", "yellow"), 130, 120, e)
  g = put-image(rectangle(330, 25, "solid", "yellow"), 165, 120, f)
  sverige = put-image(rectangle(25, 240, "solid", "yellow"), 130, 120, g)

  h = put-image(rectangle(330, 40, "solid", "white"), 165, 120, rectangle(330, 240, "solid", "red"))
  i = put-image(rectangle(40, 240, "solid", "white"), 130, 120, h)
  j = put-image(rectangle(330, 25, "solid", "white"), 165, 120, i)
  danmark = put-image(rectangle(25, 240, "solid", "white"), 130, 120, j)
  

  k = put-image(rectangle(330, 50, "solid", "dark blue"), 165, 120, rectangle(330, 240, "solid", "white"))
  l = put-image(rectangle(50, 240, "solid", "dark blue"), 130, 120, k)
  m = put-image(rectangle(330, 25, "solid", "dark blue"), 165, 120, l)
  finland = put-image(rectangle(25, 240, "solid", "dark blue"), 130, 120, m)


  n = put-image(rectangle(330, 50, "solid", "white"), 165, 120, rectangle(330, 240, "solid", "dark blue"))
  o = put-image(rectangle(50, 240, "solid", "white"), 130, 120, n)
  p = put-image(rectangle(330, 25, "solid", "red"), 165, 120, o)
  island = put-image(rectangle(25, 240, "solid", "red"), 130, 120, p)


  q = put-image(rectangle(330, 50, "solid", "blue"), 165, 120, rectangle(330, 240, "solid", "white"))
  r = put-image(rectangle(50, 240, "solid", "blue"), 130, 120, q)
  s = put-image(rectangle(330, 25, "solid", "red"), 165, 120, r)
  feroyene = put-image(rectangle(25, 240, "solid", "red"), 130, 120, s)
  
  if land == "norge":
    norge
  else if land == "danmark":
    danmark
  else if land == "sverige":
    sverige
  else if land == "finland":
    finland
  else if land == "island":
    island
  else if land == "feroyene":
    feroyene
  else: 
    "Det er ikke mulig å fremstille dette elementet"
  end 
end