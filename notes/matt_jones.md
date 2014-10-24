** DRAFT ** sensu-packaging RFC
===

## Packaging

* I like the idea of using a gem, it provides a platform independent method for distribution although RPM/DEB may want to be at least considered depending on the user community and what the consensus is
* As far as 'official' release goes I think that we have several options to pick from.  My initial thought is that we split the plugins based upon test status and language.  All ruby plugins must have tests to be included in the official package, all non-ruby plugins or those without current tests should go into a user-contrb plugins directory.

    One of the major reason that Nagios and its plugins are so prevalent is that they are rigorously tested, documented, and packaged.  This has led to a near universal trust by 'the suits'.  I feel that if we were to adopt similar practices, over time we could gain a lot of this trust as well.
    
    There is also the school of thought where we could have two seperate gems, one for official and one for user-contrib.  The assumption being that an official gem has tests, linters, etc and is ready for a production environment.  The user-contrib package is missing one or all of these items and should be used only after careful consideration.  I don't think we should ever exclude a check that isn't ruby or have tests but we should elevate those that do.  This will also give people a chance to write tests and if they pass we could then move the check to the official package.

## Testing

* In my repo I have a root directory called tests.  I then have handlers and plugins within it.  These directories are mirrors of their respective binary directories and contain the spec and any test files or sample data that is needed.

    This is a good way to structure the tests and helps with my automated testing using Chef and Jenkins.  Just an organizational thought.

## Documentation
* I would like to see something along the lines of the [Nagios Plugin Development Guide](https://nagios-plugins.org/doc/guidelines.html).  It is fairly well written and comprehensive.  I have already spent a fair amount of time trolling through the sensu plugin repo to try and figure some things out and made a lot of mental notes..  If we would like people to use some sort of standard infrastructure than we should clearly spell it out.

    I know a few docs and README's exist already and they would be great starting points for some cohesion.

I am open to any other thoughts or comments on this and will try and contribute when I can, the more of my stuff I can get pushed into the cimmunity or official repos, the less public repos from my company I have to track and maintain ;)
