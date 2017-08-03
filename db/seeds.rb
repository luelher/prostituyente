require 'csv'
puts "Loading seeds.."
centers = []

CSV.foreach(Rails.root.join('db', 'seeds', 'centros.csv'),  col_sep: ';') do |row|
  center_id, center_type, state_id, municipality_id, parish_id, name, direction, code_new_center = row
  next if center_id == "cod_centro"
  centers << {
      center_id: center_id, 
      center_type: center_type, 
      state_id: state_id, 
      municipality_id: municipality_id, 
      parish_id: parish_id, 
      name: name, 
      direction: direction, 
      code_new_center: code_new_center}
end

Center.create!(centers)

Center.where(state_id: 22).update_all(state: "AMAZONAS") # 
Center.where(state_id: 2).update_all(state: "ANZOATEGUI") # 
Center.where(state_id: 3).update_all(state: "APURE") # 
Center.where(state_id: 4).update_all(state: "ARAGUA") # 
Center.where(state_id: 5).update_all(state: "BARINAS") # 
Center.where(state_id: 6).update_all(state: "BOLIVAR") # 
Center.where(state_id: 7).update_all(state: "CARABOBO") # 
Center.where(state_id: 8).update_all(state: "COJEDES") # 
Center.where(state_id: 23).update_all(state: "DELTA AMACURO") # 
Center.where(state_id: 1).update_all(state: "DISTRITO CAPITAL") # 
Center.where(state_id: 99).update_all(state: "EMBAJADAS") # 
Center.where(state_id: 9).update_all(state: "FALCON") # 
Center.where(state_id: 10).update_all(state: "GUARICO") # 
Center.where(state_id: 11).update_all(state: "LARA") # 
Center.where(state_id: 12).update_all(state: "MERIDA") # 
Center.where(state_id: 13).update_all(state: "MIRANDA") # 
Center.where(state_id: 14).update_all(state: "MONAGAS") # 
Center.where(state_id: 15).update_all(state: "NUEVA ESPARTA") # 
Center.where(state_id: 16).update_all(state: "PORTUGUESA") # 
Center.where(state_id: 17).update_all(state: "SUCRE") # 
Center.where(state_id: 18).update_all(state: "TACHIRA") # 
Center.where(state_id: 19).update_all(state: "TRUJILLO") # 
Center.where(state_id: 24).update_all(state: "VARGAS") # 
Center.where(state_id: 20).update_all(state: "YARACUY") # 
Center.where(state_id: 21).update_all(state: "ZULIA") # 



# Yaracuy
Center.where(state_id: 20, municipality_id: 4).update_all(municipality: "CE. SAN FELIPE")
Center.where(state_id: 20, municipality_id: 12).update_all(municipality: "MP. ARISTIDES BASTID")
Center.where(state_id: 20, municipality_id: 1).update_all(municipality: "MP. BOLIVAR")
Center.where(state_id: 20, municipality_id: 2).update_all(municipality: "MP. BRUZUAL")
Center.where(state_id: 20, municipality_id: 10).update_all(municipality: "MP. COCOROTE")
Center.where(state_id: 20, municipality_id: 11).update_all(municipality: "MP. INDEPENDENCIA")
Center.where(state_id: 20, municipality_id: 8).update_all(municipality: "MP.JOSE ANTONIO PAEZ")
Center.where(state_id: 20, municipality_id: 9).update_all(municipality: "MP. LA TRINIDAD")
Center.where(state_id: 20, municipality_id: 13).update_all(municipality: "MP. MANUEL MONGE")
Center.where(state_id: 20, municipality_id: 3).update_all(municipality: "MP. NIRGUA")
Center.where(state_id: 20, municipality_id: 7).update_all(municipality: "MP. PEÑA")
Center.where(state_id: 20, municipality_id: 5).update_all(municipality: "MP. SUCRE")
Center.where(state_id: 20, municipality_id: 6).update_all(municipality: "MP. URACHICHE")
Center.where(state_id: 20, municipality_id: 14).update_all(municipality: "MP. VEROES")


# Amazonas
Center.where(state_id: 22, municipality_id: 1).update_all(municipality: "CE. ATURES")
Center.where(state_id: 22, municipality_id: 7).update_all(municipality: "MP. ALTO ORINOCO")
Center.where(state_id: 22, municipality_id: 2).update_all(municipality: "MP. ATABAPO")
Center.where(state_id: 22, municipality_id: 5).update_all(municipality: "MP. AUTANA")
Center.where(state_id: 22, municipality_id: 6).update_all(municipality: "MP. MANAPIARE")
Center.where(state_id: 22, municipality_id: 3).update_all(municipality: "MP. MAROA")
Center.where(state_id: 22, municipality_id: 4).update_all(municipality: "MP. RIO NEGRO")

# Anzoategui
Center.where(state_id: 2, municipality_id: 3).update_all(municipality: "CE. BOLIVAR")
Center.where(state_id: 2, municipality_id: 1).update_all(municipality: "MP. ANACO")
Center.where(state_id: 2, municipality_id: 2).update_all(municipality: "MP. ARAGUA")
Center.where(state_id: 2, municipality_id: 4).update_all(municipality: "MP. BRUZUAL")
Center.where(state_id: 2, municipality_id: 5).update_all(municipality: "MP. CAJIGAL")
Center.where(state_id: 2, municipality_id: 18).update_all(municipality: "MP. CARVAJAL")
Center.where(state_id: 2, municipality_id: 6).update_all(municipality: "MP. FREITES")
Center.where(state_id: 2, municipality_id: 14).update_all(municipality: "MP. GUANIPA")
Center.where(state_id: 2, municipality_id: 15).update_all(municipality: "MP. GUANTA")
Center.where(state_id: 2, municipality_id: 7).update_all(municipality: "MP. INDEPENDENCIA")
Center.where(state_id: 2, municipality_id: 17).update_all(municipality: "MP. L/DIEGO BAUTISTA")
Center.where(state_id: 2, municipality_id: 8).update_all(municipality: "MP. LIBERTAD")
Center.where(state_id: 2, municipality_id: 20).update_all(municipality: "MP. MC GREGOR")
Center.where(state_id: 2, municipality_id: 9).update_all(municipality: "MP. MIRANDA")
Center.where(state_id: 2, municipality_id: 10).update_all(municipality: "MP. MONAGAS")
Center.where(state_id: 2, municipality_id: 11).update_all(municipality: "MP. PEÑALVER")
Center.where(state_id: 2, municipality_id: 16).update_all(municipality: "MP. PIRITU")
Center.where(state_id: 2, municipality_id: 19).update_all(municipality: "MP. SANTA ANA")
Center.where(state_id: 2, municipality_id: 12).update_all(municipality: "MP. SIMON RODRIGUEZ")
Center.where(state_id: 2, municipality_id: 21).update_all(municipality: "MP.S JUAN CAPISTRANO")
Center.where(state_id: 2, municipality_id: 13).update_all(municipality: "MP. SOTILLO")

