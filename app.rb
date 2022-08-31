def ask(question)
  print "#{question}: "
  gets.chomp
end

def ask_i(question)
  ask(question).to_i
end

puts "Formula de Harris Benedict (Taxa de metabolismo)\n\n"

gender = ask('Genero(m/f)')
age = ask_i('Idade(anos)')
weigth = ask_i('Peso(kg)')
height = ask_i('Altura(cm)')
activity_level = ask(
  """Nivel de atividade
  1 sedentario
  2 exercicios leves (1 a 3 vezes na semana)
  3 exercicios moderados (3 a 5 vezes na semana)
  4 exercicios intensos (6 a 7 vezes na semana)
  5 atleta

Digite o número"""
)

gender_mod = gender == 'm' ? (+5) : (-161)

activity_mod = {
  '1' => 1.2,
  '2' => 1.375,
  '3' => 1.55,
  '4' => 1.725,
  '5' => 1.9
}[activity_level]

result = (((weigth * 10) + (height * 6.25) - (age * 5)) + gender_mod) * activity_mod

puts "\nSua taxa de metabolismo basal é de: #{result.to_i} kcal por dia"

