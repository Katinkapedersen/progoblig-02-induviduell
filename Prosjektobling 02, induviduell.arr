use context essentials2021
# Oppgavebeskrivelse: Designe og implementere en funksjon, som beregner den totale (estimerte) mengden av energiforbruket til en typisk innbygger i et industrielt land. 


# Oppgave a og b)

include gdrive-sheets
include shared-gdrive(
  "dcic-2021",
  "1wyQZj_L0qqV9Ekgr9au6RX2iqt2Ga8Ep")
include data-source
ssid = "1RYN0i4Zx_UETVuYacgaGfnFcv4l9zd9toQTTdkQkj7g"

kWh-wealthy-consumer-data =  
  load-table: komponent, energi
    source: load-spreadsheet(ssid).sheet-by-name("kWh", true)
    sanitize energi using  string-sanitizer
end

kWh-wealthy-consumer-data

distance-travelled-per-day = 30 #(aproximate amount)
distance-per-unit-of-fuel = 10 #(aproximate amount)
energy-per-unit-of-fuel = 10

energy-per-day = ( distance-travelled-per-day / 
                            distance-per-unit-of-fuel ) * 
                                        energy-per-unit-of-fuel

fun energi-to-number(str :: String) -> Number:
cases(Option) string-to-number(str):
    | some(a) => a
    | none => energy-per-day
  end
where:
  energi-to-number("") is energy-per-day
  energi-to-number("48") is 48
end

# Oppgave c) 
# Endring av alle verdier (som er av type String) i kolonnen energi til tall 

kwh = 
  transform-column(kWh-wealthy-consumer-data, "energi", energi-to-number)

kwh

# Oppgave d) 
# Beregning av energiforbruket for bilbruk og beregning av det totale energiforbruket for en "typisk" innbygger i et industriland

"Det totale energiforbruket for en 'typisk' innbygger i et industriland vil være:"
sum(kwh, "energi")


# Oppgave e)
    
bar-chart(kwh, "komponent", "energi") # med bil


  
    

