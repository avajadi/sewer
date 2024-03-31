# sewer
Small set of tools for my personal sewage processing.
There are two things to control here. An airpump, airing the sewage and pumping sewage between compartments in the sewage processor.
[[_TOC_]]
## Air pump
Air pump control is straight forward. Running the pump for 30 minutes every hour is all it really takes.

## Flocking agent
Flocking agent needs to be added to gather particulates in the allocated compartment. This particular processor from Sterom requires 24 ml of flocking agent to be added per 24 hour day, per person using this sewage.
We need to spread the flocking agent out across time, so that the levels stay fairly steady. In my case, we add flocking agent every 4 hours, thus distributing the 24 ml needed over 6 doses of 4 ml each. The flocking agent is delivered using a peristalcic pump that has been calibrated and found to deliver 1 ml i 1.557 seconds. This means we pump flocking agent for 6.228 (4 x 1.557) seconds every 6 hours.

## Configuration
Configuration is done in /etc/sewage/config. It's a simple shell file with a bunch of environment variables.

## Logging
There's a very simple bash script called log used to get consistent logging of all operations performed on the sewage processor. They are kept by default in __/var/log/sewage__. Check out the supplied crontab for a working setup. There's also a script that writes summarises into the log every day, __sewagesummary__.
