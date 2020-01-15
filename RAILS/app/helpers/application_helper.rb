module ApplicationHelper
  
  ESTADOS_BRASILEIROS = [
    ["AC", "AC"],
    ["AL", "AL"],
    ["AP", "AP"],
    ["AM", "AM"],
    ["BA", "BA"],
    ["CE", "CE"],
    ["DF", "DF"],
    ["ES", "ES"],
    ["GO", "GO"],
    ["MA", "MA"],
    ["MT", "MT"],
    ["MS", "MS"],
    ["MG", "MG"],
    ["PA", "PA"],
    ["PB", "PB"],
    ["PR", "PR"],
    ["PE", "PE"],
    ["PI", "PI"],
    ["RJ", "RJ"],
    ["RN", "RN"],
    ["RS", "RS"],
    ["RO", "RO"],
    ["RR", "RR"],
    ["SC", "SC"],
    ["SP", "SP"],
    ["SE", "SE"],
    ["TO", "TO"]
  ]

  def options_for_states(selected)
      options_for_select(ESTADOS_BRASILEIROS, selected)
  end
end