# Apure
Center.where(state_id: 3, municipality_id: 6).update_all(municipality: "CE. SAN FERNANDO")
Center.where(state_id: 3, municipality_id: 1).update_all(municipality: "MP. ACHAGUAS")
Center.where(state_id: 3, municipality_id: 7).update_all(municipality: "MP. BIRUACA")
Center.where(state_id: 3, municipality_id: 2).update_all(municipality: "MP. MUÑOZ")
Center.where(state_id: 3, municipality_id: 3).update_all(municipality: "MP. PAEZ")
Center.where(state_id: 3, municipality_id: 4).update_all(municipality: "MP. PEDRO CAMEJO")
Center.where(state_id: 3, municipality_id: 5).update_all(municipality: "MP. ROMULO GALLEGOS")

# Aragua
Center.where(state_id: 4, municipality_id: 1).update_all(municipality: "CE. GIRARDOT")
Center.where(state_id: 4, municipality_id: 11).update_all(municipality: "MP. BOLIVAR")
Center.where(state_id: 4, municipality_id: 15).update_all(municipality: "MP. CAMATAGUA")
Center.where(state_id: 4, municipality_id: 17).update_all(municipality: "MP.FRANCISCO LINARES")
Center.where(state_id: 4, municipality_id: 10).update_all(municipality: "MP. JOSE ANGEL LAMAS")
Center.where(state_id: 4, municipality_id: 3).update_all(municipality: "MP. JOSE FELIX RIVAS")
Center.where(state_id: 4, municipality_id: 16).update_all(municipality: "MP. JOSE R REVENGA")
Center.where(state_id: 4, municipality_id: 9).update_all(municipality: "MP. LIBERTADOR")
Center.where(state_id: 4, municipality_id: 13).update_all(municipality: "MP. MARIO B IRAGORRY")
Center.where(state_id: 4, municipality_id: 18).update_all(municipality: "MP.OCUMARE D L COSTA")
Center.where(state_id: 4, municipality_id: 4).update_all(municipality: "MP. SAN CASIMIRO")
Center.where(state_id: 4, municipality_id: 5).update_all(municipality: "MP. SAN SEBASTIAN")
Center.where(state_id: 4, municipality_id: 2).update_all(municipality: "MP. SANTIAGO MARIÑO")
Center.where(state_id: 4, municipality_id: 12).update_all(municipality: "MP. SANTOS MICHELENA")
Center.where(state_id: 4, municipality_id: 6).update_all(municipality: "MP. SUCRE")
Center.where(state_id: 4, municipality_id: 14).update_all(municipality: "MP. TOVAR")
Center.where(state_id: 4, municipality_id: 7).update_all(municipality: "MP. URDANETA")
Center.where(state_id: 4, municipality_id: 8).update_all(municipality: "MP. ZAMORA")

# Barinas
Center.where(state_id: 5, municipality_id: 2).update_all(municipality: "CE. BARINAS")
Center.where(state_id: 5, municipality_id: 10).update_all(municipality: "MP. A JOSE DE SUCRE")
Center.where(state_id: 5, municipality_id: 9).update_all(municipality: "MP. ALBERTO ARVELO T")
Center.where(state_id: 5, municipality_id: 12).update_all(municipality: "MP. ANDRES E. BLANCO")
Center.where(state_id: 5, municipality_id: 1).update_all(municipality: "MP. ARISMENDI")
Center.where(state_id: 5, municipality_id: 3).update_all(municipality: "MP. BOLIVAR")
Center.where(state_id: 5, municipality_id: 11).update_all(municipality: "MP. CRUZ PAREDES")
Center.where(state_id: 5, municipality_id: 4).update_all(municipality: "MP. EZEQUIEL ZAMORA")
Center.where(state_id: 5, municipality_id: 5).update_all(municipality: "MP. OBISPOS")
Center.where(state_id: 5, municipality_id: 6).update_all(municipality: "MP. PEDRAZA")
Center.where(state_id: 5, municipality_id: 7).update_all(municipality: "MP. ROJAS")
Center.where(state_id: 5, municipality_id: 8).update_all(municipality: "MP. SOSA")

# Bolivar
Center.where(state_id: 6, municipality_id: 3).update_all(municipality: "CE. HERES");
Center.where(state_id: 6, municipality_id: 8).update_all(municipality: "MP. BLVNO ANGOSTURA");
Center.where(state_id: 6, municipality_id: 1).update_all(municipality: "MP. CARONI");
Center.where(state_id: 6, municipality_id: 2).update_all(municipality: "MP. CEDEÑO");
Center.where(state_id: 6, municipality_id: 10).update_all(municipality: "MP. EL CALLAO");
Center.where(state_id: 6, municipality_id: 9).update_all(municipality: "MP. GRAN SABANA");
Center.where(state_id: 6, municipality_id: 11).update_all(municipality: "MP.PADRE PEDRO CHIEN");
Center.where(state_id: 6, municipality_id: 4).update_all(municipality: "MP. PIAR");
Center.where(state_id: 6, municipality_id: 5).update_all(municipality: "MP. ROSCIO");
Center.where(state_id: 6, municipality_id: 7).update_all(municipality: "MP. SIFONTES");
Center.where(state_id: 6, municipality_id: 6).update_all(municipality: "MP. SUCRE");

