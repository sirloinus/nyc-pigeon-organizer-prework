require 'pry'

def nyc_pigeon_organizer(data)
  sorted_pigeons = {}
  data.each do |data_type, attributes|  # data_type(color/gender/lives) attributes(purple+ etc. / male+ etc. / subway+ etc.)
    attributes.each do |attribute, names|  # attribute (purple etc. / male etc./ subway etc.)  name (Theo etc.)
      names.each do |name|
        sorted_pigeons[name] ||= {}     #||= is checking whether left h-s is truthy (exists), if not it adds hash, if yes ||= ensures it is not overwritten
        sorted_pigeons[name][data_type] ||= []   # same again but adding an array
        sorted_pigeons[name][data_type] << attribute.to_s     
      end
    end
  end
  sorted_pigeons
end
