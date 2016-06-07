Hi Dollarshaveclub Team,
  I wrote two scripts to handle the logs, one in ruby (that is much quicker) and
one in BASH (that takes longer to handle the 500 error output).

To do continuous tests,
I would write 
* * * * * * /path/to/log/scripts/ruby parse.rb

using crontab, which would run the script every minute.
Another way would be to keep the program running on a while loop and that
checked the logfile for new lines.
  -Braelan

