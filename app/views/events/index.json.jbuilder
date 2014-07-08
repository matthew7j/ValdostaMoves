json.array!(@events) do |event|
  json.extract! event, :id, :title, :description, :start, :end
  json.start event.start
  json.end event.end
  json.allDay event.allday
  json.url event_url(event, format: :html)
end
