module ApplicationHelper

    def mod_calendars 
        [
            ["BE Mod 1 Accent", "c_0c5aff6d4d2b9ae35f46fb9203691606beaa22d4b37b2c17a361b31add08ca26@group.calendar.google.com"],
            ["BE Mod 2 Accent", "c_c02d6f7447fbb15503240bcd0d261e4a36a24f430f71e995df08197437872326@group.calendar.google.com"],
            ["BE Mod 3 Accent", "c_049c058208c3400bb725e0ecf7d828c61360cd9059120d7a1211241de9fde65c@group.calendar.google.com"],
            ["Combined Mod 4 Accent", "c_9a564174f13832587674dab4bbe74395bbbe1b1efe57f9e9a62ad467b8e65b6c@group.calendar.google.com"]
          ]
    end 

    def find_mod_from_input(id)
        mod_array = mod_calendars.find {|array| array[1] == id}
        mod_array[0]
    end 
end