# Carabobo
Center.where(state_id: 7, municipality_id: 9).update_all(municipality: "CE. VALENCIA");
Center.where(state_id: 7, municipality_id: 1).update_all(municipality: "MP. BEJUMA");
Center.where(state_id: 7, municipality_id: 2).update_all(municipality: "MP. CARLOS ARVELO");
Center.where(state_id: 7, municipality_id: 3).update_all(municipality: "MP. DIEGO IBARRA");
Center.where(state_id: 7, municipality_id: 4).update_all(municipality: "MP. GUACARA");
Center.where(state_id: 7, municipality_id: 6).update_all(municipality: "MP. JUAN JOSE MORA");
Center.where(state_id: 7, municipality_id: 14).update_all(municipality: "MP. LIBERTADOR");
Center.where(state_id: 7, municipality_id: 11).update_all(municipality: "MP. LOS GUAYOS");
Center.where(state_id: 7, municipality_id: 10).update_all(municipality: "MP. MIRANDA");
Center.where(state_id: 7, municipality_id: 5).update_all(municipality: "MP. MONTALBAN");
Center.where(state_id: 7, municipality_id: 12).update_all(municipality: "MP. NAGUANAGUA");
Center.where(state_id: 7, municipality_id: 7).update_all(municipality: "MP. PUERTO CABELLO");
Center.where(state_id: 7, municipality_id: 13).update_all(municipality: "MP. SAN DIEGO");
Center.where(state_id: 7, municipality_id: 8).update_all(municipality: "MP. SAN JOAQUIN");

# Cojedes
Center.where(state_id: 8, municipality_id: 6).update_all(municipality: "CE. EZEQUIEL ZAMORA")
Center.where(state_id: 8, municipality_id: 1).update_all(municipality: "MP. ANZOATEGUI")
Center.where(state_id: 8, municipality_id: 3).update_all(municipality: "MP. GIRARDOT")
Center.where(state_id: 8, municipality_id: 8).update_all(municipality: "MP. LIMA BLANCO")
Center.where(state_id: 8, municipality_id: 4).update_all(municipality: "MP. PAO S J BAUTISTA")
Center.where(state_id: 8, municipality_id: 5).update_all(municipality: "MP. RICAURTE")
Center.where(state_id: 8, municipality_id: 9).update_all(municipality: "MP. ROMULO GALLEGOS")
Center.where(state_id: 8, municipality_id: 7).update_all(municipality: "MP. TINACO")
Center.where(state_id: 8, municipality_id: 2).update_all(municipality: "MP. TINAQUILLO")

# Delta Amacuro
Center.where(state_id: 23, municipality_id: 1).update_all(municipality: "CE. TUCUPITA")
Center.where(state_id: 23, municipality_id: 3).update_all(municipality: "MP. ANTONIO DIAZ")
Center.where(state_id: 23, municipality_id: 4).update_all(municipality: "MP. CASACOIMA")
Center.where(state_id: 23, municipality_id: 2).update_all(municipality: "MP. PEDERNALES")

# Distrito Capital
Center.where(state_id: 1, municipality_id: 1).update_all(municipality: "CE. BLVNO LIBERTADOR")

