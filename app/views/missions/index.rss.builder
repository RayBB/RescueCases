xml.instruct! :xml, :version => "1.0"
xml.rss :version => "2.0" do
  xml.channel do
    xml.title "Rescue RSS Feed"
    xml.description "Time to help some friends out"
    xml.link root_url

    @missions.each do |mission|
      xml.item do
        xml.title mission.game + ", " + mission.location + " floor " + mission.floor.to_s
        xml.description #mission.location + mission.game
        xml.pubDate mission.created_at.to_s(:rfc822)
        xml.link mission_path(mission)
        xml.guid mission_path(mission)
      end
    end
  end
end