require_relative '../lib/table_seater'
require 'faker'

describe TableSeater do
  it "organizes list of guests so that they sit next to the person two away from them in the initial list" do

    guests = ["Zakary Hermiston I",
              "Kenton Stehr",
              "Dillon Spencer PhD",
              "Abagail Pollich",
              "Dr. Christine Thiel",
              "Allison Mayert",
              "Clara Crooks MD",
              "Hildegard Kiehn"]

    ordered_list = TableSeater.new(guests).arrange

    expected_value = ["Zakary Hermiston I",
                    "Dillon Spencer PhD",
                    "Dr. Christine Thiel",
                    "Clara Crooks MD",
                    "Kenton Stehr",
                    "Abagail Pollich",
                    "Allison Mayert",
                    "Hildegard Kiehn"]

    expect(ordered_list).to eq expected_value
  end
end