# Embajadas
Center.where(state_id: 99, municipality_id: 64).update_all(municipality: "RE del ALEMANIA")
Center.where(state_id: 99, municipality_id: 87).update_all(municipality: "RE del ANGOLA")
Center.where(state_id: 99, municipality_id: 1).update_all(municipality: "RE del ANTIGUA Y BARBUDA")
Center.where(state_id: 99, municipality_id: 2).update_all(municipality: "RE del ARABIA SAUDITA")
Center.where(state_id: 99, municipality_id: 3).update_all(municipality: "RE del ARGELIA")
Center.where(state_id: 99, municipality_id: 4).update_all(municipality: "RE del ARGENTINA")
Center.where(state_id: 99, municipality_id: 5).update_all(municipality: "RE del AUSTRALIA")
Center.where(state_id: 99, municipality_id: 6).update_all(municipality: "RE del AUSTRIA")
Center.where(state_id: 99, municipality_id: 7).update_all(municipality: "RE del BARBADOS")
Center.where(state_id: 99, municipality_id: 8).update_all(municipality: "RE del BELGICA")
Center.where(state_id: 99, municipality_id: 9).update_all(municipality: "RE del BELICE")
Center.where(state_id: 99, municipality_id: 88).update_all(municipality: "RE del BENIN")
Center.where(state_id: 99, municipality_id: 96).update_all(municipality: "RE del BIELORRUSIA")
Center.where(state_id: 99, municipality_id: 10).update_all(municipality: "RE del BOLIVIA")
Center.where(state_id: 99, municipality_id: 11).update_all(municipality: "RE del BRASIL")
Center.where(state_id: 99, municipality_id: 12).update_all(municipality: "RE del BULGARIA")
Center.where(state_id: 99, municipality_id: 13).update_all(municipality: "RE del CANADA")
Center.where(state_id: 99, municipality_id: 14).update_all(municipality: "RE del CHECOLOVAQUIA")
Center.where(state_id: 99, municipality_id: 15).update_all(municipality: "RE del CHILE")
Center.where(state_id: 99, municipality_id: 16).update_all(municipality: "RE del CHINA")
Center.where(state_id: 99, municipality_id: 98).update_all(municipality: "RE del CHIPRE")
Center.where(state_id: 99, municipality_id: 17).update_all(municipality: "RE del COLOMBIA")
Center.where(state_id: 99, municipality_id: 89).update_all(municipality: "RE del CONGO")
Center.where(state_id: 99, municipality_id: 18).update_all(municipality: "RE del COREA")
Center.where(state_id: 99, municipality_id: 19).update_all(municipality: "RE del COSTA RICA")
Center.where(state_id: 99, municipality_id: 20).update_all(municipality: "RE del CUBA")
Center.where(state_id: 99, municipality_id: 95).update_all(municipality: "RE del CURAZAO")
Center.where(state_id: 99, municipality_id: 21).update_all(municipality: "RE del DINAMARCA")
Center.where(state_id: 99, municipality_id: 22).update_all(municipality: "RE del DOMINICA")
Center.where(state_id: 99, municipality_id: 23).update_all(municipality: "RE del ECUADOR")
Center.where(state_id: 99, municipality_id: 24).update_all(municipality: "RE del EGIPTO")
Center.where(state_id: 99, municipality_id: 25).update_all(municipality: "RE del EL SALVADOR")
Center.where(state_id: 99, municipality_id: 94).update_all(municipality: "RE del EMIRATOS ARABES UNID")
Center.where(state_id: 99, municipality_id: 26).update_all(municipality: "RE del ESPAÑA")
Center.where(state_id: 99, municipality_id: 82).update_all(municipality: "RE del ETIOPIA")
Center.where(state_id: 99, municipality_id: 29).update_all(municipality: "RE del FILIPINAS")
Center.where(state_id: 99, municipality_id: 30).update_all(municipality: "RE del FINLANDIA")
Center.where(state_id: 99, municipality_id: 31).update_all(municipality: "RE del FRANCIA")
Center.where(state_id: 99, municipality_id: 91).update_all(municipality: "RE del GAMBIA")
Center.where(state_id: 99, municipality_id: 32).update_all(municipality: "RE del GRAN BRETAÑA")
Center.where(state_id: 99, municipality_id: 33).update_all(municipality: "RE del GRECIA")
Center.where(state_id: 99, municipality_id: 78).update_all(municipality: "RE del GRENADA")
Center.where(state_id: 99, municipality_id: 34).update_all(municipality: "RE del GUATEMALA")
Center.where(state_id: 99, municipality_id: 35).update_all(municipality: "RE del GUAYANA")
Center.where(state_id: 99, municipality_id: 90).update_all(municipality: "RE del GUINEA ECUATORIAL")
Center.where(state_id: 99, municipality_id: 36).update_all(municipality: "RE del HAITI")
Center.where(state_id: 99, municipality_id: 37).update_all(municipality: "RE del HONDURAS")
Center.where(state_id: 99, municipality_id: 38).update_all(municipality: "RE del HUNGRIA")
Center.where(state_id: 99, municipality_id: 39).update_all(municipality: "RE del INDIA")
Center.where(state_id: 99, municipality_id: 40).update_all(municipality: "RE del INDONESIA")
Center.where(state_id: 99, municipality_id: 41).update_all(municipality: "RE del IRAK")
Center.where(state_id: 99, municipality_id: 65).update_all(municipality: "RE del IRAN")
Center.where(state_id: 99, municipality_id: 42).update_all(municipality: "RE del ISRAEL")
Center.where(state_id: 99, municipality_id: 43).update_all(municipality: "RE del ITALIA")
Center.where(state_id: 99, municipality_id: 44).update_all(municipality: "RE del JAMAICA")
Center.where(state_id: 99, municipality_id: 45).update_all(municipality: "RE del JAPON")
Center.where(state_id: 99, municipality_id: 97).update_all(municipality: "RE del JORDANIA")
Center.where(state_id: 99, municipality_id: 46).update_all(municipality: "RE del KENIA")
Center.where(state_id: 99, municipality_id: 47).update_all(municipality: "RE del KUWAIT")
Center.where(state_id: 99, municipality_id: 48).update_all(municipality: "RE del LIBANO")
Center.where(state_id: 99, municipality_id: 49).update_all(municipality: "RE del LIBIA")
Center.where(state_id: 99, municipality_id: 50).update_all(municipality: "RE del MALASIA")
Center.where(state_id: 99, municipality_id: 86).update_all(municipality: "RE del MALI")
Center.where(state_id: 99, municipality_id: 51).update_all(municipality: "RE del MARRUECOS")
Center.where(state_id: 99, municipality_id: 52).update_all(municipality: "RE del MEXICO")
Center.where(state_id: 99, municipality_id: 92).update_all(municipality: "RE del MOZAMBIQUE")
Center.where(state_id: 99, municipality_id: 53).update_all(municipality: "RE del NAMIBIA")
Center.where(state_id: 99, municipality_id: 54).update_all(municipality: "RE del NICARAGUA")
Center.where(state_id: 99, municipality_id: 55).update_all(municipality: "RE del NIGERIA")
Center.where(state_id: 99, municipality_id: 56).update_all(municipality: "RE del NORUEGA")
Center.where(state_id: 99, municipality_id: 57).update_all(municipality: "RE del PAISES BAJOS")
Center.where(state_id: 99, municipality_id: 81).update_all(municipality: "RE del PALESTINA")
Center.where(state_id: 99, municipality_id: 58).update_all(municipality: "RE del PANAMA")
Center.where(state_id: 99, municipality_id: 59).update_all(municipality: "RE del PARAGUAY")
Center.where(state_id: 99, municipality_id: 60).update_all(municipality: "RE del PERU")
Center.where(state_id: 99, municipality_id: 61).update_all(municipality: "RE del POLONIA")
Center.where(state_id: 99, municipality_id: 62).update_all(municipality: "RE del PORTUGAL")
Center.where(state_id: 99, municipality_id: 80).update_all(municipality: "RE del QATAR")
Center.where(state_id: 99, municipality_id: 63).update_all(municipality: "RE del REPUBLICA DOMINICANA")
Center.where(state_id: 99, municipality_id: 66).update_all(municipality: "RE del RUMANIA")
Center.where(state_id: 99, municipality_id: 28).update_all(municipality: "RE del RUSIA")
Center.where(state_id: 99, municipality_id: 67).update_all(municipality: "RE del SAN KITTS Y NEVIS")
Center.where(state_id: 99, municipality_id: 69).update_all(municipality: "RE del SANTA LUCIA")
Center.where(state_id: 99, municipality_id: 79).update_all(municipality: "RE del SANTA LUCIA")
Center.where(state_id: 99, municipality_id: 68).update_all(municipality: "RE del SAN VICENTE Y LAS GR")
Center.where(state_id: 99, municipality_id: 85).update_all(municipality: "RE del SENEGAL")
Center.where(state_id: 99, municipality_id: 84).update_all(municipality: "RE del SINGAPUR")
Center.where(state_id: 99, municipality_id: 70).update_all(municipality: "RE del SIRIA")
Center.where(state_id: 99, municipality_id: 71).update_all(municipality: "RE del SUDAFRICA")
Center.where(state_id: 99, municipality_id: 93).update_all(municipality: "RE del SUDAN")
Center.where(state_id: 99, municipality_id: 72).update_all(municipality: "RE del SUECIA")
Center.where(state_id: 99, municipality_id: 73).update_all(municipality: "RE del SUIZA")
Center.where(state_id: 99, municipality_id: 74).update_all(municipality: "RE del SURINAME")
Center.where(state_id: 99, municipality_id: 75).update_all(municipality: "RE del TRINIDAD Y TOBAGO")
Center.where(state_id: 99, municipality_id: 76).update_all(municipality: "RE del TURQUIA")
Center.where(state_id: 99, municipality_id: 77).update_all(municipality: "RE del URUGUAY")
Center.where(state_id: 99, municipality_id: 27).update_all(municipality: "RE del USA")
Center.where(state_id: 99, municipality_id: 83).update_all(municipality: "RE del VIETNAM")

