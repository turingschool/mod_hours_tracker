require 'icalendar'
# require 'open-uri'

class CalendarController < ApplicationController 
    include ApplicationHelper

    def hours_report
        @mod = find_mod_from_input(params[:calendar_id])
        a = "https://www.google.com/calendar/ical/#{params[:calendar_id]}/public/basic.ics"
        ical = open(a).read
        calendar = Icalendar.parse(ical).first
        events_in_time_frame = calendar.events.find_all do |event|
            event.dtstart > DateTime.parse(params[:start_date]).beginning_of_day && event.dtstart < DateTime.parse(params[:end_date]).end_of_day
        end
        @hours_breakdown , @events = calculate_hours(events_in_time_frame)
    end 

    private 

    def calculate_hours(events)
        hours_breakdown = {lesson_time: 0, lab_time: 0}
        lesson_lab_events = []
        events_by_type = events.each do |e| 
            if e.summary.downcase.include?("lesson time")
                duration = (e.dtend - e.dtstart)/3600
                hours_breakdown[:lesson_time] += duration
                lesson_lab_events << e
            elsif e.summary.downcase.include?("lab time")
                duration = (e.dtend - e.dtstart)/3600
                hours_breakdown[:lab_time] += duration
                lesson_lab_events << e
            end 
        end 
        events_sorted = lesson_lab_events.sort_by {|e| e.dtstart}
        [hours_breakdown, events_sorted]
    end 

end 