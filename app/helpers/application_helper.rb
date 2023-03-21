module ApplicationHelper

    def mod_calendars 
        [
            ["FE Mod 1 Accet", "c_a2e143c5dc2c7ceb868143108176d58ae83d20eed9110127dfad9c0c4310f9b6@group.calendar.google.com"],
            ["FE Mod 2 Accet", "c_eb5b0f57415f70f50d7f6b3fc0898700e8399dc7f6ad83dedbaf7850e2de1b50@group.calendar.google.com"],
            ["FE Mod 3 Accet", "c_2966b2af8c04f5b608f69eb6b481ee2fe5df783a97d2887e8fabe1a596cde701@group.calendar.google.com"],
            ["BE Mod 1 Accet", "c_0c5aff6d4d2b9ae35f46fb9203691606beaa22d4b37b2c17a361b31add08ca26@group.calendar.google.com"],
            ["BE Mod 2 Accet", "c_c02d6f7447fbb15503240bcd0d261e4a36a24f430f71e995df08197437872326@group.calendar.google.com"],
            ["BE Mod 3 Accet", "c_049c058208c3400bb725e0ecf7d828c61360cd9059120d7a1211241de9fde65c@group.calendar.google.com"],
            ["Combined Mod 4 Accet", "c_9a564174f13832587674dab4bbe74395bbbe1b1efe57f9e9a62ad467b8e65b6c@group.calendar.google.com"]
          ]
    end 

    def find_mod_from_input(id)
        mod_array = mod_calendars.find {|array| array[1] == id}
        mod_array[0]
    end 
end
