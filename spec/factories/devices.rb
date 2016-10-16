FactoryGirl.define do
  factory :device do |f|
    f.bluetooth_address 'test_bluetooth_address'
    f.serial_number 'test_serial_number'
  end
  factory :dup_address, parent: :device do |f|
    f.serial_number { Faker::Code.ean }
  end

  factory :dup_number, parent: :device do |f|
    f.bluetooth_address { Faker::Code.ean }
  end
end
