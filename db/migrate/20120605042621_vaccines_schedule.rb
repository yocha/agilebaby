class VaccinesSchedule < ActiveRecord::Migration
  def up
    Category.create(name: 'vaccines', schedule: true)
    Category.create(name: 'medical tests', schedule: true)
    [[2, 'months', "DTaP - IPV - hepatitis B(Pediarix) / pneumoncoccal & Hib", ''],
      [3,'months', "Rotavirus (oral vaccine)", ''],
      [4,'months', "DTaP - IPV - hepatitis B(Pediarix) / pneumoncoccal & Hib / Rotavirus", ''],
      [6,'months', "DTaP - IPV - hepatitis B(Pediarix) / pneumoncoccal & Hib / Rotavirus", ''],
      [12,'months', "MMR & varicella (chickenpox)",''],
      [15,'months', "DTap/pneumoncoccal & Hib", ''],
      [18, 'months', "hepatitis A", ''],
      [2,'years', "hepatitis A", ''],
      [4, 'years', "DTaP - IPV (Kinrix) / MMR & varicella", ''],
      [11, 'years', "Tdap & menigococcal (Menactra)", '']].each do |entry|
      s = Schedule.new
      s.name = entry[2]
      s.age = entry[0]
      s.data_type = entry[1]
      s.description = entry[3]
      s.category = Category.find_by_name('vaccines')
      s.save
    end
    [[6, "months", "Influenza",''],
      [12, "months", "Complete Blood Count (CBC) / Lead Level",''],
      [2, "years", "Complete Blood Count (CBC) / Lead Level",''],
      [4, "years", "Vision, hearing, urinalysis", "yearly"],
      [5, "years", "Complete Blood Count",'']].each do |entry|
      s = Schedule.new
      s.name = entry[2]
      s.age = entry[0]
      s.data_type = entry[1]
      s.frequency = entry[3]
      s.category = Category.find_by_name('medical tests')
      s.save
    end  
  end

  def down
  end
end