# Falcon
Center.where(state_id: 9, municipality_id: 10).update_all(municipality: "CE. MIRANDA")
Center.where(state_id: 9, municipality_id: 1).update_all(municipality: "MP. ACOSTA")
Center.where(state_id: 9, municipality_id: 2).update_all(municipality: "MP. BOLIVAR")
Center.where(state_id: 9, municipality_id: 3).update_all(municipality: "MP. BUCHIVACOA")
Center.where(state_id: 9, municipality_id: 21).update_all(municipality: "MP. CACIQUE MANAURE")
Center.where(state_id: 9, municipality_id: 4).update_all(municipality: "MP. CARIRUBANA")
Center.where(state_id: 9, municipality_id: 5).update_all(municipality: "MP. COLINA")
Center.where(state_id: 9, municipality_id: 14).update_all(municipality: "MP. DABAJURO")
Center.where(state_id: 9, municipality_id: 6).update_all(municipality: "MP. DEMOCRACIA")
Center.where(state_id: 9, municipality_id: 7).update_all(municipality: "MP. FALCON")
Center.where(state_id: 9, municipality_id: 8).update_all(municipality: "MP. FEDERACION")
Center.where(state_id: 9, municipality_id: 20).update_all(municipality: "MP. JACURA")
Center.where(state_id: 9, municipality_id: 16).update_all(municipality: "MP. LOS TAQUES")
Center.where(state_id: 9, municipality_id: 9).update_all(municipality: "MP. MAUROA")
Center.where(state_id: 9, municipality_id: 15).update_all(municipality: "MP. MONS. ITURRIZA")
Center.where(state_id: 9, municipality_id: 22).update_all(municipality: "MP. PALMA SOLA")
Center.where(state_id: 9, municipality_id: 11).update_all(municipality: "MP. PETIT")
Center.where(state_id: 9, municipality_id: 17).update_all(municipality: "MP. PIRITU")
Center.where(state_id: 9, municipality_id: 19).update_all(municipality: "MP. SAN FRANCISCO")
Center.where(state_id: 9, municipality_id: 12).update_all(municipality: "MP. SILVA")
Center.where(state_id: 9, municipality_id: 23).update_all(municipality: "MP. SUCRE")
Center.where(state_id: 9, municipality_id: 25).update_all(municipality: "MP. TOCOPERO")
Center.where(state_id: 9, municipality_id: 18).update_all(municipality: "MP. UNION")
Center.where(state_id: 9, municipality_id: 24).update_all(municipality: "MP. URUMACO")
Center.where(state_id: 9, municipality_id: 13).update_all(municipality: "MP. ZAMORA")

# Guarico
Center.where(state_id: 10, municipality_id:  6).update_all(municipality: "CE. ROSCIO")
Center.where(state_id: 10, municipality_id:  8).update_all(municipality: "MP. CAMAGUAN")
Center.where(state_id: 10, municipality_id: 14).update_all(municipality: "MP. CHAGUARAMAS")
Center.where(state_id: 10, municipality_id: 11).update_all(municipality: "MP. EL SOCORRO")
Center.where(state_id: 10, municipality_id:  1).update_all(municipality: "MP. INFANTE")
Center.where(state_id: 10, municipality_id: 10).update_all(municipality: "MP. LAS MERCEDES")
Center.where(state_id: 10, municipality_id:  2).update_all(municipality: "MP. MELLADO")
Center.where(state_id: 10, municipality_id:  3).update_all(municipality: "MP. MIRANDA")
Center.where(state_id: 10, municipality_id:  4).update_all(municipality: "MP. MONAGAS")
Center.where(state_id: 10, municipality_id: 12).update_all(municipality: "MP. ORTIZ")
Center.where(state_id: 10, municipality_id:  5).update_all(municipality: "MP. RIBAS")
Center.where(state_id: 10, municipality_id: 15).update_all(municipality: "MP.SAN GERONIMO DE G")
Center.where(state_id: 10, municipality_id:  9).update_all(municipality: "MP.S JOSE DE GUARIBE")
Center.where(state_id: 10, municipality_id: 13).update_all(municipality: "MP. S MARIA DE IPIRE")
Center.where(state_id: 10, municipality_id:  7).update_all(municipality: "MP. ZARAZA")

# Lara
Center.where(state_id: 11, municipality_id:  2).update_all(municipality: "CE. IRIBARREN")
Center.where(state_id: 11, municipality_id:  8).update_all(municipality: "MP. ANDRES E BLANCO")
Center.where(state_id: 11, municipality_id:  1).update_all(municipality: "MP. CRESPO")
Center.where(state_id: 11, municipality_id:  3).update_all(municipality: "MP. JIMENEZ")
Center.where(state_id: 11, municipality_id:  4).update_all(municipality: "MP. MORAN")
Center.where(state_id: 11, municipality_id:  5).update_all(municipality: "MP. PALAVECINO")
Center.where(state_id: 11, municipality_id:  9).update_all(municipality: "MP. SIMON PLANAS")
Center.where(state_id: 11, municipality_id:  6).update_all(municipality: "MP. TORRES")
Center.where(state_id: 11, municipality_id:  7).update_all(municipality: "MP. URDANETA")

