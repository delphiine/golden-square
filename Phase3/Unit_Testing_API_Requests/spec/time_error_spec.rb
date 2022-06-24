require "time_error"

RSpec.describe TimeError do
    it "Returns difference between server time and local time in seconds" do
        fake_requester = double(:requester)
        allow(fake_requester).to receive(:get).with(URI("https://worldtimeapi.org/api/ip")
        ).and_return('{"abbreviation":"BST","client_ip":"84.66.195.155","datetime":"2022-06-24T15:17:33.626525+01:00","day_of_week":5,"day_of_year":175,"dst":true,"dst_from":"2022-03-27T01:00:00+00:00","dst_offset":3600,"dst_until":"2022-10-30T01:00:00+00:00","raw_offset":0,"timezone":"Europe/London","unixtime":1656080253,"utc_datetime":"2022-06-24T14:17:33.626525+00:00","utc_offset":"+01:00","week_number":25}')
        time = Time.new(2022, 6, 24, 15, 42, 52)
        time_error = TimeError.new(fake_requester)
        expect(time_error.error(time)).to eq -1518.373475
    end
end