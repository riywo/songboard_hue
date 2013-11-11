# Install

    $ git clone https://github.com/riywo/songboard_hue
    $ cd songboard_hue
    $ bundle install

## ngrok

Download ngrok binary [here](https://ngrok.com/download) and locate it one of `PAT
H` directories.

## designated Wifi

Ask Philips guy to connect the designated Wifi(SSID: Buffalo-G-E1E4) for hue.

# Usage

    $ cd songboard_hue
    $ bundle exec rackup
    $ ngrok 9292
    $ curl http://****.ngrok.com