# Merida
Center.where(state_id: 12, municipality_id:  8).update_all(municipality: "CE. LIBERTADOR")
Center.where(state_id: 12, municipality_id:  1).update_all(municipality: "MP. ALBERTO ADRIANI")
Center.where(state_id: 12, municipality_id:  2).update_all(municipality: "MP. ANDRES BELLO")
Center.where(state_id: 12, municipality_id: 11).update_all(municipality: "MP. ANTONIO PINTO S.")
Center.where(state_id: 12, municipality_id: 22).update_all(municipality: "MP. ARICAGUA")
Center.where(state_id: 12, municipality_id:  3).update_all(municipality: "MP. ARZOBISPO CHACON")
Center.where(state_id: 12, municipality_id:  4).update_all(municipality: "MP. CAMPO ELIAS")
Center.where(state_id: 12, municipality_id: 13).update_all(municipality: "MP. CARACCIOLO PARRA")
Center.where(state_id: 12, municipality_id: 14).update_all(municipality: "MP.CARDENAL QUINTERO")
Center.where(state_id: 12, municipality_id:  5).update_all(municipality: "MP. GUARAQUE")
Center.where(state_id: 12, municipality_id:  6).update_all(municipality: "MP.JULIO CESAR SALAS")
Center.where(state_id: 12, municipality_id:  7).update_all(municipality: "MP. JUSTO BRICEÑO")
Center.where(state_id: 12, municipality_id: 10).update_all(municipality: "MP. MIRANDA")
Center.where(state_id: 12, municipality_id: 12).update_all(municipality: "MP.OB. RAMOS DE LORA")
Center.where(state_id: 12, municipality_id: 21).update_all(municipality: "MP. PADRE NOGUERA")
Center.where(state_id: 12, municipality_id: 15).update_all(municipality: "MP. PUEBLO LLANO")
Center.where(state_id: 12, municipality_id: 16).update_all(municipality: "MP. RANGEL")
Center.where(state_id: 12, municipality_id: 17).update_all(municipality: "MP. RIVAS DAVILA")
Center.where(state_id: 12, municipality_id:  9).update_all(municipality: "MP. SANTOS MARQUINA")
Center.where(state_id: 12, municipality_id: 18).update_all(municipality: "MP. SUCRE")
Center.where(state_id: 12, municipality_id: 19).update_all(municipality: "MP. TOVAR")
Center.where(state_id: 12, municipality_id: 20).update_all(municipality: "MP. TULIO F CORDERO")
Center.where(state_id: 12, municipality_id: 23).update_all(municipality: "MP. ZEA")

# Miranda
Center.where(state_id: 13, municipality_id:  3).update_all(municipality: "CE. GUAICAIPURO")
Center.where(state_id: 13, municipality_id:  1).update_all(municipality: "MP. ACEVEDO")
Center.where(state_id: 13, municipality_id: 14).update_all(municipality: "MP. ANDRES BELLO")
Center.where(state_id: 13, municipality_id: 16).update_all(municipality: "MP. BARUTA")
Center.where(state_id: 13, municipality_id:  2).update_all(municipality: "MP. BRION")
Center.where(state_id: 13, municipality_id: 20).update_all(municipality: "MP. BUROZ")
Center.where(state_id: 13, municipality_id: 17).update_all(municipality: "MP. CARRIZAL")
Center.where(state_id: 13, municipality_id: 18).update_all(municipality: "MP. CHACAO")
Center.where(state_id: 13, municipality_id: 12).update_all(municipality: "MP. CRISTOBAL ROJAS")
Center.where(state_id: 13, municipality_id: 19).update_all(municipality: "MP. EL HATILLO")
Center.where(state_id: 13, municipality_id:  4).update_all(municipality: "MP. INDEPENDENCIA")
Center.where(state_id: 13, municipality_id:  5).update_all(municipality: "MP. LANDER")
Center.where(state_id: 13, municipality_id: 13).update_all(municipality: "MP. LOS SALIAS")
Center.where(state_id: 13, municipality_id:  6).update_all(municipality: "MP. PAEZ")
Center.where(state_id: 13, municipality_id:  7).update_all(municipality: "MP. PAZ CASTILLO")
Center.where(state_id: 13, municipality_id: 21).update_all(municipality: "MP. PEDRO GUAL")
Center.where(state_id: 13, municipality_id:  8).update_all(municipality: "MP. PLAZA")
Center.where(state_id: 13, municipality_id: 15).update_all(municipality: "MP. SIMON BOLIVAR")
Center.where(state_id: 13, municipality_id:  9).update_all(municipality: "MP. SUCRE")
Center.where(state_id: 13, municipality_id: 10).update_all(municipality: "MP. URDANETA")
Center.where(state_id: 13, municipality_id: 11).update_all(municipality: "MP. ZAMORA")

# Monagas
Center.where(state_id: 14, municipality_id:  7).update_all(municipality: "CE. MATURIN")
Center.where(state_id: 14, municipality_id:  1).update_all(municipality: "MP. ACOSTA")
Center.where(state_id: 14, municipality_id: 11).update_all(municipality: "MP. AGUASAY")
Center.where(state_id: 14, municipality_id:  2).update_all(municipality: "MP. BOLIVAR")
Center.where(state_id: 14, municipality_id:  3).update_all(municipality: "MP. CARIPE")
Center.where(state_id: 14, municipality_id:  4).update_all(municipality: "MP. CEDEÑO")
Center.where(state_id: 14, municipality_id:  5).update_all(municipality: "MP. EZEQUIEL ZAMORA")
Center.where(state_id: 14, municipality_id:  6).update_all(municipality: "MP. LIBERTADOR")
Center.where(state_id: 14, municipality_id:  8).update_all(municipality: "MP. PIAR")
Center.where(state_id: 14, municipality_id:  9).update_all(municipality: "MP. PUNCERES")
Center.where(state_id: 14, municipality_id: 12).update_all(municipality: "MP. SANTA BARBARA")
Center.where(state_id: 14, municipality_id: 10).update_all(municipality: "MP. SOTILLO")
Center.where(state_id: 14, municipality_id: 13).update_all(municipality: "MP. URACOA")

# Nueva Esparta
Center.where(state_id: 15, municipality_id:  1).update_all(municipality: "CE. ARISMENDI")
Center.where(state_id: 15, municipality_id: 10).update_all(municipality: "MP.ANTOLIN DEL CAMPO")
Center.where(state_id: 15, municipality_id:  2).update_all(municipality: "MP. DIAZ")
Center.where(state_id: 15, municipality_id: 11).update_all(municipality: "MP. GARCIA")
Center.where(state_id: 15, municipality_id:  3).update_all(municipality: "MP. GOMEZ")
Center.where(state_id: 15, municipality_id:  4).update_all(municipality: "MP. MANEIRO")
Center.where(state_id: 15, municipality_id:  5).update_all(municipality: "MP. MARCANO")
Center.where(state_id: 15, municipality_id:  6).update_all(municipality: "MP. MARIÑO")
Center.where(state_id: 15, municipality_id:  7).update_all(municipality: "MP.PENIN. DE MACANAO")
Center.where(state_id: 15, municipality_id:  9).update_all(municipality: "MP. TUBORES")
Center.where(state_id: 15, municipality_id:  8).update_all(municipality: "MP.VILLALBA(I.COCHE)")

# Portuguesa
Center.where(state_id: 16, municipality_id:  3).update_all(municipality: "CE. GUANARE")
Center.where(state_id: 16, municipality_id: 10).update_all(municipality: "MP. AGUA BLANCA")
Center.where(state_id: 16, municipality_id:  1).update_all(municipality: "MP. ARAURE")
Center.where(state_id: 16, municipality_id:  2).update_all(municipality: "MP. ESTELLER")
Center.where(state_id: 16, municipality_id: 12).update_all(municipality: "MP.GENARO BOCONOITO")
Center.where(state_id: 16, municipality_id:  4).update_all(municipality: "MP. GUANARITO")
Center.where(state_id: 16, municipality_id:  9).update_all(municipality: "MP. M.JOSE V DE UNDA")
Center.where(state_id: 16, municipality_id:  5).update_all(municipality: "MP. OSPINO")
Center.where(state_id: 16, municipality_id:  6).update_all(municipality: "MP. PAEZ")
Center.where(state_id: 16, municipality_id: 11).update_all(municipality: "MP. PAPELON")
Center.where(state_id: 16, municipality_id: 14).update_all(municipality: "MP. SANTA ROSALIA")
Center.where(state_id: 16, municipality_id: 13).update_all(municipality: "MP.S RAFAEL DE ONOTO")
Center.where(state_id: 16, municipality_id:  7).update_all(municipality: "MP. SUCRE")
Center.where(state_id: 16, municipality_id:  8).update_all(municipality: "MP. TUREN")

# Sucre
Center.where(state_id: 17, municipality_id:  9).update_all(municipality: "CE. SUCRE")
Center.where(state_id: 17, municipality_id: 11).update_all(municipality: "MP. ANDRES E BLANCO")
Center.where(state_id: 17, municipality_id: 13).update_all(municipality: "MP. ANDRES MATA")
Center.where(state_id: 17, municipality_id:  1).update_all(municipality: "MP. ARISMENDI")
Center.where(state_id: 17, municipality_id:  2).update_all(municipality: "MP. BENITEZ")
Center.where(state_id: 17, municipality_id:  3).update_all(municipality: "MP. BERMUDEZ")
Center.where(state_id: 17, municipality_id: 14).update_all(municipality: "MP. BOLIVAR")
Center.where(state_id: 17, municipality_id:  4).update_all(municipality: "MP. CAJIGAL")
Center.where(state_id: 17, municipality_id: 15).update_all(municipality: "MP. CRUZ S ACOSTA")
Center.where(state_id: 17, municipality_id: 12).update_all(municipality: "MP. LIBERTADOR")
Center.where(state_id: 17, municipality_id:  5).update_all(municipality: "MP. MARIÑO")
Center.where(state_id: 17, municipality_id:  6).update_all(municipality: "MP. MEJIA")
Center.where(state_id: 17, municipality_id:  7).update_all(municipality: "MP. MONTES")
Center.where(state_id: 17, municipality_id:  8).update_all(municipality: "MP. RIBERO")
Center.where(state_id: 17, municipality_id: 10).update_all(municipality: "MP. VALDEZ")

# Tachira
Center.where(state_id: 18, municipality_id:  8).update_all(municipality: "CE. SAN CRISTOBAL")
Center.where(state_id: 18, municipality_id: 18).update_all(municipality: "MP. ANDRES BELLO")
Center.where(state_id: 18, municipality_id: 23).update_all(municipality: "MP. ANTONIO ROMULO C")
Center.where(state_id: 18, municipality_id:  1).update_all(municipality: "MP. AYACUCHO")
Center.where(state_id: 18, municipality_id:  2).update_all(municipality: "MP. BOLIVAR")
Center.where(state_id: 18, municipality_id:  4).update_all(municipality: "MP. CARDENAS")
Center.where(state_id: 18, municipality_id: 10).update_all(municipality: "MP. CORDOBA")
Center.where(state_id: 18, municipality_id: 24).update_all(municipality: "MP. FCO DE MIRANDA")
Center.where(state_id: 18, municipality_id: 19).update_all(municipality: "MP. FERNANDEZ FEO")
Center.where(state_id: 18, municipality_id: 11).update_all(municipality: "MP. GARCIA DE HEVIA")
Center.where(state_id: 18, municipality_id: 12).update_all(municipality: "MP. GUASIMOS")
Center.where(state_id: 18, municipality_id:  3).update_all(municipality: "MP. INDEPENDENCIA")
Center.where(state_id: 18, municipality_id:  5).update_all(municipality: "MP. JAUREGUI")
Center.where(state_id: 18, municipality_id: 25).update_all(municipality: "MP. JOSE MARIA VARGA")
Center.where(state_id: 18, municipality_id:  6).update_all(municipality: "MP. JUNIN")
Center.where(state_id: 18, municipality_id: 20).update_all(municipality: "MP. LIBERTAD")
Center.where(state_id: 18, municipality_id: 14).update_all(municipality: "MP. LIBERTADOR")
Center.where(state_id: 18, municipality_id:  7).update_all(municipality: "MP. LOBATERA")
Center.where(state_id: 18, municipality_id: 13).update_all(municipality: "MP. MICHELENA")
Center.where(state_id: 18, municipality_id: 15).update_all(municipality: "MP. PANAMERICANO")
Center.where(state_id: 18, municipality_id: 16).update_all(municipality: "MP.PEDRO MARIA UREÑA")
Center.where(state_id: 18, municipality_id: 26).update_all(municipality: "MP. RAFAEL URDANETA")
Center.where(state_id: 18, municipality_id: 21).update_all(municipality: "MP. SAMUEL MALDONADO")
Center.where(state_id: 18, municipality_id: 29).update_all(municipality: "MP. SAN JUDAS TADEO")
Center.where(state_id: 18, municipality_id: 22).update_all(municipality: "MP. SEBORUCO")
Center.where(state_id: 18, municipality_id: 27).update_all(municipality: "MP. SIMON RODRIGUEZ")
Center.where(state_id: 18, municipality_id: 17).update_all(municipality: "MP. SUCRE")
Center.where(state_id: 18, municipality_id: 28).update_all(municipality: "MP. TORBES")
Center.where(state_id: 18, municipality_id:  9).update_all(municipality: "MP. URIBANTE")

# Trujillo
Center.where(state_id: 19, municipality_id:  5).update_all(municipality: "CE. TRUJILLO")
Center.where(state_id: 19, municipality_id: 15).update_all(municipality: "MP. ANDRES BELLO")
Center.where(state_id: 19, municipality_id:  2).update_all(municipality: "MP. BOCONO")
Center.where(state_id: 19, municipality_id: 16).update_all(municipality: "MP. BOLIVAR")
Center.where(state_id: 19, municipality_id:  8).update_all(municipality: "MP. CANDELARIA")
Center.where(state_id: 19, municipality_id:  3).update_all(municipality: "MP. CARACHE")
Center.where(state_id: 19, municipality_id:  4).update_all(municipality: "MP. ESCUQUE")
Center.where(state_id: 19, municipality_id: 17).update_all(municipality: "MP. JOSE F M CAÑIZAL")
Center.where(state_id: 19, municipality_id: 18).update_all(municipality: "MP. JUAN V CAMPO ELI")
Center.where(state_id: 19, municipality_id: 19).update_all(municipality: "MP. LA CEIBA")
Center.where(state_id: 19, municipality_id:  9).update_all(municipality: "MP. MIRANDA")
Center.where(state_id: 19, municipality_id: 10).update_all(municipality: "MP. MONTE CARMELO")
Center.where(state_id: 19, municipality_id: 11).update_all(municipality: "MP. MOTATAN")
Center.where(state_id: 19, municipality_id: 12).update_all(municipality: "MP. PAMPAN")
Center.where(state_id: 19, municipality_id: 20).update_all(municipality: "MP. PAMPANITO")
Center.where(state_id: 19, municipality_id:  1).update_all(municipality: "MP. RAFAEL RANGEL")
Center.where(state_id: 19, municipality_id: 13).update_all(municipality: "MP.S RAFAEL CARVAJAL")
Center.where(state_id: 19, municipality_id: 14).update_all(municipality: "MP. SUCRE")
Center.where(state_id: 19, municipality_id:  6).update_all(municipality: "MP. URDANETA")
Center.where(state_id: 19, municipality_id:  7).update_all(municipality: "MP. VALERA")

# Vargas
Center.where(state_id: 24, municipality_id: 1).update_all(municipality: "CE. VARGAS")

# Zulia
Center.where(state_id: 21, municipality_id:  5).update_all(municipality: "CE. MARACAIBO")
Center.where(state_id: 21, municipality_id: 17).update_all(municipality: "MP. ALMIRANTE P")
Center.where(state_id: 21, municipality_id:  1).update_all(municipality: "MP. BARALT")
Center.where(state_id: 21, municipality_id:  7).update_all(municipality: "MP. BLVNO GUAJIRA")
Center.where(state_id: 21, municipality_id: 14).update_all(municipality: "MP. CABIMAS")
Center.where(state_id: 21, municipality_id: 12).update_all(municipality: "MP. CATATUMBO")
Center.where(state_id: 21, municipality_id:  3).update_all(municipality: "MP. COLON")
Center.where(state_id: 21, municipality_id: 20).update_all(municipality: "MP. FRANCISCO J PULG")
Center.where(state_id: 21, municipality_id: 16).update_all(municipality: "MP. JESUS E LOSSADA")
Center.where(state_id: 21, municipality_id: 19).update_all(municipality: "MP. JESUS M SEMPRUN")
Center.where(state_id: 21, municipality_id: 10).update_all(municipality: "MP. LA CAÑADA DE U.")
Center.where(state_id: 21, municipality_id: 11).update_all(municipality: "MP. LAGUNILLAS")
Center.where(state_id: 21, municipality_id:  8).update_all(municipality: "MP. MACHIQUES DE P")
Center.where(state_id: 21, municipality_id:  4).update_all(municipality: "MP. MARA")
Center.where(state_id: 21, municipality_id:  6).update_all(municipality: "MP. MIRANDA")
Center.where(state_id: 21, municipality_id: 13).update_all(municipality: "MP.ROSARIO DE PERIJA")
Center.where(state_id: 21, municipality_id: 18).update_all(municipality: "MP. SAN FRANCISCO")
Center.where(state_id: 21, municipality_id:  2).update_all(municipality: "MP. SANTA RITA")
Center.where(state_id: 21, municipality_id: 21).update_all(municipality: "MP. SIMON BOLIVAR")
Center.where(state_id: 21, municipality_id:  9).update_all(municipality: "MP. SUCRE")
Center.where(state_id: 21, municipality_id: 15).update_all(municipality: "MP.VALMORE RODRIGUEZ")

